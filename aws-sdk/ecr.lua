--- GENERATED CODE - DO NOT MODIFY
-- Amazon EC2 Container Registry (ecr-2015-09-21)

local M = {}

M.metadata = {
	api_version = "2015-09-21",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "ecr",
	service_abbreviation = "Amazon ECR",
	service_full_name = "Amazon EC2 Container Registry",
	signature_version = "v4",
	target_prefix = "AmazonEC2ContainerRegistry_V20150921",
	timestamp_format = "",
	global_endpoint = "",
	uid = "ecr-2015-09-21",
}

local BatchDeleteImageRequest_keys = { "repositoryName" = true, "registryId" = true, "imageIds" = true, nil }

function M.AssertBatchDeleteImageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteImageRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["imageIds"], "Expected key imageIds to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	if struct["imageIds"] then M.AssertImageIdentifierList(struct["imageIds"]) end
	for k,_ in pairs(struct) do
		assert(BatchDeleteImageRequest_keys[k], "BatchDeleteImageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteImageRequest
-- <p>Deletes specified images within a specified repository. Images are specified with either the <code>imageTag</code> or <code>imageDigest</code>.</p>
-- @param repositoryName [RepositoryName] <p>The repository that contains the image to delete.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the image to delete. If you do not specify a registry, the default registry is assumed.</p>
-- @param imageIds [ImageIdentifierList] <p>A list of image ID references that correspond to images to delete. The format of the <code>imageIds</code> reference is <code>imageTag=tag</code> or <code>imageDigest=digest</code>.</p>
-- Required parameter: repositoryName
-- Required parameter: imageIds
function M.BatchDeleteImageRequest(repositoryName, registryId, imageIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDeleteImageRequest")
	local t = { 
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
		["imageIds"] = imageIds,
	}
	M.AssertBatchDeleteImageRequest(t)
	return t
end

local RepositoryNotEmptyException_keys = { "message" = true, nil }

function M.AssertRepositoryNotEmptyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNotEmptyException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(RepositoryNotEmptyException_keys[k], "RepositoryNotEmptyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNotEmptyException
-- <p>The specified repository contains images. To delete a repository that contains images, you must force the deletion with the <code>force</code> parameter.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.RepositoryNotEmptyException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryNotEmptyException")
	local t = { 
		["message"] = message,
	}
	M.AssertRepositoryNotEmptyException(t)
	return t
end

local PutImageRequest_keys = { "imageManifest" = true, "repositoryName" = true, "registryId" = true, "imageTag" = true, nil }

function M.AssertPutImageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutImageRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["imageManifest"], "Expected key imageManifest to exist in table")
	if struct["imageManifest"] then M.AssertImageManifest(struct["imageManifest"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	if struct["imageTag"] then M.AssertImageTag(struct["imageTag"]) end
	for k,_ in pairs(struct) do
		assert(PutImageRequest_keys[k], "PutImageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutImageRequest
--  
-- @param imageManifest [ImageManifest] <p>The image manifest corresponding to the image to be uploaded.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository in which to put the image.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository in which to put the image. If you do not specify a registry, the default registry is assumed.</p>
-- @param imageTag [ImageTag] <p>The tag to associate with the image. This parameter is required for images that use the Docker Image Manifest V2 Schema 2 or OCI formats.</p>
-- Required parameter: repositoryName
-- Required parameter: imageManifest
function M.PutImageRequest(imageManifest, repositoryName, registryId, imageTag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutImageRequest")
	local t = { 
		["imageManifest"] = imageManifest,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
		["imageTag"] = imageTag,
	}
	M.AssertPutImageRequest(t)
	return t
end

local ListImagesRequest_keys = { "nextToken" = true, "filter" = true, "repositoryName" = true, "registryId" = true, "maxResults" = true, nil }

function M.AssertListImagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListImagesRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["filter"] then M.AssertListImagesFilter(struct["filter"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListImagesRequest_keys[k], "ListImagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListImagesRequest
--  
-- @param nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListImages</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param filter [ListImagesFilter] <p>The filter key and value with which to filter your <code>ListImages</code> results.</p>
-- @param repositoryName [RepositoryName] <p>The repository whose image IDs are to be listed.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository to list images in. If you do not specify a registry, the default registry is assumed.</p>
-- @param maxResults [MaxResults] <p>The maximum number of image results returned by <code>ListImages</code> in paginated output. When this parameter is used, <code>ListImages</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListImages</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListImages</code> returns up to 100 results and a <code>nextToken</code> value, if applicable.</p>
-- Required parameter: repositoryName
function M.ListImagesRequest(nextToken, filter, repositoryName, registryId, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListImagesRequest")
	local t = { 
		["nextToken"] = nextToken,
		["filter"] = filter,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
		["maxResults"] = maxResults,
	}
	M.AssertListImagesRequest(t)
	return t
end

local LayerAlreadyExistsException_keys = { "message" = true, nil }

function M.AssertLayerAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LayerAlreadyExistsException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LayerAlreadyExistsException_keys[k], "LayerAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LayerAlreadyExistsException
-- <p>The image layer already exists in the associated repository.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.LayerAlreadyExistsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LayerAlreadyExistsException")
	local t = { 
		["message"] = message,
	}
	M.AssertLayerAlreadyExistsException(t)
	return t
end

local InvalidLayerPartException_keys = { "lastValidByteReceived" = true, "uploadId" = true, "message" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertInvalidLayerPartException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLayerPartException to be of type 'table'")
	if struct["lastValidByteReceived"] then M.AssertPartSize(struct["lastValidByteReceived"]) end
	if struct["uploadId"] then M.AssertUploadId(struct["uploadId"]) end
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(InvalidLayerPartException_keys[k], "InvalidLayerPartException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLayerPartException
-- <p>The layer part size is not valid, or the first byte specified is not consecutive to the last byte of a previous layer part upload.</p>
-- @param lastValidByteReceived [PartSize] <p>The last valid byte received from the layer part upload that is associated with the exception.</p>
-- @param uploadId [UploadId] <p>The upload ID associated with the exception.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @param repositoryName [RepositoryName] <p>The repository name associated with the exception.</p>
-- @param registryId [RegistryId] <p>The registry ID associated with the exception.</p>
function M.InvalidLayerPartException(lastValidByteReceived, uploadId, message, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLayerPartException")
	local t = { 
		["lastValidByteReceived"] = lastValidByteReceived,
		["uploadId"] = uploadId,
		["message"] = message,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertInvalidLayerPartException(t)
	return t
end

local BatchGetImageResponse_keys = { "images" = true, "failures" = true, nil }

function M.AssertBatchGetImageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetImageResponse to be of type 'table'")
	if struct["images"] then M.AssertImageList(struct["images"]) end
	if struct["failures"] then M.AssertImageFailureList(struct["failures"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetImageResponse_keys[k], "BatchGetImageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetImageResponse
--  
-- @param images [ImageList] <p>A list of image objects corresponding to the image references in the request.</p>
-- @param failures [ImageFailureList] <p>Any failures associated with the call.</p>
function M.BatchGetImageResponse(images, failures, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetImageResponse")
	local t = { 
		["images"] = images,
		["failures"] = failures,
	}
	M.AssertBatchGetImageResponse(t)
	return t
end

local DescribeRepositoriesResponse_keys = { "nextToken" = true, "repositories" = true, nil }

function M.AssertDescribeRepositoriesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRepositoriesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["repositories"] then M.AssertRepositoryList(struct["repositories"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRepositoriesResponse_keys[k], "DescribeRepositoriesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRepositoriesResponse
--  
-- @param nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>DescribeRepositories</code> request. When the results of a <code>DescribeRepositories</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param repositories [RepositoryList] <p>A list of repository objects corresponding to valid repositories.</p>
function M.DescribeRepositoriesResponse(nextToken, repositories, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRepositoriesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["repositories"] = repositories,
	}
	M.AssertDescribeRepositoriesResponse(t)
	return t
end

local LayerInaccessibleException_keys = { "message" = true, nil }

function M.AssertLayerInaccessibleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LayerInaccessibleException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LayerInaccessibleException_keys[k], "LayerInaccessibleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LayerInaccessibleException
-- <p>The specified layer is not available because it is not associated with an image. Unassociated image layers may be cleaned up at any time.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.LayerInaccessibleException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LayerInaccessibleException")
	local t = { 
		["message"] = message,
	}
	M.AssertLayerInaccessibleException(t)
	return t
end

local Layer_keys = { "layerAvailability" = true, "layerDigest" = true, "layerSize" = true, "mediaType" = true, nil }

function M.AssertLayer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Layer to be of type 'table'")
	if struct["layerAvailability"] then M.AssertLayerAvailability(struct["layerAvailability"]) end
	if struct["layerDigest"] then M.AssertLayerDigest(struct["layerDigest"]) end
	if struct["layerSize"] then M.AssertLayerSizeInBytes(struct["layerSize"]) end
	if struct["mediaType"] then M.AssertMediaType(struct["mediaType"]) end
	for k,_ in pairs(struct) do
		assert(Layer_keys[k], "Layer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Layer
-- <p>An object representing an Amazon ECR image layer.</p>
-- @param layerAvailability [LayerAvailability] <p>The availability status of the image layer.</p>
-- @param layerDigest [LayerDigest] <p>The <code>sha256</code> digest of the image layer.</p>
-- @param layerSize [LayerSizeInBytes] <p>The size, in bytes, of the image layer.</p>
-- @param mediaType [MediaType] <p>The media type of the layer, such as <code>application/vnd.docker.image.rootfs.diff.tar.gzip</code> or <code>application/vnd.oci.image.layer.v1.tar+gzip</code>.</p>
function M.Layer(layerAvailability, layerDigest, layerSize, mediaType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Layer")
	local t = { 
		["layerAvailability"] = layerAvailability,
		["layerDigest"] = layerDigest,
		["layerSize"] = layerSize,
		["mediaType"] = mediaType,
	}
	M.AssertLayer(t)
	return t
end

local GetDownloadUrlForLayerRequest_keys = { "layerDigest" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertGetDownloadUrlForLayerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDownloadUrlForLayerRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["layerDigest"], "Expected key layerDigest to exist in table")
	if struct["layerDigest"] then M.AssertLayerDigest(struct["layerDigest"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(GetDownloadUrlForLayerRequest_keys[k], "GetDownloadUrlForLayerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDownloadUrlForLayerRequest
--  
-- @param layerDigest [LayerDigest] <p>The digest of the image layer to download.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository that is associated with the image layer to download.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the image layer to download. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
-- Required parameter: layerDigest
function M.GetDownloadUrlForLayerRequest(layerDigest, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDownloadUrlForLayerRequest")
	local t = { 
		["layerDigest"] = layerDigest,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertGetDownloadUrlForLayerRequest(t)
	return t
end

local DeleteRepositoryResponse_keys = { "repository" = true, nil }

function M.AssertDeleteRepositoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryResponse to be of type 'table'")
	if struct["repository"] then M.AssertRepository(struct["repository"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRepositoryResponse_keys[k], "DeleteRepositoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryResponse
--  
-- @param repository [Repository] <p>The repository that was deleted.</p>
function M.DeleteRepositoryResponse(repository, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRepositoryResponse")
	local t = { 
		["repository"] = repository,
	}
	M.AssertDeleteRepositoryResponse(t)
	return t
end

local BatchCheckLayerAvailabilityResponse_keys = { "layers" = true, "failures" = true, nil }

function M.AssertBatchCheckLayerAvailabilityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCheckLayerAvailabilityResponse to be of type 'table'")
	if struct["layers"] then M.AssertLayerList(struct["layers"]) end
	if struct["failures"] then M.AssertLayerFailureList(struct["failures"]) end
	for k,_ in pairs(struct) do
		assert(BatchCheckLayerAvailabilityResponse_keys[k], "BatchCheckLayerAvailabilityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCheckLayerAvailabilityResponse
--  
-- @param layers [LayerList] <p>A list of image layer objects corresponding to the image layer references in the request.</p>
-- @param failures [LayerFailureList] <p>Any failures associated with the call.</p>
function M.BatchCheckLayerAvailabilityResponse(layers, failures, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchCheckLayerAvailabilityResponse")
	local t = { 
		["layers"] = layers,
		["failures"] = failures,
	}
	M.AssertBatchCheckLayerAvailabilityResponse(t)
	return t
end

local GetDownloadUrlForLayerResponse_keys = { "downloadUrl" = true, "layerDigest" = true, nil }

function M.AssertGetDownloadUrlForLayerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDownloadUrlForLayerResponse to be of type 'table'")
	if struct["downloadUrl"] then M.AssertUrl(struct["downloadUrl"]) end
	if struct["layerDigest"] then M.AssertLayerDigest(struct["layerDigest"]) end
	for k,_ in pairs(struct) do
		assert(GetDownloadUrlForLayerResponse_keys[k], "GetDownloadUrlForLayerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDownloadUrlForLayerResponse
--  
-- @param downloadUrl [Url] <p>The pre-signed Amazon S3 download URL for the requested layer.</p>
-- @param layerDigest [LayerDigest] <p>The digest of the image layer to download.</p>
function M.GetDownloadUrlForLayerResponse(downloadUrl, layerDigest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDownloadUrlForLayerResponse")
	local t = { 
		["downloadUrl"] = downloadUrl,
		["layerDigest"] = layerDigest,
	}
	M.AssertGetDownloadUrlForLayerResponse(t)
	return t
end

local DescribeImagesResponse_keys = { "nextToken" = true, "imageDetails" = true, nil }

function M.AssertDescribeImagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["imageDetails"] then M.AssertImageDetailList(struct["imageDetails"]) end
	for k,_ in pairs(struct) do
		assert(DescribeImagesResponse_keys[k], "DescribeImagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesResponse
--  
-- @param nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>DescribeImages</code> request. When the results of a <code>DescribeImages</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param imageDetails [ImageDetailList] <p>A list of <a>ImageDetail</a> objects that contain data about the image.</p>
function M.DescribeImagesResponse(nextToken, imageDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeImagesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["imageDetails"] = imageDetails,
	}
	M.AssertDescribeImagesResponse(t)
	return t
end

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The operation did not succeed because it would have exceeded a service limit for your account. For more information, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/service_limits.html">Amazon ECR Default Service Limits</a> in the Amazon EC2 Container Registry User Guide.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local CompleteLayerUploadRequest_keys = { "uploadId" = true, "layerDigests" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertCompleteLayerUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteLayerUploadRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	assert(struct["layerDigests"], "Expected key layerDigests to exist in table")
	if struct["uploadId"] then M.AssertUploadId(struct["uploadId"]) end
	if struct["layerDigests"] then M.AssertLayerDigestList(struct["layerDigests"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(CompleteLayerUploadRequest_keys[k], "CompleteLayerUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteLayerUploadRequest
--  
-- @param uploadId [UploadId] <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to associate with the image layer.</p>
-- @param layerDigests [LayerDigestList] <p>The <code>sha256</code> digest of the image layer.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository to associate with the image layer.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry to which to upload layers. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
-- Required parameter: uploadId
-- Required parameter: layerDigests
function M.CompleteLayerUploadRequest(uploadId, layerDigests, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteLayerUploadRequest")
	local t = { 
		["uploadId"] = uploadId,
		["layerDigests"] = layerDigests,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertCompleteLayerUploadRequest(t)
	return t
end

local RepositoryNotFoundException_keys = { "message" = true, nil }

function M.AssertRepositoryNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(RepositoryNotFoundException_keys[k], "RepositoryNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNotFoundException
-- <p>The specified repository could not be found. Check the spelling of the specified repository and ensure that you are performing operations on the correct registry.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.RepositoryNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertRepositoryNotFoundException(t)
	return t
end

local GetAuthorizationTokenResponse_keys = { "authorizationData" = true, nil }

function M.AssertGetAuthorizationTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAuthorizationTokenResponse to be of type 'table'")
	if struct["authorizationData"] then M.AssertAuthorizationDataList(struct["authorizationData"]) end
	for k,_ in pairs(struct) do
		assert(GetAuthorizationTokenResponse_keys[k], "GetAuthorizationTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAuthorizationTokenResponse
--  
-- @param authorizationData [AuthorizationDataList] <p>A list of authorization token data objects that correspond to the <code>registryIds</code> values in the request.</p>
function M.GetAuthorizationTokenResponse(authorizationData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAuthorizationTokenResponse")
	local t = { 
		["authorizationData"] = authorizationData,
	}
	M.AssertGetAuthorizationTokenResponse(t)
	return t
end

local DescribeImagesFilter_keys = { "tagStatus" = true, nil }

function M.AssertDescribeImagesFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesFilter to be of type 'table'")
	if struct["tagStatus"] then M.AssertTagStatus(struct["tagStatus"]) end
	for k,_ in pairs(struct) do
		assert(DescribeImagesFilter_keys[k], "DescribeImagesFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesFilter
-- <p>An object representing a filter on a <a>DescribeImages</a> operation.</p>
-- @param tagStatus [TagStatus] <p>The tag status with which to filter your <a>DescribeImages</a> results. You can filter results based on whether they are <code>TAGGED</code> or <code>UNTAGGED</code>.</p>
function M.DescribeImagesFilter(tagStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeImagesFilter")
	local t = { 
		["tagStatus"] = tagStatus,
	}
	M.AssertDescribeImagesFilter(t)
	return t
end

local GetAuthorizationTokenRequest_keys = { "registryIds" = true, nil }

function M.AssertGetAuthorizationTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAuthorizationTokenRequest to be of type 'table'")
	if struct["registryIds"] then M.AssertGetAuthorizationTokenRegistryIdList(struct["registryIds"]) end
	for k,_ in pairs(struct) do
		assert(GetAuthorizationTokenRequest_keys[k], "GetAuthorizationTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAuthorizationTokenRequest
--  
-- @param registryIds [GetAuthorizationTokenRegistryIdList] <p>A list of AWS account IDs that are associated with the registries for which to get authorization tokens. If you do not specify a registry, the default registry is assumed.</p>
function M.GetAuthorizationTokenRequest(registryIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAuthorizationTokenRequest")
	local t = { 
		["registryIds"] = registryIds,
	}
	M.AssertGetAuthorizationTokenRequest(t)
	return t
end

local ListImagesFilter_keys = { "tagStatus" = true, nil }

function M.AssertListImagesFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListImagesFilter to be of type 'table'")
	if struct["tagStatus"] then M.AssertTagStatus(struct["tagStatus"]) end
	for k,_ in pairs(struct) do
		assert(ListImagesFilter_keys[k], "ListImagesFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListImagesFilter
-- <p>An object representing a filter on a <a>ListImages</a> operation.</p>
-- @param tagStatus [TagStatus] <p>The tag status with which to filter your <a>ListImages</a> results. You can filter results based on whether they are <code>TAGGED</code> or <code>UNTAGGED</code>.</p>
function M.ListImagesFilter(tagStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListImagesFilter")
	local t = { 
		["tagStatus"] = tagStatus,
	}
	M.AssertListImagesFilter(t)
	return t
end

local SetRepositoryPolicyRequest_keys = { "policyText" = true, "force" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertSetRepositoryPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetRepositoryPolicyRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["policyText"], "Expected key policyText to exist in table")
	if struct["policyText"] then M.AssertRepositoryPolicyText(struct["policyText"]) end
	if struct["force"] then M.AssertForceFlag(struct["force"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(SetRepositoryPolicyRequest_keys[k], "SetRepositoryPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetRepositoryPolicyRequest
--  
-- @param policyText [RepositoryPolicyText] <p>The JSON repository policy text to apply to the repository.</p>
-- @param force [ForceFlag] <p>If the policy you are attempting to set on a repository policy would prevent you from setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental repository lock outs.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository to receive the policy.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
-- Required parameter: policyText
function M.SetRepositoryPolicyRequest(policyText, force, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetRepositoryPolicyRequest")
	local t = { 
		["policyText"] = policyText,
		["force"] = force,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertSetRepositoryPolicyRequest(t)
	return t
end

local ImageDetail_keys = { "imageSizeInBytes" = true, "imageDigest" = true, "imageTags" = true, "registryId" = true, "repositoryName" = true, "imagePushedAt" = true, nil }

function M.AssertImageDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageDetail to be of type 'table'")
	if struct["imageSizeInBytes"] then M.AssertImageSizeInBytes(struct["imageSizeInBytes"]) end
	if struct["imageDigest"] then M.AssertImageDigest(struct["imageDigest"]) end
	if struct["imageTags"] then M.AssertImageTagList(struct["imageTags"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["imagePushedAt"] then M.AssertPushTimestamp(struct["imagePushedAt"]) end
	for k,_ in pairs(struct) do
		assert(ImageDetail_keys[k], "ImageDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageDetail
-- <p>An object that describes an image returned by a <a>DescribeImages</a> operation.</p>
-- @param imageSizeInBytes [ImageSizeInBytes] <p>The size, in bytes, of the image in the repository.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>
-- @param imageDigest [ImageDigest] <p>The <code>sha256</code> digest of the image manifest.</p>
-- @param imageTags [ImageTagList] <p>The list of tags associated with this image.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry to which this image belongs.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository to which this image belongs.</p>
-- @param imagePushedAt [PushTimestamp] <p>The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. </p>
function M.ImageDetail(imageSizeInBytes, imageDigest, imageTags, registryId, repositoryName, imagePushedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageDetail")
	local t = { 
		["imageSizeInBytes"] = imageSizeInBytes,
		["imageDigest"] = imageDigest,
		["imageTags"] = imageTags,
		["registryId"] = registryId,
		["repositoryName"] = repositoryName,
		["imagePushedAt"] = imagePushedAt,
	}
	M.AssertImageDetail(t)
	return t
end

local EmptyUploadException_keys = { "message" = true, nil }

function M.AssertEmptyUploadException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmptyUploadException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(EmptyUploadException_keys[k], "EmptyUploadException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmptyUploadException
-- <p>The specified layer upload does not contain any layer parts.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.EmptyUploadException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EmptyUploadException")
	local t = { 
		["message"] = message,
	}
	M.AssertEmptyUploadException(t)
	return t
end

local RepositoryAlreadyExistsException_keys = { "message" = true, nil }

function M.AssertRepositoryAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryAlreadyExistsException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(RepositoryAlreadyExistsException_keys[k], "RepositoryAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryAlreadyExistsException
-- <p>The specified repository already exists in the specified registry.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.RepositoryAlreadyExistsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryAlreadyExistsException")
	local t = { 
		["message"] = message,
	}
	M.AssertRepositoryAlreadyExistsException(t)
	return t
end

local DescribeRepositoriesRequest_keys = { "nextToken" = true, "repositoryNames" = true, "registryId" = true, "maxResults" = true, nil }

function M.AssertDescribeRepositoriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRepositoriesRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["repositoryNames"] then M.AssertRepositoryNameList(struct["repositoryNames"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRepositoriesRequest_keys[k], "DescribeRepositoriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRepositoriesRequest
--  
-- @param nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeRepositories</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param repositoryNames [RepositoryNameList] <p>A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repositories to be described. If you do not specify a registry, the default registry is assumed.</p>
-- @param maxResults [MaxResults] <p>The maximum number of repository results returned by <code>DescribeRepositories</code> in paginated output. When this parameter is used, <code>DescribeRepositories</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeRepositories</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeRepositories</code> returns up to 100 results and a <code>nextToken</code> value, if applicable.</p>
function M.DescribeRepositoriesRequest(nextToken, repositoryNames, registryId, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRepositoriesRequest")
	local t = { 
		["nextToken"] = nextToken,
		["repositoryNames"] = repositoryNames,
		["registryId"] = registryId,
		["maxResults"] = maxResults,
	}
	M.AssertDescribeRepositoriesRequest(t)
	return t
end

local ImageFailure_keys = { "failureReason" = true, "failureCode" = true, "imageId" = true, nil }

function M.AssertImageFailure(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageFailure to be of type 'table'")
	if struct["failureReason"] then M.AssertImageFailureReason(struct["failureReason"]) end
	if struct["failureCode"] then M.AssertImageFailureCode(struct["failureCode"]) end
	if struct["imageId"] then M.AssertImageIdentifier(struct["imageId"]) end
	for k,_ in pairs(struct) do
		assert(ImageFailure_keys[k], "ImageFailure contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageFailure
-- <p>An object representing an Amazon ECR image failure.</p>
-- @param failureReason [ImageFailureReason] <p>The reason for the failure.</p>
-- @param failureCode [ImageFailureCode] <p>The code associated with the failure.</p>
-- @param imageId [ImageIdentifier] <p>The image ID associated with the failure.</p>
function M.ImageFailure(failureReason, failureCode, imageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageFailure")
	local t = { 
		["failureReason"] = failureReason,
		["failureCode"] = failureCode,
		["imageId"] = imageId,
	}
	M.AssertImageFailure(t)
	return t
end

local AuthorizationData_keys = { "authorizationToken" = true, "expiresAt" = true, "proxyEndpoint" = true, nil }

function M.AssertAuthorizationData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationData to be of type 'table'")
	if struct["authorizationToken"] then M.AssertBase64(struct["authorizationToken"]) end
	if struct["expiresAt"] then M.AssertExpirationTimestamp(struct["expiresAt"]) end
	if struct["proxyEndpoint"] then M.AssertProxyEndpoint(struct["proxyEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizationData_keys[k], "AuthorizationData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationData
-- <p>An object representing authorization data for an Amazon ECR registry.</p>
-- @param authorizationToken [Base64] <p>A base64-encoded string that contains authorization data for the specified Amazon ECR registry. When the string is decoded, it is presented in the format <code>user:password</code> for private registry authentication using <code>docker login</code>.</p>
-- @param expiresAt [ExpirationTimestamp] <p>The Unix time in seconds and milliseconds when the authorization token expires. Authorization tokens are valid for 12 hours.</p>
-- @param proxyEndpoint [ProxyEndpoint] <p>The registry URL to use for this authorization token in a <code>docker login</code> command. The Amazon ECR registry URL format is <code>https://aws_account_id.dkr.ecr.region.amazonaws.com</code>. For example, <code>https://012345678910.dkr.ecr.us-east-1.amazonaws.com</code>.. </p>
function M.AuthorizationData(authorizationToken, expiresAt, proxyEndpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationData")
	local t = { 
		["authorizationToken"] = authorizationToken,
		["expiresAt"] = expiresAt,
		["proxyEndpoint"] = proxyEndpoint,
	}
	M.AssertAuthorizationData(t)
	return t
end

local BatchDeleteImageResponse_keys = { "failures" = true, "imageIds" = true, nil }

function M.AssertBatchDeleteImageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteImageResponse to be of type 'table'")
	if struct["failures"] then M.AssertImageFailureList(struct["failures"]) end
	if struct["imageIds"] then M.AssertImageIdentifierList(struct["imageIds"]) end
	for k,_ in pairs(struct) do
		assert(BatchDeleteImageResponse_keys[k], "BatchDeleteImageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteImageResponse
--  
-- @param failures [ImageFailureList] <p>Any failures associated with the call.</p>
-- @param imageIds [ImageIdentifierList] <p>The image IDs of the deleted images.</p>
function M.BatchDeleteImageResponse(failures, imageIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDeleteImageResponse")
	local t = { 
		["failures"] = failures,
		["imageIds"] = imageIds,
	}
	M.AssertBatchDeleteImageResponse(t)
	return t
end

local BatchCheckLayerAvailabilityRequest_keys = { "layerDigests" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertBatchCheckLayerAvailabilityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCheckLayerAvailabilityRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["layerDigests"], "Expected key layerDigests to exist in table")
	if struct["layerDigests"] then M.AssertBatchedOperationLayerDigestList(struct["layerDigests"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(BatchCheckLayerAvailabilityRequest_keys[k], "BatchCheckLayerAvailabilityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCheckLayerAvailabilityRequest
--  
-- @param layerDigests [BatchedOperationLayerDigestList] <p>The digests of the image layers to check.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository that is associated with the image layers to check.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the image layers to check. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
-- Required parameter: layerDigests
function M.BatchCheckLayerAvailabilityRequest(layerDigests, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchCheckLayerAvailabilityRequest")
	local t = { 
		["layerDigests"] = layerDigests,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertBatchCheckLayerAvailabilityRequest(t)
	return t
end

local InitiateLayerUploadResponse_keys = { "partSize" = true, "uploadId" = true, nil }

function M.AssertInitiateLayerUploadResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateLayerUploadResponse to be of type 'table'")
	if struct["partSize"] then M.AssertPartSize(struct["partSize"]) end
	if struct["uploadId"] then M.AssertUploadId(struct["uploadId"]) end
	for k,_ in pairs(struct) do
		assert(InitiateLayerUploadResponse_keys[k], "InitiateLayerUploadResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateLayerUploadResponse
--  
-- @param partSize [PartSize] <p>The size, in bytes, that Amazon ECR expects future layer part uploads to be.</p>
-- @param uploadId [UploadId] <p>The upload ID for the layer upload. This parameter is passed to further <a>UploadLayerPart</a> and <a>CompleteLayerUpload</a> operations.</p>
function M.InitiateLayerUploadResponse(partSize, uploadId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateLayerUploadResponse")
	local t = { 
		["partSize"] = partSize,
		["uploadId"] = uploadId,
	}
	M.AssertInitiateLayerUploadResponse(t)
	return t
end

local Image_keys = { "imageManifest" = true, "repositoryName" = true, "registryId" = true, "imageId" = true, nil }

function M.AssertImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Image to be of type 'table'")
	if struct["imageManifest"] then M.AssertImageManifest(struct["imageManifest"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	if struct["imageId"] then M.AssertImageIdentifier(struct["imageId"]) end
	for k,_ in pairs(struct) do
		assert(Image_keys[k], "Image contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Image
-- <p>An object representing an Amazon ECR image.</p>
-- @param imageManifest [ImageManifest] <p>The image manifest associated with the image.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository associated with the image.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry containing the image.</p>
-- @param imageId [ImageIdentifier] <p>An object containing the image tag and image digest associated with an image.</p>
function M.Image(imageManifest, repositoryName, registryId, imageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Image")
	local t = { 
		["imageManifest"] = imageManifest,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
		["imageId"] = imageId,
	}
	M.AssertImage(t)
	return t
end

local ImageIdentifier_keys = { "imageTag" = true, "imageDigest" = true, nil }

function M.AssertImageIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageIdentifier to be of type 'table'")
	if struct["imageTag"] then M.AssertImageTag(struct["imageTag"]) end
	if struct["imageDigest"] then M.AssertImageDigest(struct["imageDigest"]) end
	for k,_ in pairs(struct) do
		assert(ImageIdentifier_keys[k], "ImageIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageIdentifier
-- <p>An object with identifying information for an Amazon ECR image.</p>
-- @param imageTag [ImageTag] <p>The tag used for the image.</p>
-- @param imageDigest [ImageDigest] <p>The <code>sha256</code> digest of the image manifest.</p>
function M.ImageIdentifier(imageTag, imageDigest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageIdentifier")
	local t = { 
		["imageTag"] = imageTag,
		["imageDigest"] = imageDigest,
	}
	M.AssertImageIdentifier(t)
	return t
end

local CompleteLayerUploadResponse_keys = { "uploadId" = true, "layerDigest" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertCompleteLayerUploadResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteLayerUploadResponse to be of type 'table'")
	if struct["uploadId"] then M.AssertUploadId(struct["uploadId"]) end
	if struct["layerDigest"] then M.AssertLayerDigest(struct["layerDigest"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(CompleteLayerUploadResponse_keys[k], "CompleteLayerUploadResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteLayerUploadResponse
--  
-- @param uploadId [UploadId] <p>The upload ID associated with the layer.</p>
-- @param layerDigest [LayerDigest] <p>The <code>sha256</code> digest of the image layer.</p>
-- @param repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @param registryId [RegistryId] <p>The registry ID associated with the request.</p>
function M.CompleteLayerUploadResponse(uploadId, layerDigest, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteLayerUploadResponse")
	local t = { 
		["uploadId"] = uploadId,
		["layerDigest"] = layerDigest,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertCompleteLayerUploadResponse(t)
	return t
end

local GetRepositoryPolicyResponse_keys = { "policyText" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertGetRepositoryPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryPolicyResponse to be of type 'table'")
	if struct["policyText"] then M.AssertRepositoryPolicyText(struct["policyText"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(GetRepositoryPolicyResponse_keys[k], "GetRepositoryPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryPolicyResponse
--  
-- @param policyText [RepositoryPolicyText] <p>The JSON repository policy text associated with the repository.</p>
-- @param repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @param registryId [RegistryId] <p>The registry ID associated with the request.</p>
function M.GetRepositoryPolicyResponse(policyText, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRepositoryPolicyResponse")
	local t = { 
		["policyText"] = policyText,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertGetRepositoryPolicyResponse(t)
	return t
end

local LayersNotFoundException_keys = { "message" = true, nil }

function M.AssertLayersNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LayersNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LayersNotFoundException_keys[k], "LayersNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LayersNotFoundException
-- <p>The specified layers could not be found, or the specified layer is not valid for this repository.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.LayersNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LayersNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertLayersNotFoundException(t)
	return t
end

local UploadLayerPartRequest_keys = { "layerPartBlob" = true, "partFirstByte" = true, "uploadId" = true, "registryId" = true, "repositoryName" = true, "partLastByte" = true, nil }

function M.AssertUploadLayerPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadLayerPartRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	assert(struct["partFirstByte"], "Expected key partFirstByte to exist in table")
	assert(struct["partLastByte"], "Expected key partLastByte to exist in table")
	assert(struct["layerPartBlob"], "Expected key layerPartBlob to exist in table")
	if struct["layerPartBlob"] then M.AssertLayerPartBlob(struct["layerPartBlob"]) end
	if struct["partFirstByte"] then M.AssertPartSize(struct["partFirstByte"]) end
	if struct["uploadId"] then M.AssertUploadId(struct["uploadId"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["partLastByte"] then M.AssertPartSize(struct["partLastByte"]) end
	for k,_ in pairs(struct) do
		assert(UploadLayerPartRequest_keys[k], "UploadLayerPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadLayerPartRequest
--  
-- @param layerPartBlob [LayerPartBlob] <p>The base64-encoded layer part payload.</p>
-- @param partFirstByte [PartSize] <p>The integer value of the first byte of the layer part.</p>
-- @param uploadId [UploadId] <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to associate with the layer part upload.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that you are uploading layer parts to. If you do not specify a registry, the default registry is assumed.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository that you are uploading layer parts to.</p>
-- @param partLastByte [PartSize] <p>The integer value of the last byte of the layer part.</p>
-- Required parameter: repositoryName
-- Required parameter: uploadId
-- Required parameter: partFirstByte
-- Required parameter: partLastByte
-- Required parameter: layerPartBlob
function M.UploadLayerPartRequest(layerPartBlob, partFirstByte, uploadId, registryId, repositoryName, partLastByte, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadLayerPartRequest")
	local t = { 
		["layerPartBlob"] = layerPartBlob,
		["partFirstByte"] = partFirstByte,
		["uploadId"] = uploadId,
		["registryId"] = registryId,
		["repositoryName"] = repositoryName,
		["partLastByte"] = partLastByte,
	}
	M.AssertUploadLayerPartRequest(t)
	return t
end

local InvalidLayerException_keys = { "message" = true, nil }

function M.AssertInvalidLayerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLayerException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidLayerException_keys[k], "InvalidLayerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLayerException
-- <p>The layer digest calculation performed by Amazon ECR upon receipt of the image layer does not match the digest specified.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.InvalidLayerException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLayerException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidLayerException(t)
	return t
end

local Repository_keys = { "registryId" = true, "repositoryName" = true, "repositoryArn" = true, "createdAt" = true, "repositoryUri" = true, nil }

function M.AssertRepository(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Repository to be of type 'table'")
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["repositoryArn"] then M.AssertArn(struct["repositoryArn"]) end
	if struct["createdAt"] then M.AssertCreationTimestamp(struct["createdAt"]) end
	if struct["repositoryUri"] then M.AssertUrl(struct["repositoryUri"]) end
	for k,_ in pairs(struct) do
		assert(Repository_keys[k], "Repository contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Repository
-- <p>An object representing a repository.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository.</p>
-- @param repositoryArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the <code>arn:aws:ecr</code> namespace, followed by the region of the repository, the AWS account ID of the repository owner, the repository namespace, and then the repository name. For example, <code>arn:aws:ecr:region:012345678910:repository/test</code>.</p>
-- @param createdAt [CreationTimestamp] <p>The date and time, in JavaScript date/time format, when the repository was created.</p>
-- @param repositoryUri [Url] <p>The URI for the repository. You can use this URI for Docker <code>push</code> and <code>pull</code> operations.</p>
function M.Repository(registryId, repositoryName, repositoryArn, createdAt, repositoryUri, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Repository")
	local t = { 
		["registryId"] = registryId,
		["repositoryName"] = repositoryName,
		["repositoryArn"] = repositoryArn,
		["createdAt"] = createdAt,
		["repositoryUri"] = repositoryUri,
	}
	M.AssertRepository(t)
	return t
end

local RepositoryPolicyNotFoundException_keys = { "message" = true, nil }

function M.AssertRepositoryPolicyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryPolicyNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(RepositoryPolicyNotFoundException_keys[k], "RepositoryPolicyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryPolicyNotFoundException
-- <p>The specified repository and registry combination does not have an associated repository policy.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.RepositoryPolicyNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryPolicyNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertRepositoryPolicyNotFoundException(t)
	return t
end

local GetRepositoryPolicyRequest_keys = { "repositoryName" = true, "registryId" = true, nil }

function M.AssertGetRepositoryPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryPolicyRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(GetRepositoryPolicyRequest_keys[k], "GetRepositoryPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryPolicyRequest
--  
-- @param repositoryName [RepositoryName] <p>The name of the repository whose policy you want to retrieve.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
function M.GetRepositoryPolicyRequest(repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRepositoryPolicyRequest")
	local t = { 
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertGetRepositoryPolicyRequest(t)
	return t
end

local ImageAlreadyExistsException_keys = { "message" = true, nil }

function M.AssertImageAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageAlreadyExistsException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ImageAlreadyExistsException_keys[k], "ImageAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageAlreadyExistsException
-- <p>The specified image has already been pushed, and there are no changes to the manifest or image tag since the last push.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.ImageAlreadyExistsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageAlreadyExistsException")
	local t = { 
		["message"] = message,
	}
	M.AssertImageAlreadyExistsException(t)
	return t
end

local ImageNotFoundException_keys = { "message" = true, nil }

function M.AssertImageNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ImageNotFoundException_keys[k], "ImageNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageNotFoundException
-- <p>The image requested does not exist in the specified repository.</p>
-- @param message [ExceptionMessage] <p>The image requested does not exist in the specified repository.</p>
function M.ImageNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertImageNotFoundException(t)
	return t
end

local ListImagesResponse_keys = { "nextToken" = true, "imageIds" = true, nil }

function M.AssertListImagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListImagesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["imageIds"] then M.AssertImageIdentifierList(struct["imageIds"]) end
	for k,_ in pairs(struct) do
		assert(ListImagesResponse_keys[k], "ListImagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListImagesResponse
--  
-- @param nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>ListImages</code> request. When the results of a <code>ListImages</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param imageIds [ImageIdentifierList] <p>The list of image IDs for the requested repository.</p>
function M.ListImagesResponse(nextToken, imageIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListImagesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["imageIds"] = imageIds,
	}
	M.AssertListImagesResponse(t)
	return t
end

local LayerFailure_keys = { "layerDigest" = true, "failureCode" = true, "failureReason" = true, nil }

function M.AssertLayerFailure(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LayerFailure to be of type 'table'")
	if struct["layerDigest"] then M.AssertBatchedOperationLayerDigest(struct["layerDigest"]) end
	if struct["failureCode"] then M.AssertLayerFailureCode(struct["failureCode"]) end
	if struct["failureReason"] then M.AssertLayerFailureReason(struct["failureReason"]) end
	for k,_ in pairs(struct) do
		assert(LayerFailure_keys[k], "LayerFailure contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LayerFailure
-- <p>An object representing an Amazon ECR image layer failure.</p>
-- @param layerDigest [BatchedOperationLayerDigest] <p>The layer digest associated with the failure.</p>
-- @param failureCode [LayerFailureCode] <p>The failure code associated with the failure.</p>
-- @param failureReason [LayerFailureReason] <p>The reason for the failure.</p>
function M.LayerFailure(layerDigest, failureCode, failureReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LayerFailure")
	local t = { 
		["layerDigest"] = layerDigest,
		["failureCode"] = failureCode,
		["failureReason"] = failureReason,
	}
	M.AssertLayerFailure(t)
	return t
end

local UploadNotFoundException_keys = { "message" = true, nil }

function M.AssertUploadNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UploadNotFoundException_keys[k], "UploadNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadNotFoundException
-- <p>The upload could not be found, or the specified upload id is not valid for this repository.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.UploadNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertUploadNotFoundException(t)
	return t
end

local InvalidParameterException_keys = { "message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>The specified parameter is invalid. Review the available parameters for the API request.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.InvalidParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local CreateRepositoryRequest_keys = { "repositoryName" = true, nil }

function M.AssertCreateRepositoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRepositoryRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(CreateRepositoryRequest_keys[k], "CreateRepositoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRepositoryRequest
--  
-- @param repositoryName [RepositoryName] <p>The name to use for the repository. The repository name may be specified on its own (such as <code>nginx-web-app</code>) or it can be prepended with a namespace to group the repository into a category (such as <code>project-a/nginx-web-app</code>).</p>
-- Required parameter: repositoryName
function M.CreateRepositoryRequest(repositoryName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRepositoryRequest")
	local t = { 
		["repositoryName"] = repositoryName,
	}
	M.AssertCreateRepositoryRequest(t)
	return t
end

local DescribeImagesRequest_keys = { "repositoryName" = true, "maxResults" = true, "filter" = true, "imageIds" = true, "registryId" = true, "nextToken" = true, nil }

function M.AssertDescribeImagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	if struct["filter"] then M.AssertDescribeImagesFilter(struct["filter"]) end
	if struct["imageIds"] then M.AssertImageIdentifierList(struct["imageIds"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeImagesRequest_keys[k], "DescribeImagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesRequest
--  
-- @param repositoryName [RepositoryName] <p>A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.</p>
-- @param maxResults [MaxResults] <p>The maximum number of repository results returned by <code>DescribeImages</code> in paginated output. When this parameter is used, <code>DescribeImages</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeImages</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeImages</code> returns up to 100 results and a <code>nextToken</code> value, if applicable.</p>
-- @param filter [DescribeImagesFilter] <p>The filter key and value with which to filter your <code>DescribeImages</code> results.</p>
-- @param imageIds [ImageIdentifierList] <p>The list of image IDs for the requested repository.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository in which to describe images. If you do not specify a registry, the default registry is assumed.</p>
-- @param nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeImages</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p>
-- Required parameter: repositoryName
function M.DescribeImagesRequest(repositoryName, maxResults, filter, imageIds, registryId, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeImagesRequest")
	local t = { 
		["repositoryName"] = repositoryName,
		["maxResults"] = maxResults,
		["filter"] = filter,
		["imageIds"] = imageIds,
		["registryId"] = registryId,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeImagesRequest(t)
	return t
end

local DeleteRepositoryPolicyRequest_keys = { "repositoryName" = true, "registryId" = true, nil }

function M.AssertDeleteRepositoryPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryPolicyRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRepositoryPolicyRequest_keys[k], "DeleteRepositoryPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryPolicyRequest
--  
-- @param repositoryName [RepositoryName] <p>The name of the repository that is associated with the repository policy to delete.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository policy to delete. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
function M.DeleteRepositoryPolicyRequest(repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRepositoryPolicyRequest")
	local t = { 
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertDeleteRepositoryPolicyRequest(t)
	return t
end

local ServerException_keys = { "message" = true, nil }

function M.AssertServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServerException_keys[k], "ServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerException
-- <p>These errors are usually caused by a server-side issue.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.ServerException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerException")
	local t = { 
		["message"] = message,
	}
	M.AssertServerException(t)
	return t
end

local CreateRepositoryResponse_keys = { "repository" = true, nil }

function M.AssertCreateRepositoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRepositoryResponse to be of type 'table'")
	if struct["repository"] then M.AssertRepository(struct["repository"]) end
	for k,_ in pairs(struct) do
		assert(CreateRepositoryResponse_keys[k], "CreateRepositoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRepositoryResponse
--  
-- @param repository [Repository] <p>The repository that was created.</p>
function M.CreateRepositoryResponse(repository, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRepositoryResponse")
	local t = { 
		["repository"] = repository,
	}
	M.AssertCreateRepositoryResponse(t)
	return t
end

local LayerPartTooSmallException_keys = { "message" = true, nil }

function M.AssertLayerPartTooSmallException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LayerPartTooSmallException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LayerPartTooSmallException_keys[k], "LayerPartTooSmallException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LayerPartTooSmallException
-- <p>Layer parts must be at least 5 MiB in size.</p>
-- @param message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.LayerPartTooSmallException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LayerPartTooSmallException")
	local t = { 
		["message"] = message,
	}
	M.AssertLayerPartTooSmallException(t)
	return t
end

local SetRepositoryPolicyResponse_keys = { "policyText" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertSetRepositoryPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetRepositoryPolicyResponse to be of type 'table'")
	if struct["policyText"] then M.AssertRepositoryPolicyText(struct["policyText"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(SetRepositoryPolicyResponse_keys[k], "SetRepositoryPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetRepositoryPolicyResponse
--  
-- @param policyText [RepositoryPolicyText] <p>The JSON repository policy text applied to the repository.</p>
-- @param repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @param registryId [RegistryId] <p>The registry ID associated with the request.</p>
function M.SetRepositoryPolicyResponse(policyText, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetRepositoryPolicyResponse")
	local t = { 
		["policyText"] = policyText,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertSetRepositoryPolicyResponse(t)
	return t
end

local BatchGetImageRequest_keys = { "repositoryName" = true, "registryId" = true, "acceptedMediaTypes" = true, "imageIds" = true, nil }

function M.AssertBatchGetImageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetImageRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["imageIds"], "Expected key imageIds to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	if struct["acceptedMediaTypes"] then M.AssertMediaTypeList(struct["acceptedMediaTypes"]) end
	if struct["imageIds"] then M.AssertImageIdentifierList(struct["imageIds"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetImageRequest_keys[k], "BatchGetImageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetImageRequest
--  
-- @param repositoryName [RepositoryName] <p>The repository that contains the images to describe.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.</p>
-- @param acceptedMediaTypes [MediaTypeList] <p>The accepted media types for the request.</p> <p>Valid values: <code>application/vnd.docker.distribution.manifest.v1+json</code> | <code>application/vnd.docker.distribution.manifest.v2+json</code> | <code>application/vnd.oci.image.manifest.v1+json</code> </p>
-- @param imageIds [ImageIdentifierList] <p>A list of image ID references that correspond to images to describe. The format of the <code>imageIds</code> reference is <code>imageTag=tag</code> or <code>imageDigest=digest</code>.</p>
-- Required parameter: repositoryName
-- Required parameter: imageIds
function M.BatchGetImageRequest(repositoryName, registryId, acceptedMediaTypes, imageIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetImageRequest")
	local t = { 
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
		["acceptedMediaTypes"] = acceptedMediaTypes,
		["imageIds"] = imageIds,
	}
	M.AssertBatchGetImageRequest(t)
	return t
end

local DeleteRepositoryRequest_keys = { "force" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertDeleteRepositoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["force"] then M.AssertForceFlag(struct["force"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRepositoryRequest_keys[k], "DeleteRepositoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryRequest
--  
-- @param force [ForceFlag] <p>Force the deletion of the repository if it contains images.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository to delete.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository to delete. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
function M.DeleteRepositoryRequest(force, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRepositoryRequest")
	local t = { 
		["force"] = force,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertDeleteRepositoryRequest(t)
	return t
end

local DeleteRepositoryPolicyResponse_keys = { "policyText" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertDeleteRepositoryPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryPolicyResponse to be of type 'table'")
	if struct["policyText"] then M.AssertRepositoryPolicyText(struct["policyText"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRepositoryPolicyResponse_keys[k], "DeleteRepositoryPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryPolicyResponse
--  
-- @param policyText [RepositoryPolicyText] <p>The JSON repository policy that was deleted from the repository.</p>
-- @param repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @param registryId [RegistryId] <p>The registry ID associated with the request.</p>
function M.DeleteRepositoryPolicyResponse(policyText, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRepositoryPolicyResponse")
	local t = { 
		["policyText"] = policyText,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertDeleteRepositoryPolicyResponse(t)
	return t
end

local PutImageResponse_keys = { "image" = true, nil }

function M.AssertPutImageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutImageResponse to be of type 'table'")
	if struct["image"] then M.AssertImage(struct["image"]) end
	for k,_ in pairs(struct) do
		assert(PutImageResponse_keys[k], "PutImageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutImageResponse
--  
-- @param image [Image] <p>Details of the image uploaded.</p>
function M.PutImageResponse(image, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutImageResponse")
	local t = { 
		["image"] = image,
	}
	M.AssertPutImageResponse(t)
	return t
end

local InitiateLayerUploadRequest_keys = { "repositoryName" = true, "registryId" = true, nil }

function M.AssertInitiateLayerUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateLayerUploadRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(InitiateLayerUploadRequest_keys[k], "InitiateLayerUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateLayerUploadRequest
--  
-- @param repositoryName [RepositoryName] <p>The name of the repository that you intend to upload layers to.</p>
-- @param registryId [RegistryId] <p>The AWS account ID associated with the registry that you intend to upload layers to. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
function M.InitiateLayerUploadRequest(repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateLayerUploadRequest")
	local t = { 
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertInitiateLayerUploadRequest(t)
	return t
end

local UploadLayerPartResponse_keys = { "uploadId" = true, "lastByteReceived" = true, "repositoryName" = true, "registryId" = true, nil }

function M.AssertUploadLayerPartResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadLayerPartResponse to be of type 'table'")
	if struct["uploadId"] then M.AssertUploadId(struct["uploadId"]) end
	if struct["lastByteReceived"] then M.AssertPartSize(struct["lastByteReceived"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then M.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(UploadLayerPartResponse_keys[k], "UploadLayerPartResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadLayerPartResponse
--  
-- @param uploadId [UploadId] <p>The upload ID associated with the request.</p>
-- @param lastByteReceived [PartSize] <p>The integer value of the last byte received in the request.</p>
-- @param repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @param registryId [RegistryId] <p>The registry ID associated with the request.</p>
function M.UploadLayerPartResponse(uploadId, lastByteReceived, repositoryName, registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadLayerPartResponse")
	local t = { 
		["uploadId"] = uploadId,
		["lastByteReceived"] = lastByteReceived,
		["repositoryName"] = repositoryName,
		["registryId"] = registryId,
	}
	M.AssertUploadLayerPartResponse(t)
	return t
end

function M.AssertMediaType(str)
	assert(str)
	assert(type(str) == "string", "Expected MediaType to be of type 'string'")
	assert(str:match("%w{1,127}%/[-+.%w]{1,127}"), "Expected string to match pattern '%w{1,127}%/[-+.%w]{1,127}'")
end

--  
function M.MediaType(str)
	M.AssertMediaType(str)
	return str
end

function M.AssertLayerAvailability(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerAvailability to be of type 'string'")
end

--  
function M.LayerAvailability(str)
	M.AssertLayerAvailability(str)
	return str
end

function M.AssertImageTag(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageTag to be of type 'string'")
end

--  
function M.ImageTag(str)
	M.AssertImageTag(str)
	return str
end

function M.AssertTagStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TagStatus to be of type 'string'")
end

--  
function M.TagStatus(str)
	M.AssertTagStatus(str)
	return str
end

function M.AssertRepositoryPolicyText(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryPolicyText to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

--  
function M.RepositoryPolicyText(str)
	M.AssertRepositoryPolicyText(str)
	return str
end

function M.AssertUploadId(str)
	assert(str)
	assert(type(str) == "string", "Expected UploadId to be of type 'string'")
	assert(str:match("[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), "Expected string to match pattern '[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}'")
end

--  
function M.UploadId(str)
	M.AssertUploadId(str)
	return str
end

function M.AssertLayerFailureCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerFailureCode to be of type 'string'")
end

--  
function M.LayerFailureCode(str)
	M.AssertLayerFailureCode(str)
	return str
end

function M.AssertProxyEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected ProxyEndpoint to be of type 'string'")
end

--  
function M.ProxyEndpoint(str)
	M.AssertProxyEndpoint(str)
	return str
end

function M.AssertLayerFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerFailureReason to be of type 'string'")
end

--  
function M.LayerFailureReason(str)
	M.AssertLayerFailureReason(str)
	return str
end

function M.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
end

--  
function M.Arn(str)
	M.AssertArn(str)
	return str
end

function M.AssertBatchedOperationLayerDigest(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchedOperationLayerDigest to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.BatchedOperationLayerDigest(str)
	M.AssertBatchedOperationLayerDigest(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertImageManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageManifest to be of type 'string'")
end

--  
function M.ImageManifest(str)
	M.AssertImageManifest(str)
	return str
end

function M.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
end

--  
function M.Url(str)
	M.AssertUrl(str)
	return str
end

function M.AssertImageDigest(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageDigest to be of type 'string'")
end

--  
function M.ImageDigest(str)
	M.AssertImageDigest(str)
	return str
end

function M.AssertRegistryId(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistryId to be of type 'string'")
	assert(str:match("[0-9]{12}"), "Expected string to match pattern '[0-9]{12}'")
end

--  
function M.RegistryId(str)
	M.AssertRegistryId(str)
	return str
end

function M.AssertRepositoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*"), "Expected string to match pattern '(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*'")
end

--  
function M.RepositoryName(str)
	M.AssertRepositoryName(str)
	return str
end

function M.AssertImageFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageFailureReason to be of type 'string'")
end

--  
function M.ImageFailureReason(str)
	M.AssertImageFailureReason(str)
	return str
end

function M.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	M.AssertExceptionMessage(str)
	return str
end

function M.AssertBase64(str)
	assert(str)
	assert(type(str) == "string", "Expected Base64 to be of type 'string'")
	assert(str:match("^%S+$"), "Expected string to match pattern '^%S+$'")
end

--  
function M.Base64(str)
	M.AssertBase64(str)
	return str
end

function M.AssertImageFailureCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageFailureCode to be of type 'string'")
end

--  
function M.ImageFailureCode(str)
	M.AssertImageFailureCode(str)
	return str
end

function M.AssertLayerDigest(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerDigest to be of type 'string'")
	assert(str:match("[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+"), "Expected string to match pattern '[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+'")
end

--  
function M.LayerDigest(str)
	M.AssertLayerDigest(str)
	return str
end

function M.AssertImageSizeInBytes(long)
	assert(long)
	assert(type(long) == "number", "Expected ImageSizeInBytes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ImageSizeInBytes(long)
	M.AssertImageSizeInBytes(long)
	return long
end

function M.AssertPartSize(long)
	assert(long)
	assert(type(long) == "number", "Expected PartSize to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PartSize(long)
	M.AssertPartSize(long)
	return long
end

function M.AssertLayerSizeInBytes(long)
	assert(long)
	assert(type(long) == "number", "Expected LayerSizeInBytes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LayerSizeInBytes(long)
	M.AssertLayerSizeInBytes(long)
	return long
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertForceFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ForceFlag to be of type 'boolean'")
end

function M.ForceFlag(boolean)
	M.AssertForceFlag(boolean)
	return boolean
end

function M.AssertPushTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected PushTimestamp to be of type 'string'")
end

function M.PushTimestamp(timestamp)
	M.AssertPushTimestamp(timestamp)
	return timestamp
end

function M.AssertCreationTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationTimestamp to be of type 'string'")
end

function M.CreationTimestamp(timestamp)
	M.AssertCreationTimestamp(timestamp)
	return timestamp
end

function M.AssertExpirationTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ExpirationTimestamp to be of type 'string'")
end

function M.ExpirationTimestamp(timestamp)
	M.AssertExpirationTimestamp(timestamp)
	return timestamp
end

function M.AssertLayerPartBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected LayerPartBlob to be of type 'string'")
end

function M.LayerPartBlob(blob)
	M.AssertLayerPartBlob(blob)
	return blob
end

function M.AssertImageDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageDetailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertImageDetail(v)
	end
end

--  
-- List of ImageDetail objects
function M.ImageDetailList(list)
	M.AssertImageDetailList(list)
	return list
end

function M.AssertLayerDigestList(list)
	assert(list)
	assert(type(list) == "table", "Expected LayerDigestList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertLayerDigest(v)
	end
end

--  
-- List of LayerDigest objects
function M.LayerDigestList(list)
	M.AssertLayerDigestList(list)
	return list
end

function M.AssertImageIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageIdentifierList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertImageIdentifier(v)
	end
end

--  
-- List of ImageIdentifier objects
function M.ImageIdentifierList(list)
	M.AssertImageIdentifierList(list)
	return list
end

function M.AssertMediaTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected MediaTypeList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertMediaType(v)
	end
end

--  
-- List of MediaType objects
function M.MediaTypeList(list)
	M.AssertMediaTypeList(list)
	return list
end

function M.AssertLayerList(list)
	assert(list)
	assert(type(list) == "table", "Expected LayerList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLayer(v)
	end
end

--  
-- List of Layer objects
function M.LayerList(list)
	M.AssertLayerList(list)
	return list
end

function M.AssertRepositoryNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryNameList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertRepositoryName(v)
	end
end

--  
-- List of RepositoryName objects
function M.RepositoryNameList(list)
	M.AssertRepositoryNameList(list)
	return list
end

function M.AssertImageFailureList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageFailureList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertImageFailure(v)
	end
end

--  
-- List of ImageFailure objects
function M.ImageFailureList(list)
	M.AssertImageFailureList(list)
	return list
end

function M.AssertLayerFailureList(list)
	assert(list)
	assert(type(list) == "table", "Expected LayerFailureList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLayerFailure(v)
	end
end

--  
-- List of LayerFailure objects
function M.LayerFailureList(list)
	M.AssertLayerFailureList(list)
	return list
end

function M.AssertAuthorizationDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected AuthorizationDataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAuthorizationData(v)
	end
end

--  
-- List of AuthorizationData objects
function M.AuthorizationDataList(list)
	M.AssertAuthorizationDataList(list)
	return list
end

function M.AssertImageList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertImage(v)
	end
end

--  
-- List of Image objects
function M.ImageList(list)
	M.AssertImageList(list)
	return list
end

function M.AssertRepositoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRepository(v)
	end
end

--  
-- List of Repository objects
function M.RepositoryList(list)
	M.AssertRepositoryList(list)
	return list
end

function M.AssertImageTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageTagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertImageTag(v)
	end
end

--  
-- List of ImageTag objects
function M.ImageTagList(list)
	M.AssertImageTagList(list)
	return list
end

function M.AssertBatchedOperationLayerDigestList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchedOperationLayerDigestList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertBatchedOperationLayerDigest(v)
	end
end

--  
-- List of BatchedOperationLayerDigest objects
function M.BatchedOperationLayerDigestList(list)
	M.AssertBatchedOperationLayerDigestList(list)
	return list
end

function M.AssertGetAuthorizationTokenRegistryIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected GetAuthorizationTokenRegistryIdList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertRegistryId(v)
	end
end

--  
-- List of RegistryId objects
function M.GetAuthorizationTokenRegistryIdList(list)
	M.AssertGetAuthorizationTokenRegistryIdList(list)
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
			return "ecr.amazonaws.com"
		end
	end
	local ss = { "ecr" }
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
--- DescribeRepositories
-- @param DescribeRepositoriesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRepositoriesAsync(DescribeRepositoriesRequest, cb)
	assert(DescribeRepositoriesRequest, "You must provide a DescribeRepositoriesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.DescribeRepositories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeRepositoriesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRepository
-- @param DeleteRepositoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRepositoryAsync(DeleteRepositoryRequest, cb)
	assert(DeleteRepositoryRequest, "You must provide a DeleteRepositoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.DeleteRepository",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRepositoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchDeleteImage
-- @param BatchDeleteImageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BatchDeleteImageAsync(BatchDeleteImageRequest, cb)
	assert(BatchDeleteImageRequest, "You must provide a BatchDeleteImageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.BatchDeleteImage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchDeleteImageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDownloadUrlForLayer
-- @param GetDownloadUrlForLayerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDownloadUrlForLayerAsync(GetDownloadUrlForLayerRequest, cb)
	assert(GetDownloadUrlForLayerRequest, "You must provide a GetDownloadUrlForLayerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.GetDownloadUrlForLayer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDownloadUrlForLayerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutImage
-- @param PutImageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutImageAsync(PutImageRequest, cb)
	assert(PutImageRequest, "You must provide a PutImageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.PutImage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutImageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAuthorizationToken
-- @param GetAuthorizationTokenRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAuthorizationTokenAsync(GetAuthorizationTokenRequest, cb)
	assert(GetAuthorizationTokenRequest, "You must provide a GetAuthorizationTokenRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.GetAuthorizationToken",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetAuthorizationTokenRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListImages
-- @param ListImagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListImagesAsync(ListImagesRequest, cb)
	assert(ListImagesRequest, "You must provide a ListImagesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.ListImages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListImagesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRepositoryPolicy
-- @param GetRepositoryPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRepositoryPolicyAsync(GetRepositoryPolicyRequest, cb)
	assert(GetRepositoryPolicyRequest, "You must provide a GetRepositoryPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.GetRepositoryPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRepositoryPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CompleteLayerUpload
-- @param CompleteLayerUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CompleteLayerUploadAsync(CompleteLayerUploadRequest, cb)
	assert(CompleteLayerUploadRequest, "You must provide a CompleteLayerUploadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.CompleteLayerUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CompleteLayerUploadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeImages
-- @param DescribeImagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeImagesAsync(DescribeImagesRequest, cb)
	assert(DescribeImagesRequest, "You must provide a DescribeImagesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.DescribeImages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeImagesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- InitiateLayerUpload
-- @param InitiateLayerUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.InitiateLayerUploadAsync(InitiateLayerUploadRequest, cb)
	assert(InitiateLayerUploadRequest, "You must provide a InitiateLayerUploadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.InitiateLayerUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", InitiateLayerUploadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetImage
-- @param BatchGetImageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetImageAsync(BatchGetImageRequest, cb)
	assert(BatchGetImageRequest, "You must provide a BatchGetImageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.BatchGetImage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetImageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetRepositoryPolicy
-- @param SetRepositoryPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetRepositoryPolicyAsync(SetRepositoryPolicyRequest, cb)
	assert(SetRepositoryPolicyRequest, "You must provide a SetRepositoryPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.SetRepositoryPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetRepositoryPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateRepository
-- @param CreateRepositoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRepositoryAsync(CreateRepositoryRequest, cb)
	assert(CreateRepositoryRequest, "You must provide a CreateRepositoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.CreateRepository",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateRepositoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchCheckLayerAvailability
-- @param BatchCheckLayerAvailabilityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BatchCheckLayerAvailabilityAsync(BatchCheckLayerAvailabilityRequest, cb)
	assert(BatchCheckLayerAvailabilityRequest, "You must provide a BatchCheckLayerAvailabilityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.BatchCheckLayerAvailability",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchCheckLayerAvailabilityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UploadLayerPart
-- @param UploadLayerPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UploadLayerPartAsync(UploadLayerPartRequest, cb)
	assert(UploadLayerPartRequest, "You must provide a UploadLayerPartRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.UploadLayerPart",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UploadLayerPartRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRepositoryPolicy
-- @param DeleteRepositoryPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRepositoryPolicyAsync(DeleteRepositoryPolicyRequest, cb)
	assert(DeleteRepositoryPolicyRequest, "You must provide a DeleteRepositoryPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.DeleteRepositoryPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRepositoryPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
