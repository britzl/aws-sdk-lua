--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudSearch Domain (cloudsearchdomain-2013-01-01)

local M = {}

M.metadata = {
	api_version = "2013-01-01",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "cloudsearchdomain",
	service_abbreviation = "",
	service_full_name = "Amazon CloudSearch Domain",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cloudsearchdomain-2013-01-01",
}

local FieldStats_keys = { "count" = true, "missing" = true, "max" = true, "sum" = true, "min" = true, "sumOfSquares" = true, "stddev" = true, "mean" = true, nil }

function M.AssertFieldStats(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldStats to be of type 'table'")
	if struct["count"] then M.AssertLong(struct["count"]) end
	if struct["missing"] then M.AssertLong(struct["missing"]) end
	if struct["max"] then M.AssertString(struct["max"]) end
	if struct["sum"] then M.AssertDouble(struct["sum"]) end
	if struct["min"] then M.AssertString(struct["min"]) end
	if struct["sumOfSquares"] then M.AssertDouble(struct["sumOfSquares"]) end
	if struct["stddev"] then M.AssertDouble(struct["stddev"]) end
	if struct["mean"] then M.AssertString(struct["mean"]) end
	for k,_ in pairs(struct) do
		assert(FieldStats_keys[k], "FieldStats contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldStats
-- &lt;p&gt;The statistics for a field calculated in the request.&lt;/p&gt;
-- @param count [Long] &lt;p&gt;The number of documents that contain a value in the specified field in the result set.&lt;/p&gt;
-- @param missing [Long] &lt;p&gt;The number of documents that do not contain a value in the specified field in the result set.&lt;/p&gt;
-- @param max [String] &lt;p&gt;The maximum value found in the specified field in the result set.&lt;/p&gt; &lt;p&gt;If the field is numeric (&lt;code&gt;int&lt;/code&gt;, &lt;code&gt;int-array&lt;/code&gt;, &lt;code&gt;double&lt;/code&gt;, or &lt;code&gt;double-array&lt;/code&gt;), &lt;code&gt;max&lt;/code&gt; is the string representation of a double-precision 64-bit floating point value. If the field is &lt;code&gt;date&lt;/code&gt; or &lt;code&gt;date-array&lt;/code&gt;, &lt;code&gt;max&lt;/code&gt; is the string representation of a date with the format specified in &lt;a href=&quot;http://tools.ietf.org/html/rfc3339&quot;&gt;IETF RFC3339&lt;/a&gt;: yyyy-mm-ddTHH:mm:ss.SSSZ.&lt;/p&gt;
-- @param sum [Double] &lt;p&gt;The sum of the field values across the documents in the result set. &lt;code&gt;null&lt;/code&gt; for date fields.&lt;/p&gt;
-- @param min [String] &lt;p&gt;The minimum value found in the specified field in the result set.&lt;/p&gt; &lt;p&gt;If the field is numeric (&lt;code&gt;int&lt;/code&gt;, &lt;code&gt;int-array&lt;/code&gt;, &lt;code&gt;double&lt;/code&gt;, or &lt;code&gt;double-array&lt;/code&gt;), &lt;code&gt;min&lt;/code&gt; is the string representation of a double-precision 64-bit floating point value. If the field is &lt;code&gt;date&lt;/code&gt; or &lt;code&gt;date-array&lt;/code&gt;, &lt;code&gt;min&lt;/code&gt; is the string representation of a date with the format specified in &lt;a href=&quot;http://tools.ietf.org/html/rfc3339&quot;&gt;IETF RFC3339&lt;/a&gt;: yyyy-mm-ddTHH:mm:ss.SSSZ.&lt;/p&gt;
-- @param sumOfSquares [Double] &lt;p&gt;The sum of all field values in the result set squared.&lt;/p&gt;
-- @param stddev [Double] &lt;p&gt;The standard deviation of the values in the specified field in the result set.&lt;/p&gt;
-- @param mean [String] &lt;p&gt;The average of the values found in the specified field in the result set.&lt;/p&gt; &lt;p&gt;If the field is numeric (&lt;code&gt;int&lt;/code&gt;, &lt;code&gt;int-array&lt;/code&gt;, &lt;code&gt;double&lt;/code&gt;, or &lt;code&gt;double-array&lt;/code&gt;), &lt;code&gt;mean&lt;/code&gt; is the string representation of a double-precision 64-bit floating point value. If the field is &lt;code&gt;date&lt;/code&gt; or &lt;code&gt;date-array&lt;/code&gt;, &lt;code&gt;mean&lt;/code&gt; is the string representation of a date with the format specified in &lt;a href=&quot;http://tools.ietf.org/html/rfc3339&quot;&gt;IETF RFC3339&lt;/a&gt;: yyyy-mm-ddTHH:mm:ss.SSSZ.&lt;/p&gt;
function M.FieldStats(count, missing, max, sum, min, sumOfSquares, stddev, mean, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FieldStats")
	local t = { 
		["count"] = count,
		["missing"] = missing,
		["max"] = max,
		["sum"] = sum,
		["min"] = min,
		["sumOfSquares"] = sumOfSquares,
		["stddev"] = stddev,
		["mean"] = mean,
	}
	M.AssertFieldStats(t)
	return t
end

local DocumentServiceException_keys = { "status" = true, "message" = true, nil }

function M.AssertDocumentServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentServiceException to be of type 'table'")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DocumentServiceException_keys[k], "DocumentServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentServiceException
-- &lt;p&gt;Information about any problems encountered while processing an upload request.&lt;/p&gt;
-- @param status [String] &lt;p&gt;The return status of a document upload request, &lt;code&gt;error&lt;/code&gt; or &lt;code&gt;success&lt;/code&gt;.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The description of the errors returned by the document service.&lt;/p&gt;
function M.DocumentServiceException(status, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentServiceException")
	local t = { 
		["status"] = status,
		["message"] = message,
	}
	M.AssertDocumentServiceException(t)
	return t
end

local BucketInfo_keys = { "buckets" = true, nil }

function M.AssertBucketInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketInfo to be of type 'table'")
	if struct["buckets"] then M.AssertBucketList(struct["buckets"]) end
	for k,_ in pairs(struct) do
		assert(BucketInfo_keys[k], "BucketInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketInfo
-- &lt;p&gt;A container for the calculated facet values and counts.&lt;/p&gt;
-- @param buckets [BucketList] &lt;p&gt;A list of the calculated facet values and counts.&lt;/p&gt;
function M.BucketInfo(buckets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketInfo")
	local t = { 
		["buckets"] = buckets,
	}
	M.AssertBucketInfo(t)
	return t
end

local Hit_keys = { "fields" = true, "highlights" = true, "id" = true, "exprs" = true, nil }

function M.AssertHit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Hit to be of type 'table'")
	if struct["fields"] then M.AssertFields(struct["fields"]) end
	if struct["highlights"] then M.AssertHighlights(struct["highlights"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["exprs"] then M.AssertExprs(struct["exprs"]) end
	for k,_ in pairs(struct) do
		assert(Hit_keys[k], "Hit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Hit
-- &lt;p&gt;Information about a document that matches the search request.&lt;/p&gt;
-- @param fields [Fields] &lt;p&gt;The fields returned from a document that matches the search request.&lt;/p&gt;
-- @param highlights [Highlights] &lt;p&gt;The highlights returned from a document that matches the search request.&lt;/p&gt;
-- @param id [String] &lt;p&gt;The document ID of a document that matches the search request.&lt;/p&gt;
-- @param exprs [Exprs] &lt;p&gt;The expressions returned from a document that matches the search request.&lt;/p&gt;
function M.Hit(fields, highlights, id, exprs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Hit")
	local t = { 
		["fields"] = fields,
		["highlights"] = highlights,
		["id"] = id,
		["exprs"] = exprs,
	}
	M.AssertHit(t)
	return t
end

local UploadDocumentsResponse_keys = { "status" = true, "warnings" = true, "adds" = true, "deletes" = true, nil }

function M.AssertUploadDocumentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadDocumentsResponse to be of type 'table'")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["warnings"] then M.AssertDocumentServiceWarnings(struct["warnings"]) end
	if struct["adds"] then M.AssertAdds(struct["adds"]) end
	if struct["deletes"] then M.AssertDeletes(struct["deletes"]) end
	for k,_ in pairs(struct) do
		assert(UploadDocumentsResponse_keys[k], "UploadDocumentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadDocumentsResponse
-- &lt;p&gt;Contains the response to an &lt;code&gt;UploadDocuments&lt;/code&gt; request.&lt;/p&gt;
-- @param status [String] &lt;p&gt;The status of an &lt;code&gt;UploadDocumentsRequest&lt;/code&gt;.&lt;/p&gt;
-- @param warnings [DocumentServiceWarnings] &lt;p&gt;Any warnings returned by the document service about the documents being uploaded.&lt;/p&gt;
-- @param adds [Adds] &lt;p&gt;The number of documents that were added to the search domain.&lt;/p&gt;
-- @param deletes [Deletes] &lt;p&gt;The number of documents that were deleted from the search domain.&lt;/p&gt;
function M.UploadDocumentsResponse(status, warnings, adds, deletes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadDocumentsResponse")
	local t = { 
		["status"] = status,
		["warnings"] = warnings,
		["adds"] = adds,
		["deletes"] = deletes,
	}
	M.AssertUploadDocumentsResponse(t)
	return t
end

local SearchStatus_keys = { "timems" = true, "rid" = true, nil }

function M.AssertSearchStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchStatus to be of type 'table'")
	if struct["timems"] then M.AssertLong(struct["timems"]) end
	if struct["rid"] then M.AssertString(struct["rid"]) end
	for k,_ in pairs(struct) do
		assert(SearchStatus_keys[k], "SearchStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchStatus
-- &lt;p&gt;Contains the resource id (&lt;code&gt;rid&lt;/code&gt;) and the time it took to process the request (&lt;code&gt;timems&lt;/code&gt;).&lt;/p&gt;
-- @param timems [Long] &lt;p&gt;How long it took to process the request, in milliseconds.&lt;/p&gt;
-- @param rid [String] &lt;p&gt;The encrypted resource ID for the request.&lt;/p&gt;
function M.SearchStatus(timems, rid, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchStatus")
	local t = { 
		["timems"] = timems,
		["rid"] = rid,
	}
	M.AssertSearchStatus(t)
	return t
end

local SuggestResponse_keys = { "status" = true, "suggest" = true, nil }

function M.AssertSuggestResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggestResponse to be of type 'table'")
	if struct["status"] then M.AssertSuggestStatus(struct["status"]) end
	if struct["suggest"] then M.AssertSuggestModel(struct["suggest"]) end
	for k,_ in pairs(struct) do
		assert(SuggestResponse_keys[k], "SuggestResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggestResponse
-- &lt;p&gt;Contains the response to a &lt;code&gt;Suggest&lt;/code&gt; request.&lt;/p&gt;
-- @param status [SuggestStatus] &lt;p&gt;The status of a &lt;code&gt;SuggestRequest&lt;/code&gt;. Contains the resource ID (&lt;code&gt;rid&lt;/code&gt;) and how long it took to process the request (&lt;code&gt;timems&lt;/code&gt;).&lt;/p&gt;
-- @param suggest [SuggestModel] &lt;p&gt;Container for the matching search suggestion information.&lt;/p&gt;
function M.SuggestResponse(status, suggest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggestResponse")
	local t = { 
		["status"] = status,
		["suggest"] = suggest,
	}
	M.AssertSuggestResponse(t)
	return t
end

local UploadDocumentsRequest_keys = { "documents" = true, "contentType" = true, nil }

function M.AssertUploadDocumentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadDocumentsRequest to be of type 'table'")
	assert(struct["documents"], "Expected key documents to exist in table")
	assert(struct["contentType"], "Expected key contentType to exist in table")
	if struct["documents"] then M.AssertBlob(struct["documents"]) end
	if struct["contentType"] then M.AssertContentType(struct["contentType"]) end
	for k,_ in pairs(struct) do
		assert(UploadDocumentsRequest_keys[k], "UploadDocumentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadDocumentsRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;UploadDocuments&lt;/code&gt; request.&lt;/p&gt;
-- @param documents [Blob] &lt;p&gt;A batch of documents formatted in JSON or HTML.&lt;/p&gt;
-- @param contentType [ContentType] &lt;p&gt;The format of the batch you are uploading. Amazon CloudSearch supports two document batch formats:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;application/json&lt;/li&gt; &lt;li&gt;application/xml&lt;/li&gt; &lt;/ul&gt;
-- Required parameter: documents
-- Required parameter: contentType
function M.UploadDocumentsRequest(documents, contentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadDocumentsRequest")
	local t = { 
		["documents"] = documents,
		["contentType"] = contentType,
	}
	M.AssertUploadDocumentsRequest(t)
	return t
end

local SearchException_keys = { "message" = true, nil }

function M.AssertSearchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(SearchException_keys[k], "SearchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchException
-- &lt;p&gt;Information about any problems encountered while processing a search request.&lt;/p&gt;
-- @param message [String] &lt;p&gt;A description of the error returned by the search service.&lt;/p&gt;
function M.SearchException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchException")
	local t = { 
		["message"] = message,
	}
	M.AssertSearchException(t)
	return t
end

local Hits_keys = { "cursor" = true, "found" = true, "hit" = true, "start" = true, nil }

function M.AssertHits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Hits to be of type 'table'")
	if struct["cursor"] then M.AssertString(struct["cursor"]) end
	if struct["found"] then M.AssertLong(struct["found"]) end
	if struct["hit"] then M.AssertHitList(struct["hit"]) end
	if struct["start"] then M.AssertLong(struct["start"]) end
	for k,_ in pairs(struct) do
		assert(Hits_keys[k], "Hits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Hits
-- &lt;p&gt;The collection of documents that match the search request.&lt;/p&gt;
-- @param cursor [String] &lt;p&gt;A cursor that can be used to retrieve the next set of matching documents when you want to page through a large result set.&lt;/p&gt;
-- @param found [Long] &lt;p&gt;The total number of documents that match the search request.&lt;/p&gt;
-- @param hit [HitList] &lt;p&gt;A document that matches the search request.&lt;/p&gt;
-- @param start [Long] &lt;p&gt;The index of the first matching document.&lt;/p&gt;
function M.Hits(cursor, found, hit, start, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Hits")
	local t = { 
		["cursor"] = cursor,
		["found"] = found,
		["hit"] = hit,
		["start"] = start,
	}
	M.AssertHits(t)
	return t
end

local SuggestStatus_keys = { "timems" = true, "rid" = true, nil }

function M.AssertSuggestStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggestStatus to be of type 'table'")
	if struct["timems"] then M.AssertLong(struct["timems"]) end
	if struct["rid"] then M.AssertString(struct["rid"]) end
	for k,_ in pairs(struct) do
		assert(SuggestStatus_keys[k], "SuggestStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggestStatus
-- &lt;p&gt;Contains the resource id (&lt;code&gt;rid&lt;/code&gt;) and the time it took to process the request (&lt;code&gt;timems&lt;/code&gt;).&lt;/p&gt;
-- @param timems [Long] &lt;p&gt;How long it took to process the request, in milliseconds.&lt;/p&gt;
-- @param rid [String] &lt;p&gt;The encrypted resource ID for the request.&lt;/p&gt;
function M.SuggestStatus(timems, rid, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggestStatus")
	local t = { 
		["timems"] = timems,
		["rid"] = rid,
	}
	M.AssertSuggestStatus(t)
	return t
end

local Bucket_keys = { "count" = true, "value" = true, nil }

function M.AssertBucket(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Bucket to be of type 'table'")
	if struct["count"] then M.AssertLong(struct["count"]) end
	if struct["value"] then M.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(Bucket_keys[k], "Bucket contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Bucket
-- &lt;p&gt;A container for facet information. &lt;/p&gt;
-- @param count [Long] &lt;p&gt;The number of hits that contain the facet value in the specified facet field.&lt;/p&gt;
-- @param value [String] &lt;p&gt;The facet value being counted.&lt;/p&gt;
function M.Bucket(count, value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Bucket")
	local t = { 
		["count"] = count,
		["value"] = value,
	}
	M.AssertBucket(t)
	return t
end

local SearchResponse_keys = { "status" = true, "hits" = true, "stats" = true, "facets" = true, nil }

function M.AssertSearchResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchResponse to be of type 'table'")
	if struct["status"] then M.AssertSearchStatus(struct["status"]) end
	if struct["hits"] then M.AssertHits(struct["hits"]) end
	if struct["stats"] then M.AssertStats(struct["stats"]) end
	if struct["facets"] then M.AssertFacets(struct["facets"]) end
	for k,_ in pairs(struct) do
		assert(SearchResponse_keys[k], "SearchResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchResponse
-- &lt;p&gt;The result of a &lt;code&gt;Search&lt;/code&gt; request. Contains the documents that match the specified search criteria and any requested fields, highlights, and facet information.&lt;/p&gt;
-- @param status [SearchStatus] &lt;p&gt;The status information returned for the search request.&lt;/p&gt;
-- @param hits [Hits] &lt;p&gt;The documents that match the search criteria.&lt;/p&gt;
-- @param stats [Stats] &lt;p&gt;The requested field statistics information.&lt;/p&gt;
-- @param facets [Facets] &lt;p&gt;The requested facet information.&lt;/p&gt;
function M.SearchResponse(status, hits, stats, facets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchResponse")
	local t = { 
		["status"] = status,
		["hits"] = hits,
		["stats"] = stats,
		["facets"] = facets,
	}
	M.AssertSearchResponse(t)
	return t
end

local DocumentServiceWarning_keys = { "message" = true, nil }

function M.AssertDocumentServiceWarning(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentServiceWarning to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DocumentServiceWarning_keys[k], "DocumentServiceWarning contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentServiceWarning
-- &lt;p&gt;A warning returned by the document service when an issue is discovered while processing an upload request.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The description for a warning returned by the document service.&lt;/p&gt;
function M.DocumentServiceWarning(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentServiceWarning")
	local t = { 
		["message"] = message,
	}
	M.AssertDocumentServiceWarning(t)
	return t
end

local SuggestRequest_keys = { "query" = true, "suggester" = true, "size" = true, nil }

function M.AssertSuggestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggestRequest to be of type 'table'")
	assert(struct["query"], "Expected key query to exist in table")
	assert(struct["suggester"], "Expected key suggester to exist in table")
	if struct["query"] then M.AssertQuery(struct["query"]) end
	if struct["suggester"] then M.AssertSuggester(struct["suggester"]) end
	if struct["size"] then M.AssertSuggestionsSize(struct["size"]) end
	for k,_ in pairs(struct) do
		assert(SuggestRequest_keys[k], "SuggestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggestRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;Suggest&lt;/code&gt; request.&lt;/p&gt;
-- @param query [Query] &lt;p&gt;Specifies the string for which you want to get suggestions.&lt;/p&gt;
-- @param suggester [Suggester] &lt;p&gt;Specifies the name of the suggester to use to find suggested matches.&lt;/p&gt;
-- @param size [SuggestionsSize] &lt;p&gt;Specifies the maximum number of suggestions to return. &lt;/p&gt;
-- Required parameter: query
-- Required parameter: suggester
function M.SuggestRequest(query, suggester, size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggestRequest")
	local t = { 
		["query"] = query,
		["suggester"] = suggester,
		["size"] = size,
	}
	M.AssertSuggestRequest(t)
	return t
end

local SearchRequest_keys = { "sort" = true, "facet" = true, "stats" = true, "partial" = true, "filterQuery" = true, "expr" = true, "return" = true, "cursor" = true, "start" = true, "queryOptions" = true, "query" = true, "highlight" = true, "queryParser" = true, "size" = true, nil }

function M.AssertSearchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchRequest to be of type 'table'")
	assert(struct["query"], "Expected key query to exist in table")
	if struct["sort"] then M.AssertSort(struct["sort"]) end
	if struct["facet"] then M.AssertFacet(struct["facet"]) end
	if struct["stats"] then M.AssertStat(struct["stats"]) end
	if struct["partial"] then M.AssertPartial(struct["partial"]) end
	if struct["filterQuery"] then M.AssertFilterQuery(struct["filterQuery"]) end
	if struct["expr"] then M.AssertExpr(struct["expr"]) end
	if struct["return"] then M.AssertReturn(struct["return"]) end
	if struct["cursor"] then M.AssertCursor(struct["cursor"]) end
	if struct["start"] then M.AssertStart(struct["start"]) end
	if struct["queryOptions"] then M.AssertQueryOptions(struct["queryOptions"]) end
	if struct["query"] then M.AssertQuery(struct["query"]) end
	if struct["highlight"] then M.AssertHighlight(struct["highlight"]) end
	if struct["queryParser"] then M.AssertQueryParser(struct["queryParser"]) end
	if struct["size"] then M.AssertSize(struct["size"]) end
	for k,_ in pairs(struct) do
		assert(SearchRequest_keys[k], "SearchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchRequest
-- &lt;p&gt;Container for the parameters to the &lt;code&gt;Search&lt;/code&gt; request.&lt;/p&gt;
-- @param sort [Sort] &lt;p&gt;Specifies the fields or custom expressions to use to sort the search results. Multiple fields or expressions are specified as a comma-separated list. You must specify the sort direction (&lt;code&gt;asc&lt;/code&gt; or &lt;code&gt;desc&lt;/code&gt;) for each field; for example, &lt;code&gt;year desc,title asc&lt;/code&gt;. To use a field to sort results, the field must be sort-enabled in the domain configuration. Array type fields cannot be used for sorting. If no &lt;code&gt;sort&lt;/code&gt; parameter is specified, results are sorted by their default relevance scores in descending order: &lt;code&gt;_score desc&lt;/code&gt;. You can also sort by document ID (&lt;code&gt;_id asc&lt;/code&gt;) and version (&lt;code&gt;_version desc&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/sorting-results.html&quot;&gt;Sorting Results&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param facet [Facet] &lt;p&gt;Specifies one or more fields for which to get facet information, and options that control how the facet information is returned. Each specified field must be facet-enabled in the domain configuration. The fields and options are specified in JSON using the form &lt;code&gt;{&quot;FIELD&quot;:{&quot;OPTION&quot;:VALUE,&quot;OPTION:&quot;STRING&quot;},&quot;FIELD&quot;:{&quot;OPTION&quot;:VALUE,&quot;OPTION&quot;:&quot;STRING&quot;}}&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;You can specify the following faceting options:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;buckets&lt;/code&gt; specifies an array of the facet values or ranges to count. Ranges are specified using the same syntax that you use to search for a range of values. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-ranges.html&quot;&gt; Searching for a Range of Values&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;. Buckets are returned in the order they are specified in the request. The &lt;code&gt;sort&lt;/code&gt; and &lt;code&gt;size&lt;/code&gt; options are not valid if you specify &lt;code&gt;buckets&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;size&lt;/code&gt; specifies the maximum number of facets to include in the results. By default, Amazon CloudSearch returns counts for the top 10. The &lt;code&gt;size&lt;/code&gt; parameter is only valid when you specify the &lt;code&gt;sort&lt;/code&gt; option; it cannot be used in conjunction with &lt;code&gt;buckets&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;&lt;code&gt;sort&lt;/code&gt; specifies how you want to sort the facets in the results: &lt;code&gt;bucket&lt;/code&gt; or &lt;code&gt;count&lt;/code&gt;. Specify &lt;code&gt;bucket&lt;/code&gt; to sort alphabetically or numerically by facet value (in ascending order). Specify &lt;code&gt;count&lt;/code&gt; to sort by the facet counts computed for each facet value (in descending order). To retrieve facet counts for particular values or ranges of values, use the &lt;code&gt;buckets&lt;/code&gt; option instead of &lt;code&gt;sort&lt;/code&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If no facet options are specified, facet counts are computed for all field values, the facets are sorted by facet count, and the top 10 facets are returned in the results.&lt;/p&gt; &lt;p&gt;To count particular buckets of values, use the &lt;code&gt;buckets&lt;/code&gt; option. For example, the following request uses the &lt;code&gt;buckets&lt;/code&gt; option to calculate and return facet counts by decade.&lt;/p&gt; &lt;p&gt;&lt;code&gt; {&quot;year&quot;:{&quot;buckets&quot;:[&quot;[1970,1979]&quot;,&quot;[1980,1989]&quot;,&quot;[1990,1999]&quot;,&quot;[2000,2009]&quot;,&quot;[2010,}&quot;]}} &lt;/code&gt;&lt;/p&gt; &lt;p&gt;To sort facets by facet count, use the &lt;code&gt;count&lt;/code&gt; option. For example, the following request sets the &lt;code&gt;sort&lt;/code&gt; option to &lt;code&gt;count&lt;/code&gt; to sort the facet values by facet count, with the facet values that have the most matching documents listed first. Setting the &lt;code&gt;size&lt;/code&gt; option to 3 returns only the top three facet values.&lt;/p&gt; &lt;p&gt;&lt;code&gt; {&quot;year&quot;:{&quot;sort&quot;:&quot;count&quot;,&quot;size&quot;:3}} &lt;/code&gt;&lt;/p&gt; &lt;p&gt;To sort the facets by value, use the &lt;code&gt;bucket&lt;/code&gt; option. For example, the following request sets the &lt;code&gt;sort&lt;/code&gt; option to &lt;code&gt;bucket&lt;/code&gt; to sort the facet values numerically by year, with earliest year listed first. &lt;/p&gt; &lt;p&gt;&lt;code&gt; {&quot;year&quot;:{&quot;sort&quot;:&quot;bucket&quot;}} &lt;/code&gt;&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/faceting.html&quot;&gt;Getting and Using Facet Information&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param stats [Stat] &lt;p&gt;Specifies one or more fields for which to get statistics information. Each specified field must be facet-enabled in the domain configuration. The fields are specified in JSON using the form:&lt;/p&gt; &lt;code&gt;{&quot;FIELD-A&quot;:{},&quot;FIELD-B&quot;:{}}&lt;/code&gt; &lt;p&gt;There are currently no options supported for statistics.&lt;/p&gt;
-- @param partial [Partial] &lt;p&gt;Enables partial results to be returned if one or more index partitions are unavailable. When your search index is partitioned across multiple search instances, by default Amazon CloudSearch only returns results if every partition can be queried. This means that the failure of a single search instance can result in 5xx (internal server) errors. When you enable partial results, Amazon CloudSearch returns whatever results are available and includes the percentage of documents searched in the search results (percent-searched). This enables you to more gracefully degrade your users' search experience. For example, rather than displaying no results, you could display the partial results and a message indicating that the results might be incomplete due to a temporary system outage.&lt;/p&gt;
-- @param filterQuery [FilterQuery] &lt;p&gt;Specifies a structured query that filters the results of a search without affecting how the results are scored and sorted. You use &lt;code&gt;filterQuery&lt;/code&gt; in conjunction with the &lt;code&gt;query&lt;/code&gt; parameter to filter the documents that match the constraints specified in the &lt;code&gt;query&lt;/code&gt; parameter. Specifying a filter controls only which matching documents are included in the results, it has no effect on how they are scored and sorted. The &lt;code&gt;filterQuery&lt;/code&gt; parameter supports the full structured query syntax. &lt;/p&gt; &lt;p&gt;For more information about using filters, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/filtering-results.html&quot;&gt;Filtering Matching Documents&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param expr [Expr] &lt;p&gt;Defines one or more numeric expressions that can be used to sort results or specify search or filter criteria. You can also specify expressions as return fields. &lt;/p&gt; &lt;p&gt;You specify the expressions in JSON using the form &lt;code&gt;{&quot;EXPRESSIONNAME&quot;:&quot;EXPRESSION&quot;}&lt;/code&gt;. You can define and use multiple expressions in a search request. For example:&lt;/p&gt; &lt;p&gt;&lt;code&gt; {&quot;expression1&quot;:&quot;_score*rating&quot;, &quot;expression2&quot;:&quot;(1/rank)*year&quot;} &lt;/code&gt; &lt;/p&gt; &lt;p&gt;For information about the variables, operators, and functions you can use in expressions, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html#writing-expressions&quot;&gt;Writing Expressions&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param return [Return] &lt;p&gt;Specifies the field and expression values to include in the response. Multiple fields or expressions are specified as a comma-separated list. By default, a search response includes all return enabled fields (&lt;code&gt;_all_fields&lt;/code&gt;). To return only the document IDs for the matching documents, specify &lt;code&gt;_no_fields&lt;/code&gt;. To retrieve the relevance score calculated for each document, specify &lt;code&gt;_score&lt;/code&gt;. &lt;/p&gt;
-- @param cursor [Cursor] &lt;p&gt;Retrieves a cursor value you can use to page through large result sets. Use the &lt;code&gt;size&lt;/code&gt; parameter to control the number of hits to include in each response. You can specify either the &lt;code&gt;cursor&lt;/code&gt; or &lt;code&gt;start&lt;/code&gt; parameter in a request; they are mutually exclusive. To get the first cursor, set the cursor value to &lt;code&gt;initial&lt;/code&gt;. In subsequent requests, specify the cursor value returned in the hits section of the response. &lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/paginating-results.html&quot;&gt;Paginating Results&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param start [Start] &lt;p&gt;Specifies the offset of the first search hit you want to return. Note that the result set is zero-based; the first result is at index 0. You can specify either the &lt;code&gt;start&lt;/code&gt; or &lt;code&gt;cursor&lt;/code&gt; parameter in a request, they are mutually exclusive. &lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/paginating-results.html&quot;&gt;Paginating Results&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param queryOptions [QueryOptions] &lt;p&gt;Configures options for the query parser specified in the &lt;code&gt;queryParser&lt;/code&gt; parameter. You specify the options in JSON using the following form &lt;code&gt;{&quot;OPTION1&quot;:&quot;VALUE1&quot;,&quot;OPTION2&quot;:VALUE2&quot;...&quot;OPTIONN&quot;:&quot;VALUEN&quot;}.&lt;/code&gt;&lt;/p&gt; &lt;p&gt;The options you can configure vary according to which parser you use:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;code&gt;defaultOperator&lt;/code&gt;: The default operator used to combine individual terms in the search string. For example: &lt;code&gt;defaultOperator: 'or'&lt;/code&gt;. For the &lt;code&gt;dismax&lt;/code&gt; parser, you specify a percentage that represents the percentage of terms in the search string (rounded down) that must match, rather than a default operator. A value of &lt;code&gt;0%&lt;/code&gt; is the equivalent to OR, and a value of &lt;code&gt;100%&lt;/code&gt; is equivalent to AND. The percentage must be specified as a value in the range 0-100 followed by the percent (%) symbol. For example, &lt;code&gt;defaultOperator: 50%&lt;/code&gt;. Valid values: &lt;code&gt;and&lt;/code&gt;, &lt;code&gt;or&lt;/code&gt;, a percentage in the range 0%-100% (&lt;code&gt;dismax&lt;/code&gt;). Default: &lt;code&gt;and&lt;/code&gt; (&lt;code&gt;simple&lt;/code&gt;, &lt;code&gt;structured&lt;/code&gt;, &lt;code&gt;lucene&lt;/code&gt;) or &lt;code&gt;100&lt;/code&gt; (&lt;code&gt;dismax&lt;/code&gt;). Valid for: &lt;code&gt;simple&lt;/code&gt;, &lt;code&gt;structured&lt;/code&gt;, &lt;code&gt;lucene&lt;/code&gt;, and &lt;code&gt;dismax&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;fields&lt;/code&gt;: An array of the fields to search when no fields are specified in a search. If no fields are specified in a search and this option is not specified, all text and text-array fields are searched. You can specify a weight for each field to control the relative importance of each field when Amazon CloudSearch calculates relevance scores. To specify a field weight, append a caret (&lt;code&gt;^&lt;/code&gt;) symbol and the weight to the field name. For example, to boost the importance of the &lt;code&gt;title&lt;/code&gt; field over the &lt;code&gt;description&lt;/code&gt; field you could specify: &lt;code&gt;&quot;fields&quot;:[&quot;title^5&quot;,&quot;description&quot;]&lt;/code&gt;. Valid values: The name of any configured field and an optional numeric value greater than zero. Default: All &lt;code&gt;text&lt;/code&gt; and &lt;code&gt;text-array&lt;/code&gt; fields. Valid for: &lt;code&gt;simple&lt;/code&gt;, &lt;code&gt;structured&lt;/code&gt;, &lt;code&gt;lucene&lt;/code&gt;, and &lt;code&gt;dismax&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;operators&lt;/code&gt;: An array of the operators or special characters you want to disable for the simple query parser. If you disable the &lt;code&gt;and&lt;/code&gt;, &lt;code&gt;or&lt;/code&gt;, or &lt;code&gt;not&lt;/code&gt; operators, the corresponding operators (&lt;code&gt;+&lt;/code&gt;, &lt;code&gt;|&lt;/code&gt;, &lt;code&gt;-&lt;/code&gt;) have no special meaning and are dropped from the search string. Similarly, disabling &lt;code&gt;prefix&lt;/code&gt; disables the wildcard operator (&lt;code&gt;*&lt;/code&gt;) and disabling &lt;code&gt;phrase&lt;/code&gt; disables the ability to search for phrases by enclosing phrases in double quotes. Disabling precedence disables the ability to control order of precedence using parentheses. Disabling &lt;code&gt;near&lt;/code&gt; disables the ability to use the ~ operator to perform a sloppy phrase search. Disabling the &lt;code&gt;fuzzy&lt;/code&gt; operator disables the ability to use the ~ operator to perform a fuzzy search. &lt;code&gt;escape&lt;/code&gt; disables the ability to use a backslash (&lt;code&gt;\&lt;/code&gt;) to escape special characters within the search string. Disabling whitespace is an advanced option that prevents the parser from tokenizing on whitespace, which can be useful for Vietnamese. (It prevents Vietnamese words from being split incorrectly.) For example, you could disable all operators other than the phrase operator to support just simple term and phrase queries: &lt;code&gt;&quot;operators&quot;:[&quot;and&quot;,&quot;not&quot;,&quot;or&quot;, &quot;prefix&quot;]&lt;/code&gt;. Valid values: &lt;code&gt;and&lt;/code&gt;, &lt;code&gt;escape&lt;/code&gt;, &lt;code&gt;fuzzy&lt;/code&gt;, &lt;code&gt;near&lt;/code&gt;, &lt;code&gt;not&lt;/code&gt;, &lt;code&gt;or&lt;/code&gt;, &lt;code&gt;phrase&lt;/code&gt;, &lt;code&gt;precedence&lt;/code&gt;, &lt;code&gt;prefix&lt;/code&gt;, &lt;code&gt;whitespace&lt;/code&gt;. Default: All operators and special characters are enabled. Valid for: &lt;code&gt;simple&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;phraseFields&lt;/code&gt;: An array of the &lt;code&gt;text&lt;/code&gt; or &lt;code&gt;text-array&lt;/code&gt; fields you want to use for phrase searches. When the terms in the search string appear in close proximity within a field, the field scores higher. You can specify a weight for each field to boost that score. The &lt;code&gt;phraseSlop&lt;/code&gt; option controls how much the matches can deviate from the search string and still be boosted. To specify a field weight, append a caret (&lt;code&gt;^&lt;/code&gt;) symbol and the weight to the field name. For example, to boost phrase matches in the &lt;code&gt;title&lt;/code&gt; field over the &lt;code&gt;abstract&lt;/code&gt; field, you could specify: &lt;code&gt;&quot;phraseFields&quot;:[&quot;title^3&quot;, &quot;plot&quot;]&lt;/code&gt; Valid values: The name of any &lt;code&gt;text&lt;/code&gt; or &lt;code&gt;text-array&lt;/code&gt; field and an optional numeric value greater than zero. Default: No fields. If you don't specify any fields with &lt;code&gt;phraseFields&lt;/code&gt;, proximity scoring is disabled even if &lt;code&gt;phraseSlop&lt;/code&gt; is specified. Valid for: &lt;code&gt;dismax&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;phraseSlop&lt;/code&gt;: An integer value that specifies how much matches can deviate from the search phrase and still be boosted according to the weights specified in the &lt;code&gt;phraseFields&lt;/code&gt; option; for example, &lt;code&gt;phraseSlop: 2&lt;/code&gt;. You must also specify &lt;code&gt;phraseFields&lt;/code&gt; to enable proximity scoring. Valid values: positive integers. Default: 0. Valid for: &lt;code&gt;dismax&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;explicitPhraseSlop&lt;/code&gt;: An integer value that specifies how much a match can deviate from the search phrase when the phrase is enclosed in double quotes in the search string. (Phrases that exceed this proximity distance are not considered a match.) For example, to specify a slop of three for dismax phrase queries, you would specify &lt;code&gt;&quot;explicitPhraseSlop&quot;:3&lt;/code&gt;. Valid values: positive integers. Default: 0. Valid for: &lt;code&gt;dismax&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;tieBreaker&lt;/code&gt;: When a term in the search string is found in a document's field, a score is calculated for that field based on how common the word is in that field compared to other documents. If the term occurs in multiple fields within a document, by default only the highest scoring field contributes to the document's overall score. You can specify a &lt;code&gt;tieBreaker&lt;/code&gt; value to enable the matches in lower-scoring fields to contribute to the document's score. That way, if two documents have the same max field score for a particular term, the score for the document that has matches in more fields will be higher. The formula for calculating the score with a tieBreaker is &lt;code&gt;(max field score) + (tieBreaker) * (sum of the scores for the rest of the matching fields)&lt;/code&gt;. Set &lt;code&gt;tieBreaker&lt;/code&gt; to 0 to disregard all but the highest scoring field (pure max): &lt;code&gt;&quot;tieBreaker&quot;:0&lt;/code&gt;. Set to 1 to sum the scores from all fields (pure sum): &lt;code&gt;&quot;tieBreaker&quot;:1&lt;/code&gt;. Valid values: 0.0 to 1.0. Default: 0.0. Valid for: &lt;code&gt;dismax&lt;/code&gt;. &lt;/li&gt; &lt;/ul&gt;
-- @param query [Query] &lt;p&gt;Specifies the search criteria for the request. How you specify the search criteria depends on the query parser used for the request and the parser options specified in the &lt;code&gt;queryOptions&lt;/code&gt; parameter. By default, the &lt;code&gt;simple&lt;/code&gt; query parser is used to process requests. To use the &lt;code&gt;structured&lt;/code&gt;, &lt;code&gt;lucene&lt;/code&gt;, or &lt;code&gt;dismax&lt;/code&gt; query parser, you must also specify the &lt;code&gt;queryParser&lt;/code&gt; parameter. &lt;/p&gt; &lt;p&gt;For more information about specifying search criteria, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html&quot;&gt;Searching Your Data&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param highlight [Highlight] &lt;p&gt;Retrieves highlights for matches in the specified &lt;code&gt;text&lt;/code&gt; or &lt;code&gt;text-array&lt;/code&gt; fields. Each specified field must be highlight enabled in the domain configuration. The fields and options are specified in JSON using the form &lt;code&gt;{&quot;FIELD&quot;:{&quot;OPTION&quot;:VALUE,&quot;OPTION:&quot;STRING&quot;},&quot;FIELD&quot;:{&quot;OPTION&quot;:VALUE,&quot;OPTION&quot;:&quot;STRING&quot;}}&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;You can specify the following highlight options:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;format&lt;/code&gt;: specifies the format of the data in the text field: &lt;code&gt;text&lt;/code&gt; or &lt;code&gt;html&lt;/code&gt;. When data is returned as HTML, all non-alphanumeric characters are encoded. The default is &lt;code&gt;html&lt;/code&gt;. &lt;/li&gt; &lt;li&gt; &lt;code&gt;max_phrases&lt;/code&gt;: specifies the maximum number of occurrences of the search term(s) you want to highlight. By default, the first occurrence is highlighted. &lt;/li&gt; &lt;li&gt; &lt;code&gt;pre_tag&lt;/code&gt;: specifies the string to prepend to an occurrence of a search term. The default for HTML highlights is &lt;code&gt;&amp;amp;lt;em&amp;amp;gt;&lt;/code&gt;. The default for text highlights is &lt;code&gt;*&lt;/code&gt;. &lt;/li&gt; &lt;li&gt; &lt;code&gt;post_tag&lt;/code&gt;: specifies the string to append to an occurrence of a search term. The default for HTML highlights is &lt;code&gt;&amp;amp;lt;/em&amp;amp;gt;&lt;/code&gt;. The default for text highlights is &lt;code&gt;*&lt;/code&gt;. &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If no highlight options are specified for a field, the returned field text is treated as HTML and the first match is highlighted with emphasis tags: &lt;code&gt;&amp;amp;lt;em&amp;gt;search-term&amp;amp;lt;/em&amp;amp;gt;&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For example, the following request retrieves highlights for the &lt;code&gt;actors&lt;/code&gt; and &lt;code&gt;title&lt;/code&gt; fields.&lt;/p&gt; &lt;p&gt; &lt;code&gt;{ &quot;actors&quot;: {}, &quot;title&quot;: {&quot;format&quot;: &quot;text&quot;,&quot;max_phrases&quot;: 2,&quot;pre_tag&quot;: &quot;&lt;b&gt;&quot;,&quot;post_tag&quot;: &quot;&lt;/b&gt;&quot;} }&lt;/code&gt;&lt;/p&gt;
-- @param queryParser [QueryParser] &lt;p&gt;Specifies which query parser to use to process the request. If &lt;code&gt;queryParser&lt;/code&gt; is not specified, Amazon CloudSearch uses the &lt;code&gt;simple&lt;/code&gt; query parser. &lt;/p&gt; &lt;p&gt;Amazon CloudSearch supports four query parsers:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;simple&lt;/code&gt;: perform simple searches of &lt;code&gt;text&lt;/code&gt; and &lt;code&gt;text-array&lt;/code&gt; fields. By default, the &lt;code&gt;simple&lt;/code&gt; query parser searches all &lt;code&gt;text&lt;/code&gt; and &lt;code&gt;text-array&lt;/code&gt; fields. You can specify which fields to search by with the &lt;code&gt;queryOptions&lt;/code&gt; parameter. If you prefix a search term with a plus sign (+) documents must contain the term to be considered a match. (This is the default, unless you configure the default operator with the &lt;code&gt;queryOptions&lt;/code&gt; parameter.) You can use the &lt;code&gt;-&lt;/code&gt; (NOT), &lt;code&gt;|&lt;/code&gt; (OR), and &lt;code&gt;*&lt;/code&gt; (wildcard) operators to exclude particular terms, find results that match any of the specified terms, or search for a prefix. To search for a phrase rather than individual terms, enclose the phrase in double quotes. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-text.html&quot;&gt;Searching for Text&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;. &lt;/li&gt; &lt;li&gt; &lt;code&gt;structured&lt;/code&gt;: perform advanced searches by combining multiple expressions to define the search criteria. You can also search within particular fields, search for values and ranges of values, and use advanced options such as term boosting, &lt;code&gt;matchall&lt;/code&gt;, and &lt;code&gt;near&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-compound-queries.html&quot;&gt;Constructing Compound Queries&lt;/a&gt; in the &lt;i&gt;Amazon CloudSearch Developer Guide&lt;/i&gt;. &lt;/li&gt; &lt;li&gt; &lt;code&gt;lucene&lt;/code&gt;: search using the Apache Lucene query parser syntax. For more information, see &lt;a href=&quot;http://lucene.apache.org/core/4_6_0/queryparser/org/apache/lucene/queryparser/classic/package-summary.html#package_description&quot;&gt;Apache Lucene Query Parser Syntax&lt;/a&gt;. &lt;/li&gt; &lt;li&gt; &lt;code&gt;dismax&lt;/code&gt;: search using the simplified subset of the Apache Lucene query parser syntax defined by the DisMax query parser. For more information, see &lt;a href=&quot;http://wiki.apache.org/solr/DisMaxQParserPlugin#Query_Syntax&quot;&gt;DisMax Query Parser Syntax&lt;/a&gt;. &lt;/li&gt; &lt;/ul&gt;
-- @param size [Size] &lt;p&gt;Specifies the maximum number of search hits to include in the response. &lt;/p&gt;
-- Required parameter: query
function M.SearchRequest(sort, facet, stats, partial, filterQuery, expr, return, cursor, start, queryOptions, query, highlight, queryParser, size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchRequest")
	local t = { 
		["sort"] = sort,
		["facet"] = facet,
		["stats"] = stats,
		["partial"] = partial,
		["filterQuery"] = filterQuery,
		["expr"] = expr,
		["return"] = return,
		["cursor"] = cursor,
		["start"] = start,
		["queryOptions"] = queryOptions,
		["query"] = query,
		["highlight"] = highlight,
		["queryParser"] = queryParser,
		["size"] = size,
	}
	M.AssertSearchRequest(t)
	return t
end

local SuggestionMatch_keys = { "score" = true, "id" = true, "suggestion" = true, nil }

function M.AssertSuggestionMatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggestionMatch to be of type 'table'")
	if struct["score"] then M.AssertLong(struct["score"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["suggestion"] then M.AssertString(struct["suggestion"]) end
	for k,_ in pairs(struct) do
		assert(SuggestionMatch_keys[k], "SuggestionMatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggestionMatch
-- &lt;p&gt;An autocomplete suggestion that matches the query string specified in a &lt;code&gt;SuggestRequest&lt;/code&gt;. &lt;/p&gt;
-- @param score [Long] &lt;p&gt;The relevance score of a suggested match.&lt;/p&gt;
-- @param id [String] &lt;p&gt;The document ID of the suggested document.&lt;/p&gt;
-- @param suggestion [String] &lt;p&gt;The string that matches the query string specified in the &lt;code&gt;SuggestRequest&lt;/code&gt;. &lt;/p&gt;
function M.SuggestionMatch(score, id, suggestion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggestionMatch")
	local t = { 
		["score"] = score,
		["id"] = id,
		["suggestion"] = suggestion,
	}
	M.AssertSuggestionMatch(t)
	return t
end

local SuggestModel_keys = { "query" = true, "suggestions" = true, "found" = true, nil }

function M.AssertSuggestModel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggestModel to be of type 'table'")
	if struct["query"] then M.AssertString(struct["query"]) end
	if struct["suggestions"] then M.AssertSuggestions(struct["suggestions"]) end
	if struct["found"] then M.AssertLong(struct["found"]) end
	for k,_ in pairs(struct) do
		assert(SuggestModel_keys[k], "SuggestModel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggestModel
-- &lt;p&gt;Container for the suggestion information returned in a &lt;code&gt;SuggestResponse&lt;/code&gt;.&lt;/p&gt;
-- @param query [String] &lt;p&gt;The query string specified in the suggest request.&lt;/p&gt;
-- @param suggestions [Suggestions] &lt;p&gt;The documents that match the query string.&lt;/p&gt;
-- @param found [Long] &lt;p&gt;The number of documents that were found to match the query string.&lt;/p&gt;
function M.SuggestModel(query, suggestions, found, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggestModel")
	local t = { 
		["query"] = query,
		["suggestions"] = suggestions,
		["found"] = found,
	}
	M.AssertSuggestModel(t)
	return t
end

function M.AssertExpr(str)
	assert(str)
	assert(type(str) == "string", "Expected Expr to be of type 'string'")
end

--  
function M.Expr(str)
	M.AssertExpr(str)
	return str
end

function M.AssertSort(str)
	assert(str)
	assert(type(str) == "string", "Expected Sort to be of type 'string'")
end

--  
function M.Sort(str)
	M.AssertSort(str)
	return str
end

function M.AssertFilterQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterQuery to be of type 'string'")
end

--  
function M.FilterQuery(str)
	M.AssertFilterQuery(str)
	return str
end

function M.AssertStat(str)
	assert(str)
	assert(type(str) == "string", "Expected Stat to be of type 'string'")
end

--  
function M.Stat(str)
	M.AssertStat(str)
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

function M.AssertReturn(str)
	assert(str)
	assert(type(str) == "string", "Expected Return to be of type 'string'")
end

--  
function M.Return(str)
	M.AssertReturn(str)
	return str
end

function M.AssertCursor(str)
	assert(str)
	assert(type(str) == "string", "Expected Cursor to be of type 'string'")
end

--  
function M.Cursor(str)
	M.AssertCursor(str)
	return str
end

function M.AssertQueryOptions(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryOptions to be of type 'string'")
end

--  
function M.QueryOptions(str)
	M.AssertQueryOptions(str)
	return str
end

function M.AssertSuggester(str)
	assert(str)
	assert(type(str) == "string", "Expected Suggester to be of type 'string'")
end

--  
function M.Suggester(str)
	M.AssertSuggester(str)
	return str
end

function M.AssertHighlight(str)
	assert(str)
	assert(type(str) == "string", "Expected Highlight to be of type 'string'")
end

--  
function M.Highlight(str)
	M.AssertHighlight(str)
	return str
end

function M.AssertFacet(str)
	assert(str)
	assert(type(str) == "string", "Expected Facet to be of type 'string'")
end

--  
function M.Facet(str)
	M.AssertFacet(str)
	return str
end

function M.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
end

--  
function M.ContentType(str)
	M.AssertContentType(str)
	return str
end

function M.AssertQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected Query to be of type 'string'")
end

--  
function M.Query(str)
	M.AssertQuery(str)
	return str
end

function M.AssertQueryParser(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryParser to be of type 'string'")
end

--  
function M.QueryParser(str)
	M.AssertQueryParser(str)
	return str
end

function M.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	M.AssertDouble(double)
	return double
end

function M.AssertAdds(long)
	assert(long)
	assert(type(long) == "number", "Expected Adds to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Adds(long)
	M.AssertAdds(long)
	return long
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertStart(long)
	assert(long)
	assert(type(long) == "number", "Expected Start to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Start(long)
	M.AssertStart(long)
	return long
end

function M.AssertDeletes(long)
	assert(long)
	assert(type(long) == "number", "Expected Deletes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Deletes(long)
	M.AssertDeletes(long)
	return long
end

function M.AssertSuggestionsSize(long)
	assert(long)
	assert(type(long) == "number", "Expected SuggestionsSize to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.SuggestionsSize(long)
	M.AssertSuggestionsSize(long)
	return long
end

function M.AssertSize(long)
	assert(long)
	assert(type(long) == "number", "Expected Size to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Size(long)
	M.AssertSize(long)
	return long
end

function M.AssertPartial(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Partial to be of type 'boolean'")
end

function M.Partial(boolean)
	M.AssertPartial(boolean)
	return boolean
end

function M.AssertHighlights(map)
	assert(map)
	assert(type(map) == "table", "Expected Highlights to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.Highlights(map)
	M.AssertHighlights(map)
	return map
end

function M.AssertStats(map)
	assert(map)
	assert(type(map) == "table", "Expected Stats to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertFieldStats(v)
	end
end

function M.Stats(map)
	M.AssertStats(map)
	return map
end

function M.AssertFields(map)
	assert(map)
	assert(type(map) == "table", "Expected Fields to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertFieldValue(v)
	end
end

function M.Fields(map)
	M.AssertFields(map)
	return map
end

function M.AssertFacets(map)
	assert(map)
	assert(type(map) == "table", "Expected Facets to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertBucketInfo(v)
	end
end

function M.Facets(map)
	M.AssertFacets(map)
	return map
end

function M.AssertExprs(map)
	assert(map)
	assert(type(map) == "table", "Expected Exprs to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.Exprs(map)
	M.AssertExprs(map)
	return map
end

function M.AssertBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Blob to be of type 'string'")
end

function M.Blob(blob)
	M.AssertBlob(blob)
	return blob
end

function M.AssertDocumentServiceWarnings(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentServiceWarnings to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDocumentServiceWarning(v)
	end
end

--  
-- List of DocumentServiceWarning objects
function M.DocumentServiceWarnings(list)
	M.AssertDocumentServiceWarnings(list)
	return list
end

function M.AssertFieldValue(list)
	assert(list)
	assert(type(list) == "table", "Expected FieldValue to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.FieldValue(list)
	M.AssertFieldValue(list)
	return list
end

function M.AssertHitList(list)
	assert(list)
	assert(type(list) == "table", "Expected HitList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHit(v)
	end
end

--  
-- List of Hit objects
function M.HitList(list)
	M.AssertHitList(list)
	return list
end

function M.AssertSuggestions(list)
	assert(list)
	assert(type(list) == "table", "Expected Suggestions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSuggestionMatch(v)
	end
end

--  
-- List of SuggestionMatch objects
function M.Suggestions(list)
	M.AssertSuggestions(list)
	return list
end

function M.AssertBucketList(list)
	assert(list)
	assert(type(list) == "table", "Expected BucketList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBucket(v)
	end
end

--  
-- List of Bucket objects
function M.BucketList(list)
	M.AssertBucketList(list)
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
			return "cloudsearchdomain.amazonaws.com"
		end
	end
	local ss = { "cloudsearchdomain" }
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
--- Suggest
-- @param SuggestRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SuggestAsync(SuggestRequest, cb)
	assert(SuggestRequest, "You must provide a SuggestRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".Suggest",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-01-01/suggest?format=sdk&amp;pretty=true", SuggestRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Search
-- @param SearchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SearchAsync(SearchRequest, cb)
	assert(SearchRequest, "You must provide a SearchRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".Search",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-01-01/search?format=sdk&amp;pretty=true", SearchRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UploadDocuments
-- @param UploadDocumentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UploadDocumentsAsync(UploadDocumentsRequest, cb)
	assert(UploadDocumentsRequest, "You must provide a UploadDocumentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UploadDocuments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-01-01/documents/batch?format=sdk", UploadDocumentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
