--- GENERATED CODE - DO NOT MODIFY
-- Amazon Rekognition (rekognition-2016-06-27)

local M = {}

M.metadata = {
	api_version = "2016-06-27",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "rekognition",
	service_abbreviation = "",
	service_full_name = "Amazon Rekognition",
	signature_version = "v4",
	target_prefix = "RekognitionService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "rekognition-2016-06-27",
}

local keys = {}
local asserts = {}

keys.StartStreamProcessorRequest = { ["Name"] = true, nil }

function asserts.AssertStartStreamProcessorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartStreamProcessorRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertStreamProcessorName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartStreamProcessorRequest[k], "StartStreamProcessorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartStreamProcessorRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [StreamProcessorName] <p>The name of the stream processor to start processing.</p>
-- Required key: Name
-- @return StartStreamProcessorRequest structure as a key-value pair table
function M.StartStreamProcessorRequest(args)
	assert(args, "You must provide an argument table when creating StartStreamProcessorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStartStreamProcessorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Landmark = { ["Y"] = true, ["X"] = true, ["Type"] = true, nil }

function asserts.AssertLandmark(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Landmark to be of type 'table'")
	if struct["Y"] then asserts.AssertFloat(struct["Y"]) end
	if struct["X"] then asserts.AssertFloat(struct["X"]) end
	if struct["Type"] then asserts.AssertLandmarkType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.Landmark[k], "Landmark contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Landmark
-- <p>Indicates the location of the landmark on the face.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Y [Float] <p>The y-coordinate from the top left of the landmark expressed as the ratio of the height of the image. For example, if the image is 700 x 200 and the y-coordinate of the landmark is at 100 pixels, this value is 0.5.</p>
-- * X [Float] <p>The x-coordinate from the top left of the landmark expressed as the ratio of the width of the image. For example, if the image is 700 x 200 and the x-coordinate of the landmark is at 350 pixels, this value is 0.5. </p>
-- * Type [LandmarkType] <p>Type of landmark.</p>
-- @return Landmark structure as a key-value pair table
function M.Landmark(args)
	assert(args, "You must provide an argument table when creating Landmark")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Y"] = args["Y"],
		["X"] = args["X"],
		["Type"] = args["Type"],
	}
	asserts.AssertLandmark(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCelebrityRecognitionResponse = { ["NextToken"] = true, ["Celebrities"] = true, ["StatusMessage"] = true, ["JobStatus"] = true, ["VideoMetadata"] = true, nil }

function asserts.AssertGetCelebrityRecognitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCelebrityRecognitionResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["Celebrities"] then asserts.AssertCelebrityRecognitions(struct["Celebrities"]) end
	if struct["StatusMessage"] then asserts.AssertStatusMessage(struct["StatusMessage"]) end
	if struct["JobStatus"] then asserts.AssertVideoJobStatus(struct["JobStatus"]) end
	if struct["VideoMetadata"] then asserts.AssertVideoMetadata(struct["VideoMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCelebrityRecognitionResponse[k], "GetCelebrityRecognitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCelebrityRecognitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of celebrities.</p>
-- * Celebrities [CelebrityRecognitions] <p>Array of celebrities recognized in the video.</p>
-- * StatusMessage [StatusMessage] <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
-- * JobStatus [VideoJobStatus] <p>The current status of the celebrity recognition job.</p>
-- * VideoMetadata [VideoMetadata] <p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in every page of paginated responses from a Amazon Rekognition Video operation.</p>
-- @return GetCelebrityRecognitionResponse structure as a key-value pair table
function M.GetCelebrityRecognitionResponse(args)
	assert(args, "You must provide an argument table when creating GetCelebrityRecognitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Celebrities"] = args["Celebrities"],
		["StatusMessage"] = args["StatusMessage"],
		["JobStatus"] = args["JobStatus"],
		["VideoMetadata"] = args["VideoMetadata"],
	}
	asserts.AssertGetCelebrityRecognitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFacesResponse = { ["DeletedFaces"] = true, nil }

function asserts.AssertDeleteFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFacesResponse to be of type 'table'")
	if struct["DeletedFaces"] then asserts.AssertFaceIdList(struct["DeletedFaces"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFacesResponse[k], "DeleteFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFacesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeletedFaces [FaceIdList] <p>An array of strings (face IDs) of the faces that were deleted.</p>
-- @return DeleteFacesResponse structure as a key-value pair table
function M.DeleteFacesResponse(args)
	assert(args, "You must provide an argument table when creating DeleteFacesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeletedFaces"] = args["DeletedFaces"],
	}
	asserts.AssertDeleteFacesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Smile = { ["Confidence"] = true, ["Value"] = true, nil }

function asserts.AssertSmile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Smile to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then asserts.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Smile[k], "Smile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Smile
-- <p>Indicates whether or not the face is smiling, and the confidence level in the determination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Level of confidence in the determination.</p>
-- * Value [Boolean] <p>Boolean value that indicates whether the face is smiling or not.</p>
-- @return Smile structure as a key-value pair table
function M.Smile(args)
	assert(args, "You must provide an argument table when creating Smile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertSmile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FaceDetection = { ["Timestamp"] = true, ["Face"] = true, nil }

function asserts.AssertFaceDetection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FaceDetection to be of type 'table'")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Face"] then asserts.AssertFaceDetail(struct["Face"]) end
	for k,_ in pairs(struct) do
		assert(keys.FaceDetection[k], "FaceDetection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FaceDetection
-- <p>Information about a face detected in a video analysis request and the time the face was detected in the video. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Timestamp] <p>Time, in milliseconds from the start of the video, that the face was detected.</p>
-- * Face [FaceDetail] <p>The face properties for the detected face.</p>
-- @return FaceDetection structure as a key-value pair table
function M.FaceDetection(args)
	assert(args, "You must provide an argument table when creating FaceDetection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["Face"] = args["Face"],
	}
	asserts.AssertFaceDetection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Parent = { ["Name"] = true, nil }

function asserts.AssertParent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parent to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Parent[k], "Parent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parent
-- <p>A parent label for a label. A label can have 0, 1, or more parents. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the parent label.</p>
-- @return Parent structure as a key-value pair table
function M.Parent(args)
	assert(args, "You must provide an argument table when creating Parent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertParent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComparedSourceImageFace = { ["BoundingBox"] = true, ["Confidence"] = true, nil }

function asserts.AssertComparedSourceImageFace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComparedSourceImageFace to be of type 'table'")
	if struct["BoundingBox"] then asserts.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComparedSourceImageFace[k], "ComparedSourceImageFace contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComparedSourceImageFace
-- <p>Type that describes the face Amazon Rekognition chose to compare with the faces in the target. This contains a bounding box for the selected face and confidence level that the bounding box contains a face. Note that Amazon Rekognition selects the largest face in the source image for this comparison. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoundingBox [BoundingBox] <p>Bounding box of the face.</p>
-- * Confidence [Percent] <p>Confidence level that the selected bounding box contains a face.</p>
-- @return ComparedSourceImageFace structure as a key-value pair table
function M.ComparedSourceImageFace(args)
	assert(args, "You must provide an argument table when creating ComparedSourceImageFace")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoundingBox"] = args["BoundingBox"],
		["Confidence"] = args["Confidence"],
	}
	asserts.AssertComparedSourceImageFace(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopStreamProcessorResponse = { nil }

function asserts.AssertStopStreamProcessorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopStreamProcessorResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StopStreamProcessorResponse[k], "StopStreamProcessorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopStreamProcessorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StopStreamProcessorResponse structure as a key-value pair table
function M.StopStreamProcessorResponse(args)
	assert(args, "You must provide an argument table when creating StopStreamProcessorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStopStreamProcessorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFaceDetectionRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["JobId"] = true, nil }

function asserts.AssertGetFaceDetectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFaceDetectionRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFaceDetectionRequest[k], "GetFaceDetectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFaceDetectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of faces.</p>
-- * MaxResults [MaxResults] <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.</p>
-- * JobId [JobId] <p>Unique identifier for the face detection job. The <code>JobId</code> is returned from <code>StartFaceDetection</code>.</p>
-- Required key: JobId
-- @return GetFaceDetectionRequest structure as a key-value pair table
function M.GetFaceDetectionRequest(args)
	assert(args, "You must provide an argument table when creating GetFaceDetectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetFaceDetectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCollectionsResponse = { ["FaceModelVersions"] = true, ["NextToken"] = true, ["CollectionIds"] = true, nil }

function asserts.AssertListCollectionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCollectionsResponse to be of type 'table'")
	if struct["FaceModelVersions"] then asserts.AssertFaceModelVersionList(struct["FaceModelVersions"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["CollectionIds"] then asserts.AssertCollectionIdList(struct["CollectionIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCollectionsResponse[k], "ListCollectionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCollectionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceModelVersions [FaceModelVersionList] <p>Version numbers of the face detection models associated with the collections in the array <code>CollectionIds</code>. For example, the value of <code>FaceModelVersions[2]</code> is the version number for the face detection model used by the collection in <code>CollectionId[2]</code>.</p>
-- * NextToken [PaginationToken] <p>If the result is truncated, the response provides a <code>NextToken</code> that you can use in the subsequent request to fetch the next set of collection IDs.</p>
-- * CollectionIds [CollectionIdList] <p>An array of collection IDs.</p>
-- @return ListCollectionsResponse structure as a key-value pair table
function M.ListCollectionsResponse(args)
	assert(args, "You must provide an argument table when creating ListCollectionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FaceModelVersions"] = args["FaceModelVersions"],
		["NextToken"] = args["NextToken"],
		["CollectionIds"] = args["CollectionIds"],
	}
	asserts.AssertListCollectionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnindexedFace = { ["Reasons"] = true, ["FaceDetail"] = true, nil }

function asserts.AssertUnindexedFace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnindexedFace to be of type 'table'")
	if struct["Reasons"] then asserts.AssertReasons(struct["Reasons"]) end
	if struct["FaceDetail"] then asserts.AssertFaceDetail(struct["FaceDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnindexedFace[k], "UnindexedFace contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnindexedFace
-- <p>A face that detected, but didn't index. Use the <code>Reasons</code> response attribute to determine why a face wasn't indexed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Reasons [Reasons] <p>An array of reasons that specify why a face wasn't indexed. </p> <ul> <li> <p>EXTREME_POSE - The face is at a pose that can't be detected. For example, the head is turned too far away from the camera.</p> </li> <li> <p>EXCEEDS_MAX_FACES - The number of faces detected is already higher than that specified by the <code>MaxFaces</code> input parameter for <code>IndexFaces</code>.</p> </li> <li> <p>LOW_BRIGHTNESS - The image is too dark.</p> </li> <li> <p>LOW_SHARPNESS - The image is too blurry.</p> </li> <li> <p>LOW_CONFIDENCE - The face was detected with a low confidence.</p> </li> <li> <p>SMALL_BOUNDING_BOX - The bounding box around the face is too small.</p> </li> </ul>
-- * FaceDetail [FaceDetail] <p>The structure that contains attributes of a face that <code>IndexFaces</code>detected, but didn't index. </p>
-- @return UnindexedFace structure as a key-value pair table
function M.UnindexedFace(args)
	assert(args, "You must provide an argument table when creating UnindexedFace")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Reasons"] = args["Reasons"],
		["FaceDetail"] = args["FaceDetail"],
	}
	asserts.AssertUnindexedFace(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFacesRequest = { ["FaceIds"] = true, ["CollectionId"] = true, nil }

function asserts.AssertDeleteFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFacesRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	assert(struct["FaceIds"], "Expected key FaceIds to exist in table")
	if struct["FaceIds"] then asserts.AssertFaceIdList(struct["FaceIds"]) end
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFacesRequest[k], "DeleteFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceIds [FaceIdList] <p>An array of face IDs to delete.</p>
-- * CollectionId [CollectionId] <p>Collection from which to remove the specific faces.</p>
-- Required key: CollectionId
-- Required key: FaceIds
-- @return DeleteFacesRequest structure as a key-value pair table
function M.DeleteFacesRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FaceIds"] = args["FaceIds"],
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertDeleteFacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCelebrityInfoResponse = { ["Name"] = true, ["Urls"] = true, nil }

function asserts.AssertGetCelebrityInfoResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCelebrityInfoResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Urls"] then asserts.AssertUrls(struct["Urls"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCelebrityInfoResponse[k], "GetCelebrityInfoResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCelebrityInfoResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the celebrity.</p>
-- * Urls [Urls] <p>An array of URLs pointing to additional celebrity information. </p>
-- @return GetCelebrityInfoResponse structure as a key-value pair table
function M.GetCelebrityInfoResponse(args)
	assert(args, "You must provide an argument table when creating GetCelebrityInfoResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Urls"] = args["Urls"],
	}
	asserts.AssertGetCelebrityInfoResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStreamProcessorResponse = { nil }

function asserts.AssertDeleteStreamProcessorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStreamProcessorResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteStreamProcessorResponse[k], "DeleteStreamProcessorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStreamProcessorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteStreamProcessorResponse structure as a key-value pair table
function M.DeleteStreamProcessorResponse(args)
	assert(args, "You must provide an argument table when creating DeleteStreamProcessorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteStreamProcessorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCollectionResponse = { ["StatusCode"] = true, nil }

function asserts.AssertDeleteCollectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCollectionResponse to be of type 'table'")
	if struct["StatusCode"] then asserts.AssertUInteger(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCollectionResponse[k], "DeleteCollectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCollectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StatusCode [UInteger] <p>HTTP status code that indicates the result of the operation.</p>
-- @return DeleteCollectionResponse structure as a key-value pair table
function M.DeleteCollectionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteCollectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertDeleteCollectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStreamProcessorsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListStreamProcessorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamProcessorsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamProcessorsRequest[k], "ListStreamProcessorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamProcessorsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the previous response was incomplete (because there are more stream processors to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of stream processors. </p>
-- * MaxResults [MaxResults] <p>Maximum number of stream processors you want Amazon Rekognition Video to return in the response. The default is 1000. </p>
-- @return ListStreamProcessorsRequest structure as a key-value pair table
function M.ListStreamProcessorsRequest(args)
	assert(args, "You must provide an argument table when creating ListStreamProcessorsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListStreamProcessorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TextDetection = { ["Confidence"] = true, ["Geometry"] = true, ["DetectedText"] = true, ["ParentId"] = true, ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertTextDetection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TextDetection to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Geometry"] then asserts.AssertGeometry(struct["Geometry"]) end
	if struct["DetectedText"] then asserts.AssertString(struct["DetectedText"]) end
	if struct["ParentId"] then asserts.AssertUInteger(struct["ParentId"]) end
	if struct["Type"] then asserts.AssertTextTypes(struct["Type"]) end
	if struct["Id"] then asserts.AssertUInteger(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.TextDetection[k], "TextDetection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TextDetection
-- <p>Information about a word or line of text detected by .</p> <p>The <code>DetectedText</code> field contains the text that Amazon Rekognition detected in the image. </p> <p>Every word and line has an identifier (<code>Id</code>). Each word belongs to a line and has a parent identifier (<code>ParentId</code>) that identifies the line of text in which the word appears. The word <code>Id</code> is also an index for the word within a line of words. </p> <p>For more information, see Detecting Text in the Amazon Rekognition Developer Guide.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>The confidence that Amazon Rekognition has in the accuracy of the detected text and the accuracy of the geometry points around the detected text.</p>
-- * Geometry [Geometry] <p>The location of the detected text on the image. Includes an axis aligned coarse bounding box surrounding the text and a finer grain polygon for more accurate spatial information.</p>
-- * DetectedText [String] <p>The word or line of text recognized by Amazon Rekognition. </p>
-- * ParentId [UInteger] <p>The Parent identifier for the detected text identified by the value of <code>ID</code>. If the type of detected text is <code>LINE</code>, the value of <code>ParentId</code> is <code>Null</code>. </p>
-- * Type [TextTypes] <p>The type of text that was detected.</p>
-- * Id [UInteger] <p>The identifier for the detected text. The identifier is only unique for a single call to <code>DetectText</code>. </p>
-- @return TextDetection structure as a key-value pair table
function M.TextDetection(args)
	assert(args, "You must provide an argument table when creating TextDetection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Geometry"] = args["Geometry"],
		["DetectedText"] = args["DetectedText"],
		["ParentId"] = args["ParentId"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertTextDetection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Eyeglasses = { ["Confidence"] = true, ["Value"] = true, nil }

function asserts.AssertEyeglasses(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Eyeglasses to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then asserts.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Eyeglasses[k], "Eyeglasses contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Eyeglasses
-- <p>Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Level of confidence in the determination.</p>
-- * Value [Boolean] <p>Boolean value that indicates whether the face is wearing eye glasses or not.</p>
-- @return Eyeglasses structure as a key-value pair table
function M.Eyeglasses(args)
	assert(args, "You must provide an argument table when creating Eyeglasses")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertEyeglasses(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchFacesResponse = { ["SearchedFaceId"] = true, ["FaceModelVersion"] = true, ["FaceMatches"] = true, nil }

function asserts.AssertSearchFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchFacesResponse to be of type 'table'")
	if struct["SearchedFaceId"] then asserts.AssertFaceId(struct["SearchedFaceId"]) end
	if struct["FaceModelVersion"] then asserts.AssertString(struct["FaceModelVersion"]) end
	if struct["FaceMatches"] then asserts.AssertFaceMatchList(struct["FaceMatches"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchFacesResponse[k], "SearchFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchFacesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SearchedFaceId [FaceId] <p>ID of the face that was searched for matches in a collection.</p>
-- * FaceModelVersion [String] <p>Version number of the face detection model associated with the input collection (<code>CollectionId</code>).</p>
-- * FaceMatches [FaceMatchList] <p>An array of faces that matched the input face, along with the confidence in the match.</p>
-- @return SearchFacesResponse structure as a key-value pair table
function M.SearchFacesResponse(args)
	assert(args, "You must provide an argument table when creating SearchFacesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SearchedFaceId"] = args["SearchedFaceId"],
		["FaceModelVersion"] = args["FaceModelVersion"],
		["FaceMatches"] = args["FaceMatches"],
	}
	asserts.AssertSearchFacesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LabelDetection = { ["Timestamp"] = true, ["Label"] = true, nil }

function asserts.AssertLabelDetection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LabelDetection to be of type 'table'")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Label"] then asserts.AssertLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.LabelDetection[k], "LabelDetection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LabelDetection
-- <p>Information about a label detected in a video analysis request and the time the label was detected in the video. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Timestamp] <p>Time, in milliseconds from the start of the video, that the label was detected.</p>
-- * Label [Label] <p>Details about the detected label.</p>
-- @return LabelDetection structure as a key-value pair table
function M.LabelDetection(args)
	assert(args, "You must provide an argument table when creating LabelDetection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["Label"] = args["Label"],
	}
	asserts.AssertLabelDetection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartStreamProcessorResponse = { nil }

function asserts.AssertStartStreamProcessorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartStreamProcessorResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StartStreamProcessorResponse[k], "StartStreamProcessorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartStreamProcessorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StartStreamProcessorResponse structure as a key-value pair table
function M.StartStreamProcessorResponse(args)
	assert(args, "You must provide an argument table when creating StartStreamProcessorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStartStreamProcessorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchFacesByImageRequest = { ["Image"] = true, ["MaxFaces"] = true, ["FaceMatchThreshold"] = true, ["CollectionId"] = true, nil }

function asserts.AssertSearchFacesByImageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchFacesByImageRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["Image"] then asserts.AssertImage(struct["Image"]) end
	if struct["MaxFaces"] then asserts.AssertMaxFaces(struct["MaxFaces"]) end
	if struct["FaceMatchThreshold"] then asserts.AssertPercent(struct["FaceMatchThreshold"]) end
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchFacesByImageRequest[k], "SearchFacesByImageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchFacesByImageRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Image [Image] <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
-- * MaxFaces [MaxFaces] <p>Maximum number of faces to return. The operation returns the maximum number of faces with the highest confidence in the match.</p>
-- * FaceMatchThreshold [Percent] <p>(Optional) Specifies the minimum confidence in the face match to return. For example, don't return any matches where confidence in matches is less than 70%.</p>
-- * CollectionId [CollectionId] <p>ID of the collection to search.</p>
-- Required key: CollectionId
-- Required key: Image
-- @return SearchFacesByImageRequest structure as a key-value pair table
function M.SearchFacesByImageRequest(args)
	assert(args, "You must provide an argument table when creating SearchFacesByImageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Image"] = args["Image"],
		["MaxFaces"] = args["MaxFaces"],
		["FaceMatchThreshold"] = args["FaceMatchThreshold"],
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertSearchFacesByImageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartFaceDetectionResponse = { ["JobId"] = true, nil }

function asserts.AssertStartFaceDetectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartFaceDetectionResponse to be of type 'table'")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartFaceDetectionResponse[k], "StartFaceDetectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartFaceDetectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier for the face detection job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetFaceDetection</code>.</p>
-- @return StartFaceDetectionResponse structure as a key-value pair table
function M.StartFaceDetectionResponse(args)
	assert(args, "You must provide an argument table when creating StartFaceDetectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartFaceDetectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IndexFacesRequest = { ["DetectionAttributes"] = true, ["ExternalImageId"] = true, ["CollectionId"] = true, ["QualityFilter"] = true, ["Image"] = true, ["MaxFaces"] = true, nil }

function asserts.AssertIndexFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexFacesRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["DetectionAttributes"] then asserts.AssertAttributes(struct["DetectionAttributes"]) end
	if struct["ExternalImageId"] then asserts.AssertExternalImageId(struct["ExternalImageId"]) end
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	if struct["QualityFilter"] then asserts.AssertQualityFilter(struct["QualityFilter"]) end
	if struct["Image"] then asserts.AssertImage(struct["Image"]) end
	if struct["MaxFaces"] then asserts.AssertMaxFacesToIndex(struct["MaxFaces"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexFacesRequest[k], "IndexFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexFacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectionAttributes [Attributes] <p>An array of facial attributes that you want to be returned. This can be the default list of attributes or all attributes. If you don't specify a value for <code>Attributes</code> or if you specify <code>["DEFAULT"]</code>, the API returns the following subset of facial attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>, <code>Quality</code>, and <code>Landmarks</code>. If you provide <code>["ALL"]</code>, all facial attributes are returned, but the operation takes longer to complete.</p> <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical AND operator to determine which attributes to return (in this case, all attributes). </p>
-- * ExternalImageId [ExternalImageId] <p>The ID you want to assign to all the faces detected in the image.</p>
-- * CollectionId [CollectionId] <p>The ID of an existing collection to which you want to add the faces that are detected in the input images.</p>
-- * QualityFilter [QualityFilter] <p>A filter that specifies how much filtering is done to identify faces that are detected with low quality. Filtered faces aren't indexed. If you specify <code>AUTO</code>, filtering prioritizes the identification of faces that don’t meet the required quality bar chosen by Amazon Rekognition. The quality bar is based on a variety of common use cases. Low-quality detections can occur for a number of reasons. Some examples are an object that's misidentified as a face, a face that's too blurry, or a face with a pose that's too extreme to use. If you specify <code>NONE</code>, no filtering is performed. The default value is AUTO.</p> <p>To use quality filtering, the collection you are using must be associated with version 3 of the face model.</p>
-- * Image [Image] <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes isn't supported. </p>
-- * MaxFaces [MaxFacesToIndex] <p>The maximum number of faces to index. The value of <code>MaxFaces</code> must be greater than or equal to 1. <code>IndexFaces</code> returns no more than 100 detected faces in an image, even if you specify a larger value for <code>MaxFaces</code>.</p> <p>If <code>IndexFaces</code> detects more faces than the value of <code>MaxFaces</code>, the faces with the lowest quality are filtered out first. If there are still more faces than the value of <code>MaxFaces</code>, the faces with the smallest bounding boxes are filtered out (up to the number that's needed to satisfy the value of <code>MaxFaces</code>). Information about the unindexed faces is available in the <code>UnindexedFaces</code> array. </p> <p>The faces that are returned by <code>IndexFaces</code> are sorted by the largest face bounding box size to the smallest size, in descending order.</p> <p> <code>MaxFaces</code> can be used with a collection associated with any version of the face model.</p>
-- Required key: CollectionId
-- Required key: Image
-- @return IndexFacesRequest structure as a key-value pair table
function M.IndexFacesRequest(args)
	assert(args, "You must provide an argument table when creating IndexFacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DetectionAttributes"] = args["DetectionAttributes"],
		["ExternalImageId"] = args["ExternalImageId"],
		["CollectionId"] = args["CollectionId"],
		["QualityFilter"] = args["QualityFilter"],
		["Image"] = args["Image"],
		["MaxFaces"] = args["MaxFaces"],
	}
	asserts.AssertIndexFacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartLabelDetectionResponse = { ["JobId"] = true, nil }

function asserts.AssertStartLabelDetectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartLabelDetectionResponse to be of type 'table'")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartLabelDetectionResponse[k], "StartLabelDetectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartLabelDetectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier for the label detection job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetLabelDetection</code>. </p>
-- @return StartLabelDetectionResponse structure as a key-value pair table
function M.StartLabelDetectionResponse(args)
	assert(args, "You must provide an argument table when creating StartLabelDetectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartLabelDetectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCollectionRequest = { ["CollectionId"] = true, nil }

function asserts.AssertDeleteCollectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCollectionRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCollectionRequest[k], "DeleteCollectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCollectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CollectionId [CollectionId] <p>ID of the collection to delete.</p>
-- Required key: CollectionId
-- @return DeleteCollectionRequest structure as a key-value pair table
function M.DeleteCollectionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteCollectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertDeleteCollectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartPersonTrackingResponse = { ["JobId"] = true, nil }

function asserts.AssertStartPersonTrackingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartPersonTrackingResponse to be of type 'table'")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartPersonTrackingResponse[k], "StartPersonTrackingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartPersonTrackingResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier for the person detection job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetPersonTracking</code>.</p>
-- @return StartPersonTrackingResponse structure as a key-value pair table
function M.StartPersonTrackingResponse(args)
	assert(args, "You must provide an argument table when creating StartPersonTrackingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartPersonTrackingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCollectionRequest = { ["CollectionId"] = true, nil }

function asserts.AssertDescribeCollectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCollectionRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCollectionRequest[k], "DescribeCollectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCollectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CollectionId [CollectionId] <p>The ID of the collection to describe.</p>
-- Required key: CollectionId
-- @return DescribeCollectionRequest structure as a key-value pair table
function M.DescribeCollectionRequest(args)
	assert(args, "You must provide an argument table when creating DescribeCollectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertDescribeCollectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectFacesRequest = { ["Attributes"] = true, ["Image"] = true, nil }

function asserts.AssertDetectFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectFacesRequest to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["Attributes"] then asserts.AssertAttributes(struct["Attributes"]) end
	if struct["Image"] then asserts.AssertImage(struct["Image"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectFacesRequest[k], "DetectFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectFacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [Attributes] <p>An array of facial attributes you want to be returned. This can be the default list of attributes or all attributes. If you don't specify a value for <code>Attributes</code> or if you specify <code>["DEFAULT"]</code>, the API returns the following subset of facial attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>, <code>Quality</code>, and <code>Landmarks</code>. If you provide <code>["ALL"]</code>, all facial attributes are returned, but the operation takes longer to complete.</p> <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical AND operator to determine which attributes to return (in this case, all attributes). </p>
-- * Image [Image] <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
-- Required key: Image
-- @return DetectFacesRequest structure as a key-value pair table
function M.DetectFacesRequest(args)
	assert(args, "You must provide an argument table when creating DetectFacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Image"] = args["Image"],
	}
	asserts.AssertDetectFacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContentModerationDetection = { ["Timestamp"] = true, ["ModerationLabel"] = true, nil }

function asserts.AssertContentModerationDetection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContentModerationDetection to be of type 'table'")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["ModerationLabel"] then asserts.AssertModerationLabel(struct["ModerationLabel"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContentModerationDetection[k], "ContentModerationDetection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContentModerationDetection
-- <p>Information about a moderation label detection in a stored video.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Timestamp] <p>Time, in milliseconds from the beginning of the video, that the moderation label was detected.</p>
-- * ModerationLabel [ModerationLabel] <p>The moderation label detected by in the stored video.</p>
-- @return ContentModerationDetection structure as a key-value pair table
function M.ContentModerationDetection(args)
	assert(args, "You must provide an argument table when creating ContentModerationDetection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["ModerationLabel"] = args["ModerationLabel"],
	}
	asserts.AssertContentModerationDetection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFaceSearchResponse = { ["Persons"] = true, ["NextToken"] = true, ["StatusMessage"] = true, ["JobStatus"] = true, ["VideoMetadata"] = true, nil }

function asserts.AssertGetFaceSearchResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFaceSearchResponse to be of type 'table'")
	if struct["Persons"] then asserts.AssertPersonMatches(struct["Persons"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["StatusMessage"] then asserts.AssertStatusMessage(struct["StatusMessage"]) end
	if struct["JobStatus"] then asserts.AssertVideoJobStatus(struct["JobStatus"]) end
	if struct["VideoMetadata"] then asserts.AssertVideoMetadata(struct["VideoMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFaceSearchResponse[k], "GetFaceSearchResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFaceSearchResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Persons [PersonMatches] <p>An array of persons, , in the video whose face(s) match the face(s) in an Amazon Rekognition collection. It also includes time information for when persons are matched in the video. You specify the input collection in an initial call to <code>StartFaceSearch</code>. Each <code>Persons</code> element includes a time the person was matched, face match details (<code>FaceMatches</code>) for matching faces in the collection, and person information (<code>Person</code>) for the matched person. </p>
-- * NextToken [PaginationToken] <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of search results. </p>
-- * StatusMessage [StatusMessage] <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
-- * JobStatus [VideoJobStatus] <p>The current status of the face search job.</p>
-- * VideoMetadata [VideoMetadata] <p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in every page of paginated responses from a Amazon Rekognition Video operation. </p>
-- @return GetFaceSearchResponse structure as a key-value pair table
function M.GetFaceSearchResponse(args)
	assert(args, "You must provide an argument table when creating GetFaceSearchResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Persons"] = args["Persons"],
		["NextToken"] = args["NextToken"],
		["StatusMessage"] = args["StatusMessage"],
		["JobStatus"] = args["JobStatus"],
		["VideoMetadata"] = args["VideoMetadata"],
	}
	asserts.AssertGetFaceSearchResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KinesisDataStream = { ["Arn"] = true, nil }

function asserts.AssertKinesisDataStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisDataStream to be of type 'table'")
	if struct["Arn"] then asserts.AssertKinesisDataArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisDataStream[k], "KinesisDataStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisDataStream
-- <p>The Kinesis data stream Amazon Rekognition to which the analysis results of a Amazon Rekognition stream processor are streamed. For more information, see CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [KinesisDataArn] <p>ARN of the output Amazon Kinesis Data Streams stream.</p>
-- @return KinesisDataStream structure as a key-value pair table
function M.KinesisDataStream(args)
	assert(args, "You must provide an argument table when creating KinesisDataStream")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
	}
	asserts.AssertKinesisDataStream(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImageQuality = { ["Sharpness"] = true, ["Brightness"] = true, nil }

function asserts.AssertImageQuality(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageQuality to be of type 'table'")
	if struct["Sharpness"] then asserts.AssertFloat(struct["Sharpness"]) end
	if struct["Brightness"] then asserts.AssertFloat(struct["Brightness"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImageQuality[k], "ImageQuality contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageQuality
-- <p>Identifies face image brightness and sharpness. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Sharpness [Float] <p>Value representing sharpness of the face. The service returns a value between 0 and 100 (inclusive). A higher value indicates a sharper face image.</p>
-- * Brightness [Float] <p>Value representing brightness of the face. The service returns a value between 0 and 100 (inclusive). A higher value indicates a brighter face image.</p>
-- @return ImageQuality structure as a key-value pair table
function M.ImageQuality(args)
	assert(args, "You must provide an argument table when creating ImageQuality")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Sharpness"] = args["Sharpness"],
		["Brightness"] = args["Brightness"],
	}
	asserts.AssertImageQuality(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectModerationLabelsResponse = { ["ModerationLabels"] = true, nil }

function asserts.AssertDetectModerationLabelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectModerationLabelsResponse to be of type 'table'")
	if struct["ModerationLabels"] then asserts.AssertModerationLabels(struct["ModerationLabels"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectModerationLabelsResponse[k], "DetectModerationLabelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectModerationLabelsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ModerationLabels [ModerationLabels] <p>Array of detected Moderation labels and the time, in millseconds from the start of the video, they were detected.</p>
-- @return DetectModerationLabelsResponse structure as a key-value pair table
function M.DetectModerationLabelsResponse(args)
	assert(args, "You must provide an argument table when creating DetectModerationLabelsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ModerationLabels"] = args["ModerationLabels"],
	}
	asserts.AssertDetectModerationLabelsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetContentModerationResponse = { ["ModerationLabels"] = true, ["NextToken"] = true, ["StatusMessage"] = true, ["JobStatus"] = true, ["VideoMetadata"] = true, nil }

function asserts.AssertGetContentModerationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContentModerationResponse to be of type 'table'")
	if struct["ModerationLabels"] then asserts.AssertContentModerationDetections(struct["ModerationLabels"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["StatusMessage"] then asserts.AssertStatusMessage(struct["StatusMessage"]) end
	if struct["JobStatus"] then asserts.AssertVideoJobStatus(struct["JobStatus"]) end
	if struct["VideoMetadata"] then asserts.AssertVideoMetadata(struct["VideoMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContentModerationResponse[k], "GetContentModerationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContentModerationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ModerationLabels [ContentModerationDetections] <p>The detected moderation labels and the time(s) they were detected.</p>
-- * NextToken [PaginationToken] <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of moderation labels. </p>
-- * StatusMessage [StatusMessage] <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
-- * JobStatus [VideoJobStatus] <p>The current status of the content moderation job.</p>
-- * VideoMetadata [VideoMetadata] <p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in every page of paginated responses from <code>GetContentModeration</code>. </p>
-- @return GetContentModerationResponse structure as a key-value pair table
function M.GetContentModerationResponse(args)
	assert(args, "You must provide an argument table when creating GetContentModerationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ModerationLabels"] = args["ModerationLabels"],
		["NextToken"] = args["NextToken"],
		["StatusMessage"] = args["StatusMessage"],
		["JobStatus"] = args["JobStatus"],
		["VideoMetadata"] = args["VideoMetadata"],
	}
	asserts.AssertGetContentModerationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IndexFacesResponse = { ["FaceRecords"] = true, ["UnindexedFaces"] = true, ["FaceModelVersion"] = true, ["OrientationCorrection"] = true, nil }

function asserts.AssertIndexFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexFacesResponse to be of type 'table'")
	if struct["FaceRecords"] then asserts.AssertFaceRecordList(struct["FaceRecords"]) end
	if struct["UnindexedFaces"] then asserts.AssertUnindexedFaces(struct["UnindexedFaces"]) end
	if struct["FaceModelVersion"] then asserts.AssertString(struct["FaceModelVersion"]) end
	if struct["OrientationCorrection"] then asserts.AssertOrientationCorrection(struct["OrientationCorrection"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexFacesResponse[k], "IndexFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexFacesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceRecords [FaceRecordList] <p>An array of faces detected and added to the collection. For more information, see Searching Faces in a Collection in the Amazon Rekognition Developer Guide. </p>
-- * UnindexedFaces [UnindexedFaces] <p>An array of faces that were detected in the image but weren't indexed. They weren't indexed because the quality filter identified them as low quality, or the <code>MaxFaces</code> request parameter filtered them out. To use the quality filter, you specify the <code>QualityFilter</code> request parameter.</p>
-- * FaceModelVersion [String] <p>The version number of the face detection model that's associated with the input collection (<code>CollectionId</code>).</p>
-- * OrientationCorrection [OrientationCorrection] <p>The orientation of the input image (counterclockwise direction). If your application displays the image, you can use this value to correct image orientation. The bounding box coordinates returned in <code>FaceRecords</code> represent face locations before the image orientation is corrected. </p> <note> <p>If the input image is in jpeg format, it might contain exchangeable image (Exif) metadata. If so, and the Exif metadata populates the orientation field, the value of <code>OrientationCorrection</code> is null. The bounding box coordinates in <code>FaceRecords</code> represent face locations after Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata.</p> </note>
-- @return IndexFacesResponse structure as a key-value pair table
function M.IndexFacesResponse(args)
	assert(args, "You must provide an argument table when creating IndexFacesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FaceRecords"] = args["FaceRecords"],
		["UnindexedFaces"] = args["UnindexedFaces"],
		["FaceModelVersion"] = args["FaceModelVersion"],
		["OrientationCorrection"] = args["OrientationCorrection"],
	}
	asserts.AssertIndexFacesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCollectionRequest = { ["CollectionId"] = true, nil }

function asserts.AssertCreateCollectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCollectionRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCollectionRequest[k], "CreateCollectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCollectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CollectionId [CollectionId] <p>ID for the collection that you are creating.</p>
-- Required key: CollectionId
-- @return CreateCollectionRequest structure as a key-value pair table
function M.CreateCollectionRequest(args)
	assert(args, "You must provide an argument table when creating CreateCollectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertCreateCollectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Gender = { ["Confidence"] = true, ["Value"] = true, nil }

function asserts.AssertGender(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Gender to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then asserts.AssertGenderType(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Gender[k], "Gender contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Gender
-- <p>Gender of the face and the confidence level in the determination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Level of confidence in the determination.</p>
-- * Value [GenderType] <p>Gender of the face.</p>
-- @return Gender structure as a key-value pair table
function M.Gender(args)
	assert(args, "You must provide an argument table when creating Gender")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertGender(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCelebrityInfoRequest = { ["Id"] = true, nil }

function asserts.AssertGetCelebrityInfoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCelebrityInfoRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertRekognitionUniqueId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCelebrityInfoRequest[k], "GetCelebrityInfoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCelebrityInfoRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [RekognitionUniqueId] <p>The ID for the celebrity. You get the celebrity ID from a call to the operation, which recognizes celebrities in an image. </p>
-- Required key: Id
-- @return GetCelebrityInfoRequest structure as a key-value pair table
function M.GetCelebrityInfoRequest(args)
	assert(args, "You must provide an argument table when creating GetCelebrityInfoRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetCelebrityInfoRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecognizeCelebritiesRequest = { ["Image"] = true, nil }

function asserts.AssertRecognizeCelebritiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecognizeCelebritiesRequest to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["Image"] then asserts.AssertImage(struct["Image"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecognizeCelebritiesRequest[k], "RecognizeCelebritiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecognizeCelebritiesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Image [Image] <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
-- Required key: Image
-- @return RecognizeCelebritiesRequest structure as a key-value pair table
function M.RecognizeCelebritiesRequest(args)
	assert(args, "You must provide an argument table when creating RecognizeCelebritiesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Image"] = args["Image"],
	}
	asserts.AssertRecognizeCelebritiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectTextResponse = { ["TextDetections"] = true, nil }

function asserts.AssertDetectTextResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectTextResponse to be of type 'table'")
	if struct["TextDetections"] then asserts.AssertTextDetectionList(struct["TextDetections"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectTextResponse[k], "DetectTextResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectTextResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TextDetections [TextDetectionList] <p>An array of text that was detected in the input image.</p>
-- @return DetectTextResponse structure as a key-value pair table
function M.DetectTextResponse(args)
	assert(args, "You must provide an argument table when creating DetectTextResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TextDetections"] = args["TextDetections"],
	}
	asserts.AssertDetectTextResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetContentModerationRequest = { ["NextToken"] = true, ["SortBy"] = true, ["MaxResults"] = true, ["JobId"] = true, nil }

function asserts.AssertGetContentModerationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContentModerationRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["SortBy"] then asserts.AssertContentModerationSortBy(struct["SortBy"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContentModerationRequest[k], "GetContentModerationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContentModerationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition returns a pagination token in the response. You can use this pagination token to retrieve the next set of content moderation labels.</p>
-- * SortBy [ContentModerationSortBy] <p>Sort to use for elements in the <code>ModerationLabelDetections</code> array. Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected. Use <code>NAME</code> to alphabetically group elements for a label together. Within each label group, the array element are sorted by detection confidence. The default sort is by <code>TIMESTAMP</code>.</p>
-- * MaxResults [MaxResults] <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.</p>
-- * JobId [JobId] <p>The identifier for the content moderation job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetContentModeration</code>.</p>
-- Required key: JobId
-- @return GetContentModerationRequest structure as a key-value pair table
function M.GetContentModerationRequest(args)
	assert(args, "You must provide an argument table when creating GetContentModerationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SortBy"] = args["SortBy"],
		["MaxResults"] = args["MaxResults"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetContentModerationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectLabelsRequest = { ["MinConfidence"] = true, ["Image"] = true, ["MaxLabels"] = true, nil }

function asserts.AssertDetectLabelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectLabelsRequest to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["MinConfidence"] then asserts.AssertPercent(struct["MinConfidence"]) end
	if struct["Image"] then asserts.AssertImage(struct["Image"]) end
	if struct["MaxLabels"] then asserts.AssertUInteger(struct["MaxLabels"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectLabelsRequest[k], "DetectLabelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectLabelsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MinConfidence [Percent] <p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't return any labels with confidence lower than this specified value.</p> <p>If <code>MinConfidence</code> is not specified, the operation returns labels with a confidence values greater than or equal to 50 percent.</p>
-- * Image [Image] <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
-- * MaxLabels [UInteger] <p>Maximum number of labels you want the service to return in the response. The service returns the specified number of highest confidence labels. </p>
-- Required key: Image
-- @return DetectLabelsRequest structure as a key-value pair table
function M.DetectLabelsRequest(args)
	assert(args, "You must provide an argument table when creating DetectLabelsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MinConfidence"] = args["MinConfidence"],
		["Image"] = args["Image"],
		["MaxLabels"] = args["MaxLabels"],
	}
	asserts.AssertDetectLabelsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCollectionResponse = { ["CollectionArn"] = true, ["FaceModelVersion"] = true, ["StatusCode"] = true, nil }

function asserts.AssertCreateCollectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCollectionResponse to be of type 'table'")
	if struct["CollectionArn"] then asserts.AssertString(struct["CollectionArn"]) end
	if struct["FaceModelVersion"] then asserts.AssertString(struct["FaceModelVersion"]) end
	if struct["StatusCode"] then asserts.AssertUInteger(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCollectionResponse[k], "CreateCollectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCollectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CollectionArn [String] <p>Amazon Resource Name (ARN) of the collection. You can use this to manage permissions on your resources. </p>
-- * FaceModelVersion [String] <p>Version number of the face detection model associated with the collection you are creating.</p>
-- * StatusCode [UInteger] <p>HTTP status code indicating the result of the operation.</p>
-- @return CreateCollectionResponse structure as a key-value pair table
function M.CreateCollectionResponse(args)
	assert(args, "You must provide an argument table when creating CreateCollectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CollectionArn"] = args["CollectionArn"],
		["FaceModelVersion"] = args["FaceModelVersion"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertCreateCollectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoMetadata = { ["Format"] = true, ["FrameRate"] = true, ["Codec"] = true, ["DurationMillis"] = true, ["FrameHeight"] = true, ["FrameWidth"] = true, nil }

function asserts.AssertVideoMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoMetadata to be of type 'table'")
	if struct["Format"] then asserts.AssertString(struct["Format"]) end
	if struct["FrameRate"] then asserts.AssertFloat(struct["FrameRate"]) end
	if struct["Codec"] then asserts.AssertString(struct["Codec"]) end
	if struct["DurationMillis"] then asserts.AssertULong(struct["DurationMillis"]) end
	if struct["FrameHeight"] then asserts.AssertULong(struct["FrameHeight"]) end
	if struct["FrameWidth"] then asserts.AssertULong(struct["FrameWidth"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoMetadata[k], "VideoMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoMetadata
-- <p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in every page of paginated responses from a Amazon Rekognition video operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Format [String] <p>Format of the analyzed video. Possible values are MP4, MOV and AVI. </p>
-- * FrameRate [Float] <p>Number of frames per second in the video.</p>
-- * Codec [String] <p>Type of compression used in the analyzed video. </p>
-- * DurationMillis [ULong] <p>Length of the video in milliseconds.</p>
-- * FrameHeight [ULong] <p>Vertical pixel dimension of the video.</p>
-- * FrameWidth [ULong] <p>Horizontal pixel dimension of the video.</p>
-- @return VideoMetadata structure as a key-value pair table
function M.VideoMetadata(args)
	assert(args, "You must provide an argument table when creating VideoMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Format"] = args["Format"],
		["FrameRate"] = args["FrameRate"],
		["Codec"] = args["Codec"],
		["DurationMillis"] = args["DurationMillis"],
		["FrameHeight"] = args["FrameHeight"],
		["FrameWidth"] = args["FrameWidth"],
	}
	asserts.AssertVideoMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PersonMatch = { ["Timestamp"] = true, ["FaceMatches"] = true, ["Person"] = true, nil }

function asserts.AssertPersonMatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PersonMatch to be of type 'table'")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["FaceMatches"] then asserts.AssertFaceMatchList(struct["FaceMatches"]) end
	if struct["Person"] then asserts.AssertPersonDetail(struct["Person"]) end
	for k,_ in pairs(struct) do
		assert(keys.PersonMatch[k], "PersonMatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PersonMatch
-- <p>Information about a person whose face matches a face(s) in an Amazon Rekognition collection. Includes information about the faces in the Amazon Rekognition collection (), information about the person (<a>PersonDetail</a>), and the time stamp for when the person was detected in a video. An array of <code>PersonMatch</code> objects is returned by . </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Timestamp] <p>The time, in milliseconds from the beginning of the video, that the person was matched in the video.</p>
-- * FaceMatches [FaceMatchList] <p>Information about the faces in the input collection that match the face of a person in the video.</p>
-- * Person [PersonDetail] <p>Information about the matched person.</p>
-- @return PersonMatch structure as a key-value pair table
function M.PersonMatch(args)
	assert(args, "You must provide an argument table when creating PersonMatch")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["FaceMatches"] = args["FaceMatches"],
		["Person"] = args["Person"],
	}
	asserts.AssertPersonMatch(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamProcessorSettings = { ["FaceSearch"] = true, nil }

function asserts.AssertStreamProcessorSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamProcessorSettings to be of type 'table'")
	if struct["FaceSearch"] then asserts.AssertFaceSearchSettings(struct["FaceSearch"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamProcessorSettings[k], "StreamProcessorSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamProcessorSettings
-- <p>Input parameters used to recognize faces in a streaming video analyzed by a Amazon Rekognition stream processor.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceSearch [FaceSearchSettings] <p>Face search settings to use on a streaming video. </p>
-- @return StreamProcessorSettings structure as a key-value pair table
function M.StreamProcessorSettings(args)
	assert(args, "You must provide an argument table when creating StreamProcessorSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FaceSearch"] = args["FaceSearch"],
	}
	asserts.AssertStreamProcessorSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Emotion = { ["Confidence"] = true, ["Type"] = true, nil }

function asserts.AssertEmotion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Emotion to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Type"] then asserts.AssertEmotionName(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.Emotion[k], "Emotion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Emotion
-- <p>The emotions detected on the face, and the confidence level in the determination. For example, HAPPY, SAD, and ANGRY.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Level of confidence in the determination.</p>
-- * Type [EmotionName] <p>Type of emotion detected.</p>
-- @return Emotion structure as a key-value pair table
function M.Emotion(args)
	assert(args, "You must provide an argument table when creating Emotion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Type"] = args["Type"],
	}
	asserts.AssertEmotion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamProcessor = { ["Status"] = true, ["Name"] = true, nil }

function asserts.AssertStreamProcessor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamProcessor to be of type 'table'")
	if struct["Status"] then asserts.AssertStreamProcessorStatus(struct["Status"]) end
	if struct["Name"] then asserts.AssertStreamProcessorName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamProcessor[k], "StreamProcessor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamProcessor
-- <p>An object that recognizes faces in a streaming video. An Amazon Rekognition stream processor is created by a call to . The request parameters for <code>CreateStreamProcessor</code> describe the Kinesis video stream source for the streaming video, face recognition parameters, and where to stream the analysis resullts. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StreamProcessorStatus] <p>Current status of the Amazon Rekognition stream processor.</p>
-- * Name [StreamProcessorName] <p>Name of the Amazon Rekognition stream processor. </p>
-- @return StreamProcessor structure as a key-value pair table
function M.StreamProcessor(args)
	assert(args, "You must provide an argument table when creating StreamProcessor")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Name"] = args["Name"],
	}
	asserts.AssertStreamProcessor(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartFaceSearchRequest = { ["CollectionId"] = true, ["Video"] = true, ["ClientRequestToken"] = true, ["NotificationChannel"] = true, ["JobTag"] = true, ["FaceMatchThreshold"] = true, nil }

function asserts.AssertStartFaceSearchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartFaceSearchRequest to be of type 'table'")
	assert(struct["Video"], "Expected key Video to exist in table")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	if struct["Video"] then asserts.AssertVideo(struct["Video"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["NotificationChannel"] then asserts.AssertNotificationChannel(struct["NotificationChannel"]) end
	if struct["JobTag"] then asserts.AssertJobTag(struct["JobTag"]) end
	if struct["FaceMatchThreshold"] then asserts.AssertPercent(struct["FaceMatchThreshold"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartFaceSearchRequest[k], "StartFaceSearchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartFaceSearchRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CollectionId [CollectionId] <p>ID of the collection that contains the faces you want to search for.</p>
-- * Video [Video] <p>The video you want to search. The video must be stored in an Amazon S3 bucket. </p>
-- * ClientRequestToken [ClientRequestToken] <p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartFaceSearch</code> requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
-- * NotificationChannel [NotificationChannel] <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the search. </p>
-- * JobTag [JobTag] <p>Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic. </p>
-- * FaceMatchThreshold [Percent] <p>The minimum confidence in the person match to return. For example, don't return any matches where confidence in matches is less than 70%. </p>
-- Required key: Video
-- Required key: CollectionId
-- @return StartFaceSearchRequest structure as a key-value pair table
function M.StartFaceSearchRequest(args)
	assert(args, "You must provide an argument table when creating StartFaceSearchRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CollectionId"] = args["CollectionId"],
		["Video"] = args["Video"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["NotificationChannel"] = args["NotificationChannel"],
		["JobTag"] = args["JobTag"],
		["FaceMatchThreshold"] = args["FaceMatchThreshold"],
	}
	asserts.AssertStartFaceSearchRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Point = { ["Y"] = true, ["X"] = true, nil }

function asserts.AssertPoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Point to be of type 'table'")
	if struct["Y"] then asserts.AssertFloat(struct["Y"]) end
	if struct["X"] then asserts.AssertFloat(struct["X"]) end
	for k,_ in pairs(struct) do
		assert(keys.Point[k], "Point contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Point
-- <p>The X and Y coordinates of a point on an image. The X and Y values returned are ratios of the overall image size. For example, if the input image is 700x200 and the operation returns X=0.5 and Y=0.25, then the point is at the (350,50) pixel coordinate on the image.</p> <p>An array of <code>Point</code> objects, <code>Polygon</code>, is returned by . <code>Polygon</code> represents a fine-grained polygon around detected text. For more information, see Geometry in the Amazon Rekognition Developer Guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Y [Float] <p>The value of the Y coordinate for a point on a <code>Polygon</code>.</p>
-- * X [Float] <p>The value of the X coordinate for a point on a <code>Polygon</code>.</p>
-- @return Point structure as a key-value pair table
function M.Point(args)
	assert(args, "You must provide an argument table when creating Point")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Y"] = args["Y"],
		["X"] = args["X"],
	}
	asserts.AssertPoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Image = { ["Bytes"] = true, ["S3Object"] = true, nil }

function asserts.AssertImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Image to be of type 'table'")
	if struct["Bytes"] then asserts.AssertImageBlob(struct["Bytes"]) end
	if struct["S3Object"] then asserts.AssertS3Object(struct["S3Object"]) end
	for k,_ in pairs(struct) do
		assert(keys.Image[k], "Image contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Image
-- <p>Provides the input image either as bytes or an S3 object.</p> <p>You pass image bytes to an Amazon Rekognition API operation by using the <code>Bytes</code> property. For example, you would use the <code>Bytes</code> property to pass an image loaded from a local file system. Image bytes passed by using the <code>Bytes</code> property must be base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to call Amazon Rekognition API operations. </p> <p>For more information, see Analyzing an Image Loaded from a Local File System in the Amazon Rekognition Developer Guide.</p> <p> You pass images stored in an S3 bucket to an Amazon Rekognition API operation by using the <code>S3Object</code> property. Images stored in an S3 bucket do not need to be base64-encoded.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes using the Bytes property is not supported. You must first upload the image to an Amazon S3 bucket and then call the operation using the S3Object property.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see Resource Based Policies in the Amazon Rekognition Developer Guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bytes [ImageBlob] <p>Blob of image bytes up to 5 MBs.</p>
-- * S3Object [S3Object] <p>Identifies an S3 object as the image source.</p>
-- @return Image structure as a key-value pair table
function M.Image(args)
	assert(args, "You must provide an argument table when creating Image")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Bytes"] = args["Bytes"],
		["S3Object"] = args["S3Object"],
	}
	asserts.AssertImage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartFaceDetectionRequest = { ["NotificationChannel"] = true, ["Video"] = true, ["ClientRequestToken"] = true, ["FaceAttributes"] = true, ["JobTag"] = true, nil }

function asserts.AssertStartFaceDetectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartFaceDetectionRequest to be of type 'table'")
	assert(struct["Video"], "Expected key Video to exist in table")
	if struct["NotificationChannel"] then asserts.AssertNotificationChannel(struct["NotificationChannel"]) end
	if struct["Video"] then asserts.AssertVideo(struct["Video"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["FaceAttributes"] then asserts.AssertFaceAttributes(struct["FaceAttributes"]) end
	if struct["JobTag"] then asserts.AssertJobTag(struct["JobTag"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartFaceDetectionRequest[k], "StartFaceDetectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartFaceDetectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotificationChannel [NotificationChannel] <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the face detection operation.</p>
-- * Video [Video] <p>The video in which you want to detect faces. The video must be stored in an Amazon S3 bucket.</p>
-- * ClientRequestToken [ClientRequestToken] <p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartFaceDetection</code> requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
-- * FaceAttributes [FaceAttributes] <p>The face attributes you want returned.</p> <p> <code>DEFAULT</code> - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks. </p> <p> <code>ALL</code> - All facial attributes are returned.</p>
-- * JobTag [JobTag] <p>Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic. </p>
-- Required key: Video
-- @return StartFaceDetectionRequest structure as a key-value pair table
function M.StartFaceDetectionRequest(args)
	assert(args, "You must provide an argument table when creating StartFaceDetectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotificationChannel"] = args["NotificationChannel"],
		["Video"] = args["Video"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["FaceAttributes"] = args["FaceAttributes"],
		["JobTag"] = args["JobTag"],
	}
	asserts.AssertStartFaceDetectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStreamProcessorRequest = { ["Name"] = true, nil }

function asserts.AssertDescribeStreamProcessorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamProcessorRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertStreamProcessorName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamProcessorRequest[k], "DescribeStreamProcessorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamProcessorRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [StreamProcessorName] <p>Name of the stream processor for which you want information.</p>
-- Required key: Name
-- @return DescribeStreamProcessorRequest structure as a key-value pair table
function M.DescribeStreamProcessorRequest(args)
	assert(args, "You must provide an argument table when creating DescribeStreamProcessorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDescribeStreamProcessorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartCelebrityRecognitionResponse = { ["JobId"] = true, nil }

function asserts.AssertStartCelebrityRecognitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartCelebrityRecognitionResponse to be of type 'table'")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartCelebrityRecognitionResponse[k], "StartCelebrityRecognitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartCelebrityRecognitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier for the celebrity recognition analysis job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetCelebrityRecognition</code>.</p>
-- @return StartCelebrityRecognitionResponse structure as a key-value pair table
function M.StartCelebrityRecognitionResponse(args)
	assert(args, "You must provide an argument table when creating StartCelebrityRecognitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartCelebrityRecognitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CelebrityDetail = { ["Confidence"] = true, ["Name"] = true, ["Face"] = true, ["Urls"] = true, ["BoundingBox"] = true, ["Id"] = true, nil }

function asserts.AssertCelebrityDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CelebrityDetail to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Face"] then asserts.AssertFaceDetail(struct["Face"]) end
	if struct["Urls"] then asserts.AssertUrls(struct["Urls"]) end
	if struct["BoundingBox"] then asserts.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["Id"] then asserts.AssertRekognitionUniqueId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CelebrityDetail[k], "CelebrityDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CelebrityDetail
-- <p>Information about a recognized celebrity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>The confidence, in percentage, that Amazon Rekognition has that the recognized face is the celebrity. </p>
-- * Name [String] <p>The name of the celebrity.</p>
-- * Face [FaceDetail] <p>Face details for the recognized celebrity.</p>
-- * Urls [Urls] <p>An array of URLs pointing to additional celebrity information. </p>
-- * BoundingBox [BoundingBox] <p>Bounding box around the body of a celebrity.</p>
-- * Id [RekognitionUniqueId] <p>The unique identifier for the celebrity. </p>
-- @return CelebrityDetail structure as a key-value pair table
function M.CelebrityDetail(args)
	assert(args, "You must provide an argument table when creating CelebrityDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Name"] = args["Name"],
		["Face"] = args["Face"],
		["Urls"] = args["Urls"],
		["BoundingBox"] = args["BoundingBox"],
		["Id"] = args["Id"],
	}
	asserts.AssertCelebrityDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Label = { ["Instances"] = true, ["Confidence"] = true, ["Parents"] = true, ["Name"] = true, nil }

function asserts.AssertLabel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Label to be of type 'table'")
	if struct["Instances"] then asserts.AssertInstances(struct["Instances"]) end
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Parents"] then asserts.AssertParents(struct["Parents"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Label[k], "Label contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Label
-- <p>Structure containing details about the detected label, including the name, and level of confidence.</p> <p>The Amazon Rekognition Image operation operation returns a hierarchical taxonomy (<code>Parents</code>) for detected labels and also bounding box information (<code>Instances</code>) for detected labels. Amazon Rekognition Video doesn't return this information and returns <code>null</code> for the <code>Parents</code> and <code>Instances</code> attributes. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Instances [Instances] <p>If <code>Label</code> represents an object, <code>Instances</code> contains the bounding boxes for each instance of the detected object. Bounding boxes are returned for common object labels such as people, cars, furniture, apparel or pets.</p> <note> <p>Amazon Rekognition Video does not support bounding box information for detected labels. The value of <code>Instances</code> is returned as <code>null</code> by <code>GetLabelDetection</code>.</p> </note>
-- * Confidence [Percent] <p>Level of confidence.</p>
-- * Parents [Parents] <p>The parent labels for a label. The response includes all ancestor labels.</p> <note> <p>Amazon Rekognition Video does not support a hierarchical taxonomy of detected labels. The value of <code>Parents</code> is returned as <code>null</code> by <code>GetLabelDetection</code>.</p> </note>
-- * Name [String] <p>The name (label) of the object or scene.</p>
-- @return Label structure as a key-value pair table
function M.Label(args)
	assert(args, "You must provide an argument table when creating Label")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Instances"] = args["Instances"],
		["Confidence"] = args["Confidence"],
		["Parents"] = args["Parents"],
		["Name"] = args["Name"],
	}
	asserts.AssertLabel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompareFacesResponse = { ["TargetImageOrientationCorrection"] = true, ["UnmatchedFaces"] = true, ["SourceImageOrientationCorrection"] = true, ["FaceMatches"] = true, ["SourceImageFace"] = true, nil }

function asserts.AssertCompareFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompareFacesResponse to be of type 'table'")
	if struct["TargetImageOrientationCorrection"] then asserts.AssertOrientationCorrection(struct["TargetImageOrientationCorrection"]) end
	if struct["UnmatchedFaces"] then asserts.AssertCompareFacesUnmatchList(struct["UnmatchedFaces"]) end
	if struct["SourceImageOrientationCorrection"] then asserts.AssertOrientationCorrection(struct["SourceImageOrientationCorrection"]) end
	if struct["FaceMatches"] then asserts.AssertCompareFacesMatchList(struct["FaceMatches"]) end
	if struct["SourceImageFace"] then asserts.AssertComparedSourceImageFace(struct["SourceImageFace"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompareFacesResponse[k], "CompareFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompareFacesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetImageOrientationCorrection [OrientationCorrection] <p> The orientation of the target image (in counterclockwise direction). If your application displays the target image, you can use this value to correct the orientation of the image. The bounding box coordinates returned in <code>FaceMatches</code> and <code>UnmatchedFaces</code> represent face locations before the image orientation is corrected. </p> <note> <p>If the target image is in .jpg format, it might contain Exif metadata that includes the orientation of the image. If the Exif metadata for the target image populates the orientation field, the value of <code>OrientationCorrection</code> is null. The bounding box coordinates in <code>FaceMatches</code> and <code>UnmatchedFaces</code> represent the location of the face after Exif metadata is used to correct the orientation. Images in .png format don't contain Exif metadata.</p> </note>
-- * UnmatchedFaces [CompareFacesUnmatchList] <p>An array of faces in the target image that did not match the source image face.</p>
-- * SourceImageOrientationCorrection [OrientationCorrection] <p> The orientation of the source image (counterclockwise direction). If your application displays the source image, you can use this value to correct image orientation. The bounding box coordinates returned in <code>SourceImageFace</code> represent the location of the face before the image orientation is corrected. </p> <note> <p>If the source image is in .jpeg format, it might contain exchangeable image (Exif) metadata that includes the image's orientation. If the Exif metadata for the source image populates the orientation field, the value of <code>OrientationCorrection</code> is null. The <code>SourceImageFace</code> bounding box coordinates represent the location of the face after Exif metadata is used to correct the orientation. Images in .png format don't contain Exif metadata.</p> </note>
-- * FaceMatches [CompareFacesMatchList] <p>An array of faces in the target image that match the source image face. Each <code>CompareFacesMatch</code> object provides the bounding box, the confidence level that the bounding box contains a face, and the similarity score for the face in the bounding box and the face in the source image.</p>
-- * SourceImageFace [ComparedSourceImageFace] <p>The face in the source image that was used for comparison.</p>
-- @return CompareFacesResponse structure as a key-value pair table
function M.CompareFacesResponse(args)
	assert(args, "You must provide an argument table when creating CompareFacesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetImageOrientationCorrection"] = args["TargetImageOrientationCorrection"],
		["UnmatchedFaces"] = args["UnmatchedFaces"],
		["SourceImageOrientationCorrection"] = args["SourceImageOrientationCorrection"],
		["FaceMatches"] = args["FaceMatches"],
		["SourceImageFace"] = args["SourceImageFace"],
	}
	asserts.AssertCompareFacesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Instance = { ["BoundingBox"] = true, ["Confidence"] = true, nil }

function asserts.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	if struct["BoundingBox"] then asserts.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	for k,_ in pairs(struct) do
		assert(keys.Instance[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>An instance of a label detected by .</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoundingBox [BoundingBox] <p>The position of the label instance on the image.</p>
-- * Confidence [Percent] <p>The confidence that Amazon Rekognition Image has in the accuracy of the bounding box.</p>
-- @return Instance structure as a key-value pair table
function M.Instance(args)
	assert(args, "You must provide an argument table when creating Instance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoundingBox"] = args["BoundingBox"],
		["Confidence"] = args["Confidence"],
	}
	asserts.AssertInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartCelebrityRecognitionRequest = { ["NotificationChannel"] = true, ["Video"] = true, ["ClientRequestToken"] = true, ["JobTag"] = true, nil }

function asserts.AssertStartCelebrityRecognitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartCelebrityRecognitionRequest to be of type 'table'")
	assert(struct["Video"], "Expected key Video to exist in table")
	if struct["NotificationChannel"] then asserts.AssertNotificationChannel(struct["NotificationChannel"]) end
	if struct["Video"] then asserts.AssertVideo(struct["Video"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["JobTag"] then asserts.AssertJobTag(struct["JobTag"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartCelebrityRecognitionRequest[k], "StartCelebrityRecognitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartCelebrityRecognitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotificationChannel [NotificationChannel] <p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the celebrity recognition analysis to.</p>
-- * Video [Video] <p>The video in which you want to recognize celebrities. The video must be stored in an Amazon S3 bucket.</p>
-- * ClientRequestToken [ClientRequestToken] <p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartCelebrityRecognition</code> requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
-- * JobTag [JobTag] <p>Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic. </p>
-- Required key: Video
-- @return StartCelebrityRecognitionRequest structure as a key-value pair table
function M.StartCelebrityRecognitionRequest(args)
	assert(args, "You must provide an argument table when creating StartCelebrityRecognitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotificationChannel"] = args["NotificationChannel"],
		["Video"] = args["Video"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["JobTag"] = args["JobTag"],
	}
	asserts.AssertStartCelebrityRecognitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCollectionResponse = { ["FaceCount"] = true, ["CreationTimestamp"] = true, ["CollectionARN"] = true, ["FaceModelVersion"] = true, nil }

function asserts.AssertDescribeCollectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCollectionResponse to be of type 'table'")
	if struct["FaceCount"] then asserts.AssertULong(struct["FaceCount"]) end
	if struct["CreationTimestamp"] then asserts.AssertDateTime(struct["CreationTimestamp"]) end
	if struct["CollectionARN"] then asserts.AssertString(struct["CollectionARN"]) end
	if struct["FaceModelVersion"] then asserts.AssertString(struct["FaceModelVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCollectionResponse[k], "DescribeCollectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCollectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceCount [ULong] <p>The number of faces that are indexed into the collection. To index faces into a collection, use .</p>
-- * CreationTimestamp [DateTime] <p>The number of milliseconds since the Unix epoch time until the creation of the collection. The Unix epoch time is 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970.</p>
-- * CollectionARN [String] <p>The Amazon Resource Name (ARN) of the collection.</p>
-- * FaceModelVersion [String] <p>The version of the face model that's used by the collection for face detection.</p> <p>For more information, see Model Versioning in the Amazon Rekognition Developer Guide.</p>
-- @return DescribeCollectionResponse structure as a key-value pair table
function M.DescribeCollectionResponse(args)
	assert(args, "You must provide an argument table when creating DescribeCollectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FaceCount"] = args["FaceCount"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["CollectionARN"] = args["CollectionARN"],
		["FaceModelVersion"] = args["FaceModelVersion"],
	}
	asserts.AssertDescribeCollectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartLabelDetectionRequest = { ["JobTag"] = true, ["MinConfidence"] = true, ["Video"] = true, ["ClientRequestToken"] = true, ["NotificationChannel"] = true, nil }

function asserts.AssertStartLabelDetectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartLabelDetectionRequest to be of type 'table'")
	assert(struct["Video"], "Expected key Video to exist in table")
	if struct["JobTag"] then asserts.AssertJobTag(struct["JobTag"]) end
	if struct["MinConfidence"] then asserts.AssertPercent(struct["MinConfidence"]) end
	if struct["Video"] then asserts.AssertVideo(struct["Video"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["NotificationChannel"] then asserts.AssertNotificationChannel(struct["NotificationChannel"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartLabelDetectionRequest[k], "StartLabelDetectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartLabelDetectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobTag [JobTag] <p>Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic. </p>
-- * MinConfidence [Percent] <p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected label. Confidence represents how certain Amazon Rekognition is that a label is correctly identified.0 is the lowest confidence. 100 is the highest confidence. Amazon Rekognition Video doesn't return any labels with a confidence level lower than this specified value.</p> <p>If you don't specify <code>MinConfidence</code>, the operation returns labels with confidence values greater than or equal to 50 percent.</p>
-- * Video [Video] <p>The video in which you want to detect labels. The video must be stored in an Amazon S3 bucket.</p>
-- * ClientRequestToken [ClientRequestToken] <p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartLabelDetection</code> requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
-- * NotificationChannel [NotificationChannel] <p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the label detection operation to. </p>
-- Required key: Video
-- @return StartLabelDetectionRequest structure as a key-value pair table
function M.StartLabelDetectionRequest(args)
	assert(args, "You must provide an argument table when creating StartLabelDetectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobTag"] = args["JobTag"],
		["MinConfidence"] = args["MinConfidence"],
		["Video"] = args["Video"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["NotificationChannel"] = args["NotificationChannel"],
	}
	asserts.AssertStartLabelDetectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Beard = { ["Confidence"] = true, ["Value"] = true, nil }

function asserts.AssertBeard(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Beard to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then asserts.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Beard[k], "Beard contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Beard
-- <p>Indicates whether or not the face has a beard, and the confidence level in the determination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Level of confidence in the determination.</p>
-- * Value [Boolean] <p>Boolean value that indicates whether the face has beard or not.</p>
-- @return Beard structure as a key-value pair table
function M.Beard(args)
	assert(args, "You must provide an argument table when creating Beard")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertBeard(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartFaceSearchResponse = { ["JobId"] = true, nil }

function asserts.AssertStartFaceSearchResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartFaceSearchResponse to be of type 'table'")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartFaceSearchResponse[k], "StartFaceSearchResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartFaceSearchResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier for the search job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetFaceSearch</code>. </p>
-- @return StartFaceSearchResponse structure as a key-value pair table
function M.StartFaceSearchResponse(args)
	assert(args, "You must provide an argument table when creating StartFaceSearchResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartFaceSearchResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Pose = { ["Yaw"] = true, ["Roll"] = true, ["Pitch"] = true, nil }

function asserts.AssertPose(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Pose to be of type 'table'")
	if struct["Yaw"] then asserts.AssertDegree(struct["Yaw"]) end
	if struct["Roll"] then asserts.AssertDegree(struct["Roll"]) end
	if struct["Pitch"] then asserts.AssertDegree(struct["Pitch"]) end
	for k,_ in pairs(struct) do
		assert(keys.Pose[k], "Pose contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Pose
-- <p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Yaw [Degree] <p>Value representing the face rotation on the yaw axis.</p>
-- * Roll [Degree] <p>Value representing the face rotation on the roll axis.</p>
-- * Pitch [Degree] <p>Value representing the face rotation on the pitch axis.</p>
-- @return Pose structure as a key-value pair table
function M.Pose(args)
	assert(args, "You must provide an argument table when creating Pose")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Yaw"] = args["Yaw"],
		["Roll"] = args["Roll"],
		["Pitch"] = args["Pitch"],
	}
	asserts.AssertPose(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLabelDetectionResponse = { ["NextToken"] = true, ["Labels"] = true, ["StatusMessage"] = true, ["JobStatus"] = true, ["VideoMetadata"] = true, nil }

function asserts.AssertGetLabelDetectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLabelDetectionResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["Labels"] then asserts.AssertLabelDetections(struct["Labels"]) end
	if struct["StatusMessage"] then asserts.AssertStatusMessage(struct["StatusMessage"]) end
	if struct["JobStatus"] then asserts.AssertVideoJobStatus(struct["JobStatus"]) end
	if struct["VideoMetadata"] then asserts.AssertVideoMetadata(struct["VideoMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLabelDetectionResponse[k], "GetLabelDetectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLabelDetectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of labels.</p>
-- * Labels [LabelDetections] <p>An array of labels detected in the video. Each element contains the detected label and the time, in milliseconds from the start of the video, that the label was detected. </p>
-- * StatusMessage [StatusMessage] <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
-- * JobStatus [VideoJobStatus] <p>The current status of the label detection job.</p>
-- * VideoMetadata [VideoMetadata] <p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in every page of paginated responses from a Amazon Rekognition video operation.</p>
-- @return GetLabelDetectionResponse structure as a key-value pair table
function M.GetLabelDetectionResponse(args)
	assert(args, "You must provide an argument table when creating GetLabelDetectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Labels"] = args["Labels"],
		["StatusMessage"] = args["StatusMessage"],
		["JobStatus"] = args["JobStatus"],
		["VideoMetadata"] = args["VideoMetadata"],
	}
	asserts.AssertGetLabelDetectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MouthOpen = { ["Confidence"] = true, ["Value"] = true, nil }

function asserts.AssertMouthOpen(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MouthOpen to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then asserts.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.MouthOpen[k], "MouthOpen contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MouthOpen
-- <p>Indicates whether or not the mouth on the face is open, and the confidence level in the determination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Level of confidence in the determination.</p>
-- * Value [Boolean] <p>Boolean value that indicates whether the mouth on the face is open or not.</p>
-- @return MouthOpen structure as a key-value pair table
function M.MouthOpen(args)
	assert(args, "You must provide an argument table when creating MouthOpen")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertMouthOpen(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCollectionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListCollectionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCollectionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCollectionsRequest[k], "ListCollectionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCollectionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>Pagination token from the previous response.</p>
-- * MaxResults [PageSize] <p>Maximum number of collection IDs to return. </p>
-- @return ListCollectionsRequest structure as a key-value pair table
function M.ListCollectionsRequest(args)
	assert(args, "You must provide an argument table when creating ListCollectionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListCollectionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Geometry = { ["BoundingBox"] = true, ["Polygon"] = true, nil }

function asserts.AssertGeometry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Geometry to be of type 'table'")
	if struct["BoundingBox"] then asserts.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["Polygon"] then asserts.AssertPolygon(struct["Polygon"]) end
	for k,_ in pairs(struct) do
		assert(keys.Geometry[k], "Geometry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Geometry
-- <p>Information about where the text detected by is located on an image.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoundingBox [BoundingBox] <p>An axis-aligned coarse representation of the detected text's location on the image.</p>
-- * Polygon [Polygon] <p>Within the bounding box, a fine-grained polygon around the detected text.</p>
-- @return Geometry structure as a key-value pair table
function M.Geometry(args)
	assert(args, "You must provide an argument table when creating Geometry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoundingBox"] = args["BoundingBox"],
		["Polygon"] = args["Polygon"],
	}
	asserts.AssertGeometry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Object = { ["Version"] = true, ["Bucket"] = true, ["Name"] = true, nil }

function asserts.AssertS3Object(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Object to be of type 'table'")
	if struct["Version"] then asserts.AssertS3ObjectVersion(struct["Version"]) end
	if struct["Bucket"] then asserts.AssertS3Bucket(struct["Bucket"]) end
	if struct["Name"] then asserts.AssertS3ObjectName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Object[k], "S3Object contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Object
-- <p>Provides the S3 bucket name and object name.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see Resource-Based Policies in the Amazon Rekognition Developer Guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [S3ObjectVersion] <p>If the bucket is versioning enabled, you can specify the object version. </p>
-- * Bucket [S3Bucket] <p>Name of the S3 bucket.</p>
-- * Name [S3ObjectName] <p>S3 object key name.</p>
-- @return S3Object structure as a key-value pair table
function M.S3Object(args)
	assert(args, "You must provide an argument table when creating S3Object")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["Bucket"] = args["Bucket"],
		["Name"] = args["Name"],
	}
	asserts.AssertS3Object(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCelebrityRecognitionRequest = { ["NextToken"] = true, ["SortBy"] = true, ["MaxResults"] = true, ["JobId"] = true, nil }

function asserts.AssertGetCelebrityRecognitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCelebrityRecognitionRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["SortBy"] then asserts.AssertCelebrityRecognitionSortBy(struct["SortBy"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCelebrityRecognitionRequest[k], "GetCelebrityRecognitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCelebrityRecognitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the previous response was incomplete (because there is more recognized celebrities to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of celebrities. </p>
-- * SortBy [CelebrityRecognitionSortBy] <p>Sort to use for celebrities returned in <code>Celebrities</code> field. Specify <code>ID</code> to sort by the celebrity identifier, specify <code>TIMESTAMP</code> to sort by the time the celebrity was recognized.</p>
-- * MaxResults [MaxResults] <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.</p>
-- * JobId [JobId] <p>Job identifier for the required celebrity recognition analysis. You can get the job identifer from a call to <code>StartCelebrityRecognition</code>.</p>
-- Required key: JobId
-- @return GetCelebrityRecognitionRequest structure as a key-value pair table
function M.GetCelebrityRecognitionRequest(args)
	assert(args, "You must provide an argument table when creating GetCelebrityRecognitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SortBy"] = args["SortBy"],
		["MaxResults"] = args["MaxResults"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetCelebrityRecognitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Face = { ["BoundingBox"] = true, ["FaceId"] = true, ["ExternalImageId"] = true, ["Confidence"] = true, ["ImageId"] = true, nil }

function asserts.AssertFace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Face to be of type 'table'")
	if struct["BoundingBox"] then asserts.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["FaceId"] then asserts.AssertFaceId(struct["FaceId"]) end
	if struct["ExternalImageId"] then asserts.AssertExternalImageId(struct["ExternalImageId"]) end
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["ImageId"] then asserts.AssertImageId(struct["ImageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Face[k], "Face contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Face
-- <p>Describes the face properties such as the bounding box, face ID, image ID of the input image, and external image ID that you assigned. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoundingBox [BoundingBox] <p>Bounding box of the face.</p>
-- * FaceId [FaceId] <p>Unique identifier that Amazon Rekognition assigns to the face.</p>
-- * ExternalImageId [ExternalImageId] <p>Identifier that you assign to all the faces in the input image.</p>
-- * Confidence [Percent] <p>Confidence level that the bounding box contains a face (and not a different object such as a tree).</p>
-- * ImageId [ImageId] <p>Unique identifier that Amazon Rekognition assigns to the input image.</p>
-- @return Face structure as a key-value pair table
function M.Face(args)
	assert(args, "You must provide an argument table when creating Face")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoundingBox"] = args["BoundingBox"],
		["FaceId"] = args["FaceId"],
		["ExternalImageId"] = args["ExternalImageId"],
		["Confidence"] = args["Confidence"],
		["ImageId"] = args["ImageId"],
	}
	asserts.AssertFace(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamProcessorInput = { ["KinesisVideoStream"] = true, nil }

function asserts.AssertStreamProcessorInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamProcessorInput to be of type 'table'")
	if struct["KinesisVideoStream"] then asserts.AssertKinesisVideoStream(struct["KinesisVideoStream"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamProcessorInput[k], "StreamProcessorInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamProcessorInput
-- <p>Information about the source streaming video. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KinesisVideoStream [KinesisVideoStream] <p>The Kinesis video stream input stream for the source streaming video.</p>
-- @return StreamProcessorInput structure as a key-value pair table
function M.StreamProcessorInput(args)
	assert(args, "You must provide an argument table when creating StreamProcessorInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KinesisVideoStream"] = args["KinesisVideoStream"],
	}
	asserts.AssertStreamProcessorInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopStreamProcessorRequest = { ["Name"] = true, nil }

function asserts.AssertStopStreamProcessorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopStreamProcessorRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertStreamProcessorName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopStreamProcessorRequest[k], "StopStreamProcessorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopStreamProcessorRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [StreamProcessorName] <p>The name of a stream processor created by .</p>
-- Required key: Name
-- @return StopStreamProcessorRequest structure as a key-value pair table
function M.StopStreamProcessorRequest(args)
	assert(args, "You must provide an argument table when creating StopStreamProcessorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStopStreamProcessorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotificationChannel = { ["RoleArn"] = true, ["SNSTopicArn"] = true, nil }

function asserts.AssertNotificationChannel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationChannel to be of type 'table'")
	assert(struct["SNSTopicArn"], "Expected key SNSTopicArn to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["SNSTopicArn"] then asserts.AssertSNSTopicArn(struct["SNSTopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationChannel[k], "NotificationChannel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationChannel
-- <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status of a video analysis operation. For more information, see <a>api-video</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [RoleArn] <p>The ARN of an IAM role that gives Amazon Rekognition publishing permissions to the Amazon SNS topic. </p>
-- * SNSTopicArn [SNSTopicArn] <p>The Amazon SNS topic to which Amazon Rekognition to posts the completion status.</p>
-- Required key: SNSTopicArn
-- Required key: RoleArn
-- @return NotificationChannel structure as a key-value pair table
function M.NotificationChannel(args)
	assert(args, "You must provide an argument table when creating NotificationChannel")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["SNSTopicArn"] = args["SNSTopicArn"],
	}
	asserts.AssertNotificationChannel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectModerationLabelsRequest = { ["MinConfidence"] = true, ["Image"] = true, nil }

function asserts.AssertDetectModerationLabelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectModerationLabelsRequest to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["MinConfidence"] then asserts.AssertPercent(struct["MinConfidence"]) end
	if struct["Image"] then asserts.AssertImage(struct["Image"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectModerationLabelsRequest[k], "DetectModerationLabelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectModerationLabelsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MinConfidence [Percent] <p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't return any labels with a confidence level lower than this specified value.</p> <p>If you don't specify <code>MinConfidence</code>, the operation returns labels with confidence values greater than or equal to 50 percent.</p>
-- * Image [Image] <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
-- Required key: Image
-- @return DetectModerationLabelsRequest structure as a key-value pair table
function M.DetectModerationLabelsRequest(args)
	assert(args, "You must provide an argument table when creating DetectModerationLabelsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MinConfidence"] = args["MinConfidence"],
		["Image"] = args["Image"],
	}
	asserts.AssertDetectModerationLabelsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStreamProcessorResponse = { ["Status"] = true, ["Name"] = true, ["LastUpdateTimestamp"] = true, ["Settings"] = true, ["RoleArn"] = true, ["StreamProcessorArn"] = true, ["Output"] = true, ["Input"] = true, ["CreationTimestamp"] = true, ["StatusMessage"] = true, nil }

function asserts.AssertDescribeStreamProcessorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamProcessorResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertStreamProcessorStatus(struct["Status"]) end
	if struct["Name"] then asserts.AssertStreamProcessorName(struct["Name"]) end
	if struct["LastUpdateTimestamp"] then asserts.AssertDateTime(struct["LastUpdateTimestamp"]) end
	if struct["Settings"] then asserts.AssertStreamProcessorSettings(struct["Settings"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["StreamProcessorArn"] then asserts.AssertStreamProcessorArn(struct["StreamProcessorArn"]) end
	if struct["Output"] then asserts.AssertStreamProcessorOutput(struct["Output"]) end
	if struct["Input"] then asserts.AssertStreamProcessorInput(struct["Input"]) end
	if struct["CreationTimestamp"] then asserts.AssertDateTime(struct["CreationTimestamp"]) end
	if struct["StatusMessage"] then asserts.AssertString(struct["StatusMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamProcessorResponse[k], "DescribeStreamProcessorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamProcessorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StreamProcessorStatus] <p>Current status of the stream processor.</p>
-- * Name [StreamProcessorName] <p>Name of the stream processor. </p>
-- * LastUpdateTimestamp [DateTime] <p>The time, in Unix format, the stream processor was last updated. For example, when the stream processor moves from a running state to a failed state, or when the user starts or stops the stream processor.</p>
-- * Settings [StreamProcessorSettings] <p>Face recognition input parameters that are being used by the stream processor. Includes the collection to use for face recognition and the face attributes to detect.</p>
-- * RoleArn [RoleArn] <p>ARN of the IAM role that allows access to the stream processor.</p>
-- * StreamProcessorArn [StreamProcessorArn] <p>ARN of the stream processor.</p>
-- * Output [StreamProcessorOutput] <p>Kinesis data stream to which Amazon Rekognition Video puts the analysis results.</p>
-- * Input [StreamProcessorInput] <p>Kinesis video stream that provides the source streaming video.</p>
-- * CreationTimestamp [DateTime] <p>Date and time the stream processor was created</p>
-- * StatusMessage [String] <p>Detailed status message about the stream processor.</p>
-- @return DescribeStreamProcessorResponse structure as a key-value pair table
function M.DescribeStreamProcessorResponse(args)
	assert(args, "You must provide an argument table when creating DescribeStreamProcessorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Name"] = args["Name"],
		["LastUpdateTimestamp"] = args["LastUpdateTimestamp"],
		["Settings"] = args["Settings"],
		["RoleArn"] = args["RoleArn"],
		["StreamProcessorArn"] = args["StreamProcessorArn"],
		["Output"] = args["Output"],
		["Input"] = args["Input"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["StatusMessage"] = args["StatusMessage"],
	}
	asserts.AssertDescribeStreamProcessorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectLabelsResponse = { ["Labels"] = true, ["LabelModelVersion"] = true, ["OrientationCorrection"] = true, nil }

function asserts.AssertDetectLabelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectLabelsResponse to be of type 'table'")
	if struct["Labels"] then asserts.AssertLabels(struct["Labels"]) end
	if struct["LabelModelVersion"] then asserts.AssertString(struct["LabelModelVersion"]) end
	if struct["OrientationCorrection"] then asserts.AssertOrientationCorrection(struct["OrientationCorrection"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectLabelsResponse[k], "DetectLabelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectLabelsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Labels [Labels] <p>An array of labels for the real-world objects detected. </p>
-- * LabelModelVersion [String] <p>Version number of the label detection model that was used to detect labels.</p>
-- * OrientationCorrection [OrientationCorrection] <p>The value of <code>OrientationCorrection</code> is always null.</p> <p>If the input image is in .jpeg format, it might contain exchangeable image (Exif) metadata that includes the image's orientation. Amazon Rekognition uses this orientation information to perform image correction - the bounding box coordinates are translated to represent object locations after the orientation information in the Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata.</p> <p>Amazon Rekognition doesn’t perform image correction for images in .png format and .jpeg images without orientation information in the image Exif metadata. The bounding box coordinates are not translated and represent the object locations before the image is rotated. </p>
-- @return DetectLabelsResponse structure as a key-value pair table
function M.DetectLabelsResponse(args)
	assert(args, "You must provide an argument table when creating DetectLabelsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Labels"] = args["Labels"],
		["LabelModelVersion"] = args["LabelModelVersion"],
		["OrientationCorrection"] = args["OrientationCorrection"],
	}
	asserts.AssertDetectLabelsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Mustache = { ["Confidence"] = true, ["Value"] = true, nil }

function asserts.AssertMustache(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Mustache to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then asserts.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Mustache[k], "Mustache contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Mustache
-- <p>Indicates whether or not the face has a mustache, and the confidence level in the determination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Level of confidence in the determination.</p>
-- * Value [Boolean] <p>Boolean value that indicates whether the face has mustache or not.</p>
-- @return Mustache structure as a key-value pair table
function M.Mustache(args)
	assert(args, "You must provide an argument table when creating Mustache")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertMustache(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectTextRequest = { ["Image"] = true, nil }

function asserts.AssertDetectTextRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectTextRequest to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["Image"] then asserts.AssertImage(struct["Image"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectTextRequest[k], "DetectTextRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectTextRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Image [Image] <p>The input image as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI to call Amazon Rekognition operations, you can't pass image bytes. </p>
-- Required key: Image
-- @return DetectTextRequest structure as a key-value pair table
function M.DetectTextRequest(args)
	assert(args, "You must provide an argument table when creating DetectTextRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Image"] = args["Image"],
	}
	asserts.AssertDetectTextRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStreamProcessorRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteStreamProcessorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStreamProcessorRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertStreamProcessorName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStreamProcessorRequest[k], "DeleteStreamProcessorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStreamProcessorRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [StreamProcessorName] <p>The name of the stream processor you want to delete.</p>
-- Required key: Name
-- @return DeleteStreamProcessorRequest structure as a key-value pair table
function M.DeleteStreamProcessorRequest(args)
	assert(args, "You must provide an argument table when creating DeleteStreamProcessorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteStreamProcessorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComparedFace = { ["BoundingBox"] = true, ["Confidence"] = true, ["Pose"] = true, ["Quality"] = true, ["Landmarks"] = true, nil }

function asserts.AssertComparedFace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComparedFace to be of type 'table'")
	if struct["BoundingBox"] then asserts.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Pose"] then asserts.AssertPose(struct["Pose"]) end
	if struct["Quality"] then asserts.AssertImageQuality(struct["Quality"]) end
	if struct["Landmarks"] then asserts.AssertLandmarks(struct["Landmarks"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComparedFace[k], "ComparedFace contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComparedFace
-- <p>Provides face metadata for target image faces that are analyzed by <code>CompareFaces</code> and <code>RecognizeCelebrities</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoundingBox [BoundingBox] <p>Bounding box of the face.</p>
-- * Confidence [Percent] <p>Level of confidence that what the bounding box contains is a face.</p>
-- * Pose [Pose] <p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>
-- * Quality [ImageQuality] <p>Identifies face image brightness and sharpness. </p>
-- * Landmarks [Landmarks] <p>An array of facial landmarks.</p>
-- @return ComparedFace structure as a key-value pair table
function M.ComparedFace(args)
	assert(args, "You must provide an argument table when creating ComparedFace")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoundingBox"] = args["BoundingBox"],
		["Confidence"] = args["Confidence"],
		["Pose"] = args["Pose"],
		["Quality"] = args["Quality"],
		["Landmarks"] = args["Landmarks"],
	}
	asserts.AssertComparedFace(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartContentModerationRequest = { ["JobTag"] = true, ["MinConfidence"] = true, ["Video"] = true, ["ClientRequestToken"] = true, ["NotificationChannel"] = true, nil }

function asserts.AssertStartContentModerationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartContentModerationRequest to be of type 'table'")
	assert(struct["Video"], "Expected key Video to exist in table")
	if struct["JobTag"] then asserts.AssertJobTag(struct["JobTag"]) end
	if struct["MinConfidence"] then asserts.AssertPercent(struct["MinConfidence"]) end
	if struct["Video"] then asserts.AssertVideo(struct["Video"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["NotificationChannel"] then asserts.AssertNotificationChannel(struct["NotificationChannel"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartContentModerationRequest[k], "StartContentModerationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartContentModerationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobTag [JobTag] <p>Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic. </p>
-- * MinConfidence [Percent] <p>Specifies the minimum confidence that Amazon Rekognition must have in order to return a moderated content label. Confidence represents how certain Amazon Rekognition is that the moderated content is correctly identified. 0 is the lowest confidence. 100 is the highest confidence. Amazon Rekognition doesn't return any moderated content labels with a confidence level lower than this specified value. If you don't specify <code>MinConfidence</code>, <code>GetContentModeration</code> returns labels with confidence values greater than or equal to 50 percent.</p>
-- * Video [Video] <p>The video in which you want to moderate content. The video must be stored in an Amazon S3 bucket.</p>
-- * ClientRequestToken [ClientRequestToken] <p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartContentModeration</code> requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
-- * NotificationChannel [NotificationChannel] <p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the content moderation analysis to.</p>
-- Required key: Video
-- @return StartContentModerationRequest structure as a key-value pair table
function M.StartContentModerationRequest(args)
	assert(args, "You must provide an argument table when creating StartContentModerationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobTag"] = args["JobTag"],
		["MinConfidence"] = args["MinConfidence"],
		["Video"] = args["Video"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["NotificationChannel"] = args["NotificationChannel"],
	}
	asserts.AssertStartContentModerationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartPersonTrackingRequest = { ["NotificationChannel"] = true, ["Video"] = true, ["ClientRequestToken"] = true, ["JobTag"] = true, nil }

function asserts.AssertStartPersonTrackingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartPersonTrackingRequest to be of type 'table'")
	assert(struct["Video"], "Expected key Video to exist in table")
	if struct["NotificationChannel"] then asserts.AssertNotificationChannel(struct["NotificationChannel"]) end
	if struct["Video"] then asserts.AssertVideo(struct["Video"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["JobTag"] then asserts.AssertJobTag(struct["JobTag"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartPersonTrackingRequest[k], "StartPersonTrackingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartPersonTrackingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotificationChannel [NotificationChannel] <p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the people detection operation to.</p>
-- * Video [Video] <p>The video in which you want to detect people. The video must be stored in an Amazon S3 bucket.</p>
-- * ClientRequestToken [ClientRequestToken] <p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartPersonTracking</code> requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
-- * JobTag [JobTag] <p>Unique identifier you specify to identify the job in the completion status published to the Amazon Simple Notification Service topic. </p>
-- Required key: Video
-- @return StartPersonTrackingRequest structure as a key-value pair table
function M.StartPersonTrackingRequest(args)
	assert(args, "You must provide an argument table when creating StartPersonTrackingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotificationChannel"] = args["NotificationChannel"],
		["Video"] = args["Video"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["JobTag"] = args["JobTag"],
	}
	asserts.AssertStartPersonTrackingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchFacesRequest = { ["FaceId"] = true, ["MaxFaces"] = true, ["FaceMatchThreshold"] = true, ["CollectionId"] = true, nil }

function asserts.AssertSearchFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchFacesRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	assert(struct["FaceId"], "Expected key FaceId to exist in table")
	if struct["FaceId"] then asserts.AssertFaceId(struct["FaceId"]) end
	if struct["MaxFaces"] then asserts.AssertMaxFaces(struct["MaxFaces"]) end
	if struct["FaceMatchThreshold"] then asserts.AssertPercent(struct["FaceMatchThreshold"]) end
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchFacesRequest[k], "SearchFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchFacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceId [FaceId] <p>ID of a face to find matches for in the collection.</p>
-- * MaxFaces [MaxFaces] <p>Maximum number of faces to return. The operation returns the maximum number of faces with the highest confidence in the match.</p>
-- * FaceMatchThreshold [Percent] <p>Optional value specifying the minimum confidence in the face match to return. For example, don't return any matches where confidence in matches is less than 70%.</p>
-- * CollectionId [CollectionId] <p>ID of the collection the face belongs to.</p>
-- Required key: CollectionId
-- Required key: FaceId
-- @return SearchFacesRequest structure as a key-value pair table
function M.SearchFacesRequest(args)
	assert(args, "You must provide an argument table when creating SearchFacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FaceId"] = args["FaceId"],
		["MaxFaces"] = args["MaxFaces"],
		["FaceMatchThreshold"] = args["FaceMatchThreshold"],
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertSearchFacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Video = { ["S3Object"] = true, nil }

function asserts.AssertVideo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Video to be of type 'table'")
	if struct["S3Object"] then asserts.AssertS3Object(struct["S3Object"]) end
	for k,_ in pairs(struct) do
		assert(keys.Video[k], "Video contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Video
-- <p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as use <code>Video</code> to specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Object [S3Object] <p>The Amazon S3 bucket name and file name for the video.</p>
-- @return Video structure as a key-value pair table
function M.Video(args)
	assert(args, "You must provide an argument table when creating Video")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3Object"] = args["S3Object"],
	}
	asserts.AssertVideo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchFacesByImageResponse = { ["SearchedFaceBoundingBox"] = true, ["SearchedFaceConfidence"] = true, ["FaceMatches"] = true, ["FaceModelVersion"] = true, nil }

function asserts.AssertSearchFacesByImageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchFacesByImageResponse to be of type 'table'")
	if struct["SearchedFaceBoundingBox"] then asserts.AssertBoundingBox(struct["SearchedFaceBoundingBox"]) end
	if struct["SearchedFaceConfidence"] then asserts.AssertPercent(struct["SearchedFaceConfidence"]) end
	if struct["FaceMatches"] then asserts.AssertFaceMatchList(struct["FaceMatches"]) end
	if struct["FaceModelVersion"] then asserts.AssertString(struct["FaceModelVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchFacesByImageResponse[k], "SearchFacesByImageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchFacesByImageResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SearchedFaceBoundingBox [BoundingBox] <p>The bounding box around the face in the input image that Amazon Rekognition used for the search.</p>
-- * SearchedFaceConfidence [Percent] <p>The level of confidence that the <code>searchedFaceBoundingBox</code>, contains a face.</p>
-- * FaceMatches [FaceMatchList] <p>An array of faces that match the input face, along with the confidence in the match.</p>
-- * FaceModelVersion [String] <p>Version number of the face detection model associated with the input collection (<code>CollectionId</code>).</p>
-- @return SearchFacesByImageResponse structure as a key-value pair table
function M.SearchFacesByImageResponse(args)
	assert(args, "You must provide an argument table when creating SearchFacesByImageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SearchedFaceBoundingBox"] = args["SearchedFaceBoundingBox"],
		["SearchedFaceConfidence"] = args["SearchedFaceConfidence"],
		["FaceMatches"] = args["FaceMatches"],
		["FaceModelVersion"] = args["FaceModelVersion"],
	}
	asserts.AssertSearchFacesByImageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFaceDetectionResponse = { ["Faces"] = true, ["NextToken"] = true, ["StatusMessage"] = true, ["JobStatus"] = true, ["VideoMetadata"] = true, nil }

function asserts.AssertGetFaceDetectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFaceDetectionResponse to be of type 'table'")
	if struct["Faces"] then asserts.AssertFaceDetections(struct["Faces"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["StatusMessage"] then asserts.AssertStatusMessage(struct["StatusMessage"]) end
	if struct["JobStatus"] then asserts.AssertVideoJobStatus(struct["JobStatus"]) end
	if struct["VideoMetadata"] then asserts.AssertVideoMetadata(struct["VideoMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFaceDetectionResponse[k], "GetFaceDetectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFaceDetectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Faces [FaceDetections] <p>An array of faces detected in the video. Each element contains a detected face's details and the time, in milliseconds from the start of the video, the face was detected. </p>
-- * NextToken [PaginationToken] <p>If the response is truncated, Amazon Rekognition returns this token that you can use in the subsequent request to retrieve the next set of faces. </p>
-- * StatusMessage [StatusMessage] <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
-- * JobStatus [VideoJobStatus] <p>The current status of the face detection job.</p>
-- * VideoMetadata [VideoMetadata] <p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in every page of paginated responses from a Amazon Rekognition video operation.</p>
-- @return GetFaceDetectionResponse structure as a key-value pair table
function M.GetFaceDetectionResponse(args)
	assert(args, "You must provide an argument table when creating GetFaceDetectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Faces"] = args["Faces"],
		["NextToken"] = args["NextToken"],
		["StatusMessage"] = args["StatusMessage"],
		["JobStatus"] = args["JobStatus"],
		["VideoMetadata"] = args["VideoMetadata"],
	}
	asserts.AssertGetFaceDetectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FaceRecord = { ["FaceDetail"] = true, ["Face"] = true, nil }

function asserts.AssertFaceRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FaceRecord to be of type 'table'")
	if struct["FaceDetail"] then asserts.AssertFaceDetail(struct["FaceDetail"]) end
	if struct["Face"] then asserts.AssertFace(struct["Face"]) end
	for k,_ in pairs(struct) do
		assert(keys.FaceRecord[k], "FaceRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FaceRecord
-- <p>Object containing both the face metadata (stored in the backend database), and facial attributes that are detected but aren't stored in the database.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceDetail [FaceDetail] <p>Structure containing attributes of the face that the algorithm detected.</p>
-- * Face [Face] <p>Describes the face properties such as the bounding box, face ID, image ID of the input image, and external image ID that you assigned. </p>
-- @return FaceRecord structure as a key-value pair table
function M.FaceRecord(args)
	assert(args, "You must provide an argument table when creating FaceRecord")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FaceDetail"] = args["FaceDetail"],
		["Face"] = args["Face"],
	}
	asserts.AssertFaceRecord(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStreamProcessorResponse = { ["StreamProcessorArn"] = true, nil }

function asserts.AssertCreateStreamProcessorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamProcessorResponse to be of type 'table'")
	if struct["StreamProcessorArn"] then asserts.AssertStreamProcessorArn(struct["StreamProcessorArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamProcessorResponse[k], "CreateStreamProcessorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamProcessorResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamProcessorArn [StreamProcessorArn] <p>ARN for the newly create stream processor.</p>
-- @return CreateStreamProcessorResponse structure as a key-value pair table
function M.CreateStreamProcessorResponse(args)
	assert(args, "You must provide an argument table when creating CreateStreamProcessorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamProcessorArn"] = args["StreamProcessorArn"],
	}
	asserts.AssertCreateStreamProcessorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPersonTrackingResponse = { ["Persons"] = true, ["NextToken"] = true, ["StatusMessage"] = true, ["JobStatus"] = true, ["VideoMetadata"] = true, nil }

function asserts.AssertGetPersonTrackingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPersonTrackingResponse to be of type 'table'")
	if struct["Persons"] then asserts.AssertPersonDetections(struct["Persons"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["StatusMessage"] then asserts.AssertStatusMessage(struct["StatusMessage"]) end
	if struct["JobStatus"] then asserts.AssertVideoJobStatus(struct["JobStatus"]) end
	if struct["VideoMetadata"] then asserts.AssertVideoMetadata(struct["VideoMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPersonTrackingResponse[k], "GetPersonTrackingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPersonTrackingResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Persons [PersonDetections] <p>An array of the persons detected in the video and the time(s) their path was tracked throughout the video. An array element will exist for each time a person's path is tracked. </p>
-- * NextToken [PaginationToken] <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of persons. </p>
-- * StatusMessage [StatusMessage] <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
-- * JobStatus [VideoJobStatus] <p>The current status of the person tracking job.</p>
-- * VideoMetadata [VideoMetadata] <p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in every page of paginated responses from a Amazon Rekognition Video operation.</p>
-- @return GetPersonTrackingResponse structure as a key-value pair table
function M.GetPersonTrackingResponse(args)
	assert(args, "You must provide an argument table when creating GetPersonTrackingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Persons"] = args["Persons"],
		["NextToken"] = args["NextToken"],
		["StatusMessage"] = args["StatusMessage"],
		["JobStatus"] = args["JobStatus"],
		["VideoMetadata"] = args["VideoMetadata"],
	}
	asserts.AssertGetPersonTrackingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AgeRange = { ["High"] = true, ["Low"] = true, nil }

function asserts.AssertAgeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgeRange to be of type 'table'")
	if struct["High"] then asserts.AssertUInteger(struct["High"]) end
	if struct["Low"] then asserts.AssertUInteger(struct["Low"]) end
	for k,_ in pairs(struct) do
		assert(keys.AgeRange[k], "AgeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgeRange
-- <p>Structure containing the estimated age range, in years, for a face.</p> <p>Amazon Rekognition estimates an age range for faces detected in the input image. Estimated age ranges can overlap. A face of a 5-year-old might have an estimated range of 4-6, while the face of a 6-year-old might have an estimated range of 4-8.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * High [UInteger] <p>The highest estimated age.</p>
-- * Low [UInteger] <p>The lowest estimated age.</p>
-- @return AgeRange structure as a key-value pair table
function M.AgeRange(args)
	assert(args, "You must provide an argument table when creating AgeRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["High"] = args["High"],
		["Low"] = args["Low"],
	}
	asserts.AssertAgeRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PersonDetection = { ["Timestamp"] = true, ["Person"] = true, nil }

function asserts.AssertPersonDetection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PersonDetection to be of type 'table'")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Person"] then asserts.AssertPersonDetail(struct["Person"]) end
	for k,_ in pairs(struct) do
		assert(keys.PersonDetection[k], "PersonDetection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PersonDetection
-- <p>Details and path tracking information for a single time a person's path is tracked in a video. Amazon Rekognition operations that track people's paths return an array of <code>PersonDetection</code> objects with elements for each time a person's path is tracked in a video. </p> <p>For more information, see API_GetPersonTracking in the Amazon Rekognition Developer Guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Timestamp] <p>The time, in milliseconds from the start of the video, that the person's path was tracked.</p>
-- * Person [PersonDetail] <p>Details about a person whose path was tracked in a video.</p>
-- @return PersonDetection structure as a key-value pair table
function M.PersonDetection(args)
	assert(args, "You must provide an argument table when creating PersonDetection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["Person"] = args["Person"],
	}
	asserts.AssertPersonDetection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompareFacesRequest = { ["TargetImage"] = true, ["SourceImage"] = true, ["SimilarityThreshold"] = true, nil }

function asserts.AssertCompareFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompareFacesRequest to be of type 'table'")
	assert(struct["SourceImage"], "Expected key SourceImage to exist in table")
	assert(struct["TargetImage"], "Expected key TargetImage to exist in table")
	if struct["TargetImage"] then asserts.AssertImage(struct["TargetImage"]) end
	if struct["SourceImage"] then asserts.AssertImage(struct["SourceImage"]) end
	if struct["SimilarityThreshold"] then asserts.AssertPercent(struct["SimilarityThreshold"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompareFacesRequest[k], "CompareFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompareFacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetImage [Image] <p>The target image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
-- * SourceImage [Image] <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
-- * SimilarityThreshold [Percent] <p>The minimum level of confidence in the face matches that a match must meet to be included in the <code>FaceMatches</code> array.</p>
-- Required key: SourceImage
-- Required key: TargetImage
-- @return CompareFacesRequest structure as a key-value pair table
function M.CompareFacesRequest(args)
	assert(args, "You must provide an argument table when creating CompareFacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetImage"] = args["TargetImage"],
		["SourceImage"] = args["SourceImage"],
		["SimilarityThreshold"] = args["SimilarityThreshold"],
	}
	asserts.AssertCompareFacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Sunglasses = { ["Confidence"] = true, ["Value"] = true, nil }

function asserts.AssertSunglasses(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Sunglasses to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then asserts.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Sunglasses[k], "Sunglasses contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Sunglasses
-- <p>Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Level of confidence in the determination.</p>
-- * Value [Boolean] <p>Boolean value that indicates whether the face is wearing sunglasses or not.</p>
-- @return Sunglasses structure as a key-value pair table
function M.Sunglasses(args)
	assert(args, "You must provide an argument table when creating Sunglasses")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertSunglasses(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecognizeCelebritiesResponse = { ["UnrecognizedFaces"] = true, ["CelebrityFaces"] = true, ["OrientationCorrection"] = true, nil }

function asserts.AssertRecognizeCelebritiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecognizeCelebritiesResponse to be of type 'table'")
	if struct["UnrecognizedFaces"] then asserts.AssertComparedFaceList(struct["UnrecognizedFaces"]) end
	if struct["CelebrityFaces"] then asserts.AssertCelebrityList(struct["CelebrityFaces"]) end
	if struct["OrientationCorrection"] then asserts.AssertOrientationCorrection(struct["OrientationCorrection"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecognizeCelebritiesResponse[k], "RecognizeCelebritiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecognizeCelebritiesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnrecognizedFaces [ComparedFaceList] <p>Details about each unrecognized face in the image.</p>
-- * CelebrityFaces [CelebrityList] <p>Details about each celebrity found in the image. Amazon Rekognition can detect a maximum of 15 celebrities in an image.</p>
-- * OrientationCorrection [OrientationCorrection] <p>The orientation of the input image (counterclockwise direction). If your application displays the image, you can use this value to correct the orientation. The bounding box coordinates returned in <code>CelebrityFaces</code> and <code>UnrecognizedFaces</code> represent face locations before the image orientation is corrected. </p> <note> <p>If the input image is in .jpeg format, it might contain exchangeable image (Exif) metadata that includes the image's orientation. If so, and the Exif metadata for the input image populates the orientation field, the value of <code>OrientationCorrection</code> is null. The <code>CelebrityFaces</code> and <code>UnrecognizedFaces</code> bounding box coordinates represent face locations after Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata. </p> </note>
-- @return RecognizeCelebritiesResponse structure as a key-value pair table
function M.RecognizeCelebritiesResponse(args)
	assert(args, "You must provide an argument table when creating RecognizeCelebritiesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnrecognizedFaces"] = args["UnrecognizedFaces"],
		["CelebrityFaces"] = args["CelebrityFaces"],
		["OrientationCorrection"] = args["OrientationCorrection"],
	}
	asserts.AssertRecognizeCelebritiesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PersonDetail = { ["BoundingBox"] = true, ["Index"] = true, ["Face"] = true, nil }

function asserts.AssertPersonDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PersonDetail to be of type 'table'")
	if struct["BoundingBox"] then asserts.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["Index"] then asserts.AssertPersonIndex(struct["Index"]) end
	if struct["Face"] then asserts.AssertFaceDetail(struct["Face"]) end
	for k,_ in pairs(struct) do
		assert(keys.PersonDetail[k], "PersonDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PersonDetail
-- <p>Details about a person detected in a video analysis request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoundingBox [BoundingBox] <p>Bounding box around the detected person.</p>
-- * Index [PersonIndex] <p>Identifier for the person detected person within a video. Use to keep track of the person throughout the video. The identifier is not stored by Amazon Rekognition.</p>
-- * Face [FaceDetail] <p>Face details for the detected person.</p>
-- @return PersonDetail structure as a key-value pair table
function M.PersonDetail(args)
	assert(args, "You must provide an argument table when creating PersonDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BoundingBox"] = args["BoundingBox"],
		["Index"] = args["Index"],
		["Face"] = args["Face"],
	}
	asserts.AssertPersonDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CelebrityRecognition = { ["Timestamp"] = true, ["Celebrity"] = true, nil }

function asserts.AssertCelebrityRecognition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CelebrityRecognition to be of type 'table'")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Celebrity"] then asserts.AssertCelebrityDetail(struct["Celebrity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CelebrityRecognition[k], "CelebrityRecognition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CelebrityRecognition
-- <p>Information about a detected celebrity and the time the celebrity was detected in a stored video. For more information, see GetCelebrityRecognition in the Amazon Rekognition Developer Guide.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Timestamp] <p>The time, in milliseconds from the start of the video, that the celebrity was recognized.</p>
-- * Celebrity [CelebrityDetail] <p>Information about a recognized celebrity.</p>
-- @return CelebrityRecognition structure as a key-value pair table
function M.CelebrityRecognition(args)
	assert(args, "You must provide an argument table when creating CelebrityRecognition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["Celebrity"] = args["Celebrity"],
	}
	asserts.AssertCelebrityRecognition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EyeOpen = { ["Confidence"] = true, ["Value"] = true, nil }

function asserts.AssertEyeOpen(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EyeOpen to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Value"] then asserts.AssertBoolean(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.EyeOpen[k], "EyeOpen contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EyeOpen
-- <p>Indicates whether or not the eyes on the face are open, and the confidence level in the determination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Level of confidence in the determination.</p>
-- * Value [Boolean] <p>Boolean value that indicates whether the eyes on the face are open.</p>
-- @return EyeOpen structure as a key-value pair table
function M.EyeOpen(args)
	assert(args, "You must provide an argument table when creating EyeOpen")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertEyeOpen(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectFacesResponse = { ["FaceDetails"] = true, ["OrientationCorrection"] = true, nil }

function asserts.AssertDetectFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectFacesResponse to be of type 'table'")
	if struct["FaceDetails"] then asserts.AssertFaceDetailList(struct["FaceDetails"]) end
	if struct["OrientationCorrection"] then asserts.AssertOrientationCorrection(struct["OrientationCorrection"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectFacesResponse[k], "DetectFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectFacesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceDetails [FaceDetailList] <p>Details of each face found in the image. </p>
-- * OrientationCorrection [OrientationCorrection] <p> The orientation of the input image (counter-clockwise direction). If your application displays the image, you can use this value to correct image orientation. The bounding box coordinates returned in <code>FaceDetails</code> represent face locations before the image orientation is corrected. </p> <note> <p>If the input image is in .jpeg format, it might contain exchangeable image (Exif) metadata that includes the image's orientation. If so, and the Exif metadata for the input image populates the orientation field, the value of <code>OrientationCorrection</code> is null. The <code>FaceDetails</code> bounding box coordinates represent face locations after Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata.</p> </note>
-- @return DetectFacesResponse structure as a key-value pair table
function M.DetectFacesResponse(args)
	assert(args, "You must provide an argument table when creating DetectFacesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FaceDetails"] = args["FaceDetails"],
		["OrientationCorrection"] = args["OrientationCorrection"],
	}
	asserts.AssertDetectFacesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Celebrity = { ["MatchConfidence"] = true, ["Face"] = true, ["Name"] = true, ["Urls"] = true, ["Id"] = true, nil }

function asserts.AssertCelebrity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Celebrity to be of type 'table'")
	if struct["MatchConfidence"] then asserts.AssertPercent(struct["MatchConfidence"]) end
	if struct["Face"] then asserts.AssertComparedFace(struct["Face"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Urls"] then asserts.AssertUrls(struct["Urls"]) end
	if struct["Id"] then asserts.AssertRekognitionUniqueId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Celebrity[k], "Celebrity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Celebrity
-- <p>Provides information about a celebrity recognized by the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MatchConfidence [Percent] <p>The confidence, in percentage, that Amazon Rekognition has that the recognized face is the celebrity.</p>
-- * Face [ComparedFace] <p>Provides information about the celebrity's face, such as its location on the image.</p>
-- * Name [String] <p>The name of the celebrity.</p>
-- * Urls [Urls] <p>An array of URLs pointing to additional information about the celebrity. If there is no additional information about the celebrity, this list is empty.</p>
-- * Id [RekognitionUniqueId] <p>A unique identifier for the celebrity. </p>
-- @return Celebrity structure as a key-value pair table
function M.Celebrity(args)
	assert(args, "You must provide an argument table when creating Celebrity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MatchConfidence"] = args["MatchConfidence"],
		["Face"] = args["Face"],
		["Name"] = args["Name"],
		["Urls"] = args["Urls"],
		["Id"] = args["Id"],
	}
	asserts.AssertCelebrity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FaceSearchSettings = { ["FaceMatchThreshold"] = true, ["CollectionId"] = true, nil }

function asserts.AssertFaceSearchSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FaceSearchSettings to be of type 'table'")
	if struct["FaceMatchThreshold"] then asserts.AssertPercent(struct["FaceMatchThreshold"]) end
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.FaceSearchSettings[k], "FaceSearchSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FaceSearchSettings
-- <p>Input face recognition parameters for an Amazon Rekognition stream processor. <code>FaceRecognitionSettings</code> is a request parameter for .</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceMatchThreshold [Percent] <p>Minimum face match confidence score that must be met to return a result for a recognized face. Default is 70. 0 is the lowest confidence. 100 is the highest confidence.</p>
-- * CollectionId [CollectionId] <p>The ID of a collection that contains faces that you want to search for.</p>
-- @return FaceSearchSettings structure as a key-value pair table
function M.FaceSearchSettings(args)
	assert(args, "You must provide an argument table when creating FaceSearchSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FaceMatchThreshold"] = args["FaceMatchThreshold"],
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertFaceSearchSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KinesisVideoStream = { ["Arn"] = true, nil }

function asserts.AssertKinesisVideoStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisVideoStream to be of type 'table'")
	if struct["Arn"] then asserts.AssertKinesisVideoArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisVideoStream[k], "KinesisVideoStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisVideoStream
-- <p>Kinesis video stream stream that provides the source streaming video for a Amazon Rekognition Video stream processor. For more information, see CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [KinesisVideoArn] <p>ARN of the Kinesis video stream stream that streams the source video.</p>
-- @return KinesisVideoStream structure as a key-value pair table
function M.KinesisVideoStream(args)
	assert(args, "You must provide an argument table when creating KinesisVideoStream")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
	}
	asserts.AssertKinesisVideoStream(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStreamProcessorsResponse = { ["NextToken"] = true, ["StreamProcessors"] = true, nil }

function asserts.AssertListStreamProcessorsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamProcessorsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["StreamProcessors"] then asserts.AssertStreamProcessorList(struct["StreamProcessors"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamProcessorsResponse[k], "ListStreamProcessorsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamProcessorsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of stream processors. </p>
-- * StreamProcessors [StreamProcessorList] <p>List of stream processors that you have created.</p>
-- @return ListStreamProcessorsResponse structure as a key-value pair table
function M.ListStreamProcessorsResponse(args)
	assert(args, "You must provide an argument table when creating ListStreamProcessorsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["StreamProcessors"] = args["StreamProcessors"],
	}
	asserts.AssertListStreamProcessorsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompareFacesMatch = { ["Face"] = true, ["Similarity"] = true, nil }

function asserts.AssertCompareFacesMatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompareFacesMatch to be of type 'table'")
	if struct["Face"] then asserts.AssertComparedFace(struct["Face"]) end
	if struct["Similarity"] then asserts.AssertPercent(struct["Similarity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompareFacesMatch[k], "CompareFacesMatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompareFacesMatch
-- <p>Provides information about a face in a target image that matches the source image face analyzed by <code>CompareFaces</code>. The <code>Face</code> property contains the bounding box of the face in the target image. The <code>Similarity</code> property is the confidence that the source image face matches the face in the bounding box.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Face [ComparedFace] <p>Provides face metadata (bounding box and confidence that the bounding box actually contains a face).</p>
-- * Similarity [Percent] <p>Level of confidence that the faces match.</p>
-- @return CompareFacesMatch structure as a key-value pair table
function M.CompareFacesMatch(args)
	assert(args, "You must provide an argument table when creating CompareFacesMatch")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Face"] = args["Face"],
		["Similarity"] = args["Similarity"],
	}
	asserts.AssertCompareFacesMatch(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPersonTrackingRequest = { ["NextToken"] = true, ["SortBy"] = true, ["MaxResults"] = true, ["JobId"] = true, nil }

function asserts.AssertGetPersonTrackingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPersonTrackingRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["SortBy"] then asserts.AssertPersonTrackingSortBy(struct["SortBy"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPersonTrackingRequest[k], "GetPersonTrackingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPersonTrackingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the previous response was incomplete (because there are more persons to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of persons. </p>
-- * SortBy [PersonTrackingSortBy] <p>Sort to use for elements in the <code>Persons</code> array. Use <code>TIMESTAMP</code> to sort array elements by the time persons are detected. Use <code>INDEX</code> to sort by the tracked persons. If you sort by <code>INDEX</code>, the array elements for each person are sorted by detection confidence. The default sort is by <code>TIMESTAMP</code>.</p>
-- * MaxResults [MaxResults] <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.</p>
-- * JobId [JobId] <p>The identifier for a job that tracks persons in a video. You get the <code>JobId</code> from a call to <code>StartPersonTracking</code>. </p>
-- Required key: JobId
-- @return GetPersonTrackingRequest structure as a key-value pair table
function M.GetPersonTrackingRequest(args)
	assert(args, "You must provide an argument table when creating GetPersonTrackingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SortBy"] = args["SortBy"],
		["MaxResults"] = args["MaxResults"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetPersonTrackingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLabelDetectionRequest = { ["NextToken"] = true, ["SortBy"] = true, ["MaxResults"] = true, ["JobId"] = true, nil }

function asserts.AssertGetLabelDetectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLabelDetectionRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["SortBy"] then asserts.AssertLabelDetectionSortBy(struct["SortBy"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLabelDetectionRequest[k], "GetLabelDetectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLabelDetectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of labels. </p>
-- * SortBy [LabelDetectionSortBy] <p>Sort to use for elements in the <code>Labels</code> array. Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected. Use <code>NAME</code> to alphabetically group elements for a label together. Within each label group, the array element are sorted by detection confidence. The default sort is by <code>TIMESTAMP</code>.</p>
-- * MaxResults [MaxResults] <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.</p>
-- * JobId [JobId] <p>Job identifier for the label detection operation for which you want results returned. You get the job identifer from an initial call to <code>StartlabelDetection</code>.</p>
-- Required key: JobId
-- @return GetLabelDetectionRequest structure as a key-value pair table
function M.GetLabelDetectionRequest(args)
	assert(args, "You must provide an argument table when creating GetLabelDetectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SortBy"] = args["SortBy"],
		["MaxResults"] = args["MaxResults"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetLabelDetectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStreamProcessorRequest = { ["Input"] = true, ["RoleArn"] = true, ["Settings"] = true, ["Name"] = true, ["Output"] = true, nil }

function asserts.AssertCreateStreamProcessorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamProcessorRequest to be of type 'table'")
	assert(struct["Input"], "Expected key Input to exist in table")
	assert(struct["Output"], "Expected key Output to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Settings"], "Expected key Settings to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["Input"] then asserts.AssertStreamProcessorInput(struct["Input"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["Settings"] then asserts.AssertStreamProcessorSettings(struct["Settings"]) end
	if struct["Name"] then asserts.AssertStreamProcessorName(struct["Name"]) end
	if struct["Output"] then asserts.AssertStreamProcessorOutput(struct["Output"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamProcessorRequest[k], "CreateStreamProcessorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamProcessorRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Input [StreamProcessorInput] <p>Kinesis video stream stream that provides the source streaming video. If you are using the AWS CLI, the parameter name is <code>StreamProcessorInput</code>.</p>
-- * RoleArn [RoleArn] <p>ARN of the IAM role that allows access to the stream processor.</p>
-- * Settings [StreamProcessorSettings] <p>Face recognition input parameters to be used by the stream processor. Includes the collection to use for face recognition and the face attributes to detect.</p>
-- * Name [StreamProcessorName] <p>An identifier you assign to the stream processor. You can use <code>Name</code> to manage the stream processor. For example, you can get the current status of the stream processor by calling . <code>Name</code> is idempotent. </p>
-- * Output [StreamProcessorOutput] <p>Kinesis data stream stream to which Amazon Rekognition Video puts the analysis results. If you are using the AWS CLI, the parameter name is <code>StreamProcessorOutput</code>.</p>
-- Required key: Input
-- Required key: Output
-- Required key: Name
-- Required key: Settings
-- Required key: RoleArn
-- @return CreateStreamProcessorRequest structure as a key-value pair table
function M.CreateStreamProcessorRequest(args)
	assert(args, "You must provide an argument table when creating CreateStreamProcessorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Input"] = args["Input"],
		["RoleArn"] = args["RoleArn"],
		["Settings"] = args["Settings"],
		["Name"] = args["Name"],
		["Output"] = args["Output"],
	}
	asserts.AssertCreateStreamProcessorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFaceSearchRequest = { ["NextToken"] = true, ["SortBy"] = true, ["MaxResults"] = true, ["JobId"] = true, nil }

function asserts.AssertGetFaceSearchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFaceSearchRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["SortBy"] then asserts.AssertFaceSearchSortBy(struct["SortBy"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFaceSearchRequest[k], "GetFaceSearchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFaceSearchRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the previous response was incomplete (because there is more search results to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of search results. </p>
-- * SortBy [FaceSearchSortBy] <p>Sort to use for grouping faces in the response. Use <code>TIMESTAMP</code> to group faces by the time that they are recognized. Use <code>INDEX</code> to sort by recognized faces. </p>
-- * MaxResults [MaxResults] <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.</p>
-- * JobId [JobId] <p>The job identifer for the search request. You get the job identifier from an initial call to <code>StartFaceSearch</code>.</p>
-- Required key: JobId
-- @return GetFaceSearchRequest structure as a key-value pair table
function M.GetFaceSearchRequest(args)
	assert(args, "You must provide an argument table when creating GetFaceSearchRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SortBy"] = args["SortBy"],
		["MaxResults"] = args["MaxResults"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetFaceSearchRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartContentModerationResponse = { ["JobId"] = true, nil }

function asserts.AssertStartContentModerationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartContentModerationResponse to be of type 'table'")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartContentModerationResponse[k], "StartContentModerationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartContentModerationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The identifier for the content moderation analysis job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetContentModeration</code>.</p>
-- @return StartContentModerationResponse structure as a key-value pair table
function M.StartContentModerationResponse(args)
	assert(args, "You must provide an argument table when creating StartContentModerationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertStartContentModerationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFacesResponse = { ["NextToken"] = true, ["FaceModelVersion"] = true, ["Faces"] = true, nil }

function asserts.AssertListFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["FaceModelVersion"] then asserts.AssertString(struct["FaceModelVersion"]) end
	if struct["Faces"] then asserts.AssertFaceList(struct["Faces"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFacesResponse[k], "ListFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>If the response is truncated, Amazon Rekognition returns this token that you can use in the subsequent request to retrieve the next set of faces.</p>
-- * FaceModelVersion [String] <p>Version number of the face detection model associated with the input collection (<code>CollectionId</code>).</p>
-- * Faces [FaceList] <p>An array of <code>Face</code> objects. </p>
-- @return ListFacesResponse structure as a key-value pair table
function M.ListFacesResponse(args)
	assert(args, "You must provide an argument table when creating ListFacesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["FaceModelVersion"] = args["FaceModelVersion"],
		["Faces"] = args["Faces"],
	}
	asserts.AssertListFacesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModerationLabel = { ["Confidence"] = true, ["ParentName"] = true, ["Name"] = true, nil }

function asserts.AssertModerationLabel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModerationLabel to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["ParentName"] then asserts.AssertString(struct["ParentName"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModerationLabel[k], "ModerationLabel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModerationLabel
-- <p>Provides information about a single type of moderated content found in an image or video. Each type of moderated content has a label within a hierarchical taxonomy. For more information, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Specifies the confidence that Amazon Rekognition has that the label has been correctly identified.</p> <p>If you don't specify the <code>MinConfidence</code> parameter in the call to <code>DetectModerationLabels</code>, the operation returns labels with a confidence value greater than or equal to 50 percent.</p>
-- * ParentName [String] <p>The name for the parent label. Labels at the top level of the hierarchy have the parent label <code>""</code>.</p>
-- * Name [String] <p>The label name for the type of content detected in the image.</p>
-- @return ModerationLabel structure as a key-value pair table
function M.ModerationLabel(args)
	assert(args, "You must provide an argument table when creating ModerationLabel")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["ParentName"] = args["ParentName"],
		["Name"] = args["Name"],
	}
	asserts.AssertModerationLabel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFacesRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["CollectionId"] = true, nil }

function asserts.AssertListFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacesRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFacesRequest[k], "ListFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition returns a pagination token in the response. You can use this pagination token to retrieve the next set of faces.</p>
-- * MaxResults [PageSize] <p>Maximum number of faces to return.</p>
-- * CollectionId [CollectionId] <p>ID of the collection from which to list the faces.</p>
-- Required key: CollectionId
-- @return ListFacesRequest structure as a key-value pair table
function M.ListFacesRequest(args)
	assert(args, "You must provide an argument table when creating ListFacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertListFacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FaceMatch = { ["Face"] = true, ["Similarity"] = true, nil }

function asserts.AssertFaceMatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FaceMatch to be of type 'table'")
	if struct["Face"] then asserts.AssertFace(struct["Face"]) end
	if struct["Similarity"] then asserts.AssertPercent(struct["Similarity"]) end
	for k,_ in pairs(struct) do
		assert(keys.FaceMatch[k], "FaceMatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FaceMatch
-- <p>Provides face metadata. In addition, it also provides the confidence in the match of this face with the input face.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Face [Face] <p>Describes the face properties such as the bounding box, face ID, image ID of the source image, and external image ID that you assigned.</p>
-- * Similarity [Percent] <p>Confidence in the match of this face with the input face.</p>
-- @return FaceMatch structure as a key-value pair table
function M.FaceMatch(args)
	assert(args, "You must provide an argument table when creating FaceMatch")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Face"] = args["Face"],
		["Similarity"] = args["Similarity"],
	}
	asserts.AssertFaceMatch(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BoundingBox = { ["Width"] = true, ["Top"] = true, ["Left"] = true, ["Height"] = true, nil }

function asserts.AssertBoundingBox(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BoundingBox to be of type 'table'")
	if struct["Width"] then asserts.AssertFloat(struct["Width"]) end
	if struct["Top"] then asserts.AssertFloat(struct["Top"]) end
	if struct["Left"] then asserts.AssertFloat(struct["Left"]) end
	if struct["Height"] then asserts.AssertFloat(struct["Height"]) end
	for k,_ in pairs(struct) do
		assert(keys.BoundingBox[k], "BoundingBox contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BoundingBox
-- <p>Identifies the bounding box around the label, face, or text. The <code>left</code> (x-coordinate) and <code>top</code> (y-coordinate) are coordinates representing the top and left sides of the bounding box. Note that the upper-left corner of the image is the origin (0,0). </p> <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall image size. For example, if the input image is 700x200 pixels, and the top-left coordinate of the bounding box is 350x50 pixels, the API returns a <code>left</code> value of 0.5 (350/700) and a <code>top</code> value of 0.25 (50/200).</p> <p>The <code>width</code> and <code>height</code> values represent the dimensions of the bounding box as a ratio of the overall image dimension. For example, if the input image is 700x200 pixels, and the bounding box width is 70 pixels, the width returned is 0.1. </p> <note> <p> The bounding box coordinates can have negative values. For example, if Amazon Rekognition is able to detect a face that is at the image edge and is only partially visible, the service can return coordinates that are outside the image bounds and, depending on the image edge, you might get negative values or values greater than 1 for the <code>left</code> or <code>top</code> values. </p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Width [Float] <p>Width of the bounding box as a ratio of the overall image width.</p>
-- * Top [Float] <p>Top coordinate of the bounding box as a ratio of overall image height.</p>
-- * Left [Float] <p>Left coordinate of the bounding box as a ratio of overall image width.</p>
-- * Height [Float] <p>Height of the bounding box as a ratio of the overall image height.</p>
-- @return BoundingBox structure as a key-value pair table
function M.BoundingBox(args)
	assert(args, "You must provide an argument table when creating BoundingBox")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Width"] = args["Width"],
		["Top"] = args["Top"],
		["Left"] = args["Left"],
		["Height"] = args["Height"],
	}
	asserts.AssertBoundingBox(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FaceDetail = { ["Confidence"] = true, ["Eyeglasses"] = true, ["Sunglasses"] = true, ["Gender"] = true, ["Landmarks"] = true, ["Pose"] = true, ["Emotions"] = true, ["AgeRange"] = true, ["EyesOpen"] = true, ["BoundingBox"] = true, ["Smile"] = true, ["MouthOpen"] = true, ["Quality"] = true, ["Mustache"] = true, ["Beard"] = true, nil }

function asserts.AssertFaceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FaceDetail to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Eyeglasses"] then asserts.AssertEyeglasses(struct["Eyeglasses"]) end
	if struct["Sunglasses"] then asserts.AssertSunglasses(struct["Sunglasses"]) end
	if struct["Gender"] then asserts.AssertGender(struct["Gender"]) end
	if struct["Landmarks"] then asserts.AssertLandmarks(struct["Landmarks"]) end
	if struct["Pose"] then asserts.AssertPose(struct["Pose"]) end
	if struct["Emotions"] then asserts.AssertEmotions(struct["Emotions"]) end
	if struct["AgeRange"] then asserts.AssertAgeRange(struct["AgeRange"]) end
	if struct["EyesOpen"] then asserts.AssertEyeOpen(struct["EyesOpen"]) end
	if struct["BoundingBox"] then asserts.AssertBoundingBox(struct["BoundingBox"]) end
	if struct["Smile"] then asserts.AssertSmile(struct["Smile"]) end
	if struct["MouthOpen"] then asserts.AssertMouthOpen(struct["MouthOpen"]) end
	if struct["Quality"] then asserts.AssertImageQuality(struct["Quality"]) end
	if struct["Mustache"] then asserts.AssertMustache(struct["Mustache"]) end
	if struct["Beard"] then asserts.AssertBeard(struct["Beard"]) end
	for k,_ in pairs(struct) do
		assert(keys.FaceDetail[k], "FaceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FaceDetail
-- <p>Structure containing attributes of the face that the algorithm detected.</p> <p>A <code>FaceDetail</code> object contains either the default facial attributes or all facial attributes. The default attributes are <code>BoundingBox</code>, <code>Confidence</code>, <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>.</p> <p> is the only Amazon Rekognition Video stored video operation that can return a <code>FaceDetail</code> object with all attributes. To specify which attributes to return, use the <code>FaceAttributes</code> input parameter for . The following Amazon Rekognition Video operations return only the default attributes. The corresponding Start operations don't have a <code>FaceAttributes</code> input parameter.</p> <ul> <li> <p>GetCelebrityRecognition</p> </li> <li> <p>GetPersonTracking</p> </li> <li> <p>GetFaceSearch</p> </li> </ul> <p>The Amazon Rekognition Image and operations can return all facial attributes. To specify which attributes to return, use the <code>Attributes</code> input parameter for <code>DetectFaces</code>. For <code>IndexFaces</code>, use the <code>DetectAttributes</code> input parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Confidence level that the bounding box contains a face (and not a different object such as a tree). Default attribute.</p>
-- * Eyeglasses [Eyeglasses] <p>Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.</p>
-- * Sunglasses [Sunglasses] <p>Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.</p>
-- * Gender [Gender] <p>Gender of the face and the confidence level in the determination.</p>
-- * Landmarks [Landmarks] <p>Indicates the location of landmarks on the face. Default attribute.</p>
-- * Pose [Pose] <p>Indicates the pose of the face as determined by its pitch, roll, and yaw. Default attribute.</p>
-- * Emotions [Emotions] <p>The emotions detected on the face, and the confidence level in the determination. For example, HAPPY, SAD, and ANGRY. </p>
-- * AgeRange [AgeRange] <p>The estimated age range, in years, for the face. Low represents the lowest estimated age and High represents the highest estimated age.</p>
-- * EyesOpen [EyeOpen] <p>Indicates whether or not the eyes on the face are open, and the confidence level in the determination.</p>
-- * BoundingBox [BoundingBox] <p>Bounding box of the face. Default attribute.</p>
-- * Smile [Smile] <p>Indicates whether or not the face is smiling, and the confidence level in the determination.</p>
-- * MouthOpen [MouthOpen] <p>Indicates whether or not the mouth on the face is open, and the confidence level in the determination.</p>
-- * Quality [ImageQuality] <p>Identifies image brightness and sharpness. Default attribute.</p>
-- * Mustache [Mustache] <p>Indicates whether or not the face has a mustache, and the confidence level in the determination.</p>
-- * Beard [Beard] <p>Indicates whether or not the face has a beard, and the confidence level in the determination.</p>
-- @return FaceDetail structure as a key-value pair table
function M.FaceDetail(args)
	assert(args, "You must provide an argument table when creating FaceDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Confidence"] = args["Confidence"],
		["Eyeglasses"] = args["Eyeglasses"],
		["Sunglasses"] = args["Sunglasses"],
		["Gender"] = args["Gender"],
		["Landmarks"] = args["Landmarks"],
		["Pose"] = args["Pose"],
		["Emotions"] = args["Emotions"],
		["AgeRange"] = args["AgeRange"],
		["EyesOpen"] = args["EyesOpen"],
		["BoundingBox"] = args["BoundingBox"],
		["Smile"] = args["Smile"],
		["MouthOpen"] = args["MouthOpen"],
		["Quality"] = args["Quality"],
		["Mustache"] = args["Mustache"],
		["Beard"] = args["Beard"],
	}
	asserts.AssertFaceDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamProcessorOutput = { ["KinesisDataStream"] = true, nil }

function asserts.AssertStreamProcessorOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamProcessorOutput to be of type 'table'")
	if struct["KinesisDataStream"] then asserts.AssertKinesisDataStream(struct["KinesisDataStream"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamProcessorOutput[k], "StreamProcessorOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamProcessorOutput
-- <p>Information about the Amazon Kinesis Data Streams stream to which a Amazon Rekognition Video stream processor streams the results of a video analysis. For more information, see CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KinesisDataStream [KinesisDataStream] <p>The Amazon Kinesis Data Streams stream to which the Amazon Rekognition stream processor streams the analysis results.</p>
-- @return StreamProcessorOutput structure as a key-value pair table
function M.StreamProcessorOutput(args)
	assert(args, "You must provide an argument table when creating StreamProcessorOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KinesisDataStream"] = args["KinesisDataStream"],
	}
	asserts.AssertStreamProcessorOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertSNSTopicArn(str)
	assert(str)
	assert(type(str) == "string", "Expected SNSTopicArn to be of type 'string'")
end

--  
function M.SNSTopicArn(str)
	asserts.AssertSNSTopicArn(str)
	return str
end

function asserts.AssertReason(str)
	assert(str)
	assert(type(str) == "string", "Expected Reason to be of type 'string'")
end

--  
function M.Reason(str)
	asserts.AssertReason(str)
	return str
end

function asserts.AssertKinesisVideoArn(str)
	assert(str)
	assert(type(str) == "string", "Expected KinesisVideoArn to be of type 'string'")
end

--  
function M.KinesisVideoArn(str)
	asserts.AssertKinesisVideoArn(str)
	return str
end

function asserts.AssertRekognitionUniqueId(str)
	assert(str)
	assert(type(str) == "string", "Expected RekognitionUniqueId to be of type 'string'")
end

--  
function M.RekognitionUniqueId(str)
	asserts.AssertRekognitionUniqueId(str)
	return str
end

function asserts.AssertStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusMessage to be of type 'string'")
end

--  
function M.StatusMessage(str)
	asserts.AssertStatusMessage(str)
	return str
end

function asserts.AssertExternalImageId(str)
	assert(str)
	assert(type(str) == "string", "Expected ExternalImageId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExternalImageId(str)
	asserts.AssertExternalImageId(str)
	return str
end

function asserts.AssertJobTag(str)
	assert(str)
	assert(type(str) == "string", "Expected JobTag to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.JobTag(str)
	asserts.AssertJobTag(str)
	return str
end

function asserts.AssertContentModerationSortBy(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentModerationSortBy to be of type 'string'")
end

--  
function M.ContentModerationSortBy(str)
	asserts.AssertContentModerationSortBy(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertVideoJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoJobStatus to be of type 'string'")
end

--  
function M.VideoJobStatus(str)
	asserts.AssertVideoJobStatus(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.JobId(str)
	asserts.AssertJobId(str)
	return str
end

function asserts.AssertFaceSearchSortBy(str)
	assert(str)
	assert(type(str) == "string", "Expected FaceSearchSortBy to be of type 'string'")
end

--  
function M.FaceSearchSortBy(str)
	asserts.AssertFaceSearchSortBy(str)
	return str
end

function asserts.AssertClientRequestToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientRequestToken to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientRequestToken(str)
	asserts.AssertClientRequestToken(str)
	return str
end

function asserts.AssertFaceAttributes(str)
	assert(str)
	assert(type(str) == "string", "Expected FaceAttributes to be of type 'string'")
end

--  
function M.FaceAttributes(str)
	asserts.AssertFaceAttributes(str)
	return str
end

function asserts.AssertFaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected FaceId to be of type 'string'")
end

--  
function M.FaceId(str)
	asserts.AssertFaceId(str)
	return str
end

function asserts.AssertS3ObjectVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected S3ObjectVersion to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.S3ObjectVersion(str)
	asserts.AssertS3ObjectVersion(str)
	return str
end

function asserts.AssertS3Bucket(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Bucket to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.S3Bucket(str)
	asserts.AssertS3Bucket(str)
	return str
end

function asserts.AssertLandmarkType(str)
	assert(str)
	assert(type(str) == "string", "Expected LandmarkType to be of type 'string'")
end

--  
function M.LandmarkType(str)
	asserts.AssertLandmarkType(str)
	return str
end

function asserts.AssertStreamProcessorName(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamProcessorName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StreamProcessorName(str)
	asserts.AssertStreamProcessorName(str)
	return str
end

function asserts.AssertImageId(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageId to be of type 'string'")
end

--  
function M.ImageId(str)
	asserts.AssertImageId(str)
	return str
end

function asserts.AssertS3ObjectName(str)
	assert(str)
	assert(type(str) == "string", "Expected S3ObjectName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.S3ObjectName(str)
	asserts.AssertS3ObjectName(str)
	return str
end

function asserts.AssertEmotionName(str)
	assert(str)
	assert(type(str) == "string", "Expected EmotionName to be of type 'string'")
end

--  
function M.EmotionName(str)
	asserts.AssertEmotionName(str)
	return str
end

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
	return str
end

function asserts.AssertOrientationCorrection(str)
	assert(str)
	assert(type(str) == "string", "Expected OrientationCorrection to be of type 'string'")
end

--  
function M.OrientationCorrection(str)
	asserts.AssertOrientationCorrection(str)
	return str
end

function asserts.AssertTextTypes(str)
	assert(str)
	assert(type(str) == "string", "Expected TextTypes to be of type 'string'")
end

--  
function M.TextTypes(str)
	asserts.AssertTextTypes(str)
	return str
end

function asserts.AssertAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected Attribute to be of type 'string'")
end

--  
function M.Attribute(str)
	asserts.AssertAttribute(str)
	return str
end

function asserts.AssertPersonTrackingSortBy(str)
	assert(str)
	assert(type(str) == "string", "Expected PersonTrackingSortBy to be of type 'string'")
end

--  
function M.PersonTrackingSortBy(str)
	asserts.AssertPersonTrackingSortBy(str)
	return str
end

function asserts.AssertLabelDetectionSortBy(str)
	assert(str)
	assert(type(str) == "string", "Expected LabelDetectionSortBy to be of type 'string'")
end

--  
function M.LabelDetectionSortBy(str)
	asserts.AssertLabelDetectionSortBy(str)
	return str
end

function asserts.AssertGenderType(str)
	assert(str)
	assert(type(str) == "string", "Expected GenderType to be of type 'string'")
end

--  
function M.GenderType(str)
	asserts.AssertGenderType(str)
	return str
end

function asserts.AssertCelebrityRecognitionSortBy(str)
	assert(str)
	assert(type(str) == "string", "Expected CelebrityRecognitionSortBy to be of type 'string'")
end

--  
function M.CelebrityRecognitionSortBy(str)
	asserts.AssertCelebrityRecognitionSortBy(str)
	return str
end

function asserts.AssertStreamProcessorArn(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamProcessorArn to be of type 'string'")
end

--  
function M.StreamProcessorArn(str)
	asserts.AssertStreamProcessorArn(str)
	return str
end

function asserts.AssertStreamProcessorStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamProcessorStatus to be of type 'string'")
end

--  
function M.StreamProcessorStatus(str)
	asserts.AssertStreamProcessorStatus(str)
	return str
end

function asserts.AssertCollectionId(str)
	assert(str)
	assert(type(str) == "string", "Expected CollectionId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CollectionId(str)
	asserts.AssertCollectionId(str)
	return str
end

function asserts.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
end

--  
function M.Url(str)
	asserts.AssertUrl(str)
	return str
end

function asserts.AssertKinesisDataArn(str)
	assert(str)
	assert(type(str) == "string", "Expected KinesisDataArn to be of type 'string'")
end

--  
function M.KinesisDataArn(str)
	asserts.AssertKinesisDataArn(str)
	return str
end

function asserts.AssertQualityFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected QualityFilter to be of type 'string'")
end

--  
function M.QualityFilter(str)
	asserts.AssertQualityFilter(str)
	return str
end

function asserts.AssertPercent(float)
	assert(float)
	assert(type(float) == "number", "Expected Percent to be of type 'number'")
end

function M.Percent(float)
	asserts.AssertPercent(float)
	return float
end

function asserts.AssertDegree(float)
	assert(float)
	assert(type(float) == "number", "Expected Degree to be of type 'number'")
end

function M.Degree(float)
	asserts.AssertDegree(float)
	return float
end

function asserts.AssertFloat(float)
	assert(float)
	assert(type(float) == "number", "Expected Float to be of type 'number'")
end

function M.Float(float)
	asserts.AssertFloat(float)
	return float
end

function asserts.AssertPersonIndex(long)
	assert(long)
	assert(type(long) == "number", "Expected PersonIndex to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PersonIndex(long)
	asserts.AssertPersonIndex(long)
	return long
end

function asserts.AssertTimestamp(long)
	assert(long)
	assert(type(long) == "number", "Expected Timestamp to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Timestamp(long)
	asserts.AssertTimestamp(long)
	return long
end

function asserts.AssertULong(long)
	assert(long)
	assert(type(long) == "number", "Expected ULong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ULong(long)
	asserts.AssertULong(long)
	return long
end

function asserts.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 4096, "Expected integer to be max 4096")
end

function M.PageSize(integer)
	asserts.AssertPageSize(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertMaxFacesToIndex(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxFacesToIndex to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxFacesToIndex(integer)
	asserts.AssertMaxFacesToIndex(integer)
	return integer
end

function asserts.AssertUInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected UInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.UInteger(integer)
	asserts.AssertUInteger(integer)
	return integer
end

function asserts.AssertMaxFaces(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxFaces to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 4096, "Expected integer to be max 4096")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxFaces(integer)
	asserts.AssertMaxFaces(integer)
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

function asserts.AssertImageBlob(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected ImageBlob to be of type 'string'")
	assert(#blob <= 5242880, "Expected blob to be max 5242880")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.ImageBlob(blob)
	asserts.AssertImageBlob(blob)
	return blob
end

function asserts.AssertFaceDetections(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceDetections to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFaceDetection(v)
	end
end

--  
-- List of FaceDetection objects
function M.FaceDetections(list)
	asserts.AssertFaceDetections(list)
	return list
end

function asserts.AssertPersonMatches(list)
	assert(list)
	assert(type(list) == "table", "Expected PersonMatches to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPersonMatch(v)
	end
end

--  
-- List of PersonMatch objects
function M.PersonMatches(list)
	asserts.AssertPersonMatches(list)
	return list
end

function asserts.AssertTextDetectionList(list)
	assert(list)
	assert(type(list) == "table", "Expected TextDetectionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTextDetection(v)
	end
end

--  
-- List of TextDetection objects
function M.TextDetectionList(list)
	asserts.AssertTextDetectionList(list)
	return list
end

function asserts.AssertEmotions(list)
	assert(list)
	assert(type(list) == "table", "Expected Emotions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEmotion(v)
	end
end

--  
-- List of Emotion objects
function M.Emotions(list)
	asserts.AssertEmotions(list)
	return list
end

function asserts.AssertParents(list)
	assert(list)
	assert(type(list) == "table", "Expected Parents to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParent(v)
	end
end

--  
-- List of Parent objects
function M.Parents(list)
	asserts.AssertParents(list)
	return list
end

function asserts.AssertFaceList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFace(v)
	end
end

--  
-- List of Face objects
function M.FaceList(list)
	asserts.AssertFaceList(list)
	return list
end

function asserts.AssertUnindexedFaces(list)
	assert(list)
	assert(type(list) == "table", "Expected UnindexedFaces to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUnindexedFace(v)
	end
end

--  
-- List of UnindexedFace objects
function M.UnindexedFaces(list)
	asserts.AssertUnindexedFaces(list)
	return list
end

function asserts.AssertUrls(list)
	assert(list)
	assert(type(list) == "table", "Expected Urls to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUrl(v)
	end
end

--  
-- List of Url objects
function M.Urls(list)
	asserts.AssertUrls(list)
	return list
end

function asserts.AssertAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected Attributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.Attributes(list)
	asserts.AssertAttributes(list)
	return list
end

function asserts.AssertLabels(list)
	assert(list)
	assert(type(list) == "table", "Expected Labels to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLabel(v)
	end
end

--  
-- List of Label objects
function M.Labels(list)
	asserts.AssertLabels(list)
	return list
end

function asserts.AssertLandmarks(list)
	assert(list)
	assert(type(list) == "table", "Expected Landmarks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLandmark(v)
	end
end

--  
-- List of Landmark objects
function M.Landmarks(list)
	asserts.AssertLandmarks(list)
	return list
end

function asserts.AssertCollectionIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected CollectionIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCollectionId(v)
	end
end

--  
-- List of CollectionId objects
function M.CollectionIdList(list)
	asserts.AssertCollectionIdList(list)
	return list
end

function asserts.AssertContentModerationDetections(list)
	assert(list)
	assert(type(list) == "table", "Expected ContentModerationDetections to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContentModerationDetection(v)
	end
end

--  
-- List of ContentModerationDetection objects
function M.ContentModerationDetections(list)
	asserts.AssertContentModerationDetections(list)
	return list
end

function asserts.AssertFaceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceIdList to be of type ''table")
	assert(#list <= 4096, "Expected list to be contain 4096 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertFaceId(v)
	end
end

--  
-- List of FaceId objects
function M.FaceIdList(list)
	asserts.AssertFaceIdList(list)
	return list
end

function asserts.AssertStreamProcessorList(list)
	assert(list)
	assert(type(list) == "table", "Expected StreamProcessorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStreamProcessor(v)
	end
end

--  
-- List of StreamProcessor objects
function M.StreamProcessorList(list)
	asserts.AssertStreamProcessorList(list)
	return list
end

function asserts.AssertCompareFacesMatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected CompareFacesMatchList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCompareFacesMatch(v)
	end
end

--  
-- List of CompareFacesMatch objects
function M.CompareFacesMatchList(list)
	asserts.AssertCompareFacesMatchList(list)
	return list
end

function asserts.AssertFaceModelVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceModelVersionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.FaceModelVersionList(list)
	asserts.AssertFaceModelVersionList(list)
	return list
end

function asserts.AssertCompareFacesUnmatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected CompareFacesUnmatchList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertComparedFace(v)
	end
end

--  
-- List of ComparedFace objects
function M.CompareFacesUnmatchList(list)
	asserts.AssertCompareFacesUnmatchList(list)
	return list
end

function asserts.AssertFaceRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceRecordList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFaceRecord(v)
	end
end

--  
-- List of FaceRecord objects
function M.FaceRecordList(list)
	asserts.AssertFaceRecordList(list)
	return list
end

function asserts.AssertCelebrityRecognitions(list)
	assert(list)
	assert(type(list) == "table", "Expected CelebrityRecognitions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCelebrityRecognition(v)
	end
end

--  
-- List of CelebrityRecognition objects
function M.CelebrityRecognitions(list)
	asserts.AssertCelebrityRecognitions(list)
	return list
end

function asserts.AssertFaceDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFaceDetail(v)
	end
end

--  
-- List of FaceDetail objects
function M.FaceDetailList(list)
	asserts.AssertFaceDetailList(list)
	return list
end

function asserts.AssertCelebrityList(list)
	assert(list)
	assert(type(list) == "table", "Expected CelebrityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCelebrity(v)
	end
end

--  
-- List of Celebrity objects
function M.CelebrityList(list)
	asserts.AssertCelebrityList(list)
	return list
end

function asserts.AssertPolygon(list)
	assert(list)
	assert(type(list) == "table", "Expected Polygon to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPoint(v)
	end
end

--  
-- List of Point objects
function M.Polygon(list)
	asserts.AssertPolygon(list)
	return list
end

function asserts.AssertModerationLabels(list)
	assert(list)
	assert(type(list) == "table", "Expected ModerationLabels to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertModerationLabel(v)
	end
end

--  
-- List of ModerationLabel objects
function M.ModerationLabels(list)
	asserts.AssertModerationLabels(list)
	return list
end

function asserts.AssertLabelDetections(list)
	assert(list)
	assert(type(list) == "table", "Expected LabelDetections to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLabelDetection(v)
	end
end

--  
-- List of LabelDetection objects
function M.LabelDetections(list)
	asserts.AssertLabelDetections(list)
	return list
end

function asserts.AssertComparedFaceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ComparedFaceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertComparedFace(v)
	end
end

--  
-- List of ComparedFace objects
function M.ComparedFaceList(list)
	asserts.AssertComparedFaceList(list)
	return list
end

function asserts.AssertPersonDetections(list)
	assert(list)
	assert(type(list) == "table", "Expected PersonDetections to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPersonDetection(v)
	end
end

--  
-- List of PersonDetection objects
function M.PersonDetections(list)
	asserts.AssertPersonDetections(list)
	return list
end

function asserts.AssertReasons(list)
	assert(list)
	assert(type(list) == "table", "Expected Reasons to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReason(v)
	end
end

--  
-- List of Reason objects
function M.Reasons(list)
	asserts.AssertReasons(list)
	return list
end

function asserts.AssertInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected Instances to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstance(v)
	end
end

--  
-- List of Instance objects
function M.Instances(list)
	asserts.AssertInstances(list)
	return list
end

function asserts.AssertFaceMatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected FaceMatchList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFaceMatch(v)
	end
end

--  
-- List of FaceMatch objects
function M.FaceMatchList(list)
	asserts.AssertFaceMatchList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "rekognition.amazonaws.com"
		end
	end
	local ss = { "rekognition" }
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
--- Call DeleteStreamProcessor asynchronously, invoking a callback when done
-- @param DeleteStreamProcessorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteStreamProcessorAsync(DeleteStreamProcessorRequest, cb)
	assert(DeleteStreamProcessorRequest, "You must provide a DeleteStreamProcessorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DeleteStreamProcessor",
	}
	for header,value in pairs(DeleteStreamProcessorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteStreamProcessorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStreamProcessor synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStreamProcessorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteStreamProcessorSync(DeleteStreamProcessorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStreamProcessorAsync(DeleteStreamProcessorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call IndexFaces asynchronously, invoking a callback when done
-- @param IndexFacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.IndexFacesAsync(IndexFacesRequest, cb)
	assert(IndexFacesRequest, "You must provide a IndexFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.IndexFaces",
	}
	for header,value in pairs(IndexFacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", IndexFacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call IndexFaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param IndexFacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.IndexFacesSync(IndexFacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IndexFacesAsync(IndexFacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFaceSearch asynchronously, invoking a callback when done
-- @param GetFaceSearchRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFaceSearchAsync(GetFaceSearchRequest, cb)
	assert(GetFaceSearchRequest, "You must provide a GetFaceSearchRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.GetFaceSearch",
	}
	for header,value in pairs(GetFaceSearchRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetFaceSearchRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFaceSearch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFaceSearchRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFaceSearchSync(GetFaceSearchRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFaceSearchAsync(GetFaceSearchRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCelebrityInfo asynchronously, invoking a callback when done
-- @param GetCelebrityInfoRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCelebrityInfoAsync(GetCelebrityInfoRequest, cb)
	assert(GetCelebrityInfoRequest, "You must provide a GetCelebrityInfoRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.GetCelebrityInfo",
	}
	for header,value in pairs(GetCelebrityInfoRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCelebrityInfoRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCelebrityInfo synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCelebrityInfoRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCelebrityInfoSync(GetCelebrityInfoRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCelebrityInfoAsync(GetCelebrityInfoRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectText asynchronously, invoking a callback when done
-- @param DetectTextRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetectTextAsync(DetectTextRequest, cb)
	assert(DetectTextRequest, "You must provide a DetectTextRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DetectText",
	}
	for header,value in pairs(DetectTextRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetectTextRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetectText synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetectTextRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetectTextSync(DetectTextRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectTextAsync(DetectTextRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RecognizeCelebrities asynchronously, invoking a callback when done
-- @param RecognizeCelebritiesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RecognizeCelebritiesAsync(RecognizeCelebritiesRequest, cb)
	assert(RecognizeCelebritiesRequest, "You must provide a RecognizeCelebritiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.RecognizeCelebrities",
	}
	for header,value in pairs(RecognizeCelebritiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RecognizeCelebritiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RecognizeCelebrities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RecognizeCelebritiesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RecognizeCelebritiesSync(RecognizeCelebritiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RecognizeCelebritiesAsync(RecognizeCelebritiesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFaces asynchronously, invoking a callback when done
-- @param DeleteFacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFacesAsync(DeleteFacesRequest, cb)
	assert(DeleteFacesRequest, "You must provide a DeleteFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DeleteFaces",
	}
	for header,value in pairs(DeleteFacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteFacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFacesSync(DeleteFacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFacesAsync(DeleteFacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartPersonTracking asynchronously, invoking a callback when done
-- @param StartPersonTrackingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartPersonTrackingAsync(StartPersonTrackingRequest, cb)
	assert(StartPersonTrackingRequest, "You must provide a StartPersonTrackingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.StartPersonTracking",
	}
	for header,value in pairs(StartPersonTrackingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartPersonTrackingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartPersonTracking synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartPersonTrackingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartPersonTrackingSync(StartPersonTrackingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartPersonTrackingAsync(StartPersonTrackingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchFacesByImage asynchronously, invoking a callback when done
-- @param SearchFacesByImageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchFacesByImageAsync(SearchFacesByImageRequest, cb)
	assert(SearchFacesByImageRequest, "You must provide a SearchFacesByImageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.SearchFacesByImage",
	}
	for header,value in pairs(SearchFacesByImageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchFacesByImageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchFacesByImage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchFacesByImageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SearchFacesByImageSync(SearchFacesByImageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchFacesByImageAsync(SearchFacesByImageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLabelDetection asynchronously, invoking a callback when done
-- @param GetLabelDetectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLabelDetectionAsync(GetLabelDetectionRequest, cb)
	assert(GetLabelDetectionRequest, "You must provide a GetLabelDetectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.GetLabelDetection",
	}
	for header,value in pairs(GetLabelDetectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetLabelDetectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLabelDetection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLabelDetectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLabelDetectionSync(GetLabelDetectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLabelDetectionAsync(GetLabelDetectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPersonTracking asynchronously, invoking a callback when done
-- @param GetPersonTrackingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPersonTrackingAsync(GetPersonTrackingRequest, cb)
	assert(GetPersonTrackingRequest, "You must provide a GetPersonTrackingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.GetPersonTracking",
	}
	for header,value in pairs(GetPersonTrackingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPersonTrackingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPersonTracking synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPersonTrackingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPersonTrackingSync(GetPersonTrackingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPersonTrackingAsync(GetPersonTrackingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStreamProcessor asynchronously, invoking a callback when done
-- @param CreateStreamProcessorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStreamProcessorAsync(CreateStreamProcessorRequest, cb)
	assert(CreateStreamProcessorRequest, "You must provide a CreateStreamProcessorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.CreateStreamProcessor",
	}
	for header,value in pairs(CreateStreamProcessorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateStreamProcessorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStreamProcessor synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStreamProcessorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateStreamProcessorSync(CreateStreamProcessorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamProcessorAsync(CreateStreamProcessorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCelebrityRecognition asynchronously, invoking a callback when done
-- @param GetCelebrityRecognitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCelebrityRecognitionAsync(GetCelebrityRecognitionRequest, cb)
	assert(GetCelebrityRecognitionRequest, "You must provide a GetCelebrityRecognitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.GetCelebrityRecognition",
	}
	for header,value in pairs(GetCelebrityRecognitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCelebrityRecognitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCelebrityRecognition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCelebrityRecognitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCelebrityRecognitionSync(GetCelebrityRecognitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCelebrityRecognitionAsync(GetCelebrityRecognitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartLabelDetection asynchronously, invoking a callback when done
-- @param StartLabelDetectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartLabelDetectionAsync(StartLabelDetectionRequest, cb)
	assert(StartLabelDetectionRequest, "You must provide a StartLabelDetectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.StartLabelDetection",
	}
	for header,value in pairs(StartLabelDetectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartLabelDetectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartLabelDetection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartLabelDetectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartLabelDetectionSync(StartLabelDetectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartLabelDetectionAsync(StartLabelDetectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectLabels asynchronously, invoking a callback when done
-- @param DetectLabelsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetectLabelsAsync(DetectLabelsRequest, cb)
	assert(DetectLabelsRequest, "You must provide a DetectLabelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DetectLabels",
	}
	for header,value in pairs(DetectLabelsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetectLabelsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetectLabels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetectLabelsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetectLabelsSync(DetectLabelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectLabelsAsync(DetectLabelsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectFaces asynchronously, invoking a callback when done
-- @param DetectFacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetectFacesAsync(DetectFacesRequest, cb)
	assert(DetectFacesRequest, "You must provide a DetectFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DetectFaces",
	}
	for header,value in pairs(DetectFacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetectFacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetectFaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetectFacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetectFacesSync(DetectFacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectFacesAsync(DetectFacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCollection asynchronously, invoking a callback when done
-- @param DeleteCollectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCollectionAsync(DeleteCollectionRequest, cb)
	assert(DeleteCollectionRequest, "You must provide a DeleteCollectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DeleteCollection",
	}
	for header,value in pairs(DeleteCollectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCollectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCollection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCollectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCollectionSync(DeleteCollectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCollectionAsync(DeleteCollectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFaces asynchronously, invoking a callback when done
-- @param ListFacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFacesAsync(ListFacesRequest, cb)
	assert(ListFacesRequest, "You must provide a ListFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.ListFaces",
	}
	for header,value in pairs(ListFacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListFacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListFacesSync(ListFacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFacesAsync(ListFacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchFaces asynchronously, invoking a callback when done
-- @param SearchFacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchFacesAsync(SearchFacesRequest, cb)
	assert(SearchFacesRequest, "You must provide a SearchFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.SearchFaces",
	}
	for header,value in pairs(SearchFacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchFacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchFaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchFacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SearchFacesSync(SearchFacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchFacesAsync(SearchFacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetContentModeration asynchronously, invoking a callback when done
-- @param GetContentModerationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetContentModerationAsync(GetContentModerationRequest, cb)
	assert(GetContentModerationRequest, "You must provide a GetContentModerationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.GetContentModeration",
	}
	for header,value in pairs(GetContentModerationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetContentModerationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetContentModeration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetContentModerationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetContentModerationSync(GetContentModerationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetContentModerationAsync(GetContentModerationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopStreamProcessor asynchronously, invoking a callback when done
-- @param StopStreamProcessorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopStreamProcessorAsync(StopStreamProcessorRequest, cb)
	assert(StopStreamProcessorRequest, "You must provide a StopStreamProcessorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.StopStreamProcessor",
	}
	for header,value in pairs(StopStreamProcessorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopStreamProcessorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopStreamProcessor synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopStreamProcessorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopStreamProcessorSync(StopStreamProcessorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopStreamProcessorAsync(StopStreamProcessorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFaceDetection asynchronously, invoking a callback when done
-- @param GetFaceDetectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFaceDetectionAsync(GetFaceDetectionRequest, cb)
	assert(GetFaceDetectionRequest, "You must provide a GetFaceDetectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.GetFaceDetection",
	}
	for header,value in pairs(GetFaceDetectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetFaceDetectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFaceDetection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFaceDetectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFaceDetectionSync(GetFaceDetectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFaceDetectionAsync(GetFaceDetectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCollections asynchronously, invoking a callback when done
-- @param ListCollectionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListCollectionsAsync(ListCollectionsRequest, cb)
	assert(ListCollectionsRequest, "You must provide a ListCollectionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.ListCollections",
	}
	for header,value in pairs(ListCollectionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListCollectionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCollections synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCollectionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListCollectionsSync(ListCollectionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCollectionsAsync(ListCollectionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartStreamProcessor asynchronously, invoking a callback when done
-- @param StartStreamProcessorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartStreamProcessorAsync(StartStreamProcessorRequest, cb)
	assert(StartStreamProcessorRequest, "You must provide a StartStreamProcessorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.StartStreamProcessor",
	}
	for header,value in pairs(StartStreamProcessorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartStreamProcessorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartStreamProcessor synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartStreamProcessorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartStreamProcessorSync(StartStreamProcessorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartStreamProcessorAsync(StartStreamProcessorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCollection asynchronously, invoking a callback when done
-- @param CreateCollectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCollectionAsync(CreateCollectionRequest, cb)
	assert(CreateCollectionRequest, "You must provide a CreateCollectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.CreateCollection",
	}
	for header,value in pairs(CreateCollectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCollectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCollection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCollectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCollectionSync(CreateCollectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCollectionAsync(CreateCollectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CompareFaces asynchronously, invoking a callback when done
-- @param CompareFacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CompareFacesAsync(CompareFacesRequest, cb)
	assert(CompareFacesRequest, "You must provide a CompareFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.CompareFaces",
	}
	for header,value in pairs(CompareFacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CompareFacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CompareFaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CompareFacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CompareFacesSync(CompareFacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CompareFacesAsync(CompareFacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCollection asynchronously, invoking a callback when done
-- @param DescribeCollectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCollectionAsync(DescribeCollectionRequest, cb)
	assert(DescribeCollectionRequest, "You must provide a DescribeCollectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DescribeCollection",
	}
	for header,value in pairs(DescribeCollectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCollectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCollection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCollectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCollectionSync(DescribeCollectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCollectionAsync(DescribeCollectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartCelebrityRecognition asynchronously, invoking a callback when done
-- @param StartCelebrityRecognitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartCelebrityRecognitionAsync(StartCelebrityRecognitionRequest, cb)
	assert(StartCelebrityRecognitionRequest, "You must provide a StartCelebrityRecognitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.StartCelebrityRecognition",
	}
	for header,value in pairs(StartCelebrityRecognitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartCelebrityRecognitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartCelebrityRecognition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartCelebrityRecognitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartCelebrityRecognitionSync(StartCelebrityRecognitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartCelebrityRecognitionAsync(StartCelebrityRecognitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectModerationLabels asynchronously, invoking a callback when done
-- @param DetectModerationLabelsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetectModerationLabelsAsync(DetectModerationLabelsRequest, cb)
	assert(DetectModerationLabelsRequest, "You must provide a DetectModerationLabelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DetectModerationLabels",
	}
	for header,value in pairs(DetectModerationLabelsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetectModerationLabelsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetectModerationLabels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetectModerationLabelsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetectModerationLabelsSync(DetectModerationLabelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectModerationLabelsAsync(DetectModerationLabelsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStreamProcessors asynchronously, invoking a callback when done
-- @param ListStreamProcessorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStreamProcessorsAsync(ListStreamProcessorsRequest, cb)
	assert(ListStreamProcessorsRequest, "You must provide a ListStreamProcessorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.ListStreamProcessors",
	}
	for header,value in pairs(ListStreamProcessorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStreamProcessorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStreamProcessors synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStreamProcessorsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListStreamProcessorsSync(ListStreamProcessorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStreamProcessorsAsync(ListStreamProcessorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartFaceSearch asynchronously, invoking a callback when done
-- @param StartFaceSearchRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartFaceSearchAsync(StartFaceSearchRequest, cb)
	assert(StartFaceSearchRequest, "You must provide a StartFaceSearchRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.StartFaceSearch",
	}
	for header,value in pairs(StartFaceSearchRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartFaceSearchRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartFaceSearch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartFaceSearchRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartFaceSearchSync(StartFaceSearchRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartFaceSearchAsync(StartFaceSearchRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartContentModeration asynchronously, invoking a callback when done
-- @param StartContentModerationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartContentModerationAsync(StartContentModerationRequest, cb)
	assert(StartContentModerationRequest, "You must provide a StartContentModerationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.StartContentModeration",
	}
	for header,value in pairs(StartContentModerationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartContentModerationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartContentModeration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartContentModerationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartContentModerationSync(StartContentModerationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartContentModerationAsync(StartContentModerationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStreamProcessor asynchronously, invoking a callback when done
-- @param DescribeStreamProcessorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStreamProcessorAsync(DescribeStreamProcessorRequest, cb)
	assert(DescribeStreamProcessorRequest, "You must provide a DescribeStreamProcessorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DescribeStreamProcessor",
	}
	for header,value in pairs(DescribeStreamProcessorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStreamProcessorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStreamProcessor synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStreamProcessorRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStreamProcessorSync(DescribeStreamProcessorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStreamProcessorAsync(DescribeStreamProcessorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartFaceDetection asynchronously, invoking a callback when done
-- @param StartFaceDetectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartFaceDetectionAsync(StartFaceDetectionRequest, cb)
	assert(StartFaceDetectionRequest, "You must provide a StartFaceDetectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.StartFaceDetection",
	}
	for header,value in pairs(StartFaceDetectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartFaceDetectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartFaceDetection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartFaceDetectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartFaceDetectionSync(StartFaceDetectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartFaceDetectionAsync(StartFaceDetectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
