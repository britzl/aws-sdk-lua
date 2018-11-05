--- GENERATED CODE - DO NOT MODIFY
-- Amazon Comprehend (comprehend-2017-11-27)

local M = {}

M.metadata = {
	api_version = "2017-11-27",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "comprehend",
	service_abbreviation = "",
	service_full_name = "Amazon Comprehend",
	signature_version = "v4",
	target_prefix = "Comprehend_20171127",
	timestamp_format = "",
	global_endpoint = "",
	uid = "comprehend-2017-11-27",
}

local keys = {}
local asserts = {}

keys.StopKeyPhrasesDetectionJobResponse = { ["JobStatus"] = true, ["JobId"] = true, nil }

function asserts.AssertStopKeyPhrasesDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopKeyPhrasesDetectionJobResponse to be of type 'table'")
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopKeyPhrasesDetectionJobResponse[k], "StopKeyPhrasesDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopKeyPhrasesDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobStatus [JobStatus] <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or <code>STOPPED</code> if the job was previously stopped with the <code>StopKeyPhrasesDetectionJob</code> operation.</p>
-- * JobId [JobId] <p>The identifier of the key phrases detection job to stop.</p>
-- @return StopKeyPhrasesDetectionJobResponse structure as a key-value pair table
function M.StopKeyPhrasesDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating StopKeyPhrasesDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobStatus"] = args["JobStatus"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStopKeyPhrasesDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectKeyPhrasesRequest = { ["LanguageCode"] = true, ["TextList"] = true, nil }

function asserts.AssertBatchDetectKeyPhrasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectKeyPhrasesRequest to be of type 'table'")
	assert(struct["TextList"], "Expected key TextList to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["TextList"] then asserts.AssertStringList(struct["TextList"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectKeyPhrasesRequest[k], "BatchDetectKeyPhrasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectKeyPhrasesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.</p>
-- * TextList [StringList] <p>A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.</p>
-- Required key: TextList
-- Required key: LanguageCode
-- @return BatchDetectKeyPhrasesRequest structure as a key-value pair table
function M.BatchDetectKeyPhrasesRequest(args)
	assert(args, "You must provide an argument table when creating BatchDetectKeyPhrasesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["TextList"] = args["TextList"],
	}
	asserts.AssertBatchDetectKeyPhrasesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSentimentDetectionJobRequest = { ["JobId"] = true, nil }

function asserts.AssertDescribeSentimentDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSentimentDetectionJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSentimentDetectionJobRequest[k], "DescribeSentimentDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSentimentDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.</p>
-- Required key: JobId
-- @return DescribeSentimentDetectionJobRequest structure as a key-value pair table
function M.DescribeSentimentDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeSentimentDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertDescribeSentimentDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopKeyPhrasesDetectionJobRequest = { ["JobId"] = true, nil }

function asserts.AssertStopKeyPhrasesDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopKeyPhrasesDetectionJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopKeyPhrasesDetectionJobRequest[k], "StopKeyPhrasesDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopKeyPhrasesDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier of the key phrases detection job to stop.</p>
-- Required key: JobId
-- @return StopKeyPhrasesDetectionJobRequest structure as a key-value pair table
function M.StopKeyPhrasesDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating StopKeyPhrasesDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertStopKeyPhrasesDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyPhrasesDetectionJobProperties = { ["InputDataConfig"] = true, ["DataAccessRoleArn"] = true, ["LanguageCode"] = true, ["JobId"] = true, ["JobStatus"] = true, ["JobName"] = true, ["SubmitTime"] = true, ["OutputDataConfig"] = true, ["Message"] = true, ["EndTime"] = true, nil }

function asserts.AssertKeyPhrasesDetectionJobProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPhrasesDetectionJobProperties to be of type 'table'")
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["DataAccessRoleArn"] then asserts.AssertIamRoleArn(struct["DataAccessRoleArn"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	if struct["SubmitTime"] then asserts.AssertTimestamp(struct["SubmitTime"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	if struct["Message"] then asserts.AssertAnyLengthString(struct["Message"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyPhrasesDetectionJobProperties[k], "KeyPhrasesDetectionJobProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPhrasesDetectionJobProperties
-- <p>Provides information about a key phrases detection job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputDataConfig [InputDataConfig] <p>The input data configuration that you supplied when you created the key phrases detection job.</p>
-- * DataAccessRoleArn [IamRoleArn] <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.</p>
-- * LanguageCode [LanguageCode] <p>The language code of the input documents.</p>
-- * JobId [JobId] <p>The identifier assigned to the key phrases detection job.</p>
-- * JobStatus [JobStatus] <p>The current status of the key phrases detection job. If the status is <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>
-- * JobName [JobName] <p>The name that you assigned the key phrases detection job.</p>
-- * SubmitTime [Timestamp] <p>The time that the key phrases detection job was submitted for processing.</p>
-- * OutputDataConfig [OutputDataConfig] <p>The output data configuration that you supplied when you created the key phrases detection job.</p>
-- * Message [AnyLengthString] <p>A description of the status of a job.</p>
-- * EndTime [Timestamp] <p>The time that the key phrases detection job completed.</p>
-- @return KeyPhrasesDetectionJobProperties structure as a key-value pair table
function M.KeyPhrasesDetectionJobProperties(args)
	assert(args, "You must provide an argument table when creating KeyPhrasesDetectionJobProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputDataConfig"] = args["InputDataConfig"],
		["DataAccessRoleArn"] = args["DataAccessRoleArn"],
		["LanguageCode"] = args["LanguageCode"],
		["JobId"] = args["JobId"],
		["JobStatus"] = args["JobStatus"],
		["JobName"] = args["JobName"],
		["SubmitTime"] = args["SubmitTime"],
		["OutputDataConfig"] = args["OutputDataConfig"],
		["Message"] = args["Message"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertKeyPhrasesDetectionJobProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectEntitiesRequest = { ["LanguageCode"] = true, ["TextList"] = true, nil }

function asserts.AssertBatchDetectEntitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectEntitiesRequest to be of type 'table'")
	assert(struct["TextList"], "Expected key TextList to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["TextList"] then asserts.AssertStringList(struct["TextList"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectEntitiesRequest[k], "BatchDetectEntitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectEntitiesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.</p>
-- * TextList [StringList] <p>A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer than 5,000 bytes of UTF-8 encoded characters.</p>
-- Required key: TextList
-- Required key: LanguageCode
-- @return BatchDetectEntitiesRequest structure as a key-value pair table
function M.BatchDetectEntitiesRequest(args)
	assert(args, "You must provide an argument table when creating BatchDetectEntitiesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["TextList"] = args["TextList"],
	}
	asserts.AssertBatchDetectEntitiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectDominantLanguageRequest = { ["Text"] = true, nil }

function asserts.AssertDetectDominantLanguageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectDominantLanguageRequest to be of type 'table'")
	assert(struct["Text"], "Expected key Text to exist in table")
	if struct["Text"] then asserts.AssertString(struct["Text"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectDominantLanguageRequest[k], "DetectDominantLanguageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectDominantLanguageRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Text [String] <p>A UTF-8 text string. Each string should contain at least 20 characters and must contain fewer that 5,000 bytes of UTF-8 encoded characters.</p>
-- Required key: Text
-- @return DetectDominantLanguageRequest structure as a key-value pair table
function M.DetectDominantLanguageRequest(args)
	assert(args, "You must provide an argument table when creating DetectDominantLanguageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Text"] = args["Text"],
	}
	asserts.AssertDetectDominantLanguageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListKeyPhrasesDetectionJobsResponse = { ["KeyPhrasesDetectionJobPropertiesList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListKeyPhrasesDetectionJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeyPhrasesDetectionJobsResponse to be of type 'table'")
	if struct["KeyPhrasesDetectionJobPropertiesList"] then asserts.AssertKeyPhrasesDetectionJobPropertiesList(struct["KeyPhrasesDetectionJobPropertiesList"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListKeyPhrasesDetectionJobsResponse[k], "ListKeyPhrasesDetectionJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeyPhrasesDetectionJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyPhrasesDetectionJobPropertiesList [KeyPhrasesDetectionJobPropertiesList] <p>A list containing the properties of each job that is returned.</p>
-- * NextToken [String] <p>Identifies the next page of results to return.</p>
-- @return ListKeyPhrasesDetectionJobsResponse structure as a key-value pair table
function M.ListKeyPhrasesDetectionJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListKeyPhrasesDetectionJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyPhrasesDetectionJobPropertiesList"] = args["KeyPhrasesDetectionJobPropertiesList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListKeyPhrasesDetectionJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDominantLanguageDetectionJobsRequest = { ["Filter"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListDominantLanguageDetectionJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDominantLanguageDetectionJobsRequest to be of type 'table'")
	if struct["Filter"] then asserts.AssertDominantLanguageDetectionJobFilter(struct["Filter"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResultsInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDominantLanguageDetectionJobsRequest[k], "ListDominantLanguageDetectionJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDominantLanguageDetectionJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [DominantLanguageDetectionJobFilter] <p>Filters that jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.</p>
-- * NextToken [String] <p>Identifies the next page of results to return.</p>
-- * MaxResults [MaxResultsInteger] <p>The maximum number of results to return in each page. The default is 100.</p>
-- @return ListDominantLanguageDetectionJobsRequest structure as a key-value pair table
function M.ListDominantLanguageDetectionJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListDominantLanguageDetectionJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListDominantLanguageDetectionJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyPhrase = { ["Text"] = true, ["Score"] = true, ["BeginOffset"] = true, ["EndOffset"] = true, nil }

function asserts.AssertKeyPhrase(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPhrase to be of type 'table'")
	if struct["Text"] then asserts.AssertString(struct["Text"]) end
	if struct["Score"] then asserts.AssertFloat(struct["Score"]) end
	if struct["BeginOffset"] then asserts.AssertInteger(struct["BeginOffset"]) end
	if struct["EndOffset"] then asserts.AssertInteger(struct["EndOffset"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyPhrase[k], "KeyPhrase contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPhrase
-- <p>Describes a key noun phrase.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Text [String] <p>The text of a key noun phrase.</p>
-- * Score [Float] <p>The level of confidence that Amazon Comprehend has in the accuracy of the detection.</p>
-- * BeginOffset [Integer] <p>A character offset in the input text that shows where the key phrase begins (the first character is at position 0). The offset returns the position of each UTF-8 code point in the string. A <i>code point</i> is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.</p>
-- * EndOffset [Integer] <p>A character offset in the input text where the key phrase ends. The offset returns the position of each UTF-8 code point in the string. A <code>code point</code> is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.</p>
-- @return KeyPhrase structure as a key-value pair table
function M.KeyPhrase(args)
	assert(args, "You must provide an argument table when creating KeyPhrase")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Text"] = args["Text"],
		["Score"] = args["Score"],
		["BeginOffset"] = args["BeginOffset"],
		["EndOffset"] = args["EndOffset"],
	}
	asserts.AssertKeyPhrase(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectSentimentItemResult = { ["Index"] = true, ["Sentiment"] = true, ["SentimentScore"] = true, nil }

function asserts.AssertBatchDetectSentimentItemResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectSentimentItemResult to be of type 'table'")
	if struct["Index"] then asserts.AssertInteger(struct["Index"]) end
	if struct["Sentiment"] then asserts.AssertSentimentType(struct["Sentiment"]) end
	if struct["SentimentScore"] then asserts.AssertSentimentScore(struct["SentimentScore"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectSentimentItemResult[k], "BatchDetectSentimentItemResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectSentimentItemResult
-- <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Index [Integer] <p>The zero-based index of the document in the input list.</p>
-- * Sentiment [SentimentType] <p>The sentiment detected in the document.</p>
-- * SentimentScore [SentimentScore] <p>The level of confidence that Amazon Comprehend has in the accuracy of its sentiment detection.</p>
-- @return BatchDetectSentimentItemResult structure as a key-value pair table
function M.BatchDetectSentimentItemResult(args)
	assert(args, "You must provide an argument table when creating BatchDetectSentimentItemResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Index"] = args["Index"],
		["Sentiment"] = args["Sentiment"],
		["SentimentScore"] = args["SentimentScore"],
	}
	asserts.AssertBatchDetectSentimentItemResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectEntitiesRequest = { ["Text"] = true, ["LanguageCode"] = true, nil }

function asserts.AssertDetectEntitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectEntitiesRequest to be of type 'table'")
	assert(struct["Text"], "Expected key Text to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["Text"] then asserts.AssertString(struct["Text"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectEntitiesRequest[k], "DetectEntitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectEntitiesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Text [String] <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.</p>
-- * LanguageCode [LanguageCode] <p>The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.</p>
-- Required key: Text
-- Required key: LanguageCode
-- @return DetectEntitiesRequest structure as a key-value pair table
function M.DetectEntitiesRequest(args)
	assert(args, "You must provide an argument table when creating DetectEntitiesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Text"] = args["Text"],
		["LanguageCode"] = args["LanguageCode"],
	}
	asserts.AssertDetectEntitiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DominantLanguageDetectionJobFilter = { ["SubmitTimeAfter"] = true, ["SubmitTimeBefore"] = true, ["JobStatus"] = true, ["JobName"] = true, nil }

function asserts.AssertDominantLanguageDetectionJobFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DominantLanguageDetectionJobFilter to be of type 'table'")
	if struct["SubmitTimeAfter"] then asserts.AssertTimestamp(struct["SubmitTimeAfter"]) end
	if struct["SubmitTimeBefore"] then asserts.AssertTimestamp(struct["SubmitTimeBefore"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DominantLanguageDetectionJobFilter[k], "DominantLanguageDetectionJobFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DominantLanguageDetectionJobFilter
-- <p>Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubmitTimeAfter [Timestamp] <p>Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.</p>
-- * SubmitTimeBefore [Timestamp] <p>Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.</p>
-- * JobStatus [JobStatus] <p>Filters the list of jobs based on job status. Returns only jobs with the specified status.</p>
-- * JobName [JobName] <p>Filters on the name of the job.</p>
-- @return DominantLanguageDetectionJobFilter structure as a key-value pair table
function M.DominantLanguageDetectionJobFilter(args)
	assert(args, "You must provide an argument table when creating DominantLanguageDetectionJobFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubmitTimeAfter"] = args["SubmitTimeAfter"],
		["SubmitTimeBefore"] = args["SubmitTimeBefore"],
		["JobStatus"] = args["JobStatus"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertDominantLanguageDetectionJobFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopSentimentDetectionJobResponse = { ["JobStatus"] = true, ["JobId"] = true, nil }

function asserts.AssertStopSentimentDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopSentimentDetectionJobResponse to be of type 'table'")
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopSentimentDetectionJobResponse[k], "StopSentimentDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopSentimentDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobStatus [JobStatus] <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or <code>STOPPED</code> if the job was previously stopped with the <code>StopSentimentDetectionJob</code> operation.</p>
-- * JobId [JobId] <p>The identifier of the sentiment detection job to stop.</p>
-- @return StopSentimentDetectionJobResponse structure as a key-value pair table
function M.StopSentimentDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating StopSentimentDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobStatus"] = args["JobStatus"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStopSentimentDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSentimentDetectionJobResponse = { ["SentimentDetectionJobProperties"] = true, nil }

function asserts.AssertDescribeSentimentDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSentimentDetectionJobResponse to be of type 'table'")
	if struct["SentimentDetectionJobProperties"] then asserts.AssertSentimentDetectionJobProperties(struct["SentimentDetectionJobProperties"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSentimentDetectionJobResponse[k], "DescribeSentimentDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSentimentDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SentimentDetectionJobProperties [SentimentDetectionJobProperties] <p>An object that contains the properties associated with a sentiment detection job.</p>
-- @return DescribeSentimentDetectionJobResponse structure as a key-value pair table
function M.DescribeSentimentDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating DescribeSentimentDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SentimentDetectionJobProperties"] = args["SentimentDetectionJobProperties"],
	}
	asserts.AssertDescribeSentimentDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectDominantLanguageResponse = { ["ResultList"] = true, ["ErrorList"] = true, nil }

function asserts.AssertBatchDetectDominantLanguageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectDominantLanguageResponse to be of type 'table'")
	assert(struct["ResultList"], "Expected key ResultList to exist in table")
	assert(struct["ErrorList"], "Expected key ErrorList to exist in table")
	if struct["ResultList"] then asserts.AssertListOfDetectDominantLanguageResult(struct["ResultList"]) end
	if struct["ErrorList"] then asserts.AssertBatchItemErrorList(struct["ErrorList"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectDominantLanguageResponse[k], "BatchDetectDominantLanguageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectDominantLanguageResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResultList [ListOfDetectDominantLanguageResult] <p>A list of objects containing the results of the operation. The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list. If all of the documents contain an error, the <code>ResultList</code> is empty.</p>
-- * ErrorList [BatchItemErrorList] <p>A list containing one object for each document that contained an error. The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list. If there are no errors in the batch, the <code>ErrorList</code> is empty.</p>
-- Required key: ResultList
-- Required key: ErrorList
-- @return BatchDetectDominantLanguageResponse structure as a key-value pair table
function M.BatchDetectDominantLanguageResponse(args)
	assert(args, "You must provide an argument table when creating BatchDetectDominantLanguageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResultList"] = args["ResultList"],
		["ErrorList"] = args["ErrorList"],
	}
	asserts.AssertBatchDetectDominantLanguageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SentimentDetectionJobProperties = { ["InputDataConfig"] = true, ["DataAccessRoleArn"] = true, ["LanguageCode"] = true, ["JobId"] = true, ["JobStatus"] = true, ["JobName"] = true, ["SubmitTime"] = true, ["OutputDataConfig"] = true, ["Message"] = true, ["EndTime"] = true, nil }

function asserts.AssertSentimentDetectionJobProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SentimentDetectionJobProperties to be of type 'table'")
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["DataAccessRoleArn"] then asserts.AssertIamRoleArn(struct["DataAccessRoleArn"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	if struct["SubmitTime"] then asserts.AssertTimestamp(struct["SubmitTime"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	if struct["Message"] then asserts.AssertAnyLengthString(struct["Message"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.SentimentDetectionJobProperties[k], "SentimentDetectionJobProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SentimentDetectionJobProperties
-- <p>Provides information about a sentiment detection job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputDataConfig [InputDataConfig] <p>The input data configuration that you supplied when you created the sentiment detection job.</p>
-- * DataAccessRoleArn [IamRoleArn] <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.</p>
-- * LanguageCode [LanguageCode] <p>The language code of the input documents.</p>
-- * JobId [JobId] <p>The identifier assigned to the sentiment detection job.</p>
-- * JobStatus [JobStatus] <p>The current status of the sentiment detection job. If the status is <code>FAILED</code>, the <code>Messages</code> field shows the reason for the failure.</p>
-- * JobName [JobName] <p>The name that you assigned to the sentiment detection job</p>
-- * SubmitTime [Timestamp] <p>The time that the sentiment detection job was submitted for processing.</p>
-- * OutputDataConfig [OutputDataConfig] <p>The output data configuration that you supplied when you created the sentiment detection job.</p>
-- * Message [AnyLengthString] <p>A description of the status of a job.</p>
-- * EndTime [Timestamp] <p>The time that the sentiment detection job ended.</p>
-- @return SentimentDetectionJobProperties structure as a key-value pair table
function M.SentimentDetectionJobProperties(args)
	assert(args, "You must provide an argument table when creating SentimentDetectionJobProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputDataConfig"] = args["InputDataConfig"],
		["DataAccessRoleArn"] = args["DataAccessRoleArn"],
		["LanguageCode"] = args["LanguageCode"],
		["JobId"] = args["JobId"],
		["JobStatus"] = args["JobStatus"],
		["JobName"] = args["JobName"],
		["SubmitTime"] = args["SubmitTime"],
		["OutputDataConfig"] = args["OutputDataConfig"],
		["Message"] = args["Message"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertSentimentDetectionJobProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectSyntaxRequest = { ["LanguageCode"] = true, ["TextList"] = true, nil }

function asserts.AssertBatchDetectSyntaxRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectSyntaxRequest to be of type 'table'")
	assert(struct["TextList"], "Expected key TextList to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["LanguageCode"] then asserts.AssertSyntaxLanguageCode(struct["LanguageCode"]) end
	if struct["TextList"] then asserts.AssertStringList(struct["TextList"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectSyntaxRequest[k], "BatchDetectSyntaxRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectSyntaxRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [SyntaxLanguageCode] <p>The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.</p>
-- * TextList [StringList] <p>A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.</p>
-- Required key: TextList
-- Required key: LanguageCode
-- @return BatchDetectSyntaxRequest structure as a key-value pair table
function M.BatchDetectSyntaxRequest(args)
	assert(args, "You must provide an argument table when creating BatchDetectSyntaxRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["TextList"] = args["TextList"],
	}
	asserts.AssertBatchDetectSyntaxRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyPhrasesDetectionJobFilter = { ["SubmitTimeAfter"] = true, ["SubmitTimeBefore"] = true, ["JobStatus"] = true, ["JobName"] = true, nil }

function asserts.AssertKeyPhrasesDetectionJobFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPhrasesDetectionJobFilter to be of type 'table'")
	if struct["SubmitTimeAfter"] then asserts.AssertTimestamp(struct["SubmitTimeAfter"]) end
	if struct["SubmitTimeBefore"] then asserts.AssertTimestamp(struct["SubmitTimeBefore"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyPhrasesDetectionJobFilter[k], "KeyPhrasesDetectionJobFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPhrasesDetectionJobFilter
-- <p>Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubmitTimeAfter [Timestamp] <p>Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.</p>
-- * SubmitTimeBefore [Timestamp] <p>Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.</p>
-- * JobStatus [JobStatus] <p>Filters the list of jobs based on job status. Returns only jobs with the specified status.</p>
-- * JobName [JobName] <p>Filters on the name of the job.</p>
-- @return KeyPhrasesDetectionJobFilter structure as a key-value pair table
function M.KeyPhrasesDetectionJobFilter(args)
	assert(args, "You must provide an argument table when creating KeyPhrasesDetectionJobFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubmitTimeAfter"] = args["SubmitTimeAfter"],
		["SubmitTimeBefore"] = args["SubmitTimeBefore"],
		["JobStatus"] = args["JobStatus"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertKeyPhrasesDetectionJobFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SyntaxToken = { ["Text"] = true, ["EndOffset"] = true, ["BeginOffset"] = true, ["PartOfSpeech"] = true, ["TokenId"] = true, nil }

function asserts.AssertSyntaxToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SyntaxToken to be of type 'table'")
	if struct["Text"] then asserts.AssertString(struct["Text"]) end
	if struct["EndOffset"] then asserts.AssertInteger(struct["EndOffset"]) end
	if struct["BeginOffset"] then asserts.AssertInteger(struct["BeginOffset"]) end
	if struct["PartOfSpeech"] then asserts.AssertPartOfSpeechTag(struct["PartOfSpeech"]) end
	if struct["TokenId"] then asserts.AssertInteger(struct["TokenId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SyntaxToken[k], "SyntaxToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SyntaxToken
-- <p>Represents a work in the input text that was recognized and assigned a part of speech. There is one syntax token record for each word in the source text.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Text [String] <p>The word that was recognized in the source text.</p>
-- * EndOffset [Integer] <p>The zero-based offset from the beginning of the source text to the last character in the word.</p>
-- * BeginOffset [Integer] <p>The zero-based offset from the beginning of the source text to the first character in the word.</p>
-- * PartOfSpeech [PartOfSpeechTag] <p>Provides the part of speech label and the confidence level that Amazon Comprehend has that the part of speech was correctly identified. For more information, see <a>how-syntax</a>.</p>
-- * TokenId [Integer] <p>A unique identifier for a token.</p>
-- @return SyntaxToken structure as a key-value pair table
function M.SyntaxToken(args)
	assert(args, "You must provide an argument table when creating SyntaxToken")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Text"] = args["Text"],
		["EndOffset"] = args["EndOffset"],
		["BeginOffset"] = args["BeginOffset"],
		["PartOfSpeech"] = args["PartOfSpeech"],
		["TokenId"] = args["TokenId"],
	}
	asserts.AssertSyntaxToken(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DominantLanguage = { ["LanguageCode"] = true, ["Score"] = true, nil }

function asserts.AssertDominantLanguage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DominantLanguage to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertString(struct["LanguageCode"]) end
	if struct["Score"] then asserts.AssertFloat(struct["Score"]) end
	for k,_ in pairs(struct) do
		assert(keys.DominantLanguage[k], "DominantLanguage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DominantLanguage
-- <p>Returns the code for the dominant language in the input text and the level of confidence that Amazon Comprehend has in the accuracy of the detection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [String] <p>The RFC 5646 language code for the dominant language. For more information about RFC 5646, see <a href="https://tools.ietf.org/html/rfc5646">Tags for Identifying Languages</a> on the <i>IETF Tools</i> web site.</p>
-- * Score [Float] <p>The level of confidence that Amazon Comprehend has in the accuracy of the detection.</p>
-- @return DominantLanguage structure as a key-value pair table
function M.DominantLanguage(args)
	assert(args, "You must provide an argument table when creating DominantLanguage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["Score"] = args["Score"],
	}
	asserts.AssertDominantLanguage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Entity = { ["Text"] = true, ["Score"] = true, ["Type"] = true, ["BeginOffset"] = true, ["EndOffset"] = true, nil }

function asserts.AssertEntity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Entity to be of type 'table'")
	if struct["Text"] then asserts.AssertString(struct["Text"]) end
	if struct["Score"] then asserts.AssertFloat(struct["Score"]) end
	if struct["Type"] then asserts.AssertEntityType(struct["Type"]) end
	if struct["BeginOffset"] then asserts.AssertInteger(struct["BeginOffset"]) end
	if struct["EndOffset"] then asserts.AssertInteger(struct["EndOffset"]) end
	for k,_ in pairs(struct) do
		assert(keys.Entity[k], "Entity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Entity
-- <p>Provides information about an entity. </p> <p> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Text [String] <p>The text of the entity.</p>
-- * Score [Float] <p>The level of confidence that Amazon Comprehend has in the accuracy of the detection.</p>
-- * Type [EntityType] <p>The entity's type.</p>
-- * BeginOffset [Integer] <p>A character offset in the input text that shows where the entity begins (the first character is at position 0). The offset returns the position of each UTF-8 code point in the string. A <i>code point</i> is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.</p>
-- * EndOffset [Integer] <p>A character offset in the input text that shows where the entity ends. The offset returns the position of each UTF-8 code point in the string. A <i>code point</i> is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point. </p>
-- @return Entity structure as a key-value pair table
function M.Entity(args)
	assert(args, "You must provide an argument table when creating Entity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Text"] = args["Text"],
		["Score"] = args["Score"],
		["Type"] = args["Type"],
		["BeginOffset"] = args["BeginOffset"],
		["EndOffset"] = args["EndOffset"],
	}
	asserts.AssertEntity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectEntitiesResponse = { ["ResultList"] = true, ["ErrorList"] = true, nil }

function asserts.AssertBatchDetectEntitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectEntitiesResponse to be of type 'table'")
	assert(struct["ResultList"], "Expected key ResultList to exist in table")
	assert(struct["ErrorList"], "Expected key ErrorList to exist in table")
	if struct["ResultList"] then asserts.AssertListOfDetectEntitiesResult(struct["ResultList"]) end
	if struct["ErrorList"] then asserts.AssertBatchItemErrorList(struct["ErrorList"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectEntitiesResponse[k], "BatchDetectEntitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectEntitiesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResultList [ListOfDetectEntitiesResult] <p>A list of objects containing the results of the operation. The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list. If all of the documents contain an error, the <code>ResultList</code> is empty.</p>
-- * ErrorList [BatchItemErrorList] <p>A list containing one object for each document that contained an error. The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list. If there are no errors in the batch, the <code>ErrorList</code> is empty.</p>
-- Required key: ResultList
-- Required key: ErrorList
-- @return BatchDetectEntitiesResponse structure as a key-value pair table
function M.BatchDetectEntitiesResponse(args)
	assert(args, "You must provide an argument table when creating BatchDetectEntitiesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResultList"] = args["ResultList"],
		["ErrorList"] = args["ErrorList"],
	}
	asserts.AssertBatchDetectEntitiesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectSyntaxRequest = { ["Text"] = true, ["LanguageCode"] = true, nil }

function asserts.AssertDetectSyntaxRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectSyntaxRequest to be of type 'table'")
	assert(struct["Text"], "Expected key Text to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["Text"] then asserts.AssertString(struct["Text"]) end
	if struct["LanguageCode"] then asserts.AssertSyntaxLanguageCode(struct["LanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectSyntaxRequest[k], "DetectSyntaxRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectSyntaxRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Text [String] <p>A UTF-8 string. Each string must contain fewer that 5,000 bytes of UTF encoded characters.</p>
-- * LanguageCode [SyntaxLanguageCode] <p>The language code of the input documents. You can specify English ("en") or Spanish ("es").</p>
-- Required key: Text
-- Required key: LanguageCode
-- @return DetectSyntaxRequest structure as a key-value pair table
function M.DetectSyntaxRequest(args)
	assert(args, "You must provide an argument table when creating DetectSyntaxRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Text"] = args["Text"],
		["LanguageCode"] = args["LanguageCode"],
	}
	asserts.AssertDetectSyntaxRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartEntitiesDetectionJobResponse = { ["JobStatus"] = true, ["JobId"] = true, nil }

function asserts.AssertStartEntitiesDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartEntitiesDetectionJobResponse to be of type 'table'")
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartEntitiesDetectionJobResponse[k], "StartEntitiesDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartEntitiesDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobStatus [JobStatus] <p>The status of the job. </p> <ul> <li> <p>SUBMITTED - The job has been received and is queued for processing.</p> </li> <li> <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p> </li> <li> <p>COMPLETED - The job was successfully completed and the output is available.</p> </li> <li> <p>FAILED - The job did not complete. To get details, use the operation.</p> </li> </ul>
-- * JobId [JobId] <p>The identifier generated for the job. To get the status of job, use this identifier with the operation.</p>
-- @return StartEntitiesDetectionJobResponse structure as a key-value pair table
function M.StartEntitiesDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating StartEntitiesDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobStatus"] = args["JobStatus"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartEntitiesDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectDominantLanguageResponse = { ["Languages"] = true, nil }

function asserts.AssertDetectDominantLanguageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectDominantLanguageResponse to be of type 'table'")
	if struct["Languages"] then asserts.AssertListOfDominantLanguages(struct["Languages"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectDominantLanguageResponse[k], "DetectDominantLanguageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectDominantLanguageResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Languages [ListOfDominantLanguages] <p>The languages that Amazon Comprehend detected in the input text. For each language, the response returns the RFC 5646 language code and the level of confidence that Amazon Comprehend has in the accuracy of its inference. For more information about RFC 5646, see <a href="https://tools.ietf.org/html/rfc5646">Tags for Identifying Languages</a> on the <i>IETF Tools</i> web site.</p>
-- @return DetectDominantLanguageResponse structure as a key-value pair table
function M.DetectDominantLanguageResponse(args)
	assert(args, "You must provide an argument table when creating DetectDominantLanguageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Languages"] = args["Languages"],
	}
	asserts.AssertDetectDominantLanguageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSentimentDetectionJobResponse = { ["JobStatus"] = true, ["JobId"] = true, nil }

function asserts.AssertStartSentimentDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSentimentDetectionJobResponse to be of type 'table'")
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSentimentDetectionJobResponse[k], "StartSentimentDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSentimentDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobStatus [JobStatus] <p>The status of the job. </p> <ul> <li> <p>SUBMITTED - The job has been received and is queued for processing.</p> </li> <li> <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p> </li> <li> <p>COMPLETED - The job was successfully completed and the output is available.</p> </li> <li> <p>FAILED - The job did not complete. To get details, use the operation.</p> </li> </ul>
-- * JobId [JobId] <p>The identifier generated for the job. To get the status of a job, use this identifier with the operation.</p>
-- @return StartSentimentDetectionJobResponse structure as a key-value pair table
function M.StartSentimentDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating StartSentimentDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobStatus"] = args["JobStatus"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartSentimentDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectSentimentResponse = { ["SentimentScore"] = true, ["Sentiment"] = true, nil }

function asserts.AssertDetectSentimentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectSentimentResponse to be of type 'table'")
	if struct["SentimentScore"] then asserts.AssertSentimentScore(struct["SentimentScore"]) end
	if struct["Sentiment"] then asserts.AssertSentimentType(struct["Sentiment"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectSentimentResponse[k], "DetectSentimentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectSentimentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SentimentScore [SentimentScore] <p>An object that lists the sentiments, and their corresponding confidence levels.</p>
-- * Sentiment [SentimentType] <p>The inferred sentiment that Amazon Comprehend has the highest level of confidence in.</p>
-- @return DetectSentimentResponse structure as a key-value pair table
function M.DetectSentimentResponse(args)
	assert(args, "You must provide an argument table when creating DetectSentimentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SentimentScore"] = args["SentimentScore"],
		["Sentiment"] = args["Sentiment"],
	}
	asserts.AssertDetectSentimentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectSentimentRequest = { ["LanguageCode"] = true, ["TextList"] = true, nil }

function asserts.AssertBatchDetectSentimentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectSentimentRequest to be of type 'table'")
	assert(struct["TextList"], "Expected key TextList to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["TextList"] then asserts.AssertStringList(struct["TextList"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectSentimentRequest[k], "BatchDetectSentimentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectSentimentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.</p>
-- * TextList [StringList] <p>A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.</p>
-- Required key: TextList
-- Required key: LanguageCode
-- @return BatchDetectSentimentRequest structure as a key-value pair table
function M.BatchDetectSentimentRequest(args)
	assert(args, "You must provide an argument table when creating BatchDetectSentimentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["TextList"] = args["TextList"],
	}
	asserts.AssertBatchDetectSentimentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeKeyPhrasesDetectionJobResponse = { ["KeyPhrasesDetectionJobProperties"] = true, nil }

function asserts.AssertDescribeKeyPhrasesDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeKeyPhrasesDetectionJobResponse to be of type 'table'")
	if struct["KeyPhrasesDetectionJobProperties"] then asserts.AssertKeyPhrasesDetectionJobProperties(struct["KeyPhrasesDetectionJobProperties"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeKeyPhrasesDetectionJobResponse[k], "DescribeKeyPhrasesDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeKeyPhrasesDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyPhrasesDetectionJobProperties [KeyPhrasesDetectionJobProperties] <p>An object that contains the properties associated with a key phrases detection job. </p>
-- @return DescribeKeyPhrasesDetectionJobResponse structure as a key-value pair table
function M.DescribeKeyPhrasesDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating DescribeKeyPhrasesDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyPhrasesDetectionJobProperties"] = args["KeyPhrasesDetectionJobProperties"],
	}
	asserts.AssertDescribeKeyPhrasesDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSentimentDetectionJobsResponse = { ["NextToken"] = true, ["SentimentDetectionJobPropertiesList"] = true, nil }

function asserts.AssertListSentimentDetectionJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSentimentDetectionJobsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["SentimentDetectionJobPropertiesList"] then asserts.AssertSentimentDetectionJobPropertiesList(struct["SentimentDetectionJobPropertiesList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSentimentDetectionJobsResponse[k], "ListSentimentDetectionJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSentimentDetectionJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>Identifies the next page of results to return.</p>
-- * SentimentDetectionJobPropertiesList [SentimentDetectionJobPropertiesList] <p>A list containing the properties of each job that is returned.</p>
-- @return ListSentimentDetectionJobsResponse structure as a key-value pair table
function M.ListSentimentDetectionJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListSentimentDetectionJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SentimentDetectionJobPropertiesList"] = args["SentimentDetectionJobPropertiesList"],
	}
	asserts.AssertListSentimentDetectionJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSentimentDetectionJobRequest = { ["InputDataConfig"] = true, ["DataAccessRoleArn"] = true, ["LanguageCode"] = true, ["JobName"] = true, ["ClientRequestToken"] = true, ["OutputDataConfig"] = true, nil }

function asserts.AssertStartSentimentDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSentimentDetectionJobRequest to be of type 'table'")
	assert(struct["InputDataConfig"], "Expected key InputDataConfig to exist in table")
	assert(struct["OutputDataConfig"], "Expected key OutputDataConfig to exist in table")
	assert(struct["DataAccessRoleArn"], "Expected key DataAccessRoleArn to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["DataAccessRoleArn"] then asserts.AssertIamRoleArn(struct["DataAccessRoleArn"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestTokenString(struct["ClientRequestToken"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSentimentDetectionJobRequest[k], "StartSentimentDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSentimentDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputDataConfig [InputDataConfig] <p>Specifies the format and location of the input data for the job.</p>
-- * DataAccessRoleArn [IamRoleArn] <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>
-- * LanguageCode [LanguageCode] <p>The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.</p>
-- * JobName [JobName] <p>The identifier of the job.</p>
-- * ClientRequestToken [ClientRequestTokenString] <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.</p>
-- * OutputDataConfig [OutputDataConfig] <p>Specifies where to send the output files. </p>
-- Required key: InputDataConfig
-- Required key: OutputDataConfig
-- Required key: DataAccessRoleArn
-- Required key: LanguageCode
-- @return StartSentimentDetectionJobRequest structure as a key-value pair table
function M.StartSentimentDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating StartSentimentDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputDataConfig"] = args["InputDataConfig"],
		["DataAccessRoleArn"] = args["DataAccessRoleArn"],
		["LanguageCode"] = args["LanguageCode"],
		["JobName"] = args["JobName"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["OutputDataConfig"] = args["OutputDataConfig"],
	}
	asserts.AssertStartSentimentDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEntitiesDetectionJobResponse = { ["EntitiesDetectionJobProperties"] = true, nil }

function asserts.AssertDescribeEntitiesDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEntitiesDetectionJobResponse to be of type 'table'")
	if struct["EntitiesDetectionJobProperties"] then asserts.AssertEntitiesDetectionJobProperties(struct["EntitiesDetectionJobProperties"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEntitiesDetectionJobResponse[k], "DescribeEntitiesDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEntitiesDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EntitiesDetectionJobProperties [EntitiesDetectionJobProperties] <p>An object that contains the properties associated with an entities detection job.</p>
-- @return DescribeEntitiesDetectionJobResponse structure as a key-value pair table
function M.DescribeEntitiesDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating DescribeEntitiesDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EntitiesDetectionJobProperties"] = args["EntitiesDetectionJobProperties"],
	}
	asserts.AssertDescribeEntitiesDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDominantLanguageDetectionJobResponse = { ["DominantLanguageDetectionJobProperties"] = true, nil }

function asserts.AssertDescribeDominantLanguageDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDominantLanguageDetectionJobResponse to be of type 'table'")
	if struct["DominantLanguageDetectionJobProperties"] then asserts.AssertDominantLanguageDetectionJobProperties(struct["DominantLanguageDetectionJobProperties"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDominantLanguageDetectionJobResponse[k], "DescribeDominantLanguageDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDominantLanguageDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DominantLanguageDetectionJobProperties [DominantLanguageDetectionJobProperties] <p>An object that contains the properties associated with a dominant language detection job.</p>
-- @return DescribeDominantLanguageDetectionJobResponse structure as a key-value pair table
function M.DescribeDominantLanguageDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDominantLanguageDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DominantLanguageDetectionJobProperties"] = args["DominantLanguageDetectionJobProperties"],
	}
	asserts.AssertDescribeDominantLanguageDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartEntitiesDetectionJobRequest = { ["InputDataConfig"] = true, ["DataAccessRoleArn"] = true, ["LanguageCode"] = true, ["JobName"] = true, ["ClientRequestToken"] = true, ["OutputDataConfig"] = true, nil }

function asserts.AssertStartEntitiesDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartEntitiesDetectionJobRequest to be of type 'table'")
	assert(struct["InputDataConfig"], "Expected key InputDataConfig to exist in table")
	assert(struct["OutputDataConfig"], "Expected key OutputDataConfig to exist in table")
	assert(struct["DataAccessRoleArn"], "Expected key DataAccessRoleArn to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["DataAccessRoleArn"] then asserts.AssertIamRoleArn(struct["DataAccessRoleArn"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestTokenString(struct["ClientRequestToken"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartEntitiesDetectionJobRequest[k], "StartEntitiesDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartEntitiesDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputDataConfig [InputDataConfig] <p>Specifies the format and location of the input data for the job.</p>
-- * DataAccessRoleArn [IamRoleArn] <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>
-- * LanguageCode [LanguageCode] <p>The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.</p>
-- * JobName [JobName] <p>The identifier of the job.</p>
-- * ClientRequestToken [ClientRequestTokenString] <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.</p>
-- * OutputDataConfig [OutputDataConfig] <p>Specifies where to send the output files.</p>
-- Required key: InputDataConfig
-- Required key: OutputDataConfig
-- Required key: DataAccessRoleArn
-- Required key: LanguageCode
-- @return StartEntitiesDetectionJobRequest structure as a key-value pair table
function M.StartEntitiesDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating StartEntitiesDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputDataConfig"] = args["InputDataConfig"],
		["DataAccessRoleArn"] = args["DataAccessRoleArn"],
		["LanguageCode"] = args["LanguageCode"],
		["JobName"] = args["JobName"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["OutputDataConfig"] = args["OutputDataConfig"],
	}
	asserts.AssertStartEntitiesDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTopicsDetectionJobsResponse = { ["TopicsDetectionJobPropertiesList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTopicsDetectionJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicsDetectionJobsResponse to be of type 'table'")
	if struct["TopicsDetectionJobPropertiesList"] then asserts.AssertTopicsDetectionJobPropertiesList(struct["TopicsDetectionJobPropertiesList"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTopicsDetectionJobsResponse[k], "ListTopicsDetectionJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicsDetectionJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicsDetectionJobPropertiesList [TopicsDetectionJobPropertiesList] <p>A list containing the properties of each job that is returned.</p>
-- * NextToken [String] <p>Identifies the next page of results to return.</p>
-- @return ListTopicsDetectionJobsResponse structure as a key-value pair table
function M.ListTopicsDetectionJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListTopicsDetectionJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TopicsDetectionJobPropertiesList"] = args["TopicsDetectionJobPropertiesList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTopicsDetectionJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEntitiesDetectionJobsRequest = { ["Filter"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListEntitiesDetectionJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEntitiesDetectionJobsRequest to be of type 'table'")
	if struct["Filter"] then asserts.AssertEntitiesDetectionJobFilter(struct["Filter"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResultsInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEntitiesDetectionJobsRequest[k], "ListEntitiesDetectionJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEntitiesDetectionJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [EntitiesDetectionJobFilter] <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.</p>
-- * NextToken [String] <p>Identifies the next page of results to return.</p>
-- * MaxResults [MaxResultsInteger] <p>The maximum number of results to return in each page. The default is 100.</p>
-- @return ListEntitiesDetectionJobsRequest structure as a key-value pair table
function M.ListEntitiesDetectionJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListEntitiesDetectionJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListEntitiesDetectionJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectKeyPhrasesResponse = { ["ResultList"] = true, ["ErrorList"] = true, nil }

function asserts.AssertBatchDetectKeyPhrasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectKeyPhrasesResponse to be of type 'table'")
	assert(struct["ResultList"], "Expected key ResultList to exist in table")
	assert(struct["ErrorList"], "Expected key ErrorList to exist in table")
	if struct["ResultList"] then asserts.AssertListOfDetectKeyPhrasesResult(struct["ResultList"]) end
	if struct["ErrorList"] then asserts.AssertBatchItemErrorList(struct["ErrorList"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectKeyPhrasesResponse[k], "BatchDetectKeyPhrasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectKeyPhrasesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResultList [ListOfDetectKeyPhrasesResult] <p>A list of objects containing the results of the operation. The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list. If all of the documents contain an error, the <code>ResultList</code> is empty.</p>
-- * ErrorList [BatchItemErrorList] <p>A list containing one object for each document that contained an error. The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list. If there are no errors in the batch, the <code>ErrorList</code> is empty.</p>
-- Required key: ResultList
-- Required key: ErrorList
-- @return BatchDetectKeyPhrasesResponse structure as a key-value pair table
function M.BatchDetectKeyPhrasesResponse(args)
	assert(args, "You must provide an argument table when creating BatchDetectKeyPhrasesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResultList"] = args["ResultList"],
		["ErrorList"] = args["ErrorList"],
	}
	asserts.AssertBatchDetectKeyPhrasesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopDominantLanguageDetectionJobRequest = { ["JobId"] = true, nil }

function asserts.AssertStopDominantLanguageDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDominantLanguageDetectionJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopDominantLanguageDetectionJobRequest[k], "StopDominantLanguageDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDominantLanguageDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier of the dominant language detection job to stop.</p>
-- Required key: JobId
-- @return StopDominantLanguageDetectionJobRequest structure as a key-value pair table
function M.StopDominantLanguageDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating StopDominantLanguageDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertStopDominantLanguageDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopEntitiesDetectionJobResponse = { ["JobStatus"] = true, ["JobId"] = true, nil }

function asserts.AssertStopEntitiesDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopEntitiesDetectionJobResponse to be of type 'table'")
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopEntitiesDetectionJobResponse[k], "StopEntitiesDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopEntitiesDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobStatus [JobStatus] <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or <code>STOPPED</code> if the job was previously stopped with the <code>StopEntitiesDetectionJob</code> operation.</p>
-- * JobId [JobId] <p>The identifier of the entities detection job to stop.</p>
-- @return StopEntitiesDetectionJobResponse structure as a key-value pair table
function M.StopEntitiesDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating StopEntitiesDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobStatus"] = args["JobStatus"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStopEntitiesDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartKeyPhrasesDetectionJobResponse = { ["JobStatus"] = true, ["JobId"] = true, nil }

function asserts.AssertStartKeyPhrasesDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartKeyPhrasesDetectionJobResponse to be of type 'table'")
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartKeyPhrasesDetectionJobResponse[k], "StartKeyPhrasesDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartKeyPhrasesDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobStatus [JobStatus] <p>The status of the job. </p> <ul> <li> <p>SUBMITTED - The job has been received and is queued for processing.</p> </li> <li> <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p> </li> <li> <p>COMPLETED - The job was successfully completed and the output is available.</p> </li> <li> <p>FAILED - The job did not complete. To get details, use the operation.</p> </li> </ul>
-- * JobId [JobId] <p>The identifier generated for the job. To get the status of a job, use this identifier with the operation.</p>
-- @return StartKeyPhrasesDetectionJobResponse structure as a key-value pair table
function M.StartKeyPhrasesDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating StartKeyPhrasesDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobStatus"] = args["JobStatus"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartKeyPhrasesDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartDominantLanguageDetectionJobResponse = { ["JobStatus"] = true, ["JobId"] = true, nil }

function asserts.AssertStartDominantLanguageDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDominantLanguageDetectionJobResponse to be of type 'table'")
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartDominantLanguageDetectionJobResponse[k], "StartDominantLanguageDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDominantLanguageDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobStatus [JobStatus] <p>The status of the job. </p> <ul> <li> <p>SUBMITTED - The job has been received and is queued for processing.</p> </li> <li> <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p> </li> <li> <p>COMPLETED - The job was successfully completed and the output is available.</p> </li> <li> <p>FAILED - The job did not complete. To get details, use the operation.</p> </li> </ul>
-- * JobId [JobId] <p>The identifier generated for the job. To get the status of a job, use this identifier with the operation.</p>
-- @return StartDominantLanguageDetectionJobResponse structure as a key-value pair table
function M.StartDominantLanguageDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating StartDominantLanguageDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobStatus"] = args["JobStatus"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartDominantLanguageDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectEntitiesItemResult = { ["Index"] = true, ["Entities"] = true, nil }

function asserts.AssertBatchDetectEntitiesItemResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectEntitiesItemResult to be of type 'table'")
	if struct["Index"] then asserts.AssertInteger(struct["Index"]) end
	if struct["Entities"] then asserts.AssertListOfEntities(struct["Entities"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectEntitiesItemResult[k], "BatchDetectEntitiesItemResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectEntitiesItemResult
-- <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Index [Integer] <p>The zero-based index of the document in the input list.</p>
-- * Entities [ListOfEntities] <p>One or more <a>Entity</a> objects, one for each entity detected in the document.</p>
-- @return BatchDetectEntitiesItemResult structure as a key-value pair table
function M.BatchDetectEntitiesItemResult(args)
	assert(args, "You must provide an argument table when creating BatchDetectEntitiesItemResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Index"] = args["Index"],
		["Entities"] = args["Entities"],
	}
	asserts.AssertBatchDetectEntitiesItemResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEntitiesDetectionJobRequest = { ["JobId"] = true, nil }

function asserts.AssertDescribeEntitiesDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEntitiesDetectionJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEntitiesDetectionJobRequest[k], "DescribeEntitiesDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEntitiesDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.</p>
-- Required key: JobId
-- @return DescribeEntitiesDetectionJobRequest structure as a key-value pair table
function M.DescribeEntitiesDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEntitiesDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertDescribeEntitiesDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputDataConfig = { ["S3Uri"] = true, nil }

function asserts.AssertOutputDataConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputDataConfig to be of type 'table'")
	assert(struct["S3Uri"], "Expected key S3Uri to exist in table")
	if struct["S3Uri"] then asserts.AssertS3Uri(struct["S3Uri"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputDataConfig[k], "OutputDataConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputDataConfig
-- <p>Provides configuration parameters for the output of topic detection jobs.</p> <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Uri [S3Uri] <p>When you use the <code>OutputDataConfig</code> object with asynchronous operations, you specify the Amazon S3 location where you want to write the output data. The URI must be in the same region as the API endpoint that you are calling. The location is used as the prefix for the actual location of the output file.</p> <p>When the topic detection job is finished, the service creates an output file in a directory specific to the job. The <code>S3Uri</code> field contains the location of the output file, called <code>output.tar.gz</code>. It is a compressed archive that contains the ouput of the operation.</p>
-- Required key: S3Uri
-- @return OutputDataConfig structure as a key-value pair table
function M.OutputDataConfig(args)
	assert(args, "You must provide an argument table when creating OutputDataConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3Uri"] = args["S3Uri"],
	}
	asserts.AssertOutputDataConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTopicsDetectionJobsRequest = { ["Filter"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListTopicsDetectionJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicsDetectionJobsRequest to be of type 'table'")
	if struct["Filter"] then asserts.AssertTopicsDetectionJobFilter(struct["Filter"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResultsInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTopicsDetectionJobsRequest[k], "ListTopicsDetectionJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicsDetectionJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [TopicsDetectionJobFilter] <p>Filters the jobs that are returned. Jobs can be filtered on their name, status, or the date and time that they were submitted. You can set only one filter at a time.</p>
-- * NextToken [String] <p>Identifies the next page of results to return.</p>
-- * MaxResults [MaxResultsInteger] <p>The maximum number of results to return in each page. The default is 100.</p>
-- @return ListTopicsDetectionJobsRequest structure as a key-value pair table
function M.ListTopicsDetectionJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListTopicsDetectionJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListTopicsDetectionJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDominantLanguageDetectionJobsResponse = { ["DominantLanguageDetectionJobPropertiesList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDominantLanguageDetectionJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDominantLanguageDetectionJobsResponse to be of type 'table'")
	if struct["DominantLanguageDetectionJobPropertiesList"] then asserts.AssertDominantLanguageDetectionJobPropertiesList(struct["DominantLanguageDetectionJobPropertiesList"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDominantLanguageDetectionJobsResponse[k], "ListDominantLanguageDetectionJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDominantLanguageDetectionJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DominantLanguageDetectionJobPropertiesList [DominantLanguageDetectionJobPropertiesList] <p>A list containing the properties of each job that is returned.</p>
-- * NextToken [String] <p>Identifies the next page of results to return.</p>
-- @return ListDominantLanguageDetectionJobsResponse structure as a key-value pair table
function M.ListDominantLanguageDetectionJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListDominantLanguageDetectionJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DominantLanguageDetectionJobPropertiesList"] = args["DominantLanguageDetectionJobPropertiesList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDominantLanguageDetectionJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectSyntaxItemResult = { ["Index"] = true, ["SyntaxTokens"] = true, nil }

function asserts.AssertBatchDetectSyntaxItemResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectSyntaxItemResult to be of type 'table'")
	if struct["Index"] then asserts.AssertInteger(struct["Index"]) end
	if struct["SyntaxTokens"] then asserts.AssertListOfSyntaxTokens(struct["SyntaxTokens"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectSyntaxItemResult[k], "BatchDetectSyntaxItemResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectSyntaxItemResult
-- <p>The result of calling the operation. The operation returns one object that is successfully processed by the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Index [Integer] <p>The zero-based index of the document in the input list.</p>
-- * SyntaxTokens [ListOfSyntaxTokens] <p>The syntax tokens for the words in the document, one token for each word.</p>
-- @return BatchDetectSyntaxItemResult structure as a key-value pair table
function M.BatchDetectSyntaxItemResult(args)
	assert(args, "You must provide an argument table when creating BatchDetectSyntaxItemResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Index"] = args["Index"],
		["SyntaxTokens"] = args["SyntaxTokens"],
	}
	asserts.AssertBatchDetectSyntaxItemResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectDominantLanguageRequest = { ["TextList"] = true, nil }

function asserts.AssertBatchDetectDominantLanguageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectDominantLanguageRequest to be of type 'table'")
	assert(struct["TextList"], "Expected key TextList to exist in table")
	if struct["TextList"] then asserts.AssertStringList(struct["TextList"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectDominantLanguageRequest[k], "BatchDetectDominantLanguageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectDominantLanguageRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TextList [StringList] <p>A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document should contain at least 20 characters and must contain fewer than 5,000 bytes of UTF-8 encoded characters.</p>
-- Required key: TextList
-- @return BatchDetectDominantLanguageRequest structure as a key-value pair table
function M.BatchDetectDominantLanguageRequest(args)
	assert(args, "You must provide an argument table when creating BatchDetectDominantLanguageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TextList"] = args["TextList"],
	}
	asserts.AssertBatchDetectDominantLanguageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopDominantLanguageDetectionJobResponse = { ["JobStatus"] = true, ["JobId"] = true, nil }

function asserts.AssertStopDominantLanguageDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDominantLanguageDetectionJobResponse to be of type 'table'")
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopDominantLanguageDetectionJobResponse[k], "StopDominantLanguageDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDominantLanguageDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobStatus [JobStatus] <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or <code>STOPPED</code> if the job was previously stopped with the <code>StopDominantLanguageDetectionJob</code> operation.</p>
-- * JobId [JobId] <p>The identifier of the dominant language detection job to stop.</p>
-- @return StopDominantLanguageDetectionJobResponse structure as a key-value pair table
function M.StopDominantLanguageDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating StopDominantLanguageDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobStatus"] = args["JobStatus"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStopDominantLanguageDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TopicsDetectionJobFilter = { ["SubmitTimeAfter"] = true, ["SubmitTimeBefore"] = true, ["JobStatus"] = true, ["JobName"] = true, nil }

function asserts.AssertTopicsDetectionJobFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicsDetectionJobFilter to be of type 'table'")
	if struct["SubmitTimeAfter"] then asserts.AssertTimestamp(struct["SubmitTimeAfter"]) end
	if struct["SubmitTimeBefore"] then asserts.AssertTimestamp(struct["SubmitTimeBefore"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicsDetectionJobFilter[k], "TopicsDetectionJobFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicsDetectionJobFilter
-- <p>Provides information for filtering topic detection jobs. For more information, see .</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubmitTimeAfter [Timestamp] <p>Filters the list of jobs based on the time that the job was submitted for processing. Only returns jobs submitted after the specified time. Jobs are returned in ascending order, oldest to newest.</p>
-- * SubmitTimeBefore [Timestamp] <p>Filters the list of jobs based on the time that the job was submitted for processing. Only returns jobs submitted before the specified time. Jobs are returned in descending order, newest to oldest.</p>
-- * JobStatus [JobStatus] <p>Filters the list of topic detection jobs based on job status. Returns only jobs with the specified status.</p>
-- * JobName [JobName] <p/>
-- @return TopicsDetectionJobFilter structure as a key-value pair table
function M.TopicsDetectionJobFilter(args)
	assert(args, "You must provide an argument table when creating TopicsDetectionJobFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubmitTimeAfter"] = args["SubmitTimeAfter"],
		["SubmitTimeBefore"] = args["SubmitTimeBefore"],
		["JobStatus"] = args["JobStatus"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertTopicsDetectionJobFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EntitiesDetectionJobFilter = { ["SubmitTimeAfter"] = true, ["SubmitTimeBefore"] = true, ["JobStatus"] = true, ["JobName"] = true, nil }

function asserts.AssertEntitiesDetectionJobFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntitiesDetectionJobFilter to be of type 'table'")
	if struct["SubmitTimeAfter"] then asserts.AssertTimestamp(struct["SubmitTimeAfter"]) end
	if struct["SubmitTimeBefore"] then asserts.AssertTimestamp(struct["SubmitTimeBefore"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntitiesDetectionJobFilter[k], "EntitiesDetectionJobFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntitiesDetectionJobFilter
-- <p>Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubmitTimeAfter [Timestamp] <p>Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.</p>
-- * SubmitTimeBefore [Timestamp] <p>Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.</p>
-- * JobStatus [JobStatus] <p>Filters the list of jobs based on job status. Returns only jobs with the specified status.</p>
-- * JobName [JobName] <p>Filters on the name of the job.</p>
-- @return EntitiesDetectionJobFilter structure as a key-value pair table
function M.EntitiesDetectionJobFilter(args)
	assert(args, "You must provide an argument table when creating EntitiesDetectionJobFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubmitTimeAfter"] = args["SubmitTimeAfter"],
		["SubmitTimeBefore"] = args["SubmitTimeBefore"],
		["JobStatus"] = args["JobStatus"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertEntitiesDetectionJobFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEntitiesDetectionJobsResponse = { ["NextToken"] = true, ["EntitiesDetectionJobPropertiesList"] = true, nil }

function asserts.AssertListEntitiesDetectionJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEntitiesDetectionJobsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["EntitiesDetectionJobPropertiesList"] then asserts.AssertEntitiesDetectionJobPropertiesList(struct["EntitiesDetectionJobPropertiesList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEntitiesDetectionJobsResponse[k], "ListEntitiesDetectionJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEntitiesDetectionJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>Identifies the next page of results to return.</p>
-- * EntitiesDetectionJobPropertiesList [EntitiesDetectionJobPropertiesList] <p>A list containing the properties of each job that is returned.</p>
-- @return ListEntitiesDetectionJobsResponse structure as a key-value pair table
function M.ListEntitiesDetectionJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListEntitiesDetectionJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["EntitiesDetectionJobPropertiesList"] = args["EntitiesDetectionJobPropertiesList"],
	}
	asserts.AssertListEntitiesDetectionJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PartOfSpeechTag = { ["Tag"] = true, ["Score"] = true, nil }

function asserts.AssertPartOfSpeechTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PartOfSpeechTag to be of type 'table'")
	if struct["Tag"] then asserts.AssertPartOfSpeechTagType(struct["Tag"]) end
	if struct["Score"] then asserts.AssertFloat(struct["Score"]) end
	for k,_ in pairs(struct) do
		assert(keys.PartOfSpeechTag[k], "PartOfSpeechTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PartOfSpeechTag
-- <p>Identifies the part of speech represented by the token and gives the confidence that Amazon Comprehend has that the part of speech was correctly identified. For more information about the parts of speech that Amazon Comprehend can identify, see <a>how-syntax</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tag [PartOfSpeechTagType] <p>Identifies the part of speech that the token represents.</p>
-- * Score [Float] <p>The confidence that Amazon Comprehend has that the part of speech was correctly identified.</p>
-- @return PartOfSpeechTag structure as a key-value pair table
function M.PartOfSpeechTag(args)
	assert(args, "You must provide an argument table when creating PartOfSpeechTag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tag"] = args["Tag"],
		["Score"] = args["Score"],
	}
	asserts.AssertPartOfSpeechTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputDataConfig = { ["S3Uri"] = true, ["InputFormat"] = true, nil }

function asserts.AssertInputDataConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputDataConfig to be of type 'table'")
	assert(struct["S3Uri"], "Expected key S3Uri to exist in table")
	if struct["S3Uri"] then asserts.AssertS3Uri(struct["S3Uri"]) end
	if struct["InputFormat"] then asserts.AssertInputFormat(struct["InputFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputDataConfig[k], "InputDataConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputDataConfig
-- <p>The input properties for a topic detection job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Uri [S3Uri] <p>The Amazon S3 URI for the input data. The URI must be in same region as the API endpoint that you are calling. The URI can point to a single input file or it can provide the prefix for a collection of data files. </p> <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a single file, Amazon Comprehend uses that file as input. If more than one file begins with the prefix, Amazon Comprehend uses all of them as input.</p>
-- * InputFormat [InputFormat] <p>Specifies how the text in an input file should be processed:</p> <ul> <li> <p> <code>ONE_DOC_PER_FILE</code> - Each file is considered a separate document. Use this option when you are processing large documents, such as newspaper articles or scientific papers.</p> </li> <li> <p> <code>ONE_DOC_PER_LINE</code> - Each line in a file is considered a separate document. Use this option when you are processing many short documents, such as text messages.</p> </li> </ul>
-- Required key: S3Uri
-- @return InputDataConfig structure as a key-value pair table
function M.InputDataConfig(args)
	assert(args, "You must provide an argument table when creating InputDataConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3Uri"] = args["S3Uri"],
		["InputFormat"] = args["InputFormat"],
	}
	asserts.AssertInputDataConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDominantLanguageDetectionJobRequest = { ["JobId"] = true, nil }

function asserts.AssertDescribeDominantLanguageDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDominantLanguageDetectionJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDominantLanguageDetectionJobRequest[k], "DescribeDominantLanguageDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDominantLanguageDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.</p>
-- Required key: JobId
-- @return DescribeDominantLanguageDetectionJobRequest structure as a key-value pair table
function M.DescribeDominantLanguageDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDominantLanguageDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertDescribeDominantLanguageDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectEntitiesResponse = { ["Entities"] = true, nil }

function asserts.AssertDetectEntitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectEntitiesResponse to be of type 'table'")
	if struct["Entities"] then asserts.AssertListOfEntities(struct["Entities"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectEntitiesResponse[k], "DetectEntitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectEntitiesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Entities [ListOfEntities] <p>A collection of entities identified in the input text. For each entity, the response provides the entity text, entity type, where the entity text begins and ends, and the level of confidence that Amazon Comprehend has in the detection. For a list of entity types, see <a>how-entities</a>. </p>
-- @return DetectEntitiesResponse structure as a key-value pair table
function M.DetectEntitiesResponse(args)
	assert(args, "You must provide an argument table when creating DetectEntitiesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Entities"] = args["Entities"],
	}
	asserts.AssertDetectEntitiesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EntitiesDetectionJobProperties = { ["InputDataConfig"] = true, ["DataAccessRoleArn"] = true, ["LanguageCode"] = true, ["JobId"] = true, ["JobStatus"] = true, ["JobName"] = true, ["SubmitTime"] = true, ["OutputDataConfig"] = true, ["Message"] = true, ["EndTime"] = true, nil }

function asserts.AssertEntitiesDetectionJobProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntitiesDetectionJobProperties to be of type 'table'")
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["DataAccessRoleArn"] then asserts.AssertIamRoleArn(struct["DataAccessRoleArn"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	if struct["SubmitTime"] then asserts.AssertTimestamp(struct["SubmitTime"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	if struct["Message"] then asserts.AssertAnyLengthString(struct["Message"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntitiesDetectionJobProperties[k], "EntitiesDetectionJobProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntitiesDetectionJobProperties
-- <p>Provides information about an entities detection job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputDataConfig [InputDataConfig] <p>The input data configuration that you supplied when you created the entities detection job.</p>
-- * DataAccessRoleArn [IamRoleArn] <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.</p>
-- * LanguageCode [LanguageCode] <p>The language code of the input documents.</p>
-- * JobId [JobId] <p>The identifier assigned to the entities detection job.</p>
-- * JobStatus [JobStatus] <p>The current status of the entities detection job. If the status is <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>
-- * JobName [JobName] <p>The name that you assigned the entities detection job.</p>
-- * SubmitTime [Timestamp] <p>The time that the entities detection job was submitted for processing.</p>
-- * OutputDataConfig [OutputDataConfig] <p>The output data configuration that you supplied when you created the entities detection job. </p>
-- * Message [AnyLengthString] <p>A description of the status of a job.</p>
-- * EndTime [Timestamp] <p>The time that the entities detection job completed</p>
-- @return EntitiesDetectionJobProperties structure as a key-value pair table
function M.EntitiesDetectionJobProperties(args)
	assert(args, "You must provide an argument table when creating EntitiesDetectionJobProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputDataConfig"] = args["InputDataConfig"],
		["DataAccessRoleArn"] = args["DataAccessRoleArn"],
		["LanguageCode"] = args["LanguageCode"],
		["JobId"] = args["JobId"],
		["JobStatus"] = args["JobStatus"],
		["JobName"] = args["JobName"],
		["SubmitTime"] = args["SubmitTime"],
		["OutputDataConfig"] = args["OutputDataConfig"],
		["Message"] = args["Message"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertEntitiesDetectionJobProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeKeyPhrasesDetectionJobRequest = { ["JobId"] = true, nil }

function asserts.AssertDescribeKeyPhrasesDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeKeyPhrasesDetectionJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeKeyPhrasesDetectionJobRequest[k], "DescribeKeyPhrasesDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeKeyPhrasesDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.</p>
-- Required key: JobId
-- @return DescribeKeyPhrasesDetectionJobRequest structure as a key-value pair table
function M.DescribeKeyPhrasesDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeKeyPhrasesDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertDescribeKeyPhrasesDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TopicsDetectionJobProperties = { ["InputDataConfig"] = true, ["NumberOfTopics"] = true, ["JobId"] = true, ["JobStatus"] = true, ["JobName"] = true, ["SubmitTime"] = true, ["OutputDataConfig"] = true, ["Message"] = true, ["EndTime"] = true, nil }

function asserts.AssertTopicsDetectionJobProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicsDetectionJobProperties to be of type 'table'")
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["NumberOfTopics"] then asserts.AssertInteger(struct["NumberOfTopics"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	if struct["SubmitTime"] then asserts.AssertTimestamp(struct["SubmitTime"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	if struct["Message"] then asserts.AssertAnyLengthString(struct["Message"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicsDetectionJobProperties[k], "TopicsDetectionJobProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicsDetectionJobProperties
-- <p>Provides information about a topic detection job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputDataConfig [InputDataConfig] <p>The input data configuration supplied when you created the topic detection job.</p>
-- * NumberOfTopics [Integer] <p>The number of topics to detect supplied when you created the topic detection job. The default is 10. </p>
-- * JobId [JobId] <p>The identifier assigned to the topic detection job.</p>
-- * JobStatus [JobStatus] <p>The current status of the topic detection job. If the status is <code>Failed</code>, the reason for the failure is shown in the <code>Message</code> field.</p>
-- * JobName [JobName] <p>The name of the topic detection job.</p>
-- * SubmitTime [Timestamp] <p>The time that the topic detection job was submitted for processing.</p>
-- * OutputDataConfig [OutputDataConfig] <p>The output data configuration supplied when you created the topic detection job.</p>
-- * Message [AnyLengthString] <p>A description for the status of a job.</p>
-- * EndTime [Timestamp] <p>The time that the topic detection job was completed.</p>
-- @return TopicsDetectionJobProperties structure as a key-value pair table
function M.TopicsDetectionJobProperties(args)
	assert(args, "You must provide an argument table when creating TopicsDetectionJobProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputDataConfig"] = args["InputDataConfig"],
		["NumberOfTopics"] = args["NumberOfTopics"],
		["JobId"] = args["JobId"],
		["JobStatus"] = args["JobStatus"],
		["JobName"] = args["JobName"],
		["SubmitTime"] = args["SubmitTime"],
		["OutputDataConfig"] = args["OutputDataConfig"],
		["Message"] = args["Message"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertTopicsDetectionJobProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTopicsDetectionJobResponse = { ["TopicsDetectionJobProperties"] = true, nil }

function asserts.AssertDescribeTopicsDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTopicsDetectionJobResponse to be of type 'table'")
	if struct["TopicsDetectionJobProperties"] then asserts.AssertTopicsDetectionJobProperties(struct["TopicsDetectionJobProperties"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTopicsDetectionJobResponse[k], "DescribeTopicsDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTopicsDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicsDetectionJobProperties [TopicsDetectionJobProperties] <p>The list of properties for the requested job.</p>
-- @return DescribeTopicsDetectionJobResponse structure as a key-value pair table
function M.DescribeTopicsDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTopicsDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TopicsDetectionJobProperties"] = args["TopicsDetectionJobProperties"],
	}
	asserts.AssertDescribeTopicsDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectKeyPhrasesItemResult = { ["Index"] = true, ["KeyPhrases"] = true, nil }

function asserts.AssertBatchDetectKeyPhrasesItemResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectKeyPhrasesItemResult to be of type 'table'")
	if struct["Index"] then asserts.AssertInteger(struct["Index"]) end
	if struct["KeyPhrases"] then asserts.AssertListOfKeyPhrases(struct["KeyPhrases"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectKeyPhrasesItemResult[k], "BatchDetectKeyPhrasesItemResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectKeyPhrasesItemResult
-- <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Index [Integer] <p>The zero-based index of the document in the input list.</p>
-- * KeyPhrases [ListOfKeyPhrases] <p>One or more <a>KeyPhrase</a> objects, one for each key phrase detected in the document.</p>
-- @return BatchDetectKeyPhrasesItemResult structure as a key-value pair table
function M.BatchDetectKeyPhrasesItemResult(args)
	assert(args, "You must provide an argument table when creating BatchDetectKeyPhrasesItemResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Index"] = args["Index"],
		["KeyPhrases"] = args["KeyPhrases"],
	}
	asserts.AssertBatchDetectKeyPhrasesItemResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartTopicsDetectionJobResponse = { ["JobStatus"] = true, ["JobId"] = true, nil }

function asserts.AssertStartTopicsDetectionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTopicsDetectionJobResponse to be of type 'table'")
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartTopicsDetectionJobResponse[k], "StartTopicsDetectionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTopicsDetectionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobStatus [JobStatus] <p>The status of the job: </p> <ul> <li> <p>SUBMITTED - The job has been received and is queued for processing.</p> </li> <li> <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p> </li> <li> <p>COMPLETED - The job was successfully completed and the output is available.</p> </li> <li> <p>FAILED - The job did not complete. To get details, use the <code>DescribeTopicDetectionJob</code> operation.</p> </li> </ul>
-- * JobId [JobId] <p>The identifier generated for the job. To get the status of the job, use this identifier with the <code>DescribeTopicDetectionJob</code> operation.</p>
-- @return StartTopicsDetectionJobResponse structure as a key-value pair table
function M.StartTopicsDetectionJobResponse(args)
	assert(args, "You must provide an argument table when creating StartTopicsDetectionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobStatus"] = args["JobStatus"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartTopicsDetectionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartDominantLanguageDetectionJobRequest = { ["InputDataConfig"] = true, ["ClientRequestToken"] = true, ["OutputDataConfig"] = true, ["DataAccessRoleArn"] = true, ["JobName"] = true, nil }

function asserts.AssertStartDominantLanguageDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDominantLanguageDetectionJobRequest to be of type 'table'")
	assert(struct["InputDataConfig"], "Expected key InputDataConfig to exist in table")
	assert(struct["OutputDataConfig"], "Expected key OutputDataConfig to exist in table")
	assert(struct["DataAccessRoleArn"], "Expected key DataAccessRoleArn to exist in table")
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestTokenString(struct["ClientRequestToken"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	if struct["DataAccessRoleArn"] then asserts.AssertIamRoleArn(struct["DataAccessRoleArn"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartDominantLanguageDetectionJobRequest[k], "StartDominantLanguageDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDominantLanguageDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputDataConfig [InputDataConfig] <p>Specifies the format and location of the input data for the job.</p>
-- * ClientRequestToken [ClientRequestTokenString] <p>A unique identifier for the request. If you do not set the client request token, Amazon Comprehend generates one.</p>
-- * OutputDataConfig [OutputDataConfig] <p>Specifies where to send the output files.</p>
-- * DataAccessRoleArn [IamRoleArn] <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>
-- * JobName [JobName] <p>An identifier for the job.</p>
-- Required key: InputDataConfig
-- Required key: OutputDataConfig
-- Required key: DataAccessRoleArn
-- @return StartDominantLanguageDetectionJobRequest structure as a key-value pair table
function M.StartDominantLanguageDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating StartDominantLanguageDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputDataConfig"] = args["InputDataConfig"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["OutputDataConfig"] = args["OutputDataConfig"],
		["DataAccessRoleArn"] = args["DataAccessRoleArn"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertStartDominantLanguageDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SentimentDetectionJobFilter = { ["SubmitTimeAfter"] = true, ["SubmitTimeBefore"] = true, ["JobStatus"] = true, ["JobName"] = true, nil }

function asserts.AssertSentimentDetectionJobFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SentimentDetectionJobFilter to be of type 'table'")
	if struct["SubmitTimeAfter"] then asserts.AssertTimestamp(struct["SubmitTimeAfter"]) end
	if struct["SubmitTimeBefore"] then asserts.AssertTimestamp(struct["SubmitTimeBefore"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SentimentDetectionJobFilter[k], "SentimentDetectionJobFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SentimentDetectionJobFilter
-- <p>Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubmitTimeAfter [Timestamp] <p>Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.</p>
-- * SubmitTimeBefore [Timestamp] <p>Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.</p>
-- * JobStatus [JobStatus] <p>Filters the list of jobs based on job status. Returns only jobs with the specified status.</p>
-- * JobName [JobName] <p>Filters on the name of the job.</p>
-- @return SentimentDetectionJobFilter structure as a key-value pair table
function M.SentimentDetectionJobFilter(args)
	assert(args, "You must provide an argument table when creating SentimentDetectionJobFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubmitTimeAfter"] = args["SubmitTimeAfter"],
		["SubmitTimeBefore"] = args["SubmitTimeBefore"],
		["JobStatus"] = args["JobStatus"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertSentimentDetectionJobFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTopicsDetectionJobRequest = { ["JobId"] = true, nil }

function asserts.AssertDescribeTopicsDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTopicsDetectionJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTopicsDetectionJobRequest[k], "DescribeTopicsDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTopicsDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier assigned by the user to the detection job.</p>
-- Required key: JobId
-- @return DescribeTopicsDetectionJobRequest structure as a key-value pair table
function M.DescribeTopicsDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTopicsDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertDescribeTopicsDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectSyntaxResponse = { ["ResultList"] = true, ["ErrorList"] = true, nil }

function asserts.AssertBatchDetectSyntaxResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectSyntaxResponse to be of type 'table'")
	assert(struct["ResultList"], "Expected key ResultList to exist in table")
	assert(struct["ErrorList"], "Expected key ErrorList to exist in table")
	if struct["ResultList"] then asserts.AssertListOfDetectSyntaxResult(struct["ResultList"]) end
	if struct["ErrorList"] then asserts.AssertBatchItemErrorList(struct["ErrorList"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectSyntaxResponse[k], "BatchDetectSyntaxResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectSyntaxResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResultList [ListOfDetectSyntaxResult] <p>A list of objects containing the results of the operation. The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list. If all of the documents contain an error, the <code>ResultList</code> is empty.</p>
-- * ErrorList [BatchItemErrorList] <p>A list containing one object for each document that contained an error. The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list. If there are no errors in the batch, the <code>ErrorList</code> is empty.</p>
-- Required key: ResultList
-- Required key: ErrorList
-- @return BatchDetectSyntaxResponse structure as a key-value pair table
function M.BatchDetectSyntaxResponse(args)
	assert(args, "You must provide an argument table when creating BatchDetectSyntaxResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResultList"] = args["ResultList"],
		["ErrorList"] = args["ErrorList"],
	}
	asserts.AssertBatchDetectSyntaxResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartTopicsDetectionJobRequest = { ["InputDataConfig"] = true, ["DataAccessRoleArn"] = true, ["NumberOfTopics"] = true, ["JobName"] = true, ["ClientRequestToken"] = true, ["OutputDataConfig"] = true, nil }

function asserts.AssertStartTopicsDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTopicsDetectionJobRequest to be of type 'table'")
	assert(struct["InputDataConfig"], "Expected key InputDataConfig to exist in table")
	assert(struct["OutputDataConfig"], "Expected key OutputDataConfig to exist in table")
	assert(struct["DataAccessRoleArn"], "Expected key DataAccessRoleArn to exist in table")
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["DataAccessRoleArn"] then asserts.AssertIamRoleArn(struct["DataAccessRoleArn"]) end
	if struct["NumberOfTopics"] then asserts.AssertNumberOfTopicsInteger(struct["NumberOfTopics"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestTokenString(struct["ClientRequestToken"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartTopicsDetectionJobRequest[k], "StartTopicsDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTopicsDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputDataConfig [InputDataConfig] <p>Specifies the format and location of the input data for the job.</p>
-- * DataAccessRoleArn [IamRoleArn] <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>
-- * NumberOfTopics [NumberOfTopicsInteger] <p>The number of topics to detect.</p>
-- * JobName [JobName] <p>The identifier of the job.</p>
-- * ClientRequestToken [ClientRequestTokenString] <p>A unique identifier for the request. If you do not set the client request token, Amazon Comprehend generates one.</p>
-- * OutputDataConfig [OutputDataConfig] <p>Specifies where to send the output files. The output is a compressed archive with two files, <code>topic-terms.csv</code> that lists the terms associated with each topic, and <code>doc-topics.csv</code> that lists the documents associated with each topic</p>
-- Required key: InputDataConfig
-- Required key: OutputDataConfig
-- Required key: DataAccessRoleArn
-- @return StartTopicsDetectionJobRequest structure as a key-value pair table
function M.StartTopicsDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating StartTopicsDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputDataConfig"] = args["InputDataConfig"],
		["DataAccessRoleArn"] = args["DataAccessRoleArn"],
		["NumberOfTopics"] = args["NumberOfTopics"],
		["JobName"] = args["JobName"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["OutputDataConfig"] = args["OutputDataConfig"],
	}
	asserts.AssertStartTopicsDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectKeyPhrasesRequest = { ["Text"] = true, ["LanguageCode"] = true, nil }

function asserts.AssertDetectKeyPhrasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectKeyPhrasesRequest to be of type 'table'")
	assert(struct["Text"], "Expected key Text to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["Text"] then asserts.AssertString(struct["Text"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectKeyPhrasesRequest[k], "DetectKeyPhrasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectKeyPhrasesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Text [String] <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.</p>
-- * LanguageCode [LanguageCode] <p>The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.</p>
-- Required key: Text
-- Required key: LanguageCode
-- @return DetectKeyPhrasesRequest structure as a key-value pair table
function M.DetectKeyPhrasesRequest(args)
	assert(args, "You must provide an argument table when creating DetectKeyPhrasesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Text"] = args["Text"],
		["LanguageCode"] = args["LanguageCode"],
	}
	asserts.AssertDetectKeyPhrasesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartKeyPhrasesDetectionJobRequest = { ["InputDataConfig"] = true, ["DataAccessRoleArn"] = true, ["LanguageCode"] = true, ["JobName"] = true, ["ClientRequestToken"] = true, ["OutputDataConfig"] = true, nil }

function asserts.AssertStartKeyPhrasesDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartKeyPhrasesDetectionJobRequest to be of type 'table'")
	assert(struct["InputDataConfig"], "Expected key InputDataConfig to exist in table")
	assert(struct["OutputDataConfig"], "Expected key OutputDataConfig to exist in table")
	assert(struct["DataAccessRoleArn"], "Expected key DataAccessRoleArn to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["DataAccessRoleArn"] then asserts.AssertIamRoleArn(struct["DataAccessRoleArn"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestTokenString(struct["ClientRequestToken"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartKeyPhrasesDetectionJobRequest[k], "StartKeyPhrasesDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartKeyPhrasesDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputDataConfig [InputDataConfig] <p>Specifies the format and location of the input data for the job.</p>
-- * DataAccessRoleArn [IamRoleArn] <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>
-- * LanguageCode [LanguageCode] <p>The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.</p>
-- * JobName [JobName] <p>The identifier of the job.</p>
-- * ClientRequestToken [ClientRequestTokenString] <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend generates one.</p>
-- * OutputDataConfig [OutputDataConfig] <p>Specifies where to send the output files.</p>
-- Required key: InputDataConfig
-- Required key: OutputDataConfig
-- Required key: DataAccessRoleArn
-- Required key: LanguageCode
-- @return StartKeyPhrasesDetectionJobRequest structure as a key-value pair table
function M.StartKeyPhrasesDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating StartKeyPhrasesDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputDataConfig"] = args["InputDataConfig"],
		["DataAccessRoleArn"] = args["DataAccessRoleArn"],
		["LanguageCode"] = args["LanguageCode"],
		["JobName"] = args["JobName"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["OutputDataConfig"] = args["OutputDataConfig"],
	}
	asserts.AssertStartKeyPhrasesDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchItemError = { ["ErrorCode"] = true, ["Index"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertBatchItemError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchItemError to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertString(struct["ErrorCode"]) end
	if struct["Index"] then asserts.AssertInteger(struct["Index"]) end
	if struct["ErrorMessage"] then asserts.AssertString(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchItemError[k], "BatchItemError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchItemError
-- <p>Describes an error that occurred while processing a document in a batch. The operation returns on <code>BatchItemError</code> object for each document that contained an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [String] <p>The numeric error code of the error.</p>
-- * Index [Integer] <p>The zero-based index of the document in the input list.</p>
-- * ErrorMessage [String] <p>A text description of the error.</p>
-- @return BatchItemError structure as a key-value pair table
function M.BatchItemError(args)
	assert(args, "You must provide an argument table when creating BatchItemError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Index"] = args["Index"],
		["ErrorMessage"] = args["ErrorMessage"],
	}
	asserts.AssertBatchItemError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopSentimentDetectionJobRequest = { ["JobId"] = true, nil }

function asserts.AssertStopSentimentDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopSentimentDetectionJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopSentimentDetectionJobRequest[k], "StopSentimentDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopSentimentDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier of the sentiment detection job to stop.</p>
-- Required key: JobId
-- @return StopSentimentDetectionJobRequest structure as a key-value pair table
function M.StopSentimentDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating StopSentimentDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertStopSentimentDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SentimentScore = { ["Mixed"] = true, ["Positive"] = true, ["Neutral"] = true, ["Negative"] = true, nil }

function asserts.AssertSentimentScore(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SentimentScore to be of type 'table'")
	if struct["Mixed"] then asserts.AssertFloat(struct["Mixed"]) end
	if struct["Positive"] then asserts.AssertFloat(struct["Positive"]) end
	if struct["Neutral"] then asserts.AssertFloat(struct["Neutral"]) end
	if struct["Negative"] then asserts.AssertFloat(struct["Negative"]) end
	for k,_ in pairs(struct) do
		assert(keys.SentimentScore[k], "SentimentScore contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SentimentScore
-- <p>Describes the level of confidence that Amazon Comprehend has in the accuracy of its detection of sentiments.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Mixed [Float] <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of the <code>MIXED</code> sentiment.</p>
-- * Positive [Float] <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of the <code>POSITIVE</code> sentiment.</p>
-- * Neutral [Float] <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of the <code>NEUTRAL</code> sentiment.</p>
-- * Negative [Float] <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of the <code>NEGATIVE</code> sentiment.</p>
-- @return SentimentScore structure as a key-value pair table
function M.SentimentScore(args)
	assert(args, "You must provide an argument table when creating SentimentScore")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Mixed"] = args["Mixed"],
		["Positive"] = args["Positive"],
		["Neutral"] = args["Neutral"],
		["Negative"] = args["Negative"],
	}
	asserts.AssertSentimentScore(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectDominantLanguageItemResult = { ["Languages"] = true, ["Index"] = true, nil }

function asserts.AssertBatchDetectDominantLanguageItemResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectDominantLanguageItemResult to be of type 'table'")
	if struct["Languages"] then asserts.AssertListOfDominantLanguages(struct["Languages"]) end
	if struct["Index"] then asserts.AssertInteger(struct["Index"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectDominantLanguageItemResult[k], "BatchDetectDominantLanguageItemResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectDominantLanguageItemResult
-- <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Languages [ListOfDominantLanguages] <p>One or more <a>DominantLanguage</a> objects describing the dominant languages in the document.</p>
-- * Index [Integer] <p>The zero-based index of the document in the input list.</p>
-- @return BatchDetectDominantLanguageItemResult structure as a key-value pair table
function M.BatchDetectDominantLanguageItemResult(args)
	assert(args, "You must provide an argument table when creating BatchDetectDominantLanguageItemResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Languages"] = args["Languages"],
		["Index"] = args["Index"],
	}
	asserts.AssertBatchDetectDominantLanguageItemResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectSyntaxResponse = { ["SyntaxTokens"] = true, nil }

function asserts.AssertDetectSyntaxResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectSyntaxResponse to be of type 'table'")
	if struct["SyntaxTokens"] then asserts.AssertListOfSyntaxTokens(struct["SyntaxTokens"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectSyntaxResponse[k], "DetectSyntaxResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectSyntaxResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SyntaxTokens [ListOfSyntaxTokens] <p>A collection of syntax tokens describing the text. For each token, the response provides the text, the token type, where the text begins and ends, and the level of confidence that Amazon Comprehend has that the token is correct. For a list of token types, see <a>how-syntax</a>.</p>
-- @return DetectSyntaxResponse structure as a key-value pair table
function M.DetectSyntaxResponse(args)
	assert(args, "You must provide an argument table when creating DetectSyntaxResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SyntaxTokens"] = args["SyntaxTokens"],
	}
	asserts.AssertDetectSyntaxResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectSentimentRequest = { ["Text"] = true, ["LanguageCode"] = true, nil }

function asserts.AssertDetectSentimentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectSentimentRequest to be of type 'table'")
	assert(struct["Text"], "Expected key Text to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["Text"] then asserts.AssertString(struct["Text"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectSentimentRequest[k], "DetectSentimentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectSentimentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Text [String] <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.</p>
-- * LanguageCode [LanguageCode] <p>The language of the input documents. You can specify English ("en") or Spanish ("es"). All documents must be in the same language.</p>
-- Required key: Text
-- Required key: LanguageCode
-- @return DetectSentimentRequest structure as a key-value pair table
function M.DetectSentimentRequest(args)
	assert(args, "You must provide an argument table when creating DetectSentimentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Text"] = args["Text"],
		["LanguageCode"] = args["LanguageCode"],
	}
	asserts.AssertDetectSentimentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListKeyPhrasesDetectionJobsRequest = { ["Filter"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListKeyPhrasesDetectionJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeyPhrasesDetectionJobsRequest to be of type 'table'")
	if struct["Filter"] then asserts.AssertKeyPhrasesDetectionJobFilter(struct["Filter"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResultsInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListKeyPhrasesDetectionJobsRequest[k], "ListKeyPhrasesDetectionJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeyPhrasesDetectionJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [KeyPhrasesDetectionJobFilter] <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.</p>
-- * NextToken [String] <p>Identifies the next page of results to return.</p>
-- * MaxResults [MaxResultsInteger] <p>The maximum number of results to return in each page. The default is 100.</p>
-- @return ListKeyPhrasesDetectionJobsRequest structure as a key-value pair table
function M.ListKeyPhrasesDetectionJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListKeyPhrasesDetectionJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListKeyPhrasesDetectionJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DominantLanguageDetectionJobProperties = { ["InputDataConfig"] = true, ["DataAccessRoleArn"] = true, ["JobId"] = true, ["JobStatus"] = true, ["JobName"] = true, ["SubmitTime"] = true, ["OutputDataConfig"] = true, ["Message"] = true, ["EndTime"] = true, nil }

function asserts.AssertDominantLanguageDetectionJobProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DominantLanguageDetectionJobProperties to be of type 'table'")
	if struct["InputDataConfig"] then asserts.AssertInputDataConfig(struct["InputDataConfig"]) end
	if struct["DataAccessRoleArn"] then asserts.AssertIamRoleArn(struct["DataAccessRoleArn"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	if struct["SubmitTime"] then asserts.AssertTimestamp(struct["SubmitTime"]) end
	if struct["OutputDataConfig"] then asserts.AssertOutputDataConfig(struct["OutputDataConfig"]) end
	if struct["Message"] then asserts.AssertAnyLengthString(struct["Message"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DominantLanguageDetectionJobProperties[k], "DominantLanguageDetectionJobProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DominantLanguageDetectionJobProperties
-- <p>Provides information about a dominant language detection job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputDataConfig [InputDataConfig] <p>The input data configuration that you supplied when you created the dominant language detection job.</p>
-- * DataAccessRoleArn [IamRoleArn] <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.</p>
-- * JobId [JobId] <p>The identifier assigned to the dominant language detection job.</p>
-- * JobStatus [JobStatus] <p>The current status of the dominant language detection job. If the status is <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>
-- * JobName [JobName] <p>The name that you assigned to the dominant language detection job.</p>
-- * SubmitTime [Timestamp] <p>The time that the dominant language detection job was submitted for processing.</p>
-- * OutputDataConfig [OutputDataConfig] <p>The output data configuration that you supplied when you created the dominant language detection job.</p>
-- * Message [AnyLengthString] <p>A description for the status of a job.</p>
-- * EndTime [Timestamp] <p>The time that the dominant language detection job completed.</p>
-- @return DominantLanguageDetectionJobProperties structure as a key-value pair table
function M.DominantLanguageDetectionJobProperties(args)
	assert(args, "You must provide an argument table when creating DominantLanguageDetectionJobProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputDataConfig"] = args["InputDataConfig"],
		["DataAccessRoleArn"] = args["DataAccessRoleArn"],
		["JobId"] = args["JobId"],
		["JobStatus"] = args["JobStatus"],
		["JobName"] = args["JobName"],
		["SubmitTime"] = args["SubmitTime"],
		["OutputDataConfig"] = args["OutputDataConfig"],
		["Message"] = args["Message"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertDominantLanguageDetectionJobProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetectSentimentResponse = { ["ResultList"] = true, ["ErrorList"] = true, nil }

function asserts.AssertBatchDetectSentimentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetectSentimentResponse to be of type 'table'")
	assert(struct["ResultList"], "Expected key ResultList to exist in table")
	assert(struct["ErrorList"], "Expected key ErrorList to exist in table")
	if struct["ResultList"] then asserts.AssertListOfDetectSentimentResult(struct["ResultList"]) end
	if struct["ErrorList"] then asserts.AssertBatchItemErrorList(struct["ErrorList"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetectSentimentResponse[k], "BatchDetectSentimentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetectSentimentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResultList [ListOfDetectSentimentResult] <p>A list of objects containing the results of the operation. The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list. If all of the documents contain an error, the <code>ResultList</code> is empty.</p>
-- * ErrorList [BatchItemErrorList] <p>A list containing one object for each document that contained an error. The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list. If there are no errors in the batch, the <code>ErrorList</code> is empty.</p>
-- Required key: ResultList
-- Required key: ErrorList
-- @return BatchDetectSentimentResponse structure as a key-value pair table
function M.BatchDetectSentimentResponse(args)
	assert(args, "You must provide an argument table when creating BatchDetectSentimentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResultList"] = args["ResultList"],
		["ErrorList"] = args["ErrorList"],
	}
	asserts.AssertBatchDetectSentimentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectKeyPhrasesResponse = { ["KeyPhrases"] = true, nil }

function asserts.AssertDetectKeyPhrasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectKeyPhrasesResponse to be of type 'table'")
	if struct["KeyPhrases"] then asserts.AssertListOfKeyPhrases(struct["KeyPhrases"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectKeyPhrasesResponse[k], "DetectKeyPhrasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectKeyPhrasesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyPhrases [ListOfKeyPhrases] <p>A collection of key phrases that Amazon Comprehend identified in the input text. For each key phrase, the response provides the text of the key phrase, where the key phrase begins and ends, and the level of confidence that Amazon Comprehend has in the accuracy of the detection. </p>
-- @return DetectKeyPhrasesResponse structure as a key-value pair table
function M.DetectKeyPhrasesResponse(args)
	assert(args, "You must provide an argument table when creating DetectKeyPhrasesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyPhrases"] = args["KeyPhrases"],
	}
	asserts.AssertDetectKeyPhrasesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopEntitiesDetectionJobRequest = { ["JobId"] = true, nil }

function asserts.AssertStopEntitiesDetectionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopEntitiesDetectionJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopEntitiesDetectionJobRequest[k], "StopEntitiesDetectionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopEntitiesDetectionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier of the entities detection job to stop.</p>
-- Required key: JobId
-- @return StopEntitiesDetectionJobRequest structure as a key-value pair table
function M.StopEntitiesDetectionJobRequest(args)
	assert(args, "You must provide an argument table when creating StopEntitiesDetectionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertStopEntitiesDetectionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSentimentDetectionJobsRequest = { ["Filter"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListSentimentDetectionJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSentimentDetectionJobsRequest to be of type 'table'")
	if struct["Filter"] then asserts.AssertSentimentDetectionJobFilter(struct["Filter"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResultsInteger(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSentimentDetectionJobsRequest[k], "ListSentimentDetectionJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSentimentDetectionJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [SentimentDetectionJobFilter] <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.</p>
-- * NextToken [String] <p>Identifies the next page of results to return.</p>
-- * MaxResults [MaxResultsInteger] <p>The maximum number of results to return in each page. The default is 100.</p>
-- @return ListSentimentDetectionJobsRequest structure as a key-value pair table
function M.ListSentimentDetectionJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListSentimentDetectionJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListSentimentDetectionJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertPartOfSpeechTagType(str)
	assert(str)
	assert(type(str) == "string", "Expected PartOfSpeechTagType to be of type 'string'")
end

--  
function M.PartOfSpeechTagType(str)
	asserts.AssertPartOfSpeechTagType(str)
	return str
end

function asserts.AssertClientRequestTokenString(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientRequestTokenString to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientRequestTokenString(str)
	asserts.AssertClientRequestTokenString(str)
	return str
end

function asserts.AssertJobName(str)
	assert(str)
	assert(type(str) == "string", "Expected JobName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.JobName(str)
	asserts.AssertJobName(str)
	return str
end

function asserts.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.JobId(str)
	asserts.AssertJobId(str)
	return str
end

function asserts.AssertSyntaxLanguageCode(str)
	assert(str)
	assert(type(str) == "string", "Expected SyntaxLanguageCode to be of type 'string'")
end

--  
function M.SyntaxLanguageCode(str)
	asserts.AssertSyntaxLanguageCode(str)
	return str
end

function asserts.AssertJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JobStatus to be of type 'string'")
end

--  
function M.JobStatus(str)
	asserts.AssertJobStatus(str)
	return str
end

function asserts.AssertInputFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected InputFormat to be of type 'string'")
end

--  
function M.InputFormat(str)
	asserts.AssertInputFormat(str)
	return str
end

function asserts.AssertIamRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected IamRoleArn to be of type 'string'")
end

--  
function M.IamRoleArn(str)
	asserts.AssertIamRoleArn(str)
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

function asserts.AssertAnyLengthString(str)
	assert(str)
	assert(type(str) == "string", "Expected AnyLengthString to be of type 'string'")
end

--  
function M.AnyLengthString(str)
	asserts.AssertAnyLengthString(str)
	return str
end

function asserts.AssertSentimentType(str)
	assert(str)
	assert(type(str) == "string", "Expected SentimentType to be of type 'string'")
end

--  
function M.SentimentType(str)
	asserts.AssertSentimentType(str)
	return str
end

function asserts.AssertEntityType(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityType to be of type 'string'")
end

--  
function M.EntityType(str)
	asserts.AssertEntityType(str)
	return str
end

function asserts.AssertS3Uri(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Uri to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.S3Uri(str)
	asserts.AssertS3Uri(str)
	return str
end

function asserts.AssertFloat(float)
	assert(float)
	assert(type(float) == "number", "Expected Float to be of type 'number'")
end

function M.Float(float)
	asserts.AssertFloat(float)
	return float
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertMaxResultsInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResultsInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 500, "Expected integer to be max 500")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResultsInteger(integer)
	asserts.AssertMaxResultsInteger(integer)
	return integer
end

function asserts.AssertNumberOfTopicsInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumberOfTopicsInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.NumberOfTopicsInteger(integer)
	asserts.AssertNumberOfTopicsInteger(integer)
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

function asserts.AssertSentimentDetectionJobPropertiesList(list)
	assert(list)
	assert(type(list) == "table", "Expected SentimentDetectionJobPropertiesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSentimentDetectionJobProperties(v)
	end
end

--  
-- List of SentimentDetectionJobProperties objects
function M.SentimentDetectionJobPropertiesList(list)
	asserts.AssertSentimentDetectionJobPropertiesList(list)
	return list
end

function asserts.AssertListOfDetectDominantLanguageResult(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDetectDominantLanguageResult to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchDetectDominantLanguageItemResult(v)
	end
end

--  
-- List of BatchDetectDominantLanguageItemResult objects
function M.ListOfDetectDominantLanguageResult(list)
	asserts.AssertListOfDetectDominantLanguageResult(list)
	return list
end

function asserts.AssertDominantLanguageDetectionJobPropertiesList(list)
	assert(list)
	assert(type(list) == "table", "Expected DominantLanguageDetectionJobPropertiesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDominantLanguageDetectionJobProperties(v)
	end
end

--  
-- List of DominantLanguageDetectionJobProperties objects
function M.DominantLanguageDetectionJobPropertiesList(list)
	asserts.AssertDominantLanguageDetectionJobPropertiesList(list)
	return list
end

function asserts.AssertBatchItemErrorList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchItemErrorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchItemError(v)
	end
end

--  
-- List of BatchItemError objects
function M.BatchItemErrorList(list)
	asserts.AssertBatchItemErrorList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertListOfEntities(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfEntities to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEntity(v)
	end
end

--  
-- List of Entity objects
function M.ListOfEntities(list)
	asserts.AssertListOfEntities(list)
	return list
end

function asserts.AssertListOfDetectEntitiesResult(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDetectEntitiesResult to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchDetectEntitiesItemResult(v)
	end
end

--  
-- List of BatchDetectEntitiesItemResult objects
function M.ListOfDetectEntitiesResult(list)
	asserts.AssertListOfDetectEntitiesResult(list)
	return list
end

function asserts.AssertEntitiesDetectionJobPropertiesList(list)
	assert(list)
	assert(type(list) == "table", "Expected EntitiesDetectionJobPropertiesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEntitiesDetectionJobProperties(v)
	end
end

--  
-- List of EntitiesDetectionJobProperties objects
function M.EntitiesDetectionJobPropertiesList(list)
	asserts.AssertEntitiesDetectionJobPropertiesList(list)
	return list
end

function asserts.AssertKeyPhrasesDetectionJobPropertiesList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyPhrasesDetectionJobPropertiesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertKeyPhrasesDetectionJobProperties(v)
	end
end

--  
-- List of KeyPhrasesDetectionJobProperties objects
function M.KeyPhrasesDetectionJobPropertiesList(list)
	asserts.AssertKeyPhrasesDetectionJobPropertiesList(list)
	return list
end

function asserts.AssertListOfDetectSentimentResult(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDetectSentimentResult to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchDetectSentimentItemResult(v)
	end
end

--  
-- List of BatchDetectSentimentItemResult objects
function M.ListOfDetectSentimentResult(list)
	asserts.AssertListOfDetectSentimentResult(list)
	return list
end

function asserts.AssertListOfKeyPhrases(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfKeyPhrases to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertKeyPhrase(v)
	end
end

--  
-- List of KeyPhrase objects
function M.ListOfKeyPhrases(list)
	asserts.AssertListOfKeyPhrases(list)
	return list
end

function asserts.AssertListOfDetectKeyPhrasesResult(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDetectKeyPhrasesResult to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchDetectKeyPhrasesItemResult(v)
	end
end

--  
-- List of BatchDetectKeyPhrasesItemResult objects
function M.ListOfDetectKeyPhrasesResult(list)
	asserts.AssertListOfDetectKeyPhrasesResult(list)
	return list
end

function asserts.AssertListOfDetectSyntaxResult(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDetectSyntaxResult to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchDetectSyntaxItemResult(v)
	end
end

--  
-- List of BatchDetectSyntaxItemResult objects
function M.ListOfDetectSyntaxResult(list)
	asserts.AssertListOfDetectSyntaxResult(list)
	return list
end

function asserts.AssertListOfSyntaxTokens(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSyntaxTokens to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSyntaxToken(v)
	end
end

--  
-- List of SyntaxToken objects
function M.ListOfSyntaxTokens(list)
	asserts.AssertListOfSyntaxTokens(list)
	return list
end

function asserts.AssertTopicsDetectionJobPropertiesList(list)
	assert(list)
	assert(type(list) == "table", "Expected TopicsDetectionJobPropertiesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTopicsDetectionJobProperties(v)
	end
end

--  
-- List of TopicsDetectionJobProperties objects
function M.TopicsDetectionJobPropertiesList(list)
	asserts.AssertTopicsDetectionJobPropertiesList(list)
	return list
end

function asserts.AssertListOfDominantLanguages(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDominantLanguages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDominantLanguage(v)
	end
end

--  
-- List of DominantLanguage objects
function M.ListOfDominantLanguages(list)
	asserts.AssertListOfDominantLanguages(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "comprehend.amazonaws.com"
		end
	end
	local ss = { "comprehend" }
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
--- Call StopEntitiesDetectionJob asynchronously, invoking a callback when done
-- @param StopEntitiesDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopEntitiesDetectionJobAsync(StopEntitiesDetectionJobRequest, cb)
	assert(StopEntitiesDetectionJobRequest, "You must provide a StopEntitiesDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.StopEntitiesDetectionJob",
	}
	for header,value in pairs(StopEntitiesDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopEntitiesDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopEntitiesDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopEntitiesDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopEntitiesDetectionJobSync(StopEntitiesDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopEntitiesDetectionJobAsync(StopEntitiesDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectSyntax asynchronously, invoking a callback when done
-- @param DetectSyntaxRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetectSyntaxAsync(DetectSyntaxRequest, cb)
	assert(DetectSyntaxRequest, "You must provide a DetectSyntaxRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.DetectSyntax",
	}
	for header,value in pairs(DetectSyntaxRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetectSyntaxRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetectSyntax synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetectSyntaxRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetectSyntaxSync(DetectSyntaxRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectSyntaxAsync(DetectSyntaxRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartDominantLanguageDetectionJob asynchronously, invoking a callback when done
-- @param StartDominantLanguageDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartDominantLanguageDetectionJobAsync(StartDominantLanguageDetectionJobRequest, cb)
	assert(StartDominantLanguageDetectionJobRequest, "You must provide a StartDominantLanguageDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.StartDominantLanguageDetectionJob",
	}
	for header,value in pairs(StartDominantLanguageDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartDominantLanguageDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartDominantLanguageDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartDominantLanguageDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartDominantLanguageDetectionJobSync(StartDominantLanguageDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartDominantLanguageDetectionJobAsync(StartDominantLanguageDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListKeyPhrasesDetectionJobs asynchronously, invoking a callback when done
-- @param ListKeyPhrasesDetectionJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListKeyPhrasesDetectionJobsAsync(ListKeyPhrasesDetectionJobsRequest, cb)
	assert(ListKeyPhrasesDetectionJobsRequest, "You must provide a ListKeyPhrasesDetectionJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.ListKeyPhrasesDetectionJobs",
	}
	for header,value in pairs(ListKeyPhrasesDetectionJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListKeyPhrasesDetectionJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListKeyPhrasesDetectionJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListKeyPhrasesDetectionJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListKeyPhrasesDetectionJobsSync(ListKeyPhrasesDetectionJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListKeyPhrasesDetectionJobsAsync(ListKeyPhrasesDetectionJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDetectDominantLanguage asynchronously, invoking a callback when done
-- @param BatchDetectDominantLanguageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDetectDominantLanguageAsync(BatchDetectDominantLanguageRequest, cb)
	assert(BatchDetectDominantLanguageRequest, "You must provide a BatchDetectDominantLanguageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.BatchDetectDominantLanguage",
	}
	for header,value in pairs(BatchDetectDominantLanguageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDetectDominantLanguageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDetectDominantLanguage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDetectDominantLanguageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDetectDominantLanguageSync(BatchDetectDominantLanguageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDetectDominantLanguageAsync(BatchDetectDominantLanguageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEntitiesDetectionJob asynchronously, invoking a callback when done
-- @param DescribeEntitiesDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEntitiesDetectionJobAsync(DescribeEntitiesDetectionJobRequest, cb)
	assert(DescribeEntitiesDetectionJobRequest, "You must provide a DescribeEntitiesDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.DescribeEntitiesDetectionJob",
	}
	for header,value in pairs(DescribeEntitiesDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEntitiesDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEntitiesDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEntitiesDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEntitiesDetectionJobSync(DescribeEntitiesDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEntitiesDetectionJobAsync(DescribeEntitiesDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDetectSentiment asynchronously, invoking a callback when done
-- @param BatchDetectSentimentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDetectSentimentAsync(BatchDetectSentimentRequest, cb)
	assert(BatchDetectSentimentRequest, "You must provide a BatchDetectSentimentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.BatchDetectSentiment",
	}
	for header,value in pairs(BatchDetectSentimentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDetectSentimentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDetectSentiment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDetectSentimentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDetectSentimentSync(BatchDetectSentimentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDetectSentimentAsync(BatchDetectSentimentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopKeyPhrasesDetectionJob asynchronously, invoking a callback when done
-- @param StopKeyPhrasesDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopKeyPhrasesDetectionJobAsync(StopKeyPhrasesDetectionJobRequest, cb)
	assert(StopKeyPhrasesDetectionJobRequest, "You must provide a StopKeyPhrasesDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.StopKeyPhrasesDetectionJob",
	}
	for header,value in pairs(StopKeyPhrasesDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopKeyPhrasesDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopKeyPhrasesDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopKeyPhrasesDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopKeyPhrasesDetectionJobSync(StopKeyPhrasesDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopKeyPhrasesDetectionJobAsync(StopKeyPhrasesDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopDominantLanguageDetectionJob asynchronously, invoking a callback when done
-- @param StopDominantLanguageDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopDominantLanguageDetectionJobAsync(StopDominantLanguageDetectionJobRequest, cb)
	assert(StopDominantLanguageDetectionJobRequest, "You must provide a StopDominantLanguageDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.StopDominantLanguageDetectionJob",
	}
	for header,value in pairs(StopDominantLanguageDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopDominantLanguageDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopDominantLanguageDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopDominantLanguageDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopDominantLanguageDetectionJobSync(StopDominantLanguageDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopDominantLanguageDetectionJobAsync(StopDominantLanguageDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectEntities asynchronously, invoking a callback when done
-- @param DetectEntitiesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetectEntitiesAsync(DetectEntitiesRequest, cb)
	assert(DetectEntitiesRequest, "You must provide a DetectEntitiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.DetectEntities",
	}
	for header,value in pairs(DetectEntitiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetectEntitiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetectEntities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetectEntitiesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetectEntitiesSync(DetectEntitiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectEntitiesAsync(DetectEntitiesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTopicsDetectionJob asynchronously, invoking a callback when done
-- @param DescribeTopicsDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTopicsDetectionJobAsync(DescribeTopicsDetectionJobRequest, cb)
	assert(DescribeTopicsDetectionJobRequest, "You must provide a DescribeTopicsDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.DescribeTopicsDetectionJob",
	}
	for header,value in pairs(DescribeTopicsDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTopicsDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTopicsDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTopicsDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTopicsDetectionJobSync(DescribeTopicsDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTopicsDetectionJobAsync(DescribeTopicsDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListEntitiesDetectionJobs asynchronously, invoking a callback when done
-- @param ListEntitiesDetectionJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListEntitiesDetectionJobsAsync(ListEntitiesDetectionJobsRequest, cb)
	assert(ListEntitiesDetectionJobsRequest, "You must provide a ListEntitiesDetectionJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.ListEntitiesDetectionJobs",
	}
	for header,value in pairs(ListEntitiesDetectionJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListEntitiesDetectionJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListEntitiesDetectionJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListEntitiesDetectionJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListEntitiesDetectionJobsSync(ListEntitiesDetectionJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEntitiesDetectionJobsAsync(ListEntitiesDetectionJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartEntitiesDetectionJob asynchronously, invoking a callback when done
-- @param StartEntitiesDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartEntitiesDetectionJobAsync(StartEntitiesDetectionJobRequest, cb)
	assert(StartEntitiesDetectionJobRequest, "You must provide a StartEntitiesDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.StartEntitiesDetectionJob",
	}
	for header,value in pairs(StartEntitiesDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartEntitiesDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartEntitiesDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartEntitiesDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartEntitiesDetectionJobSync(StartEntitiesDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartEntitiesDetectionJobAsync(StartEntitiesDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectSentiment asynchronously, invoking a callback when done
-- @param DetectSentimentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetectSentimentAsync(DetectSentimentRequest, cb)
	assert(DetectSentimentRequest, "You must provide a DetectSentimentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.DetectSentiment",
	}
	for header,value in pairs(DetectSentimentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetectSentimentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetectSentiment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetectSentimentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetectSentimentSync(DetectSentimentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectSentimentAsync(DetectSentimentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSentimentDetectionJob asynchronously, invoking a callback when done
-- @param DescribeSentimentDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSentimentDetectionJobAsync(DescribeSentimentDetectionJobRequest, cb)
	assert(DescribeSentimentDetectionJobRequest, "You must provide a DescribeSentimentDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.DescribeSentimentDetectionJob",
	}
	for header,value in pairs(DescribeSentimentDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSentimentDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSentimentDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSentimentDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSentimentDetectionJobSync(DescribeSentimentDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSentimentDetectionJobAsync(DescribeSentimentDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartTopicsDetectionJob asynchronously, invoking a callback when done
-- @param StartTopicsDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartTopicsDetectionJobAsync(StartTopicsDetectionJobRequest, cb)
	assert(StartTopicsDetectionJobRequest, "You must provide a StartTopicsDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.StartTopicsDetectionJob",
	}
	for header,value in pairs(StartTopicsDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartTopicsDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartTopicsDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartTopicsDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartTopicsDetectionJobSync(StartTopicsDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartTopicsDetectionJobAsync(StartTopicsDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTopicsDetectionJobs asynchronously, invoking a callback when done
-- @param ListTopicsDetectionJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTopicsDetectionJobsAsync(ListTopicsDetectionJobsRequest, cb)
	assert(ListTopicsDetectionJobsRequest, "You must provide a ListTopicsDetectionJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.ListTopicsDetectionJobs",
	}
	for header,value in pairs(ListTopicsDetectionJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTopicsDetectionJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTopicsDetectionJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTopicsDetectionJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTopicsDetectionJobsSync(ListTopicsDetectionJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTopicsDetectionJobsAsync(ListTopicsDetectionJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectKeyPhrases asynchronously, invoking a callback when done
-- @param DetectKeyPhrasesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetectKeyPhrasesAsync(DetectKeyPhrasesRequest, cb)
	assert(DetectKeyPhrasesRequest, "You must provide a DetectKeyPhrasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.DetectKeyPhrases",
	}
	for header,value in pairs(DetectKeyPhrasesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetectKeyPhrasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetectKeyPhrases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetectKeyPhrasesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetectKeyPhrasesSync(DetectKeyPhrasesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectKeyPhrasesAsync(DetectKeyPhrasesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSentimentDetectionJobs asynchronously, invoking a callback when done
-- @param ListSentimentDetectionJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSentimentDetectionJobsAsync(ListSentimentDetectionJobsRequest, cb)
	assert(ListSentimentDetectionJobsRequest, "You must provide a ListSentimentDetectionJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.ListSentimentDetectionJobs",
	}
	for header,value in pairs(ListSentimentDetectionJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSentimentDetectionJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSentimentDetectionJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSentimentDetectionJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSentimentDetectionJobsSync(ListSentimentDetectionJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSentimentDetectionJobsAsync(ListSentimentDetectionJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartSentimentDetectionJob asynchronously, invoking a callback when done
-- @param StartSentimentDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartSentimentDetectionJobAsync(StartSentimentDetectionJobRequest, cb)
	assert(StartSentimentDetectionJobRequest, "You must provide a StartSentimentDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.StartSentimentDetectionJob",
	}
	for header,value in pairs(StartSentimentDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartSentimentDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartSentimentDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartSentimentDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartSentimentDetectionJobSync(StartSentimentDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartSentimentDetectionJobAsync(StartSentimentDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeKeyPhrasesDetectionJob asynchronously, invoking a callback when done
-- @param DescribeKeyPhrasesDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeKeyPhrasesDetectionJobAsync(DescribeKeyPhrasesDetectionJobRequest, cb)
	assert(DescribeKeyPhrasesDetectionJobRequest, "You must provide a DescribeKeyPhrasesDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.DescribeKeyPhrasesDetectionJob",
	}
	for header,value in pairs(DescribeKeyPhrasesDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeKeyPhrasesDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeKeyPhrasesDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeKeyPhrasesDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeKeyPhrasesDetectionJobSync(DescribeKeyPhrasesDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeKeyPhrasesDetectionJobAsync(DescribeKeyPhrasesDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectDominantLanguage asynchronously, invoking a callback when done
-- @param DetectDominantLanguageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetectDominantLanguageAsync(DetectDominantLanguageRequest, cb)
	assert(DetectDominantLanguageRequest, "You must provide a DetectDominantLanguageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.DetectDominantLanguage",
	}
	for header,value in pairs(DetectDominantLanguageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetectDominantLanguageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetectDominantLanguage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetectDominantLanguageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetectDominantLanguageSync(DetectDominantLanguageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectDominantLanguageAsync(DetectDominantLanguageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartKeyPhrasesDetectionJob asynchronously, invoking a callback when done
-- @param StartKeyPhrasesDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartKeyPhrasesDetectionJobAsync(StartKeyPhrasesDetectionJobRequest, cb)
	assert(StartKeyPhrasesDetectionJobRequest, "You must provide a StartKeyPhrasesDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.StartKeyPhrasesDetectionJob",
	}
	for header,value in pairs(StartKeyPhrasesDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartKeyPhrasesDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartKeyPhrasesDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartKeyPhrasesDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartKeyPhrasesDetectionJobSync(StartKeyPhrasesDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartKeyPhrasesDetectionJobAsync(StartKeyPhrasesDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDetectSyntax asynchronously, invoking a callback when done
-- @param BatchDetectSyntaxRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDetectSyntaxAsync(BatchDetectSyntaxRequest, cb)
	assert(BatchDetectSyntaxRequest, "You must provide a BatchDetectSyntaxRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.BatchDetectSyntax",
	}
	for header,value in pairs(BatchDetectSyntaxRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDetectSyntaxRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDetectSyntax synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDetectSyntaxRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDetectSyntaxSync(BatchDetectSyntaxRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDetectSyntaxAsync(BatchDetectSyntaxRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDominantLanguageDetectionJob asynchronously, invoking a callback when done
-- @param DescribeDominantLanguageDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDominantLanguageDetectionJobAsync(DescribeDominantLanguageDetectionJobRequest, cb)
	assert(DescribeDominantLanguageDetectionJobRequest, "You must provide a DescribeDominantLanguageDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.DescribeDominantLanguageDetectionJob",
	}
	for header,value in pairs(DescribeDominantLanguageDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDominantLanguageDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDominantLanguageDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDominantLanguageDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDominantLanguageDetectionJobSync(DescribeDominantLanguageDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDominantLanguageDetectionJobAsync(DescribeDominantLanguageDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopSentimentDetectionJob asynchronously, invoking a callback when done
-- @param StopSentimentDetectionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopSentimentDetectionJobAsync(StopSentimentDetectionJobRequest, cb)
	assert(StopSentimentDetectionJobRequest, "You must provide a StopSentimentDetectionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.StopSentimentDetectionJob",
	}
	for header,value in pairs(StopSentimentDetectionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopSentimentDetectionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopSentimentDetectionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopSentimentDetectionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopSentimentDetectionJobSync(StopSentimentDetectionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopSentimentDetectionJobAsync(StopSentimentDetectionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDetectKeyPhrases asynchronously, invoking a callback when done
-- @param BatchDetectKeyPhrasesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDetectKeyPhrasesAsync(BatchDetectKeyPhrasesRequest, cb)
	assert(BatchDetectKeyPhrasesRequest, "You must provide a BatchDetectKeyPhrasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.BatchDetectKeyPhrases",
	}
	for header,value in pairs(BatchDetectKeyPhrasesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDetectKeyPhrasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDetectKeyPhrases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDetectKeyPhrasesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDetectKeyPhrasesSync(BatchDetectKeyPhrasesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDetectKeyPhrasesAsync(BatchDetectKeyPhrasesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDominantLanguageDetectionJobs asynchronously, invoking a callback when done
-- @param ListDominantLanguageDetectionJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDominantLanguageDetectionJobsAsync(ListDominantLanguageDetectionJobsRequest, cb)
	assert(ListDominantLanguageDetectionJobsRequest, "You must provide a ListDominantLanguageDetectionJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.ListDominantLanguageDetectionJobs",
	}
	for header,value in pairs(ListDominantLanguageDetectionJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDominantLanguageDetectionJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDominantLanguageDetectionJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDominantLanguageDetectionJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDominantLanguageDetectionJobsSync(ListDominantLanguageDetectionJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDominantLanguageDetectionJobsAsync(ListDominantLanguageDetectionJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDetectEntities asynchronously, invoking a callback when done
-- @param BatchDetectEntitiesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDetectEntitiesAsync(BatchDetectEntitiesRequest, cb)
	assert(BatchDetectEntitiesRequest, "You must provide a BatchDetectEntitiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Comprehend_20171127.BatchDetectEntities",
	}
	for header,value in pairs(BatchDetectEntitiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDetectEntitiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDetectEntities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDetectEntitiesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDetectEntitiesSync(BatchDetectEntitiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDetectEntitiesAsync(BatchDetectEntitiesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
