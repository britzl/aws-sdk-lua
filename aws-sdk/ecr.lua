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

local keys = {}
local asserts = {}

keys.BatchDeleteImageRequest = { ["repositoryName"] = true, ["registryId"] = true, ["imageIds"] = true, nil }

function asserts.AssertBatchDeleteImageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteImageRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["imageIds"], "Expected key imageIds to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["imageIds"] then asserts.AssertImageIdentifierList(struct["imageIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteImageRequest[k], "BatchDeleteImageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteImageRequest
-- <p>Deletes specified images within a specified repository. Images are specified with either the <code>imageTag</code> or <code>imageDigest</code>.</p>
-- @param _repositoryName [RepositoryName] <p>The repository that contains the image to delete.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the image to delete. If you do not specify a registry, the default registry is assumed.</p>
-- @param _imageIds [ImageIdentifierList] <p>A list of image ID references that correspond to images to delete. The format of the <code>imageIds</code> reference is <code>imageTag=tag</code> or <code>imageDigest=digest</code>.</p>
-- Required parameter: repositoryName
-- Required parameter: imageIds
function M.BatchDeleteImageRequest(_repositoryName, _registryId, _imageIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDeleteImageRequest")
	local t = { 
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
		["imageIds"] = _imageIds,
	}
	asserts.AssertBatchDeleteImageRequest(t)
	return t
end

keys.RepositoryNotEmptyException = { ["message"] = true, nil }

function asserts.AssertRepositoryNotEmptyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNotEmptyException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RepositoryNotEmptyException[k], "RepositoryNotEmptyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNotEmptyException
-- <p>The specified repository contains images. To delete a repository that contains images, you must force the deletion with the <code>force</code> parameter.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.RepositoryNotEmptyException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryNotEmptyException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertRepositoryNotEmptyException(t)
	return t
end

keys.PutImageRequest = { ["imageManifest"] = true, ["repositoryName"] = true, ["registryId"] = true, ["imageTag"] = true, nil }

function asserts.AssertPutImageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutImageRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["imageManifest"], "Expected key imageManifest to exist in table")
	if struct["imageManifest"] then asserts.AssertImageManifest(struct["imageManifest"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["imageTag"] then asserts.AssertImageTag(struct["imageTag"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutImageRequest[k], "PutImageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutImageRequest
--  
-- @param _imageManifest [ImageManifest] <p>The image manifest corresponding to the image to be uploaded.</p>
-- @param _repositoryName [RepositoryName] <p>The name of the repository in which to put the image.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository in which to put the image. If you do not specify a registry, the default registry is assumed.</p>
-- @param _imageTag [ImageTag] <p>The tag to associate with the image. This parameter is required for images that use the Docker Image Manifest V2 Schema 2 or OCI formats.</p>
-- Required parameter: repositoryName
-- Required parameter: imageManifest
function M.PutImageRequest(_imageManifest, _repositoryName, _registryId, _imageTag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutImageRequest")
	local t = { 
		["imageManifest"] = _imageManifest,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
		["imageTag"] = _imageTag,
	}
	asserts.AssertPutImageRequest(t)
	return t
end

keys.ListImagesRequest = { ["nextToken"] = true, ["filter"] = true, ["repositoryName"] = true, ["registryId"] = true, ["maxResults"] = true, nil }

function asserts.AssertListImagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListImagesRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["filter"] then asserts.AssertListImagesFilter(struct["filter"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListImagesRequest[k], "ListImagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListImagesRequest
--  
-- @param _nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListImages</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param _filter [ListImagesFilter] <p>The filter key and value with which to filter your <code>ListImages</code> results.</p>
-- @param _repositoryName [RepositoryName] <p>The repository whose image IDs are to be listed.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository to list images in. If you do not specify a registry, the default registry is assumed.</p>
-- @param _maxResults [MaxResults] <p>The maximum number of image results returned by <code>ListImages</code> in paginated output. When this parameter is used, <code>ListImages</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListImages</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListImages</code> returns up to 100 results and a <code>nextToken</code> value, if applicable.</p>
-- Required parameter: repositoryName
function M.ListImagesRequest(_nextToken, _filter, _repositoryName, _registryId, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListImagesRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["filter"] = _filter,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListImagesRequest(t)
	return t
end

keys.LayerAlreadyExistsException = { ["message"] = true, nil }

function asserts.AssertLayerAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LayerAlreadyExistsException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LayerAlreadyExistsException[k], "LayerAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LayerAlreadyExistsException
-- <p>The image layer already exists in the associated repository.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.LayerAlreadyExistsException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LayerAlreadyExistsException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLayerAlreadyExistsException(t)
	return t
end

keys.InvalidLayerPartException = { ["lastValidByteReceived"] = true, ["uploadId"] = true, ["message"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertInvalidLayerPartException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLayerPartException to be of type 'table'")
	if struct["lastValidByteReceived"] then asserts.AssertPartSize(struct["lastValidByteReceived"]) end
	if struct["uploadId"] then asserts.AssertUploadId(struct["uploadId"]) end
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidLayerPartException[k], "InvalidLayerPartException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLayerPartException
-- <p>The layer part size is not valid, or the first byte specified is not consecutive to the last byte of a previous layer part upload.</p>
-- @param _lastValidByteReceived [PartSize] <p>The last valid byte received from the layer part upload that is associated with the exception.</p>
-- @param _uploadId [UploadId] <p>The upload ID associated with the exception.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @param _repositoryName [RepositoryName] <p>The repository name associated with the exception.</p>
-- @param _registryId [RegistryId] <p>The registry ID associated with the exception.</p>
function M.InvalidLayerPartException(_lastValidByteReceived, _uploadId, _message, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLayerPartException")
	local t = { 
		["lastValidByteReceived"] = _lastValidByteReceived,
		["uploadId"] = _uploadId,
		["message"] = _message,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertInvalidLayerPartException(t)
	return t
end

keys.BatchGetImageResponse = { ["images"] = true, ["failures"] = true, nil }

function asserts.AssertBatchGetImageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetImageResponse to be of type 'table'")
	if struct["images"] then asserts.AssertImageList(struct["images"]) end
	if struct["failures"] then asserts.AssertImageFailureList(struct["failures"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetImageResponse[k], "BatchGetImageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetImageResponse
--  
-- @param _images [ImageList] <p>A list of image objects corresponding to the image references in the request.</p>
-- @param _failures [ImageFailureList] <p>Any failures associated with the call.</p>
function M.BatchGetImageResponse(_images, _failures, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetImageResponse")
	local t = { 
		["images"] = _images,
		["failures"] = _failures,
	}
	asserts.AssertBatchGetImageResponse(t)
	return t
end

keys.DescribeRepositoriesResponse = { ["nextToken"] = true, ["repositories"] = true, nil }

function asserts.AssertDescribeRepositoriesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRepositoriesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["repositories"] then asserts.AssertRepositoryList(struct["repositories"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRepositoriesResponse[k], "DescribeRepositoriesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRepositoriesResponse
--  
-- @param _nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>DescribeRepositories</code> request. When the results of a <code>DescribeRepositories</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param _repositories [RepositoryList] <p>A list of repository objects corresponding to valid repositories.</p>
function M.DescribeRepositoriesResponse(_nextToken, _repositories, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRepositoriesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["repositories"] = _repositories,
	}
	asserts.AssertDescribeRepositoriesResponse(t)
	return t
end

keys.LayerInaccessibleException = { ["message"] = true, nil }

function asserts.AssertLayerInaccessibleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LayerInaccessibleException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LayerInaccessibleException[k], "LayerInaccessibleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LayerInaccessibleException
-- <p>The specified layer is not available because it is not associated with an image. Unassociated image layers may be cleaned up at any time.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.LayerInaccessibleException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LayerInaccessibleException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLayerInaccessibleException(t)
	return t
end

keys.Layer = { ["layerAvailability"] = true, ["layerDigest"] = true, ["layerSize"] = true, ["mediaType"] = true, nil }

function asserts.AssertLayer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Layer to be of type 'table'")
	if struct["layerAvailability"] then asserts.AssertLayerAvailability(struct["layerAvailability"]) end
	if struct["layerDigest"] then asserts.AssertLayerDigest(struct["layerDigest"]) end
	if struct["layerSize"] then asserts.AssertLayerSizeInBytes(struct["layerSize"]) end
	if struct["mediaType"] then asserts.AssertMediaType(struct["mediaType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Layer[k], "Layer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Layer
-- <p>An object representing an Amazon ECR image layer.</p>
-- @param _layerAvailability [LayerAvailability] <p>The availability status of the image layer.</p>
-- @param _layerDigest [LayerDigest] <p>The <code>sha256</code> digest of the image layer.</p>
-- @param _layerSize [LayerSizeInBytes] <p>The size, in bytes, of the image layer.</p>
-- @param _mediaType [MediaType] <p>The media type of the layer, such as <code>application/vnd.docker.image.rootfs.diff.tar.gzip</code> or <code>application/vnd.oci.image.layer.v1.tar+gzip</code>.</p>
function M.Layer(_layerAvailability, _layerDigest, _layerSize, _mediaType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Layer")
	local t = { 
		["layerAvailability"] = _layerAvailability,
		["layerDigest"] = _layerDigest,
		["layerSize"] = _layerSize,
		["mediaType"] = _mediaType,
	}
	asserts.AssertLayer(t)
	return t
end

keys.GetDownloadUrlForLayerRequest = { ["layerDigest"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertGetDownloadUrlForLayerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDownloadUrlForLayerRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["layerDigest"], "Expected key layerDigest to exist in table")
	if struct["layerDigest"] then asserts.AssertLayerDigest(struct["layerDigest"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDownloadUrlForLayerRequest[k], "GetDownloadUrlForLayerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDownloadUrlForLayerRequest
--  
-- @param _layerDigest [LayerDigest] <p>The digest of the image layer to download.</p>
-- @param _repositoryName [RepositoryName] <p>The name of the repository that is associated with the image layer to download.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the image layer to download. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
-- Required parameter: layerDigest
function M.GetDownloadUrlForLayerRequest(_layerDigest, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDownloadUrlForLayerRequest")
	local t = { 
		["layerDigest"] = _layerDigest,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertGetDownloadUrlForLayerRequest(t)
	return t
end

keys.DeleteRepositoryResponse = { ["repository"] = true, nil }

function asserts.AssertDeleteRepositoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryResponse to be of type 'table'")
	if struct["repository"] then asserts.AssertRepository(struct["repository"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRepositoryResponse[k], "DeleteRepositoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryResponse
--  
-- @param _repository [Repository] <p>The repository that was deleted.</p>
function M.DeleteRepositoryResponse(_repository, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRepositoryResponse")
	local t = { 
		["repository"] = _repository,
	}
	asserts.AssertDeleteRepositoryResponse(t)
	return t
end

keys.BatchCheckLayerAvailabilityResponse = { ["layers"] = true, ["failures"] = true, nil }

function asserts.AssertBatchCheckLayerAvailabilityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCheckLayerAvailabilityResponse to be of type 'table'")
	if struct["layers"] then asserts.AssertLayerList(struct["layers"]) end
	if struct["failures"] then asserts.AssertLayerFailureList(struct["failures"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchCheckLayerAvailabilityResponse[k], "BatchCheckLayerAvailabilityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCheckLayerAvailabilityResponse
--  
-- @param _layers [LayerList] <p>A list of image layer objects corresponding to the image layer references in the request.</p>
-- @param _failures [LayerFailureList] <p>Any failures associated with the call.</p>
function M.BatchCheckLayerAvailabilityResponse(_layers, _failures, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchCheckLayerAvailabilityResponse")
	local t = { 
		["layers"] = _layers,
		["failures"] = _failures,
	}
	asserts.AssertBatchCheckLayerAvailabilityResponse(t)
	return t
end

keys.GetDownloadUrlForLayerResponse = { ["downloadUrl"] = true, ["layerDigest"] = true, nil }

function asserts.AssertGetDownloadUrlForLayerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDownloadUrlForLayerResponse to be of type 'table'")
	if struct["downloadUrl"] then asserts.AssertUrl(struct["downloadUrl"]) end
	if struct["layerDigest"] then asserts.AssertLayerDigest(struct["layerDigest"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDownloadUrlForLayerResponse[k], "GetDownloadUrlForLayerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDownloadUrlForLayerResponse
--  
-- @param _downloadUrl [Url] <p>The pre-signed Amazon S3 download URL for the requested layer.</p>
-- @param _layerDigest [LayerDigest] <p>The digest of the image layer to download.</p>
function M.GetDownloadUrlForLayerResponse(_downloadUrl, _layerDigest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDownloadUrlForLayerResponse")
	local t = { 
		["downloadUrl"] = _downloadUrl,
		["layerDigest"] = _layerDigest,
	}
	asserts.AssertGetDownloadUrlForLayerResponse(t)
	return t
end

keys.DescribeImagesResponse = { ["nextToken"] = true, ["imageDetails"] = true, nil }

function asserts.AssertDescribeImagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["imageDetails"] then asserts.AssertImageDetailList(struct["imageDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImagesResponse[k], "DescribeImagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesResponse
--  
-- @param _nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>DescribeImages</code> request. When the results of a <code>DescribeImages</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param _imageDetails [ImageDetailList] <p>A list of <a>ImageDetail</a> objects that contain data about the image.</p>
function M.DescribeImagesResponse(_nextToken, _imageDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeImagesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["imageDetails"] = _imageDetails,
	}
	asserts.AssertDescribeImagesResponse(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The operation did not succeed because it would have exceeded a service limit for your account. For more information, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/service_limits.html">Amazon ECR Default Service Limits</a> in the Amazon EC2 Container Registry User Guide.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.LimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.CompleteLayerUploadRequest = { ["uploadId"] = true, ["layerDigests"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertCompleteLayerUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteLayerUploadRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	assert(struct["layerDigests"], "Expected key layerDigests to exist in table")
	if struct["uploadId"] then asserts.AssertUploadId(struct["uploadId"]) end
	if struct["layerDigests"] then asserts.AssertLayerDigestList(struct["layerDigests"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompleteLayerUploadRequest[k], "CompleteLayerUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteLayerUploadRequest
--  
-- @param _uploadId [UploadId] <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to associate with the image layer.</p>
-- @param _layerDigests [LayerDigestList] <p>The <code>sha256</code> digest of the image layer.</p>
-- @param _repositoryName [RepositoryName] <p>The name of the repository to associate with the image layer.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry to which to upload layers. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
-- Required parameter: uploadId
-- Required parameter: layerDigests
function M.CompleteLayerUploadRequest(_uploadId, _layerDigests, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteLayerUploadRequest")
	local t = { 
		["uploadId"] = _uploadId,
		["layerDigests"] = _layerDigests,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertCompleteLayerUploadRequest(t)
	return t
end

keys.RepositoryNotFoundException = { ["message"] = true, nil }

function asserts.AssertRepositoryNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RepositoryNotFoundException[k], "RepositoryNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNotFoundException
-- <p>The specified repository could not be found. Check the spelling of the specified repository and ensure that you are performing operations on the correct registry.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.RepositoryNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertRepositoryNotFoundException(t)
	return t
end

keys.GetAuthorizationTokenResponse = { ["authorizationData"] = true, nil }

function asserts.AssertGetAuthorizationTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAuthorizationTokenResponse to be of type 'table'")
	if struct["authorizationData"] then asserts.AssertAuthorizationDataList(struct["authorizationData"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAuthorizationTokenResponse[k], "GetAuthorizationTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAuthorizationTokenResponse
--  
-- @param _authorizationData [AuthorizationDataList] <p>A list of authorization token data objects that correspond to the <code>registryIds</code> values in the request.</p>
function M.GetAuthorizationTokenResponse(_authorizationData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAuthorizationTokenResponse")
	local t = { 
		["authorizationData"] = _authorizationData,
	}
	asserts.AssertGetAuthorizationTokenResponse(t)
	return t
end

keys.DescribeImagesFilter = { ["tagStatus"] = true, nil }

function asserts.AssertDescribeImagesFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesFilter to be of type 'table'")
	if struct["tagStatus"] then asserts.AssertTagStatus(struct["tagStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImagesFilter[k], "DescribeImagesFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesFilter
-- <p>An object representing a filter on a <a>DescribeImages</a> operation.</p>
-- @param _tagStatus [TagStatus] <p>The tag status with which to filter your <a>DescribeImages</a> results. You can filter results based on whether they are <code>TAGGED</code> or <code>UNTAGGED</code>.</p>
function M.DescribeImagesFilter(_tagStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeImagesFilter")
	local t = { 
		["tagStatus"] = _tagStatus,
	}
	asserts.AssertDescribeImagesFilter(t)
	return t
end

keys.GetAuthorizationTokenRequest = { ["registryIds"] = true, nil }

function asserts.AssertGetAuthorizationTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAuthorizationTokenRequest to be of type 'table'")
	if struct["registryIds"] then asserts.AssertGetAuthorizationTokenRegistryIdList(struct["registryIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAuthorizationTokenRequest[k], "GetAuthorizationTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAuthorizationTokenRequest
--  
-- @param _registryIds [GetAuthorizationTokenRegistryIdList] <p>A list of AWS account IDs that are associated with the registries for which to get authorization tokens. If you do not specify a registry, the default registry is assumed.</p>
function M.GetAuthorizationTokenRequest(_registryIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAuthorizationTokenRequest")
	local t = { 
		["registryIds"] = _registryIds,
	}
	asserts.AssertGetAuthorizationTokenRequest(t)
	return t
end

keys.ListImagesFilter = { ["tagStatus"] = true, nil }

function asserts.AssertListImagesFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListImagesFilter to be of type 'table'")
	if struct["tagStatus"] then asserts.AssertTagStatus(struct["tagStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListImagesFilter[k], "ListImagesFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListImagesFilter
-- <p>An object representing a filter on a <a>ListImages</a> operation.</p>
-- @param _tagStatus [TagStatus] <p>The tag status with which to filter your <a>ListImages</a> results. You can filter results based on whether they are <code>TAGGED</code> or <code>UNTAGGED</code>.</p>
function M.ListImagesFilter(_tagStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListImagesFilter")
	local t = { 
		["tagStatus"] = _tagStatus,
	}
	asserts.AssertListImagesFilter(t)
	return t
end

keys.SetRepositoryPolicyRequest = { ["policyText"] = true, ["force"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertSetRepositoryPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetRepositoryPolicyRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["policyText"], "Expected key policyText to exist in table")
	if struct["policyText"] then asserts.AssertRepositoryPolicyText(struct["policyText"]) end
	if struct["force"] then asserts.AssertForceFlag(struct["force"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetRepositoryPolicyRequest[k], "SetRepositoryPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetRepositoryPolicyRequest
--  
-- @param _policyText [RepositoryPolicyText] <p>The JSON repository policy text to apply to the repository.</p>
-- @param _force [ForceFlag] <p>If the policy you are attempting to set on a repository policy would prevent you from setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental repository lock outs.</p>
-- @param _repositoryName [RepositoryName] <p>The name of the repository to receive the policy.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
-- Required parameter: policyText
function M.SetRepositoryPolicyRequest(_policyText, _force, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetRepositoryPolicyRequest")
	local t = { 
		["policyText"] = _policyText,
		["force"] = _force,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertSetRepositoryPolicyRequest(t)
	return t
end

keys.ImageDetail = { ["imageSizeInBytes"] = true, ["imageDigest"] = true, ["imageTags"] = true, ["registryId"] = true, ["repositoryName"] = true, ["imagePushedAt"] = true, nil }

function asserts.AssertImageDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageDetail to be of type 'table'")
	if struct["imageSizeInBytes"] then asserts.AssertImageSizeInBytes(struct["imageSizeInBytes"]) end
	if struct["imageDigest"] then asserts.AssertImageDigest(struct["imageDigest"]) end
	if struct["imageTags"] then asserts.AssertImageTagList(struct["imageTags"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["imagePushedAt"] then asserts.AssertPushTimestamp(struct["imagePushedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImageDetail[k], "ImageDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageDetail
-- <p>An object that describes an image returned by a <a>DescribeImages</a> operation.</p>
-- @param _imageSizeInBytes [ImageSizeInBytes] <p>The size, in bytes, of the image in the repository.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>
-- @param _imageDigest [ImageDigest] <p>The <code>sha256</code> digest of the image manifest.</p>
-- @param _imageTags [ImageTagList] <p>The list of tags associated with this image.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry to which this image belongs.</p>
-- @param _repositoryName [RepositoryName] <p>The name of the repository to which this image belongs.</p>
-- @param _imagePushedAt [PushTimestamp] <p>The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. </p>
function M.ImageDetail(_imageSizeInBytes, _imageDigest, _imageTags, _registryId, _repositoryName, _imagePushedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageDetail")
	local t = { 
		["imageSizeInBytes"] = _imageSizeInBytes,
		["imageDigest"] = _imageDigest,
		["imageTags"] = _imageTags,
		["registryId"] = _registryId,
		["repositoryName"] = _repositoryName,
		["imagePushedAt"] = _imagePushedAt,
	}
	asserts.AssertImageDetail(t)
	return t
end

keys.EmptyUploadException = { ["message"] = true, nil }

function asserts.AssertEmptyUploadException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmptyUploadException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EmptyUploadException[k], "EmptyUploadException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmptyUploadException
-- <p>The specified layer upload does not contain any layer parts.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.EmptyUploadException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EmptyUploadException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertEmptyUploadException(t)
	return t
end

keys.RepositoryAlreadyExistsException = { ["message"] = true, nil }

function asserts.AssertRepositoryAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryAlreadyExistsException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RepositoryAlreadyExistsException[k], "RepositoryAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryAlreadyExistsException
-- <p>The specified repository already exists in the specified registry.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.RepositoryAlreadyExistsException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryAlreadyExistsException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertRepositoryAlreadyExistsException(t)
	return t
end

keys.DescribeRepositoriesRequest = { ["nextToken"] = true, ["repositoryNames"] = true, ["registryId"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeRepositoriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRepositoriesRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["repositoryNames"] then asserts.AssertRepositoryNameList(struct["repositoryNames"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRepositoriesRequest[k], "DescribeRepositoriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRepositoriesRequest
--  
-- @param _nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeRepositories</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param _repositoryNames [RepositoryNameList] <p>A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repositories to be described. If you do not specify a registry, the default registry is assumed.</p>
-- @param _maxResults [MaxResults] <p>The maximum number of repository results returned by <code>DescribeRepositories</code> in paginated output. When this parameter is used, <code>DescribeRepositories</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeRepositories</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeRepositories</code> returns up to 100 results and a <code>nextToken</code> value, if applicable.</p>
function M.DescribeRepositoriesRequest(_nextToken, _repositoryNames, _registryId, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRepositoriesRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["repositoryNames"] = _repositoryNames,
		["registryId"] = _registryId,
		["maxResults"] = _maxResults,
	}
	asserts.AssertDescribeRepositoriesRequest(t)
	return t
end

keys.ImageFailure = { ["failureReason"] = true, ["failureCode"] = true, ["imageId"] = true, nil }

function asserts.AssertImageFailure(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageFailure to be of type 'table'")
	if struct["failureReason"] then asserts.AssertImageFailureReason(struct["failureReason"]) end
	if struct["failureCode"] then asserts.AssertImageFailureCode(struct["failureCode"]) end
	if struct["imageId"] then asserts.AssertImageIdentifier(struct["imageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImageFailure[k], "ImageFailure contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageFailure
-- <p>An object representing an Amazon ECR image failure.</p>
-- @param _failureReason [ImageFailureReason] <p>The reason for the failure.</p>
-- @param _failureCode [ImageFailureCode] <p>The code associated with the failure.</p>
-- @param _imageId [ImageIdentifier] <p>The image ID associated with the failure.</p>
function M.ImageFailure(_failureReason, _failureCode, _imageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageFailure")
	local t = { 
		["failureReason"] = _failureReason,
		["failureCode"] = _failureCode,
		["imageId"] = _imageId,
	}
	asserts.AssertImageFailure(t)
	return t
end

keys.AuthorizationData = { ["authorizationToken"] = true, ["expiresAt"] = true, ["proxyEndpoint"] = true, nil }

function asserts.AssertAuthorizationData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationData to be of type 'table'")
	if struct["authorizationToken"] then asserts.AssertBase64(struct["authorizationToken"]) end
	if struct["expiresAt"] then asserts.AssertExpirationTimestamp(struct["expiresAt"]) end
	if struct["proxyEndpoint"] then asserts.AssertProxyEndpoint(struct["proxyEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizationData[k], "AuthorizationData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationData
-- <p>An object representing authorization data for an Amazon ECR registry.</p>
-- @param _authorizationToken [Base64] <p>A base64-encoded string that contains authorization data for the specified Amazon ECR registry. When the string is decoded, it is presented in the format <code>user:password</code> for private registry authentication using <code>docker login</code>.</p>
-- @param _expiresAt [ExpirationTimestamp] <p>The Unix time in seconds and milliseconds when the authorization token expires. Authorization tokens are valid for 12 hours.</p>
-- @param _proxyEndpoint [ProxyEndpoint] <p>The registry URL to use for this authorization token in a <code>docker login</code> command. The Amazon ECR registry URL format is <code>https://aws_account_id.dkr.ecr.region.amazonaws.com</code>. For example, <code>https://012345678910.dkr.ecr.us-east-1.amazonaws.com</code>.. </p>
function M.AuthorizationData(_authorizationToken, _expiresAt, _proxyEndpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationData")
	local t = { 
		["authorizationToken"] = _authorizationToken,
		["expiresAt"] = _expiresAt,
		["proxyEndpoint"] = _proxyEndpoint,
	}
	asserts.AssertAuthorizationData(t)
	return t
end

keys.BatchDeleteImageResponse = { ["failures"] = true, ["imageIds"] = true, nil }

function asserts.AssertBatchDeleteImageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteImageResponse to be of type 'table'")
	if struct["failures"] then asserts.AssertImageFailureList(struct["failures"]) end
	if struct["imageIds"] then asserts.AssertImageIdentifierList(struct["imageIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteImageResponse[k], "BatchDeleteImageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteImageResponse
--  
-- @param _failures [ImageFailureList] <p>Any failures associated with the call.</p>
-- @param _imageIds [ImageIdentifierList] <p>The image IDs of the deleted images.</p>
function M.BatchDeleteImageResponse(_failures, _imageIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDeleteImageResponse")
	local t = { 
		["failures"] = _failures,
		["imageIds"] = _imageIds,
	}
	asserts.AssertBatchDeleteImageResponse(t)
	return t
end

keys.BatchCheckLayerAvailabilityRequest = { ["layerDigests"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertBatchCheckLayerAvailabilityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCheckLayerAvailabilityRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["layerDigests"], "Expected key layerDigests to exist in table")
	if struct["layerDigests"] then asserts.AssertBatchedOperationLayerDigestList(struct["layerDigests"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchCheckLayerAvailabilityRequest[k], "BatchCheckLayerAvailabilityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCheckLayerAvailabilityRequest
--  
-- @param _layerDigests [BatchedOperationLayerDigestList] <p>The digests of the image layers to check.</p>
-- @param _repositoryName [RepositoryName] <p>The name of the repository that is associated with the image layers to check.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the image layers to check. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
-- Required parameter: layerDigests
function M.BatchCheckLayerAvailabilityRequest(_layerDigests, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchCheckLayerAvailabilityRequest")
	local t = { 
		["layerDigests"] = _layerDigests,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertBatchCheckLayerAvailabilityRequest(t)
	return t
end

keys.InitiateLayerUploadResponse = { ["partSize"] = true, ["uploadId"] = true, nil }

function asserts.AssertInitiateLayerUploadResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateLayerUploadResponse to be of type 'table'")
	if struct["partSize"] then asserts.AssertPartSize(struct["partSize"]) end
	if struct["uploadId"] then asserts.AssertUploadId(struct["uploadId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateLayerUploadResponse[k], "InitiateLayerUploadResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateLayerUploadResponse
--  
-- @param _partSize [PartSize] <p>The size, in bytes, that Amazon ECR expects future layer part uploads to be.</p>
-- @param _uploadId [UploadId] <p>The upload ID for the layer upload. This parameter is passed to further <a>UploadLayerPart</a> and <a>CompleteLayerUpload</a> operations.</p>
function M.InitiateLayerUploadResponse(_partSize, _uploadId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateLayerUploadResponse")
	local t = { 
		["partSize"] = _partSize,
		["uploadId"] = _uploadId,
	}
	asserts.AssertInitiateLayerUploadResponse(t)
	return t
end

keys.Image = { ["imageManifest"] = true, ["repositoryName"] = true, ["registryId"] = true, ["imageId"] = true, nil }

function asserts.AssertImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Image to be of type 'table'")
	if struct["imageManifest"] then asserts.AssertImageManifest(struct["imageManifest"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["imageId"] then asserts.AssertImageIdentifier(struct["imageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Image[k], "Image contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Image
-- <p>An object representing an Amazon ECR image.</p>
-- @param _imageManifest [ImageManifest] <p>The image manifest associated with the image.</p>
-- @param _repositoryName [RepositoryName] <p>The name of the repository associated with the image.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry containing the image.</p>
-- @param _imageId [ImageIdentifier] <p>An object containing the image tag and image digest associated with an image.</p>
function M.Image(_imageManifest, _repositoryName, _registryId, _imageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Image")
	local t = { 
		["imageManifest"] = _imageManifest,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
		["imageId"] = _imageId,
	}
	asserts.AssertImage(t)
	return t
end

keys.ImageIdentifier = { ["imageTag"] = true, ["imageDigest"] = true, nil }

function asserts.AssertImageIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageIdentifier to be of type 'table'")
	if struct["imageTag"] then asserts.AssertImageTag(struct["imageTag"]) end
	if struct["imageDigest"] then asserts.AssertImageDigest(struct["imageDigest"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImageIdentifier[k], "ImageIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageIdentifier
-- <p>An object with identifying information for an Amazon ECR image.</p>
-- @param _imageTag [ImageTag] <p>The tag used for the image.</p>
-- @param _imageDigest [ImageDigest] <p>The <code>sha256</code> digest of the image manifest.</p>
function M.ImageIdentifier(_imageTag, _imageDigest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageIdentifier")
	local t = { 
		["imageTag"] = _imageTag,
		["imageDigest"] = _imageDigest,
	}
	asserts.AssertImageIdentifier(t)
	return t
end

keys.CompleteLayerUploadResponse = { ["uploadId"] = true, ["layerDigest"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertCompleteLayerUploadResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteLayerUploadResponse to be of type 'table'")
	if struct["uploadId"] then asserts.AssertUploadId(struct["uploadId"]) end
	if struct["layerDigest"] then asserts.AssertLayerDigest(struct["layerDigest"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompleteLayerUploadResponse[k], "CompleteLayerUploadResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteLayerUploadResponse
--  
-- @param _uploadId [UploadId] <p>The upload ID associated with the layer.</p>
-- @param _layerDigest [LayerDigest] <p>The <code>sha256</code> digest of the image layer.</p>
-- @param _repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @param _registryId [RegistryId] <p>The registry ID associated with the request.</p>
function M.CompleteLayerUploadResponse(_uploadId, _layerDigest, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteLayerUploadResponse")
	local t = { 
		["uploadId"] = _uploadId,
		["layerDigest"] = _layerDigest,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertCompleteLayerUploadResponse(t)
	return t
end

keys.GetRepositoryPolicyResponse = { ["policyText"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertGetRepositoryPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryPolicyResponse to be of type 'table'")
	if struct["policyText"] then asserts.AssertRepositoryPolicyText(struct["policyText"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRepositoryPolicyResponse[k], "GetRepositoryPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryPolicyResponse
--  
-- @param _policyText [RepositoryPolicyText] <p>The JSON repository policy text associated with the repository.</p>
-- @param _repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @param _registryId [RegistryId] <p>The registry ID associated with the request.</p>
function M.GetRepositoryPolicyResponse(_policyText, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRepositoryPolicyResponse")
	local t = { 
		["policyText"] = _policyText,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertGetRepositoryPolicyResponse(t)
	return t
end

keys.LayersNotFoundException = { ["message"] = true, nil }

function asserts.AssertLayersNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LayersNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LayersNotFoundException[k], "LayersNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LayersNotFoundException
-- <p>The specified layers could not be found, or the specified layer is not valid for this repository.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.LayersNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LayersNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLayersNotFoundException(t)
	return t
end

keys.UploadLayerPartRequest = { ["layerPartBlob"] = true, ["partFirstByte"] = true, ["uploadId"] = true, ["registryId"] = true, ["repositoryName"] = true, ["partLastByte"] = true, nil }

function asserts.AssertUploadLayerPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadLayerPartRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["uploadId"], "Expected key uploadId to exist in table")
	assert(struct["partFirstByte"], "Expected key partFirstByte to exist in table")
	assert(struct["partLastByte"], "Expected key partLastByte to exist in table")
	assert(struct["layerPartBlob"], "Expected key layerPartBlob to exist in table")
	if struct["layerPartBlob"] then asserts.AssertLayerPartBlob(struct["layerPartBlob"]) end
	if struct["partFirstByte"] then asserts.AssertPartSize(struct["partFirstByte"]) end
	if struct["uploadId"] then asserts.AssertUploadId(struct["uploadId"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["partLastByte"] then asserts.AssertPartSize(struct["partLastByte"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadLayerPartRequest[k], "UploadLayerPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadLayerPartRequest
--  
-- @param _layerPartBlob [LayerPartBlob] <p>The base64-encoded layer part payload.</p>
-- @param _partFirstByte [PartSize] <p>The integer value of the first byte of the layer part.</p>
-- @param _uploadId [UploadId] <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to associate with the layer part upload.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that you are uploading layer parts to. If you do not specify a registry, the default registry is assumed.</p>
-- @param _repositoryName [RepositoryName] <p>The name of the repository that you are uploading layer parts to.</p>
-- @param _partLastByte [PartSize] <p>The integer value of the last byte of the layer part.</p>
-- Required parameter: repositoryName
-- Required parameter: uploadId
-- Required parameter: partFirstByte
-- Required parameter: partLastByte
-- Required parameter: layerPartBlob
function M.UploadLayerPartRequest(_layerPartBlob, _partFirstByte, _uploadId, _registryId, _repositoryName, _partLastByte, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadLayerPartRequest")
	local t = { 
		["layerPartBlob"] = _layerPartBlob,
		["partFirstByte"] = _partFirstByte,
		["uploadId"] = _uploadId,
		["registryId"] = _registryId,
		["repositoryName"] = _repositoryName,
		["partLastByte"] = _partLastByte,
	}
	asserts.AssertUploadLayerPartRequest(t)
	return t
end

keys.InvalidLayerException = { ["message"] = true, nil }

function asserts.AssertInvalidLayerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLayerException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidLayerException[k], "InvalidLayerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLayerException
-- <p>The layer digest calculation performed by Amazon ECR upon receipt of the image layer does not match the digest specified.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.InvalidLayerException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLayerException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidLayerException(t)
	return t
end

keys.Repository = { ["registryId"] = true, ["repositoryName"] = true, ["repositoryArn"] = true, ["createdAt"] = true, ["repositoryUri"] = true, nil }

function asserts.AssertRepository(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Repository to be of type 'table'")
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["repositoryArn"] then asserts.AssertArn(struct["repositoryArn"]) end
	if struct["createdAt"] then asserts.AssertCreationTimestamp(struct["createdAt"]) end
	if struct["repositoryUri"] then asserts.AssertUrl(struct["repositoryUri"]) end
	for k,_ in pairs(struct) do
		assert(keys.Repository[k], "Repository contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Repository
-- <p>An object representing a repository.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository.</p>
-- @param _repositoryName [RepositoryName] <p>The name of the repository.</p>
-- @param _repositoryArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the <code>arn:aws:ecr</code> namespace, followed by the region of the repository, the AWS account ID of the repository owner, the repository namespace, and then the repository name. For example, <code>arn:aws:ecr:region:012345678910:repository/test</code>.</p>
-- @param _createdAt [CreationTimestamp] <p>The date and time, in JavaScript date/time format, when the repository was created.</p>
-- @param _repositoryUri [Url] <p>The URI for the repository. You can use this URI for Docker <code>push</code> and <code>pull</code> operations.</p>
function M.Repository(_registryId, _repositoryName, _repositoryArn, _createdAt, _repositoryUri, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Repository")
	local t = { 
		["registryId"] = _registryId,
		["repositoryName"] = _repositoryName,
		["repositoryArn"] = _repositoryArn,
		["createdAt"] = _createdAt,
		["repositoryUri"] = _repositoryUri,
	}
	asserts.AssertRepository(t)
	return t
end

keys.RepositoryPolicyNotFoundException = { ["message"] = true, nil }

function asserts.AssertRepositoryPolicyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryPolicyNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RepositoryPolicyNotFoundException[k], "RepositoryPolicyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryPolicyNotFoundException
-- <p>The specified repository and registry combination does not have an associated repository policy.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.RepositoryPolicyNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryPolicyNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertRepositoryPolicyNotFoundException(t)
	return t
end

keys.GetRepositoryPolicyRequest = { ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertGetRepositoryPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryPolicyRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRepositoryPolicyRequest[k], "GetRepositoryPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryPolicyRequest
--  
-- @param _repositoryName [RepositoryName] <p>The name of the repository whose policy you want to retrieve.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
function M.GetRepositoryPolicyRequest(_repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRepositoryPolicyRequest")
	local t = { 
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertGetRepositoryPolicyRequest(t)
	return t
end

keys.ImageAlreadyExistsException = { ["message"] = true, nil }

function asserts.AssertImageAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageAlreadyExistsException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImageAlreadyExistsException[k], "ImageAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageAlreadyExistsException
-- <p>The specified image has already been pushed, and there are no changes to the manifest or image tag since the last push.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.ImageAlreadyExistsException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageAlreadyExistsException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertImageAlreadyExistsException(t)
	return t
end

keys.ImageNotFoundException = { ["message"] = true, nil }

function asserts.AssertImageNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImageNotFoundException[k], "ImageNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageNotFoundException
-- <p>The image requested does not exist in the specified repository.</p>
-- @param _message [ExceptionMessage] 
function M.ImageNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImageNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertImageNotFoundException(t)
	return t
end

keys.ListImagesResponse = { ["nextToken"] = true, ["imageIds"] = true, nil }

function asserts.AssertListImagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListImagesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["imageIds"] then asserts.AssertImageIdentifierList(struct["imageIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListImagesResponse[k], "ListImagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListImagesResponse
--  
-- @param _nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>ListImages</code> request. When the results of a <code>ListImages</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param _imageIds [ImageIdentifierList] <p>The list of image IDs for the requested repository.</p>
function M.ListImagesResponse(_nextToken, _imageIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListImagesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["imageIds"] = _imageIds,
	}
	asserts.AssertListImagesResponse(t)
	return t
end

keys.LayerFailure = { ["layerDigest"] = true, ["failureCode"] = true, ["failureReason"] = true, nil }

function asserts.AssertLayerFailure(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LayerFailure to be of type 'table'")
	if struct["layerDigest"] then asserts.AssertBatchedOperationLayerDigest(struct["layerDigest"]) end
	if struct["failureCode"] then asserts.AssertLayerFailureCode(struct["failureCode"]) end
	if struct["failureReason"] then asserts.AssertLayerFailureReason(struct["failureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.LayerFailure[k], "LayerFailure contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LayerFailure
-- <p>An object representing an Amazon ECR image layer failure.</p>
-- @param _layerDigest [BatchedOperationLayerDigest] <p>The layer digest associated with the failure.</p>
-- @param _failureCode [LayerFailureCode] <p>The failure code associated with the failure.</p>
-- @param _failureReason [LayerFailureReason] <p>The reason for the failure.</p>
function M.LayerFailure(_layerDigest, _failureCode, _failureReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LayerFailure")
	local t = { 
		["layerDigest"] = _layerDigest,
		["failureCode"] = _failureCode,
		["failureReason"] = _failureReason,
	}
	asserts.AssertLayerFailure(t)
	return t
end

keys.UploadNotFoundException = { ["message"] = true, nil }

function asserts.AssertUploadNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadNotFoundException[k], "UploadNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadNotFoundException
-- <p>The upload could not be found, or the specified upload id is not valid for this repository.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.UploadNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUploadNotFoundException(t)
	return t
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>The specified parameter is invalid. Review the available parameters for the API request.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.InvalidParameterException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterException(t)
	return t
end

keys.CreateRepositoryRequest = { ["repositoryName"] = true, nil }

function asserts.AssertCreateRepositoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRepositoryRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRepositoryRequest[k], "CreateRepositoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRepositoryRequest
--  
-- @param _repositoryName [RepositoryName] <p>The name to use for the repository. The repository name may be specified on its own (such as <code>nginx-web-app</code>) or it can be prepended with a namespace to group the repository into a category (such as <code>project-a/nginx-web-app</code>).</p>
-- Required parameter: repositoryName
function M.CreateRepositoryRequest(_repositoryName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRepositoryRequest")
	local t = { 
		["repositoryName"] = _repositoryName,
	}
	asserts.AssertCreateRepositoryRequest(t)
	return t
end

keys.DescribeImagesRequest = { ["repositoryName"] = true, ["maxResults"] = true, ["filter"] = true, ["imageIds"] = true, ["registryId"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeImagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeImagesRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	if struct["filter"] then asserts.AssertDescribeImagesFilter(struct["filter"]) end
	if struct["imageIds"] then asserts.AssertImageIdentifierList(struct["imageIds"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeImagesRequest[k], "DescribeImagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeImagesRequest
--  
-- @param _repositoryName [RepositoryName] <p>A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.</p>
-- @param _maxResults [MaxResults] <p>The maximum number of repository results returned by <code>DescribeImages</code> in paginated output. When this parameter is used, <code>DescribeImages</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeImages</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeImages</code> returns up to 100 results and a <code>nextToken</code> value, if applicable.</p>
-- @param _filter [DescribeImagesFilter] <p>The filter key and value with which to filter your <code>DescribeImages</code> results.</p>
-- @param _imageIds [ImageIdentifierList] <p>The list of image IDs for the requested repository.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository in which to describe images. If you do not specify a registry, the default registry is assumed.</p>
-- @param _nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeImages</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p>
-- Required parameter: repositoryName
function M.DescribeImagesRequest(_repositoryName, _maxResults, _filter, _imageIds, _registryId, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeImagesRequest")
	local t = { 
		["repositoryName"] = _repositoryName,
		["maxResults"] = _maxResults,
		["filter"] = _filter,
		["imageIds"] = _imageIds,
		["registryId"] = _registryId,
		["nextToken"] = _nextToken,
	}
	asserts.AssertDescribeImagesRequest(t)
	return t
end

keys.DeleteRepositoryPolicyRequest = { ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertDeleteRepositoryPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryPolicyRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRepositoryPolicyRequest[k], "DeleteRepositoryPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryPolicyRequest
--  
-- @param _repositoryName [RepositoryName] <p>The name of the repository that is associated with the repository policy to delete.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository policy to delete. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
function M.DeleteRepositoryPolicyRequest(_repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRepositoryPolicyRequest")
	local t = { 
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertDeleteRepositoryPolicyRequest(t)
	return t
end

keys.ServerException = { ["message"] = true, nil }

function asserts.AssertServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerException[k], "ServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerException
-- <p>These errors are usually caused by a server-side issue.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.ServerException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertServerException(t)
	return t
end

keys.CreateRepositoryResponse = { ["repository"] = true, nil }

function asserts.AssertCreateRepositoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRepositoryResponse to be of type 'table'")
	if struct["repository"] then asserts.AssertRepository(struct["repository"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRepositoryResponse[k], "CreateRepositoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRepositoryResponse
--  
-- @param _repository [Repository] <p>The repository that was created.</p>
function M.CreateRepositoryResponse(_repository, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRepositoryResponse")
	local t = { 
		["repository"] = _repository,
	}
	asserts.AssertCreateRepositoryResponse(t)
	return t
end

keys.LayerPartTooSmallException = { ["message"] = true, nil }

function asserts.AssertLayerPartTooSmallException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LayerPartTooSmallException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LayerPartTooSmallException[k], "LayerPartTooSmallException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LayerPartTooSmallException
-- <p>Layer parts must be at least 5 MiB in size.</p>
-- @param _message [ExceptionMessage] <p>The error message associated with the exception.</p>
function M.LayerPartTooSmallException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LayerPartTooSmallException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLayerPartTooSmallException(t)
	return t
end

keys.SetRepositoryPolicyResponse = { ["policyText"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertSetRepositoryPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetRepositoryPolicyResponse to be of type 'table'")
	if struct["policyText"] then asserts.AssertRepositoryPolicyText(struct["policyText"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetRepositoryPolicyResponse[k], "SetRepositoryPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetRepositoryPolicyResponse
--  
-- @param _policyText [RepositoryPolicyText] <p>The JSON repository policy text applied to the repository.</p>
-- @param _repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @param _registryId [RegistryId] <p>The registry ID associated with the request.</p>
function M.SetRepositoryPolicyResponse(_policyText, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetRepositoryPolicyResponse")
	local t = { 
		["policyText"] = _policyText,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertSetRepositoryPolicyResponse(t)
	return t
end

keys.BatchGetImageRequest = { ["repositoryName"] = true, ["registryId"] = true, ["acceptedMediaTypes"] = true, ["imageIds"] = true, nil }

function asserts.AssertBatchGetImageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetImageRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["imageIds"], "Expected key imageIds to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["acceptedMediaTypes"] then asserts.AssertMediaTypeList(struct["acceptedMediaTypes"]) end
	if struct["imageIds"] then asserts.AssertImageIdentifierList(struct["imageIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetImageRequest[k], "BatchGetImageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetImageRequest
--  
-- @param _repositoryName [RepositoryName] <p>The repository that contains the images to describe.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.</p>
-- @param _acceptedMediaTypes [MediaTypeList] <p>The accepted media types for the request.</p> <p>Valid values: <code>application/vnd.docker.distribution.manifest.v1+json</code> | <code>application/vnd.docker.distribution.manifest.v2+json</code> | <code>application/vnd.oci.image.manifest.v1+json</code> </p>
-- @param _imageIds [ImageIdentifierList] <p>A list of image ID references that correspond to images to describe. The format of the <code>imageIds</code> reference is <code>imageTag=tag</code> or <code>imageDigest=digest</code>.</p>
-- Required parameter: repositoryName
-- Required parameter: imageIds
function M.BatchGetImageRequest(_repositoryName, _registryId, _acceptedMediaTypes, _imageIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetImageRequest")
	local t = { 
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
		["acceptedMediaTypes"] = _acceptedMediaTypes,
		["imageIds"] = _imageIds,
	}
	asserts.AssertBatchGetImageRequest(t)
	return t
end

keys.DeleteRepositoryRequest = { ["force"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertDeleteRepositoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["force"] then asserts.AssertForceFlag(struct["force"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRepositoryRequest[k], "DeleteRepositoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryRequest
--  
-- @param _force [ForceFlag] <p>Force the deletion of the repository if it contains images.</p>
-- @param _repositoryName [RepositoryName] <p>The name of the repository to delete.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository to delete. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
function M.DeleteRepositoryRequest(_force, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRepositoryRequest")
	local t = { 
		["force"] = _force,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertDeleteRepositoryRequest(t)
	return t
end

keys.DeleteRepositoryPolicyResponse = { ["policyText"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertDeleteRepositoryPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryPolicyResponse to be of type 'table'")
	if struct["policyText"] then asserts.AssertRepositoryPolicyText(struct["policyText"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRepositoryPolicyResponse[k], "DeleteRepositoryPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryPolicyResponse
--  
-- @param _policyText [RepositoryPolicyText] <p>The JSON repository policy that was deleted from the repository.</p>
-- @param _repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @param _registryId [RegistryId] <p>The registry ID associated with the request.</p>
function M.DeleteRepositoryPolicyResponse(_policyText, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRepositoryPolicyResponse")
	local t = { 
		["policyText"] = _policyText,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertDeleteRepositoryPolicyResponse(t)
	return t
end

keys.PutImageResponse = { ["image"] = true, nil }

function asserts.AssertPutImageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutImageResponse to be of type 'table'")
	if struct["image"] then asserts.AssertImage(struct["image"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutImageResponse[k], "PutImageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutImageResponse
--  
-- @param _image [Image] <p>Details of the image uploaded.</p>
function M.PutImageResponse(_image, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutImageResponse")
	local t = { 
		["image"] = _image,
	}
	asserts.AssertPutImageResponse(t)
	return t
end

keys.InitiateLayerUploadRequest = { ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertInitiateLayerUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateLayerUploadRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateLayerUploadRequest[k], "InitiateLayerUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateLayerUploadRequest
--  
-- @param _repositoryName [RepositoryName] <p>The name of the repository that you intend to upload layers to.</p>
-- @param _registryId [RegistryId] <p>The AWS account ID associated with the registry that you intend to upload layers to. If you do not specify a registry, the default registry is assumed.</p>
-- Required parameter: repositoryName
function M.InitiateLayerUploadRequest(_repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateLayerUploadRequest")
	local t = { 
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertInitiateLayerUploadRequest(t)
	return t
end

keys.UploadLayerPartResponse = { ["uploadId"] = true, ["lastByteReceived"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertUploadLayerPartResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadLayerPartResponse to be of type 'table'")
	if struct["uploadId"] then asserts.AssertUploadId(struct["uploadId"]) end
	if struct["lastByteReceived"] then asserts.AssertPartSize(struct["lastByteReceived"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadLayerPartResponse[k], "UploadLayerPartResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadLayerPartResponse
--  
-- @param _uploadId [UploadId] <p>The upload ID associated with the request.</p>
-- @param _lastByteReceived [PartSize] <p>The integer value of the last byte received in the request.</p>
-- @param _repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @param _registryId [RegistryId] <p>The registry ID associated with the request.</p>
function M.UploadLayerPartResponse(_uploadId, _lastByteReceived, _repositoryName, _registryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadLayerPartResponse")
	local t = { 
		["uploadId"] = _uploadId,
		["lastByteReceived"] = _lastByteReceived,
		["repositoryName"] = _repositoryName,
		["registryId"] = _registryId,
	}
	asserts.AssertUploadLayerPartResponse(t)
	return t
end

function asserts.AssertMediaType(str)
	assert(str)
	assert(type(str) == "string", "Expected MediaType to be of type 'string'")
end

--  
function M.MediaType(str)
	asserts.AssertMediaType(str)
	return str
end

function asserts.AssertLayerAvailability(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerAvailability to be of type 'string'")
end

--  
function M.LayerAvailability(str)
	asserts.AssertLayerAvailability(str)
	return str
end

function asserts.AssertImageTag(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageTag to be of type 'string'")
end

--  
function M.ImageTag(str)
	asserts.AssertImageTag(str)
	return str
end

function asserts.AssertTagStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TagStatus to be of type 'string'")
end

--  
function M.TagStatus(str)
	asserts.AssertTagStatus(str)
	return str
end

function asserts.AssertRepositoryPolicyText(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryPolicyText to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

--  
function M.RepositoryPolicyText(str)
	asserts.AssertRepositoryPolicyText(str)
	return str
end

function asserts.AssertUploadId(str)
	assert(str)
	assert(type(str) == "string", "Expected UploadId to be of type 'string'")
end

--  
function M.UploadId(str)
	asserts.AssertUploadId(str)
	return str
end

function asserts.AssertLayerFailureCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerFailureCode to be of type 'string'")
end

--  
function M.LayerFailureCode(str)
	asserts.AssertLayerFailureCode(str)
	return str
end

function asserts.AssertProxyEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected ProxyEndpoint to be of type 'string'")
end

--  
function M.ProxyEndpoint(str)
	asserts.AssertProxyEndpoint(str)
	return str
end

function asserts.AssertLayerFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerFailureReason to be of type 'string'")
end

--  
function M.LayerFailureReason(str)
	asserts.AssertLayerFailureReason(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertBatchedOperationLayerDigest(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchedOperationLayerDigest to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.BatchedOperationLayerDigest(str)
	asserts.AssertBatchedOperationLayerDigest(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertImageManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageManifest to be of type 'string'")
end

--  
function M.ImageManifest(str)
	asserts.AssertImageManifest(str)
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

function asserts.AssertImageDigest(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageDigest to be of type 'string'")
end

--  
function M.ImageDigest(str)
	asserts.AssertImageDigest(str)
	return str
end

function asserts.AssertRegistryId(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistryId to be of type 'string'")
end

--  
function M.RegistryId(str)
	asserts.AssertRegistryId(str)
	return str
end

function asserts.AssertRepositoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.RepositoryName(str)
	asserts.AssertRepositoryName(str)
	return str
end

function asserts.AssertImageFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageFailureReason to be of type 'string'")
end

--  
function M.ImageFailureReason(str)
	asserts.AssertImageFailureReason(str)
	return str
end

function asserts.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	asserts.AssertExceptionMessage(str)
	return str
end

function asserts.AssertBase64(str)
	assert(str)
	assert(type(str) == "string", "Expected Base64 to be of type 'string'")
end

--  
function M.Base64(str)
	asserts.AssertBase64(str)
	return str
end

function asserts.AssertImageFailureCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageFailureCode to be of type 'string'")
end

--  
function M.ImageFailureCode(str)
	asserts.AssertImageFailureCode(str)
	return str
end

function asserts.AssertLayerDigest(str)
	assert(str)
	assert(type(str) == "string", "Expected LayerDigest to be of type 'string'")
end

--  
function M.LayerDigest(str)
	asserts.AssertLayerDigest(str)
	return str
end

function asserts.AssertImageSizeInBytes(long)
	assert(long)
	assert(type(long) == "number", "Expected ImageSizeInBytes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ImageSizeInBytes(long)
	asserts.AssertImageSizeInBytes(long)
	return long
end

function asserts.AssertPartSize(long)
	assert(long)
	assert(type(long) == "number", "Expected PartSize to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PartSize(long)
	asserts.AssertPartSize(long)
	return long
end

function asserts.AssertLayerSizeInBytes(long)
	assert(long)
	assert(type(long) == "number", "Expected LayerSizeInBytes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LayerSizeInBytes(long)
	asserts.AssertLayerSizeInBytes(long)
	return long
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

function asserts.AssertForceFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ForceFlag to be of type 'boolean'")
end

function M.ForceFlag(boolean)
	asserts.AssertForceFlag(boolean)
	return boolean
end

function asserts.AssertPushTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected PushTimestamp to be of type 'string'")
end

function M.PushTimestamp(timestamp)
	asserts.AssertPushTimestamp(timestamp)
	return timestamp
end

function asserts.AssertCreationTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationTimestamp to be of type 'string'")
end

function M.CreationTimestamp(timestamp)
	asserts.AssertCreationTimestamp(timestamp)
	return timestamp
end

function asserts.AssertExpirationTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ExpirationTimestamp to be of type 'string'")
end

function M.ExpirationTimestamp(timestamp)
	asserts.AssertExpirationTimestamp(timestamp)
	return timestamp
end

function asserts.AssertLayerPartBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected LayerPartBlob to be of type 'string'")
end

function M.LayerPartBlob(blob)
	asserts.AssertLayerPartBlob(blob)
	return blob
end

function asserts.AssertImageDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertImageDetail(v)
	end
end

--  
-- List of ImageDetail objects
function M.ImageDetailList(list)
	asserts.AssertImageDetailList(list)
	return list
end

function asserts.AssertLayerDigestList(list)
	assert(list)
	assert(type(list) == "table", "Expected LayerDigestList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertLayerDigest(v)
	end
end

--  
-- List of LayerDigest objects
function M.LayerDigestList(list)
	asserts.AssertLayerDigestList(list)
	return list
end

function asserts.AssertImageIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageIdentifierList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertImageIdentifier(v)
	end
end

--  
-- List of ImageIdentifier objects
function M.ImageIdentifierList(list)
	asserts.AssertImageIdentifierList(list)
	return list
end

function asserts.AssertMediaTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected MediaTypeList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertMediaType(v)
	end
end

--  
-- List of MediaType objects
function M.MediaTypeList(list)
	asserts.AssertMediaTypeList(list)
	return list
end

function asserts.AssertLayerList(list)
	assert(list)
	assert(type(list) == "table", "Expected LayerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLayer(v)
	end
end

--  
-- List of Layer objects
function M.LayerList(list)
	asserts.AssertLayerList(list)
	return list
end

function asserts.AssertRepositoryNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryNameList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRepositoryName(v)
	end
end

--  
-- List of RepositoryName objects
function M.RepositoryNameList(list)
	asserts.AssertRepositoryNameList(list)
	return list
end

function asserts.AssertImageFailureList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageFailureList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertImageFailure(v)
	end
end

--  
-- List of ImageFailure objects
function M.ImageFailureList(list)
	asserts.AssertImageFailureList(list)
	return list
end

function asserts.AssertLayerFailureList(list)
	assert(list)
	assert(type(list) == "table", "Expected LayerFailureList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLayerFailure(v)
	end
end

--  
-- List of LayerFailure objects
function M.LayerFailureList(list)
	asserts.AssertLayerFailureList(list)
	return list
end

function asserts.AssertAuthorizationDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected AuthorizationDataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAuthorizationData(v)
	end
end

--  
-- List of AuthorizationData objects
function M.AuthorizationDataList(list)
	asserts.AssertAuthorizationDataList(list)
	return list
end

function asserts.AssertImageList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertImage(v)
	end
end

--  
-- List of Image objects
function M.ImageList(list)
	asserts.AssertImageList(list)
	return list
end

function asserts.AssertRepositoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRepository(v)
	end
end

--  
-- List of Repository objects
function M.RepositoryList(list)
	asserts.AssertRepositoryList(list)
	return list
end

function asserts.AssertImageTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected ImageTagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertImageTag(v)
	end
end

--  
-- List of ImageTag objects
function M.ImageTagList(list)
	asserts.AssertImageTagList(list)
	return list
end

function asserts.AssertBatchedOperationLayerDigestList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchedOperationLayerDigestList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertBatchedOperationLayerDigest(v)
	end
end

--  
-- List of BatchedOperationLayerDigest objects
function M.BatchedOperationLayerDigestList(list)
	asserts.AssertBatchedOperationLayerDigestList(list)
	return list
end

function asserts.AssertGetAuthorizationTokenRegistryIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected GetAuthorizationTokenRegistryIdList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRegistryId(v)
	end
end

--  
-- List of RegistryId objects
function M.GetAuthorizationTokenRegistryIdList(list)
	asserts.AssertGetAuthorizationTokenRegistryIdList(list)
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
--- Call DescribeRepositories asynchronously, invoking a callback when done
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

--- Call DescribeRepositories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRepositoriesRequest
-- @return response
-- @return error_message
function M.DescribeRepositoriesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRepositoriesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRepository asynchronously, invoking a callback when done
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

--- Call DeleteRepository synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRepositoryRequest
-- @return response
-- @return error_message
function M.DeleteRepositorySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRepositoryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDeleteImage asynchronously, invoking a callback when done
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

--- Call BatchDeleteImage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDeleteImageRequest
-- @return response
-- @return error_message
function M.BatchDeleteImageSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDeleteImageAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDownloadUrlForLayer asynchronously, invoking a callback when done
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

--- Call GetDownloadUrlForLayer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDownloadUrlForLayerRequest
-- @return response
-- @return error_message
function M.GetDownloadUrlForLayerSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDownloadUrlForLayerAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutImage asynchronously, invoking a callback when done
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

--- Call PutImage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutImageRequest
-- @return response
-- @return error_message
function M.PutImageSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutImageAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAuthorizationToken asynchronously, invoking a callback when done
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

--- Call GetAuthorizationToken synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAuthorizationTokenRequest
-- @return response
-- @return error_message
function M.GetAuthorizationTokenSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAuthorizationTokenAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListImages asynchronously, invoking a callback when done
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

--- Call ListImages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListImagesRequest
-- @return response
-- @return error_message
function M.ListImagesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListImagesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRepositoryPolicy asynchronously, invoking a callback when done
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

--- Call GetRepositoryPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRepositoryPolicyRequest
-- @return response
-- @return error_message
function M.GetRepositoryPolicySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRepositoryPolicyAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CompleteLayerUpload asynchronously, invoking a callback when done
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

--- Call CompleteLayerUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CompleteLayerUploadRequest
-- @return response
-- @return error_message
function M.CompleteLayerUploadSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CompleteLayerUploadAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeImages asynchronously, invoking a callback when done
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

--- Call DescribeImages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeImagesRequest
-- @return response
-- @return error_message
function M.DescribeImagesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeImagesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call InitiateLayerUpload asynchronously, invoking a callback when done
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

--- Call InitiateLayerUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InitiateLayerUploadRequest
-- @return response
-- @return error_message
function M.InitiateLayerUploadSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitiateLayerUploadAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetImage asynchronously, invoking a callback when done
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

--- Call BatchGetImage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetImageRequest
-- @return response
-- @return error_message
function M.BatchGetImageSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetImageAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetRepositoryPolicy asynchronously, invoking a callback when done
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

--- Call SetRepositoryPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetRepositoryPolicyRequest
-- @return response
-- @return error_message
function M.SetRepositoryPolicySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetRepositoryPolicyAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRepository asynchronously, invoking a callback when done
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

--- Call CreateRepository synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRepositoryRequest
-- @return response
-- @return error_message
function M.CreateRepositorySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRepositoryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchCheckLayerAvailability asynchronously, invoking a callback when done
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

--- Call BatchCheckLayerAvailability synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchCheckLayerAvailabilityRequest
-- @return response
-- @return error_message
function M.BatchCheckLayerAvailabilitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchCheckLayerAvailabilityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadLayerPart asynchronously, invoking a callback when done
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

--- Call UploadLayerPart synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UploadLayerPartRequest
-- @return response
-- @return error_message
function M.UploadLayerPartSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadLayerPartAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRepositoryPolicy asynchronously, invoking a callback when done
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

--- Call DeleteRepositoryPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRepositoryPolicyRequest
-- @return response
-- @return error_message
function M.DeleteRepositoryPolicySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRepositoryPolicyAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
