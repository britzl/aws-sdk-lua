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
	assert(args, "You must provdide an argument table when creating DeleteCollectionResponse")
	local t = { 
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertDeleteCollectionResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteFacesResponse")
	local t = { 
		["DeletedFaces"] = args["DeletedFaces"],
	}
	asserts.AssertDeleteFacesResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Smile")
	local t = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertSmile(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ComparedSourceImageFace")
	local t = { 
		["BoundingBox"] = args["BoundingBox"],
		["Confidence"] = args["Confidence"],
	}
	asserts.AssertComparedSourceImageFace(t)
	return t
end

keys.InvalidS3ObjectException = { nil }

function asserts.AssertInvalidS3ObjectException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3ObjectException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidS3ObjectException[k], "InvalidS3ObjectException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3ObjectException
-- <p>Amazon Rekognition is unable to access the S3 object specified in the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidS3ObjectException structure as a key-value pair table
function M.InvalidS3ObjectException(args)
	assert(args, "You must provdide an argument table when creating InvalidS3ObjectException")
	local t = { 
	}
	asserts.AssertInvalidS3ObjectException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteFacesRequest")
	local t = { 
		["FaceIds"] = args["FaceIds"],
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertDeleteFacesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetCelebrityInfoResponse")
	local t = { 
		["Name"] = args["Name"],
		["Urls"] = args["Urls"],
	}
	asserts.AssertGetCelebrityInfoResponse(t)
	return t
end

keys.InternalServerError = { nil }

function asserts.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InternalServerError[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>Amazon Rekognition experienced a service issue. Try your call again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InternalServerError structure as a key-value pair table
function M.InternalServerError(args)
	assert(args, "You must provdide an argument table when creating InternalServerError")
	local t = { 
	}
	asserts.AssertInternalServerError(t)
	return t
end

keys.ImageTooLargeException = { nil }

function asserts.AssertImageTooLargeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageTooLargeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ImageTooLargeException[k], "ImageTooLargeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageTooLargeException
-- <p>The input image size exceeds the allowed limit. For more information, see <a>limits</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ImageTooLargeException structure as a key-value pair table
function M.ImageTooLargeException(args)
	assert(args, "You must provdide an argument table when creating ImageTooLargeException")
	local t = { 
	}
	asserts.AssertImageTooLargeException(t)
	return t
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
-- * Y [Float] <p>y-coordinate from the top left of the landmark expressed as the ration of the height of the image. For example, if the images is 700x200 and the y-coordinate of the landmark is at 100 pixels, this value is 0.5.</p>
-- * X [Float] <p>x-coordinate from the top left of the landmark expressed as the ration of the width of the image. For example, if the images is 700x200 and the x-coordinate of the landmark is at 350 pixels, this value is 0.5. </p>
-- * Type [LandmarkType] <p>Type of the landmark.</p>
-- @return Landmark structure as a key-value pair table
function M.Landmark(args)
	assert(args, "You must provdide an argument table when creating Landmark")
	local t = { 
		["Y"] = args["Y"],
		["X"] = args["X"],
		["Type"] = args["Type"],
	}
	asserts.AssertLandmark(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Eyeglasses")
	local t = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertEyeglasses(t)
	return t
end

keys.SearchFacesResponse = { ["SearchedFaceId"] = true, ["FaceMatches"] = true, nil }

function asserts.AssertSearchFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchFacesResponse to be of type 'table'")
	if struct["SearchedFaceId"] then asserts.AssertFaceId(struct["SearchedFaceId"]) end
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
-- * FaceMatches [FaceMatchList] <p>An array of faces that matched the input face, along with the confidence in the match.</p>
-- @return SearchFacesResponse structure as a key-value pair table
function M.SearchFacesResponse(args)
	assert(args, "You must provdide an argument table when creating SearchFacesResponse")
	local t = { 
		["SearchedFaceId"] = args["SearchedFaceId"],
		["FaceMatches"] = args["FaceMatches"],
	}
	asserts.AssertSearchFacesResponse(t)
	return t
end

keys.ListCollectionsResponse = { ["NextToken"] = true, ["CollectionIds"] = true, nil }

function asserts.AssertListCollectionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCollectionsResponse to be of type 'table'")
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
-- * NextToken [PaginationToken] <p>If the result is truncated, the response provides a <code>NextToken</code> that you can use in the subsequent request to fetch the next set of collection IDs.</p>
-- * CollectionIds [CollectionIdList] <p>An array of collection IDs.</p>
-- @return ListCollectionsResponse structure as a key-value pair table
function M.ListCollectionsResponse(args)
	assert(args, "You must provdide an argument table when creating ListCollectionsResponse")
	local t = { 
		["NextToken"] = args["NextToken"],
		["CollectionIds"] = args["CollectionIds"],
	}
	asserts.AssertListCollectionsResponse(t)
	return t
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
-- * Image [Image] <p>The input image as bytes or an S3 object.</p>
-- * MaxFaces [MaxFaces] <p>Maximum number of faces to return. The operation returns the maximum number of faces with the highest confidence in the match.</p>
-- * FaceMatchThreshold [Percent] <p>(Optional) Specifies the minimum confidence in the face match to return. For example, don't return any matches where confidence in matches is less than 70%.</p>
-- * CollectionId [CollectionId] <p>ID of the collection to search.</p>
-- Required key: CollectionId
-- Required key: Image
-- @return SearchFacesByImageRequest structure as a key-value pair table
function M.SearchFacesByImageRequest(args)
	assert(args, "You must provdide an argument table when creating SearchFacesByImageRequest")
	local t = { 
		["Image"] = args["Image"],
		["MaxFaces"] = args["MaxFaces"],
		["FaceMatchThreshold"] = args["FaceMatchThreshold"],
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertSearchFacesByImageRequest(t)
	return t
end

keys.IndexFacesRequest = { ["DetectionAttributes"] = true, ["Image"] = true, ["ExternalImageId"] = true, ["CollectionId"] = true, nil }

function asserts.AssertIndexFacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexFacesRequest to be of type 'table'")
	assert(struct["CollectionId"], "Expected key CollectionId to exist in table")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["DetectionAttributes"] then asserts.AssertAttributes(struct["DetectionAttributes"]) end
	if struct["Image"] then asserts.AssertImage(struct["Image"]) end
	if struct["ExternalImageId"] then asserts.AssertExternalImageId(struct["ExternalImageId"]) end
	if struct["CollectionId"] then asserts.AssertCollectionId(struct["CollectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexFacesRequest[k], "IndexFacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexFacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetectionAttributes [Attributes] <p>An array of facial attributes that you want to be returned. This can be the default list of attributes or all attributes. If you don't specify a value for <code>Attributes</code> or if you specify <code>["DEFAULT"]</code>, the API returns the following subset of facial attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>, <code>Quality</code> and <code>Landmarks</code>. If you provide <code>["ALL"]</code>, all facial attributes are returned but the operation will take longer to complete.</p> <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical AND operator to determine which attributes to return (in this case, all attributes). </p>
-- * Image [Image] <p>The input image as bytes or an S3 object.</p>
-- * ExternalImageId [ExternalImageId] <p>ID you want to assign to all the faces detected in the image.</p>
-- * CollectionId [CollectionId] <p>The ID of an existing collection to which you want to add the faces that are detected in the input images.</p>
-- Required key: CollectionId
-- Required key: Image
-- @return IndexFacesRequest structure as a key-value pair table
function M.IndexFacesRequest(args)
	assert(args, "You must provdide an argument table when creating IndexFacesRequest")
	local t = { 
		["DetectionAttributes"] = args["DetectionAttributes"],
		["Image"] = args["Image"],
		["ExternalImageId"] = args["ExternalImageId"],
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertIndexFacesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteCollectionRequest")
	local t = { 
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertDeleteCollectionRequest(t)
	return t
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
-- <p>Provides the S3 bucket name and object name.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see <a>manage-access-resource-policies</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [S3ObjectVersion] <p>If the bucket is versioning enabled, you can specify the object version. </p>
-- * Bucket [S3Bucket] <p>Name of the S3 bucket.</p>
-- * Name [S3ObjectName] <p>S3 object key name.</p>
-- @return S3Object structure as a key-value pair table
function M.S3Object(args)
	assert(args, "You must provdide an argument table when creating S3Object")
	local t = { 
		["Version"] = args["Version"],
		["Bucket"] = args["Bucket"],
		["Name"] = args["Name"],
	}
	asserts.AssertS3Object(t)
	return t
end

keys.Label = { ["Confidence"] = true, ["Name"] = true, nil }

function asserts.AssertLabel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Label to be of type 'table'")
	if struct["Confidence"] then asserts.AssertPercent(struct["Confidence"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Label[k], "Label contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Label
-- <p>Structure containing details about the detected label, including name, and level of confidence.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Level of confidence.</p>
-- * Name [String] <p>The name (label) of the object.</p>
-- @return Label structure as a key-value pair table
function M.Label(args)
	assert(args, "You must provdide an argument table when creating Label")
	local t = { 
		["Confidence"] = args["Confidence"],
		["Name"] = args["Name"],
	}
	asserts.AssertLabel(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ImageQuality")
	local t = { 
		["Sharpness"] = args["Sharpness"],
		["Brightness"] = args["Brightness"],
	}
	asserts.AssertImageQuality(t)
	return t
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
-- * ModerationLabels [ModerationLabels] <p>An array of labels for explicit or suggestive adult content found in the image. The list includes the top-level label and each child label detected in the image. This is useful for filtering specific categories of content. </p>
-- @return DetectModerationLabelsResponse structure as a key-value pair table
function M.DetectModerationLabelsResponse(args)
	assert(args, "You must provdide an argument table when creating DetectModerationLabelsResponse")
	local t = { 
		["ModerationLabels"] = args["ModerationLabels"],
	}
	asserts.AssertDetectModerationLabelsResponse(t)
	return t
end

keys.IndexFacesResponse = { ["FaceRecords"] = true, ["OrientationCorrection"] = true, nil }

function asserts.AssertIndexFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexFacesResponse to be of type 'table'")
	if struct["FaceRecords"] then asserts.AssertFaceRecordList(struct["FaceRecords"]) end
	if struct["OrientationCorrection"] then asserts.AssertOrientationCorrection(struct["OrientationCorrection"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexFacesResponse[k], "IndexFacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexFacesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceRecords [FaceRecordList] <p>An array of faces detected and added to the collection. For more information, see <a>howitworks-index-faces</a>. </p>
-- * OrientationCorrection [OrientationCorrection] <p>The orientation of the input image (counterclockwise direction). If your application displays the image, you can use this value to correct image orientation. The bounding box coordinates returned in <code>FaceRecords</code> represent face locations before the image orientation is corrected. </p> <note> <p>If the input image is in jpeg format, it might contain exchangeable image (Exif) metadata. If so, and the Exif metadata populates the orientation field, the value of <code>OrientationCorrection</code> is null and the bounding box coordinates in <code>FaceRecords</code> represent face locations after Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata.</p> </note>
-- @return IndexFacesResponse structure as a key-value pair table
function M.IndexFacesResponse(args)
	assert(args, "You must provdide an argument table when creating IndexFacesResponse")
	local t = { 
		["FaceRecords"] = args["FaceRecords"],
		["OrientationCorrection"] = args["OrientationCorrection"],
	}
	asserts.AssertIndexFacesResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateCollectionRequest")
	local t = { 
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertCreateCollectionRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Gender")
	local t = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertGender(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetCelebrityInfoRequest")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetCelebrityInfoRequest(t)
	return t
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
-- * Image [Image] <p>The input image to use for celebrity recognition.</p>
-- Required key: Image
-- @return RecognizeCelebritiesRequest structure as a key-value pair table
function M.RecognizeCelebritiesRequest(args)
	assert(args, "You must provdide an argument table when creating RecognizeCelebritiesRequest")
	local t = { 
		["Image"] = args["Image"],
	}
	asserts.AssertRecognizeCelebritiesRequest(t)
	return t
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
-- * Image [Image] <p>The input image. You can provide a blob of image bytes or an S3 object.</p>
-- * MaxLabels [UInteger] <p>Maximum number of labels you want the service to return in the response. The service returns the specified number of highest confidence labels. </p>
-- Required key: Image
-- @return DetectLabelsRequest structure as a key-value pair table
function M.DetectLabelsRequest(args)
	assert(args, "You must provdide an argument table when creating DetectLabelsRequest")
	local t = { 
		["MinConfidence"] = args["MinConfidence"],
		["Image"] = args["Image"],
		["MaxLabels"] = args["MaxLabels"],
	}
	asserts.AssertDetectLabelsRequest(t)
	return t
end

keys.CreateCollectionResponse = { ["CollectionArn"] = true, ["StatusCode"] = true, nil }

function asserts.AssertCreateCollectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCollectionResponse to be of type 'table'")
	if struct["CollectionArn"] then asserts.AssertString(struct["CollectionArn"]) end
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
-- * StatusCode [UInteger] <p>HTTP status code indicating the result of the operation.</p>
-- @return CreateCollectionResponse structure as a key-value pair table
function M.CreateCollectionResponse(args)
	assert(args, "You must provdide an argument table when creating CreateCollectionResponse")
	local t = { 
		["CollectionArn"] = args["CollectionArn"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertCreateCollectionResponse(t)
	return t
end

keys.InvalidPaginationTokenException = { nil }

function asserts.AssertInvalidPaginationTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPaginationTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidPaginationTokenException[k], "InvalidPaginationTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPaginationTokenException
-- <p>Pagination token in the request is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidPaginationTokenException structure as a key-value pair table
function M.InvalidPaginationTokenException(args)
	assert(args, "You must provdide an argument table when creating InvalidPaginationTokenException")
	local t = { 
	}
	asserts.AssertInvalidPaginationTokenException(t)
	return t
end

keys.InvalidImageFormatException = { nil }

function asserts.AssertInvalidImageFormatException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidImageFormatException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidImageFormatException[k], "InvalidImageFormatException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidImageFormatException
-- <p>The provided image format is not supported. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidImageFormatException structure as a key-value pair table
function M.InvalidImageFormatException(args)
	assert(args, "You must provdide an argument table when creating InvalidImageFormatException")
	local t = { 
	}
	asserts.AssertInvalidImageFormatException(t)
	return t
end

keys.ResourceAlreadyExistsException = { nil }

function asserts.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyExistsException[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>A collection with the specified ID already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ResourceAlreadyExistsException structure as a key-value pair table
function M.ResourceAlreadyExistsException(args)
	assert(args, "You must provdide an argument table when creating ResourceAlreadyExistsException")
	local t = { 
	}
	asserts.AssertResourceAlreadyExistsException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Emotion")
	local t = { 
		["Confidence"] = args["Confidence"],
		["Type"] = args["Type"],
	}
	asserts.AssertEmotion(t)
	return t
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
-- <p>Provides the input image either as bytes or an S3 object.</p> <p>You pass image bytes to a Rekognition API operation by using the <code>Bytes</code> property. For example, you would use the <code>Bytes</code> property to pass an image loaded from a local file system. Image bytes passed by using the <code>Bytes</code> property must be base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to call Rekognition API operations. For more information, see <a>example4</a>.</p> <p> You pass images stored in an S3 bucket to a Rekognition API operation by using the <code>S3Object</code> property. Images stored in an S3 bucket do not need to be base64-encoded.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes using the Bytes property is not supported. You must first upload the image to an Amazon S3 bucket and then call the operation using the S3Object property.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see <a>manage-access-resource-policies</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bytes [ImageBlob] <p>Blob of image bytes up to 5 MBs.</p>
-- * S3Object [S3Object] <p>Identifies an S3 object as the image source.</p>
-- @return Image structure as a key-value pair table
function M.Image(args)
	assert(args, "You must provdide an argument table when creating Image")
	local t = { 
		["Bytes"] = args["Bytes"],
		["S3Object"] = args["S3Object"],
	}
	asserts.AssertImage(t)
	return t
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
-- * TargetImageOrientationCorrection [OrientationCorrection] <p> The orientation of the target image (in counterclockwise direction). If your application displays the target image, you can use this value to correct the orientation of the image. The bounding box coordinates returned in <code>FaceMatches</code> and <code>UnmatchedFaces</code> represent face locations before the image orientation is corrected. </p> <note> <p>If the target image is in .jpg format, it might contain Exif metadata that includes the orientation of the image. If the Exif metadata for the target image populates the orientation field, the value of <code>OrientationCorrection</code> is null and the bounding box coordinates in <code>FaceMatches</code> and <code>UnmatchedFaces</code> represent the location of the face after Exif metadata is used to correct the orientation. Images in .png format don't contain Exif metadata.</p> </note>
-- * UnmatchedFaces [CompareFacesUnmatchList] <p>An array of faces in the target image that did not match the source image face.</p>
-- * SourceImageOrientationCorrection [OrientationCorrection] <p> The orientation of the source image (counterclockwise direction). If your application displays the source image, you can use this value to correct image orientation. The bounding box coordinates returned in <code>SourceImageFace</code> represent the location of the face before the image orientation is corrected. </p> <note> <p>If the source image is in .jpeg format, it might contain exchangeable image (Exif) metadata that includes the image's orientation. If the Exif metadata for the source image populates the orientation field, the value of <code>OrientationCorrection</code> is null and the <code>SourceImageFace</code> bounding box coordinates represent the location of the face after Exif metadata is used to correct the orientation. Images in .png format don't contain Exif metadata.</p> </note>
-- * FaceMatches [CompareFacesMatchList] <p>An array of faces in the target image that match the source image face. Each <code>CompareFacesMatch</code> object provides the bounding box, the confidence level that the bounding box contains a face, and the similarity score for the face in the bounding box and the face in the source image.</p>
-- * SourceImageFace [ComparedSourceImageFace] <p>The face in the source image that was used for comparison.</p>
-- @return CompareFacesResponse structure as a key-value pair table
function M.CompareFacesResponse(args)
	assert(args, "You must provdide an argument table when creating CompareFacesResponse")
	local t = { 
		["TargetImageOrientationCorrection"] = args["TargetImageOrientationCorrection"],
		["UnmatchedFaces"] = args["UnmatchedFaces"],
		["SourceImageOrientationCorrection"] = args["SourceImageOrientationCorrection"],
		["FaceMatches"] = args["FaceMatches"],
		["SourceImageFace"] = args["SourceImageFace"],
	}
	asserts.AssertCompareFacesResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Beard")
	local t = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertBeard(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Pose")
	local t = { 
		["Yaw"] = args["Yaw"],
		["Roll"] = args["Roll"],
		["Pitch"] = args["Pitch"],
	}
	asserts.AssertPose(t)
	return t
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
	assert(args, "You must provdide an argument table when creating MouthOpen")
	local t = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertMouthOpen(t)
	return t
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
-- * MaxResults [PageSize] <p>Maximum number of collection IDs to return.</p>
-- @return ListCollectionsRequest structure as a key-value pair table
function M.ListCollectionsRequest(args)
	assert(args, "You must provdide an argument table when creating ListCollectionsRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListCollectionsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Face")
	local t = { 
		["BoundingBox"] = args["BoundingBox"],
		["FaceId"] = args["FaceId"],
		["ExternalImageId"] = args["ExternalImageId"],
		["Confidence"] = args["Confidence"],
		["ImageId"] = args["ImageId"],
	}
	asserts.AssertFace(t)
	return t
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
-- * Image [Image] <p>The input image as bytes or an S3 object.</p>
-- Required key: Image
-- @return DetectModerationLabelsRequest structure as a key-value pair table
function M.DetectModerationLabelsRequest(args)
	assert(args, "You must provdide an argument table when creating DetectModerationLabelsRequest")
	local t = { 
		["MinConfidence"] = args["MinConfidence"],
		["Image"] = args["Image"],
	}
	asserts.AssertDetectModerationLabelsRequest(t)
	return t
end

keys.DetectLabelsResponse = { ["Labels"] = true, ["OrientationCorrection"] = true, nil }

function asserts.AssertDetectLabelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectLabelsResponse to be of type 'table'")
	if struct["Labels"] then asserts.AssertLabels(struct["Labels"]) end
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
-- * OrientationCorrection [OrientationCorrection] <p> The orientation of the input image (counter-clockwise direction). If your application displays the image, you can use this value to correct the orientation. If Amazon Rekognition detects that the input image was rotated (for example, by 90 degrees), it first corrects the orientation before detecting the labels. </p> <note> <p>If the input image Exif metadata populates the orientation field, Amazon Rekognition does not perform orientation correction and the value of OrientationCorrection will be null.</p> </note>
-- @return DetectLabelsResponse structure as a key-value pair table
function M.DetectLabelsResponse(args)
	assert(args, "You must provdide an argument table when creating DetectLabelsResponse")
	local t = { 
		["Labels"] = args["Labels"],
		["OrientationCorrection"] = args["OrientationCorrection"],
	}
	asserts.AssertDetectLabelsResponse(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Mustache")
	local t = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertMustache(t)
	return t
end

keys.ProvisionedThroughputExceededException = { nil }

function asserts.AssertProvisionedThroughputExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedThroughputExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedThroughputExceededException[k], "ProvisionedThroughputExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedThroughputExceededException
-- <p>The number of requests exceeded your throughput limit. If you want to increase this limit, contact Amazon Rekognition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ProvisionedThroughputExceededException structure as a key-value pair table
function M.ProvisionedThroughputExceededException(args)
	assert(args, "You must provdide an argument table when creating ProvisionedThroughputExceededException")
	local t = { 
	}
	asserts.AssertProvisionedThroughputExceededException(t)
	return t
end

keys.ResourceNotFoundException = { nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>Collection specified in the request is not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provdide an argument table when creating ResourceNotFoundException")
	local t = { 
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.ThrottlingException = { nil }

function asserts.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ThrottlingException[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- <p>Amazon Rekognition is temporarily unable to process the request. Try your call again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ThrottlingException structure as a key-value pair table
function M.ThrottlingException(args)
	assert(args, "You must provdide an argument table when creating ThrottlingException")
	local t = { 
	}
	asserts.AssertThrottlingException(t)
	return t
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
-- <p>Provides face metadata for target image faces that are analysed by <code>CompareFaces</code> and <code>RecognizeCelebrities</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BoundingBox [BoundingBox] <p>Bounding box of the face.</p>
-- * Confidence [Percent] <p>Level of confidence that what the bounding box contains is a face.</p>
-- * Pose [Pose] <p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>
-- * Quality [ImageQuality] <p>Identifies face image brightness and sharpness. </p>
-- * Landmarks [Landmarks] <p>An array of facial landmarks.</p>
-- @return ComparedFace structure as a key-value pair table
function M.ComparedFace(args)
	assert(args, "You must provdide an argument table when creating ComparedFace")
	local t = { 
		["BoundingBox"] = args["BoundingBox"],
		["Confidence"] = args["Confidence"],
		["Pose"] = args["Pose"],
		["Quality"] = args["Quality"],
		["Landmarks"] = args["Landmarks"],
	}
	asserts.AssertComparedFace(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SearchFacesRequest")
	local t = { 
		["FaceId"] = args["FaceId"],
		["MaxFaces"] = args["MaxFaces"],
		["FaceMatchThreshold"] = args["FaceMatchThreshold"],
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertSearchFacesRequest(t)
	return t
end

keys.SearchFacesByImageResponse = { ["SearchedFaceBoundingBox"] = true, ["SearchedFaceConfidence"] = true, ["FaceMatches"] = true, nil }

function asserts.AssertSearchFacesByImageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchFacesByImageResponse to be of type 'table'")
	if struct["SearchedFaceBoundingBox"] then asserts.AssertBoundingBox(struct["SearchedFaceBoundingBox"]) end
	if struct["SearchedFaceConfidence"] then asserts.AssertPercent(struct["SearchedFaceConfidence"]) end
	if struct["FaceMatches"] then asserts.AssertFaceMatchList(struct["FaceMatches"]) end
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
-- @return SearchFacesByImageResponse structure as a key-value pair table
function M.SearchFacesByImageResponse(args)
	assert(args, "You must provdide an argument table when creating SearchFacesByImageResponse")
	local t = { 
		["SearchedFaceBoundingBox"] = args["SearchedFaceBoundingBox"],
		["SearchedFaceConfidence"] = args["SearchedFaceConfidence"],
		["FaceMatches"] = args["FaceMatches"],
	}
	asserts.AssertSearchFacesByImageResponse(t)
	return t
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
-- <p>Object containing both the face metadata (stored in the back-end database) and facial attributes that are detected but aren't stored in the database.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FaceDetail [FaceDetail] <p>Structure containing attributes of the face that the algorithm detected.</p>
-- * Face [Face] <p>Describes the face properties such as the bounding box, face ID, image ID of the input image, and external image ID that you assigned. </p>
-- @return FaceRecord structure as a key-value pair table
function M.FaceRecord(args)
	assert(args, "You must provdide an argument table when creating FaceRecord")
	local t = { 
		["FaceDetail"] = args["FaceDetail"],
		["Face"] = args["Face"],
	}
	asserts.AssertFaceRecord(t)
	return t
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
-- <p>Structure containing the estimated age range, in years, for a face.</p> <p>Rekognition estimates an age-range for faces detected in the input image. Estimated age ranges can overlap; a face of a 5 year old may have an estimated range of 4-6 whilst the face of a 6 year old may have an estimated range of 4-8.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * High [UInteger] <p>The highest estimated age.</p>
-- * Low [UInteger] <p>The lowest estimated age.</p>
-- @return AgeRange structure as a key-value pair table
function M.AgeRange(args)
	assert(args, "You must provdide an argument table when creating AgeRange")
	local t = { 
		["High"] = args["High"],
		["Low"] = args["Low"],
	}
	asserts.AssertAgeRange(t)
	return t
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
-- * TargetImage [Image] <p>The target image, either as bytes or as an S3 object.</p>
-- * SourceImage [Image] <p>The source image, either as bytes or as an S3 object.</p>
-- * SimilarityThreshold [Percent] <p>The minimum level of confidence in the face matches that a match must meet to be included in the <code>FaceMatches</code> array.</p>
-- Required key: SourceImage
-- Required key: TargetImage
-- @return CompareFacesRequest structure as a key-value pair table
function M.CompareFacesRequest(args)
	assert(args, "You must provdide an argument table when creating CompareFacesRequest")
	local t = { 
		["TargetImage"] = args["TargetImage"],
		["SourceImage"] = args["SourceImage"],
		["SimilarityThreshold"] = args["SimilarityThreshold"],
	}
	asserts.AssertCompareFacesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Sunglasses")
	local t = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertSunglasses(t)
	return t
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
-- * OrientationCorrection [OrientationCorrection] <p>The orientation of the input image (counterclockwise direction). If your application displays the image, you can use this value to correct the orientation. The bounding box coordinates returned in <code>CelebrityFaces</code> and <code>UnrecognizedFaces</code> represent face locations before the image orientation is corrected. </p> <note> <p>If the input image is in .jpeg format, it might contain exchangeable image (Exif) metadata that includes the image's orientation. If so, and the Exif metadata for the input image populates the orientation field, the value of <code>OrientationCorrection</code> is null and the <code>CelebrityFaces</code> and <code>UnrecognizedFaces</code> bounding box coordinates represent face locations after Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata. </p> </note>
-- @return RecognizeCelebritiesResponse structure as a key-value pair table
function M.RecognizeCelebritiesResponse(args)
	assert(args, "You must provdide an argument table when creating RecognizeCelebritiesResponse")
	local t = { 
		["UnrecognizedFaces"] = args["UnrecognizedFaces"],
		["CelebrityFaces"] = args["CelebrityFaces"],
		["OrientationCorrection"] = args["OrientationCorrection"],
	}
	asserts.AssertRecognizeCelebritiesResponse(t)
	return t
end

keys.InvalidParameterException = { nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>Input parameter violated a constraint. Validate your parameter before calling the API operation again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provdide an argument table when creating InvalidParameterException")
	local t = { 
	}
	asserts.AssertInvalidParameterException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating EyeOpen")
	local t = { 
		["Confidence"] = args["Confidence"],
		["Value"] = args["Value"],
	}
	asserts.AssertEyeOpen(t)
	return t
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
-- * OrientationCorrection [OrientationCorrection] <p> The orientation of the input image (counter-clockwise direction). If your application displays the image, you can use this value to correct image orientation. The bounding box coordinates returned in <code>FaceDetails</code> represent face locations before the image orientation is corrected. </p> <note> <p>If the input image is in .jpeg format, it might contain exchangeable image (Exif) metadata that includes the image's orientation. If so, and the Exif metadata for the input image populates the orientation field, the value of <code>OrientationCorrection</code> is null and the <code>FaceDetails</code> bounding box coordinates represent face locations after Exif metadata is used to correct the image orientation. Images in .png format don't contain Exif metadata.</p> </note>
-- @return DetectFacesResponse structure as a key-value pair table
function M.DetectFacesResponse(args)
	assert(args, "You must provdide an argument table when creating DetectFacesResponse")
	local t = { 
		["FaceDetails"] = args["FaceDetails"],
		["OrientationCorrection"] = args["OrientationCorrection"],
	}
	asserts.AssertDetectFacesResponse(t)
	return t
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
-- * MatchConfidence [Percent] <p>The confidence, in percentage, that Rekognition has that the recognized face is the celebrity.</p>
-- * Face [ComparedFace] <p>Provides information about the celebrity's face, such as its location on the image.</p>
-- * Name [String] <p>The name of the celebrity.</p>
-- * Urls [Urls] <p>An array of URLs pointing to additional information about the celebrity. If there is no additional information about the celebrity, this list is empty.</p>
-- * Id [RekognitionUniqueId] <p>A unique identifier for the celebrity. </p>
-- @return Celebrity structure as a key-value pair table
function M.Celebrity(args)
	assert(args, "You must provdide an argument table when creating Celebrity")
	local t = { 
		["MatchConfidence"] = args["MatchConfidence"],
		["Face"] = args["Face"],
		["Name"] = args["Name"],
		["Urls"] = args["Urls"],
		["Id"] = args["Id"],
	}
	asserts.AssertCelebrity(t)
	return t
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
-- * Attributes [Attributes] <p>An array of facial attributes you want to be returned. This can be the default list of attributes or all attributes. If you don't specify a value for <code>Attributes</code> or if you specify <code>["DEFAULT"]</code>, the API returns the following subset of facial attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>, <code>Quality</code> and <code>Landmarks</code>. If you provide <code>["ALL"]</code>, all facial attributes are returned but the operation will take longer to complete.</p> <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical AND operator to determine which attributes to return (in this case, all attributes). </p>
-- * Image [Image] <p>The image in which you want to detect faces. You can specify a blob or an S3 object. </p>
-- Required key: Image
-- @return DetectFacesRequest structure as a key-value pair table
function M.DetectFacesRequest(args)
	assert(args, "You must provdide an argument table when creating DetectFacesRequest")
	local t = { 
		["Attributes"] = args["Attributes"],
		["Image"] = args["Image"],
	}
	asserts.AssertDetectFacesRequest(t)
	return t
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
-- <p>Provides information about a face in a target image that matches the source image face analysed by <code>CompareFaces</code>. The <code>Face</code> property contains the bounding box of the face in the target image. The <code>Similarity</code> property is the confidence that the source image face matches the face in the bounding box.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Face [ComparedFace] <p>Provides face metadata (bounding box and confidence that the bounding box actually contains a face).</p>
-- * Similarity [Percent] <p>Level of confidence that the faces match.</p>
-- @return CompareFacesMatch structure as a key-value pair table
function M.CompareFacesMatch(args)
	assert(args, "You must provdide an argument table when creating CompareFacesMatch")
	local t = { 
		["Face"] = args["Face"],
		["Similarity"] = args["Similarity"],
	}
	asserts.AssertCompareFacesMatch(t)
	return t
end

keys.AccessDeniedException = { nil }

function asserts.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AccessDeniedException[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>You are not authorized to perform the action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AccessDeniedException structure as a key-value pair table
function M.AccessDeniedException(args)
	assert(args, "You must provdide an argument table when creating AccessDeniedException")
	local t = { 
	}
	asserts.AssertAccessDeniedException(t)
	return t
end

keys.ListFacesResponse = { ["NextToken"] = true, ["Faces"] = true, nil }

function asserts.AssertListFacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
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
-- * Faces [FaceList] <p>An array of <code>Face</code> objects. </p>
-- @return ListFacesResponse structure as a key-value pair table
function M.ListFacesResponse(args)
	assert(args, "You must provdide an argument table when creating ListFacesResponse")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Faces"] = args["Faces"],
	}
	asserts.AssertListFacesResponse(t)
	return t
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
-- <p>Provides information about a single type of moderated content found in an image. Each type of moderated content has a label within a hierarchical taxonomy. For more information, see <a>image-moderation</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Specifies the confidence that Amazon Rekognition has that the label has been correctly identified.</p> <p>If you don't specify the <code>MinConfidence</code> parameter in the call to <code>DetectModerationLabels</code>, the operation returns labels with a confidence value greater than or equal to 50 percent.</p>
-- * ParentName [String] <p>The name for the parent label. Labels at the top-level of the hierarchy have the parent label <code>""</code>.</p>
-- * Name [String] <p>The label name for the type of content detected in the image.</p>
-- @return ModerationLabel structure as a key-value pair table
function M.ModerationLabel(args)
	assert(args, "You must provdide an argument table when creating ModerationLabel")
	local t = { 
		["Confidence"] = args["Confidence"],
		["ParentName"] = args["ParentName"],
		["Name"] = args["Name"],
	}
	asserts.AssertModerationLabel(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListFacesRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["CollectionId"] = args["CollectionId"],
	}
	asserts.AssertListFacesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating FaceMatch")
	local t = { 
		["Face"] = args["Face"],
		["Similarity"] = args["Similarity"],
	}
	asserts.AssertFaceMatch(t)
	return t
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
-- <p>Identifies the bounding box around the object or face. The <code>left</code> (x-coordinate) and <code>top</code> (y-coordinate) are coordinates representing the top and left sides of the bounding box. Note that the upper-left corner of the image is the origin (0,0). </p> <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall image size. For example, if the input image is 700x200 pixels, and the top-left coordinate of the bounding box is 350x50 pixels, the API returns a <code>left</code> value of 0.5 (350/700) and a <code>top</code> value of 0.25 (50/200).</p> <p> The <code>width</code> and <code>height</code> values represent the dimensions of the bounding box as a ratio of the overall image dimension. For example, if the input image is 700x200 pixels, and the bounding box width is 70 pixels, the width returned is 0.1. </p> <note> <p> The bounding box coordinates can have negative values. For example, if Amazon Rekognition is able to detect a face that is at the image edge and is only partially visible, the service can return coordinates that are outside the image bounds and, depending on the image edge, you might get negative values or values greater than 1 for the <code>left</code> or <code>top</code> values. </p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Width [Float] <p>Width of the bounding box as a ratio of the overall image width.</p>
-- * Top [Float] <p>Top coordinate of the bounding box as a ratio of overall image height.</p>
-- * Left [Float] <p>Left coordinate of the bounding box as a ratio of overall image width.</p>
-- * Height [Float] <p>Height of the bounding box as a ratio of the overall image height.</p>
-- @return BoundingBox structure as a key-value pair table
function M.BoundingBox(args)
	assert(args, "You must provdide an argument table when creating BoundingBox")
	local t = { 
		["Width"] = args["Width"],
		["Top"] = args["Top"],
		["Left"] = args["Left"],
		["Height"] = args["Height"],
	}
	asserts.AssertBoundingBox(t)
	return t
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
-- <p>Structure containing attributes of the face that the algorithm detected.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Confidence [Percent] <p>Confidence level that the bounding box contains a face (and not a different object such as a tree).</p>
-- * Eyeglasses [Eyeglasses] <p>Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.</p>
-- * Sunglasses [Sunglasses] <p>Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.</p>
-- * Gender [Gender] <p>Gender of the face and the confidence level in the determination.</p>
-- * Landmarks [Landmarks] <p>Indicates the location of landmarks on the face.</p>
-- * Pose [Pose] <p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>
-- * Emotions [Emotions] <p>The emotions detected on the face, and the confidence level in the determination. For example, HAPPY, SAD, and ANGRY. </p>
-- * AgeRange [AgeRange] <p>The estimated age range, in years, for the face. Low represents the lowest estimated age and High represents the highest estimated age.</p>
-- * EyesOpen [EyeOpen] <p>Indicates whether or not the eyes on the face are open, and the confidence level in the determination.</p>
-- * BoundingBox [BoundingBox] <p>Bounding box of the face.</p>
-- * Smile [Smile] <p>Indicates whether or not the face is smiling, and the confidence level in the determination.</p>
-- * MouthOpen [MouthOpen] <p>Indicates whether or not the mouth on the face is open, and the confidence level in the determination.</p>
-- * Quality [ImageQuality] <p>Identifies image brightness and sharpness.</p>
-- * Mustache [Mustache] <p>Indicates whether or not the face has a mustache, and the confidence level in the determination.</p>
-- * Beard [Beard] <p>Indicates whether or not the face has a beard, and the confidence level in the determination.</p>
-- @return FaceDetail structure as a key-value pair table
function M.FaceDetail(args)
	assert(args, "You must provdide an argument table when creating FaceDetail")
	local t = { 
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
	asserts.AssertFaceDetail(t)
	return t
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

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
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

function asserts.AssertOrientationCorrection(str)
	assert(str)
	assert(type(str) == "string", "Expected OrientationCorrection to be of type 'string'")
end

--  
function M.OrientationCorrection(str)
	asserts.AssertOrientationCorrection(str)
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

function asserts.AssertGenderType(str)
	assert(str)
	assert(type(str) == "string", "Expected GenderType to be of type 'string'")
end

--  
function M.GenderType(str)
	asserts.AssertGenderType(str)
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

function asserts.AssertImageBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected ImageBlob to be of type 'string'")
	assert(#blob <= 5242880, "Expected blob to be max 5242880")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.ImageBlob(blob)
	asserts.AssertImageBlob(blob)
	return blob
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
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
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
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DeleteCollection asynchronously, invoking a callback when done
-- @param DeleteCollectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCollectionAsync(DeleteCollectionRequest, cb)
	assert(DeleteCollectionRequest, "You must provide a DeleteCollectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DeleteCollection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteCollectionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCollectionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFaces asynchronously, invoking a callback when done
-- @param ListFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListFacesAsync(ListFacesRequest, cb)
	assert(ListFacesRequest, "You must provide a ListFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.ListFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListFacesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFacesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call IndexFaces asynchronously, invoking a callback when done
-- @param IndexFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.IndexFacesAsync(IndexFacesRequest, cb)
	assert(IndexFacesRequest, "You must provide a IndexFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.IndexFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.IndexFacesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IndexFacesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchFaces asynchronously, invoking a callback when done
-- @param SearchFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SearchFacesAsync(SearchFacesRequest, cb)
	assert(SearchFacesRequest, "You must provide a SearchFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.SearchFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.SearchFacesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchFacesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCelebrityInfo asynchronously, invoking a callback when done
-- @param GetCelebrityInfoRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCelebrityInfoAsync(GetCelebrityInfoRequest, cb)
	assert(GetCelebrityInfoRequest, "You must provide a GetCelebrityInfoRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.GetCelebrityInfo",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetCelebrityInfoSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCelebrityInfoAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectLabels asynchronously, invoking a callback when done
-- @param DetectLabelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetectLabelsAsync(DetectLabelsRequest, cb)
	assert(DetectLabelsRequest, "You must provide a DetectLabelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DetectLabels",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DetectLabelsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectLabelsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectModerationLabels asynchronously, invoking a callback when done
-- @param DetectModerationLabelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetectModerationLabelsAsync(DetectModerationLabelsRequest, cb)
	assert(DetectModerationLabelsRequest, "You must provide a DetectModerationLabelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DetectModerationLabels",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DetectModerationLabelsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectModerationLabelsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCollections asynchronously, invoking a callback when done
-- @param ListCollectionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCollectionsAsync(ListCollectionsRequest, cb)
	assert(ListCollectionsRequest, "You must provide a ListCollectionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.ListCollections",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListCollectionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCollectionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCollection asynchronously, invoking a callback when done
-- @param CreateCollectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCollectionAsync(CreateCollectionRequest, cb)
	assert(CreateCollectionRequest, "You must provide a CreateCollectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.CreateCollection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateCollectionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCollectionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CompareFaces asynchronously, invoking a callback when done
-- @param CompareFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CompareFacesAsync(CompareFacesRequest, cb)
	assert(CompareFacesRequest, "You must provide a CompareFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.CompareFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CompareFacesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CompareFacesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFaces asynchronously, invoking a callback when done
-- @param DeleteFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFacesAsync(DeleteFacesRequest, cb)
	assert(DeleteFacesRequest, "You must provide a DeleteFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DeleteFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteFacesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFacesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchFacesByImage asynchronously, invoking a callback when done
-- @param SearchFacesByImageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SearchFacesByImageAsync(SearchFacesByImageRequest, cb)
	assert(SearchFacesByImageRequest, "You must provide a SearchFacesByImageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.SearchFacesByImage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.SearchFacesByImageSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchFacesByImageAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DetectFaces asynchronously, invoking a callback when done
-- @param DetectFacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetectFacesAsync(DetectFacesRequest, cb)
	assert(DetectFacesRequest, "You must provide a DetectFacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.DetectFaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DetectFacesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetectFacesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RecognizeCelebrities asynchronously, invoking a callback when done
-- @param RecognizeCelebritiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RecognizeCelebritiesAsync(RecognizeCelebritiesRequest, cb)
	assert(RecognizeCelebritiesRequest, "You must provide a RecognizeCelebritiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "RekognitionService.RecognizeCelebrities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.RecognizeCelebritiesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RecognizeCelebritiesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
