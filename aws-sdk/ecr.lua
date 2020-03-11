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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The repository that contains the image to delete.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the image to delete. If you do not specify a registry, the default registry is assumed.</p>
-- * imageIds [ImageIdentifierList] <p>A list of image ID references that correspond to images to delete. The format of the <code>imageIds</code> reference is <code>imageTag=tag</code> or <code>imageDigest=digest</code>.</p>
-- Required key: repositoryName
-- Required key: imageIds
-- @return BatchDeleteImageRequest structure as a key-value pair table
function M.BatchDeleteImageRequest(args)
	assert(args, "You must provide an argument table when creating BatchDeleteImageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
		["imageIds"] = args["imageIds"],
	}
	asserts.AssertBatchDeleteImageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return RepositoryNotEmptyException structure as a key-value pair table
function M.RepositoryNotEmptyException(args)
	assert(args, "You must provide an argument table when creating RepositoryNotEmptyException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertRepositoryNotEmptyException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecyclePolicyPreviewResult = { ["action"] = true, ["imageTags"] = true, ["appliedRulePriority"] = true, ["imageDigest"] = true, ["imagePushedAt"] = true, nil }

function asserts.AssertLifecyclePolicyPreviewResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecyclePolicyPreviewResult to be of type 'table'")
	if struct["action"] then asserts.AssertLifecyclePolicyRuleAction(struct["action"]) end
	if struct["imageTags"] then asserts.AssertImageTagList(struct["imageTags"]) end
	if struct["appliedRulePriority"] then asserts.AssertLifecyclePolicyRulePriority(struct["appliedRulePriority"]) end
	if struct["imageDigest"] then asserts.AssertImageDigest(struct["imageDigest"]) end
	if struct["imagePushedAt"] then asserts.AssertPushTimestamp(struct["imagePushedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecyclePolicyPreviewResult[k], "LifecyclePolicyPreviewResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecyclePolicyPreviewResult
-- <p>The result of the lifecycle policy preview.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * action [LifecyclePolicyRuleAction] <p>The type of action to be taken.</p>
-- * imageTags [ImageTagList] <p>The list of tags associated with this image.</p>
-- * appliedRulePriority [LifecyclePolicyRulePriority] <p>The priority of the applied rule.</p>
-- * imageDigest [ImageDigest] <p>The <code>sha256</code> digest of the image manifest.</p>
-- * imagePushedAt [PushTimestamp] <p>The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository.</p>
-- @return LifecyclePolicyPreviewResult structure as a key-value pair table
function M.LifecyclePolicyPreviewResult(args)
	assert(args, "You must provide an argument table when creating LifecyclePolicyPreviewResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["action"] = args["action"],
		["imageTags"] = args["imageTags"],
		["appliedRulePriority"] = args["appliedRulePriority"],
		["imageDigest"] = args["imageDigest"],
		["imagePushedAt"] = args["imagePushedAt"],
	}
	asserts.AssertLifecyclePolicyPreviewResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * imageManifest [ImageManifest] <p>The image manifest corresponding to the image to be uploaded.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository in which to put the image.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository in which to put the image. If you do not specify a registry, the default registry is assumed.</p>
-- * imageTag [ImageTag] <p>The tag to associate with the image. This parameter is required for images that use the Docker Image Manifest V2 Schema 2 or OCI formats.</p>
-- Required key: repositoryName
-- Required key: imageManifest
-- @return PutImageRequest structure as a key-value pair table
function M.PutImageRequest(args)
	assert(args, "You must provide an argument table when creating PutImageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["imageManifest"] = args["imageManifest"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
		["imageTag"] = args["imageTag"],
	}
	asserts.AssertPutImageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListImages</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * filter [ListImagesFilter] <p>The filter key and value with which to filter your <code>ListImages</code> results.</p>
-- * repositoryName [RepositoryName] <p>The repository with image IDs to be listed.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository in which to list images. If you do not specify a registry, the default registry is assumed.</p>
-- * maxResults [MaxResults] <p>The maximum number of image results returned by <code>ListImages</code> in paginated output. When this parameter is used, <code>ListImages</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListImages</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListImages</code> returns up to 100 results and a <code>nextToken</code> value, if applicable.</p>
-- Required key: repositoryName
-- @return ListImagesRequest structure as a key-value pair table
function M.ListImagesRequest(args)
	assert(args, "You must provide an argument table when creating ListImagesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["filter"] = args["filter"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListImagesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return LayerAlreadyExistsException structure as a key-value pair table
function M.LayerAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating LayerAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLayerAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lastValidByteReceived [PartSize] <p>The last valid byte received from the layer part upload that is associated with the exception.</p>
-- * uploadId [UploadId] <p>The upload ID associated with the exception.</p>
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the exception.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the exception.</p>
-- @return InvalidLayerPartException structure as a key-value pair table
function M.InvalidLayerPartException(args)
	assert(args, "You must provide an argument table when creating InvalidLayerPartException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lastValidByteReceived"] = args["lastValidByteReceived"],
		["uploadId"] = args["uploadId"],
		["message"] = args["message"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertInvalidLayerPartException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLifecyclePolicyRequest = { ["lifecyclePolicyText"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertPutLifecyclePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLifecyclePolicyRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["lifecyclePolicyText"], "Expected key lifecyclePolicyText to exist in table")
	if struct["lifecyclePolicyText"] then asserts.AssertLifecyclePolicyText(struct["lifecyclePolicyText"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLifecyclePolicyRequest[k], "PutLifecyclePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLifecyclePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lifecyclePolicyText [LifecyclePolicyText] <p>The JSON repository policy text to apply to the repository.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository to receive the policy.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do&#x2028; not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- Required key: lifecyclePolicyText
-- @return PutLifecyclePolicyRequest structure as a key-value pair table
function M.PutLifecyclePolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutLifecyclePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lifecyclePolicyText"] = args["lifecyclePolicyText"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertPutLifecyclePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartLifecyclePolicyPreviewResponse = { ["status"] = true, ["lifecyclePolicyText"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertStartLifecyclePolicyPreviewResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartLifecyclePolicyPreviewResponse to be of type 'table'")
	if struct["status"] then asserts.AssertLifecyclePolicyPreviewStatus(struct["status"]) end
	if struct["lifecyclePolicyText"] then asserts.AssertLifecyclePolicyText(struct["lifecyclePolicyText"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartLifecyclePolicyPreviewResponse[k], "StartLifecyclePolicyPreviewResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartLifecyclePolicyPreviewResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [LifecyclePolicyPreviewStatus] <p>The status of the lifecycle policy preview request.</p>
-- * lifecyclePolicyText [LifecyclePolicyText] <p>The JSON repository policy text.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the request.</p>
-- @return StartLifecyclePolicyPreviewResponse structure as a key-value pair table
function M.StartLifecyclePolicyPreviewResponse(args)
	assert(args, "You must provide an argument table when creating StartLifecyclePolicyPreviewResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["lifecyclePolicyText"] = args["lifecyclePolicyText"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertStartLifecyclePolicyPreviewResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecyclePolicyPreviewNotFoundException = { ["message"] = true, nil }

function asserts.AssertLifecyclePolicyPreviewNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecyclePolicyPreviewNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecyclePolicyPreviewNotFoundException[k], "LifecyclePolicyPreviewNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecyclePolicyPreviewNotFoundException
-- <p>There is no dry run for this repository.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] 
-- @return LifecyclePolicyPreviewNotFoundException structure as a key-value pair table
function M.LifecyclePolicyPreviewNotFoundException(args)
	assert(args, "You must provide an argument table when creating LifecyclePolicyPreviewNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLifecyclePolicyPreviewNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * images [ImageList] <p>A list of image objects corresponding to the image references in the request.</p>
-- * failures [ImageFailureList] <p>Any failures associated with the call.</p>
-- @return BatchGetImageResponse structure as a key-value pair table
function M.BatchGetImageResponse(args)
	assert(args, "You must provide an argument table when creating BatchGetImageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["images"] = args["images"],
		["failures"] = args["failures"],
	}
	asserts.AssertBatchGetImageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>DescribeRepositories</code> request. When the results of a <code>DescribeRepositories</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * repositories [RepositoryList] <p>A list of repository objects corresponding to valid repositories.</p>
-- @return DescribeRepositoriesResponse structure as a key-value pair table
function M.DescribeRepositoriesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeRepositoriesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["repositories"] = args["repositories"],
	}
	asserts.AssertDescribeRepositoriesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLifecyclePolicyResponse = { ["lifecyclePolicyText"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertPutLifecyclePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLifecyclePolicyResponse to be of type 'table'")
	if struct["lifecyclePolicyText"] then asserts.AssertLifecyclePolicyText(struct["lifecyclePolicyText"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLifecyclePolicyResponse[k], "PutLifecyclePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLifecyclePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lifecyclePolicyText [LifecyclePolicyText] <p>The JSON repository policy text.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the request.</p>
-- @return PutLifecyclePolicyResponse structure as a key-value pair table
function M.PutLifecyclePolicyResponse(args)
	assert(args, "You must provide an argument table when creating PutLifecyclePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lifecyclePolicyText"] = args["lifecyclePolicyText"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertPutLifecyclePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLifecyclePolicyPreviewRequest = { ["repositoryName"] = true, ["maxResults"] = true, ["filter"] = true, ["imageIds"] = true, ["registryId"] = true, ["nextToken"] = true, nil }

function asserts.AssertGetLifecyclePolicyPreviewRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLifecyclePolicyPreviewRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	if struct["filter"] then asserts.AssertLifecyclePolicyPreviewFilter(struct["filter"]) end
	if struct["imageIds"] then asserts.AssertImageIdentifierList(struct["imageIds"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLifecyclePolicyPreviewRequest[k], "GetLifecyclePolicyPreviewRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLifecyclePolicyPreviewRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository.</p>
-- * maxResults [MaxResults] <p>The maximum number of repository results returned by <code>GetLifecyclePolicyPreviewRequest</code> in&#x2028; paginated output. When this parameter is used, <code>GetLifecyclePolicyPreviewRequest</code> only returns&#x2028; <code>maxResults</code> results in a single page along with a <code>nextToken</code>&#x2028; response element. The remaining results of the initial request can be seen by sending&#x2028; another <code>GetLifecyclePolicyPreviewRequest</code> request with the returned <code>nextToken</code>&#x2028; value. This value can be between 1 and 100. If this&#x2028; parameter is not used, then <code>GetLifecyclePolicyPreviewRequest</code> returns up to&#x2028; 100 results and a <code>nextToken</code> value, if&#x2028; applicable. This option cannot be used when you specify images with <code>imageIds</code>.</p>
-- * filter [LifecyclePolicyPreviewFilter] <p>An optional parameter that filters results based on image tag status and all tags, if tagged.</p>
-- * imageIds [ImageIdentifierList] <p>The list of imageIDs to be included.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>
-- * nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated&#x2028; <code>GetLifecyclePolicyPreviewRequest</code> request where <code>maxResults</code> was used and the&#x2028; results exceeded the value of that parameter. Pagination continues from the end of the&#x2028; previous results that returned the <code>nextToken</code> value. This value is&#x2028; <code>null</code> when there are no more results to return. This option cannot be used when you specify images with <code>imageIds</code>.</p>
-- Required key: repositoryName
-- @return GetLifecyclePolicyPreviewRequest structure as a key-value pair table
function M.GetLifecyclePolicyPreviewRequest(args)
	assert(args, "You must provide an argument table when creating GetLifecyclePolicyPreviewRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["maxResults"] = args["maxResults"],
		["filter"] = args["filter"],
		["imageIds"] = args["imageIds"],
		["registryId"] = args["registryId"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertGetLifecyclePolicyPreviewRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return LayerInaccessibleException structure as a key-value pair table
function M.LayerInaccessibleException(args)
	assert(args, "You must provide an argument table when creating LayerInaccessibleException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLayerInaccessibleException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * layerAvailability [LayerAvailability] <p>The availability status of the image layer.</p>
-- * layerDigest [LayerDigest] <p>The <code>sha256</code> digest of the image layer.</p>
-- * layerSize [LayerSizeInBytes] <p>The size, in bytes, of the image layer.</p>
-- * mediaType [MediaType] <p>The media type of the layer, such as <code>application/vnd.docker.image.rootfs.diff.tar.gzip</code> or <code>application/vnd.oci.image.layer.v1.tar+gzip</code>.</p>
-- @return Layer structure as a key-value pair table
function M.Layer(args)
	assert(args, "You must provide an argument table when creating Layer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["layerAvailability"] = args["layerAvailability"],
		["layerDigest"] = args["layerDigest"],
		["layerSize"] = args["layerSize"],
		["mediaType"] = args["mediaType"],
	}
	asserts.AssertLayer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * layerDigest [LayerDigest] <p>The digest of the image layer to download.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository that is associated with the image layer to download.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the image layer to download. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- Required key: layerDigest
-- @return GetDownloadUrlForLayerRequest structure as a key-value pair table
function M.GetDownloadUrlForLayerRequest(args)
	assert(args, "You must provide an argument table when creating GetDownloadUrlForLayerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["layerDigest"] = args["layerDigest"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertGetDownloadUrlForLayerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repository [Repository] <p>The repository that was deleted.</p>
-- @return DeleteRepositoryResponse structure as a key-value pair table
function M.DeleteRepositoryResponse(args)
	assert(args, "You must provide an argument table when creating DeleteRepositoryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repository"] = args["repository"],
	}
	asserts.AssertDeleteRepositoryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * layers [LayerList] <p>A list of image layer objects corresponding to the image layer references in the request.</p>
-- * failures [LayerFailureList] <p>Any failures associated with the call.</p>
-- @return BatchCheckLayerAvailabilityResponse structure as a key-value pair table
function M.BatchCheckLayerAvailabilityResponse(args)
	assert(args, "You must provide an argument table when creating BatchCheckLayerAvailabilityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["layers"] = args["layers"],
		["failures"] = args["failures"],
	}
	asserts.AssertBatchCheckLayerAvailabilityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * downloadUrl [Url] <p>The pre-signed Amazon S3 download URL for the requested layer.</p>
-- * layerDigest [LayerDigest] <p>The digest of the image layer to download.</p>
-- @return GetDownloadUrlForLayerResponse structure as a key-value pair table
function M.GetDownloadUrlForLayerResponse(args)
	assert(args, "You must provide an argument table when creating GetDownloadUrlForLayerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["downloadUrl"] = args["downloadUrl"],
		["layerDigest"] = args["layerDigest"],
	}
	asserts.AssertGetDownloadUrlForLayerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLifecyclePolicyResponse = { ["lifecyclePolicyText"] = true, ["repositoryName"] = true, ["registryId"] = true, ["lastEvaluatedAt"] = true, nil }

function asserts.AssertGetLifecyclePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLifecyclePolicyResponse to be of type 'table'")
	if struct["lifecyclePolicyText"] then asserts.AssertLifecyclePolicyText(struct["lifecyclePolicyText"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["lastEvaluatedAt"] then asserts.AssertEvaluationTimestamp(struct["lastEvaluatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLifecyclePolicyResponse[k], "GetLifecyclePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLifecyclePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lifecyclePolicyText [LifecyclePolicyText] <p>The JSON lifecycle policy text.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the request.</p>
-- * lastEvaluatedAt [EvaluationTimestamp] <p>The time stamp of the last time that the lifecycle policy was run.</p>
-- @return GetLifecyclePolicyResponse structure as a key-value pair table
function M.GetLifecyclePolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetLifecyclePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lifecyclePolicyText"] = args["lifecyclePolicyText"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
		["lastEvaluatedAt"] = args["lastEvaluatedAt"],
	}
	asserts.AssertGetLifecyclePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartLifecyclePolicyPreviewRequest = { ["lifecyclePolicyText"] = true, ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertStartLifecyclePolicyPreviewRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartLifecyclePolicyPreviewRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["lifecyclePolicyText"] then asserts.AssertLifecyclePolicyText(struct["lifecyclePolicyText"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartLifecyclePolicyPreviewRequest[k], "StartLifecyclePolicyPreviewRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartLifecyclePolicyPreviewRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lifecyclePolicyText [LifecyclePolicyText] <p>The policy to be evaluated against. If you do not specify a policy, the current policy for the repository is used.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository to be evaluated.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- @return StartLifecyclePolicyPreviewRequest structure as a key-value pair table
function M.StartLifecyclePolicyPreviewRequest(args)
	assert(args, "You must provide an argument table when creating StartLifecyclePolicyPreviewRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lifecyclePolicyText"] = args["lifecyclePolicyText"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertStartLifecyclePolicyPreviewRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>DescribeImages</code> request. When the results of a <code>DescribeImages</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * imageDetails [ImageDetailList] <p>A list of <a>ImageDetail</a> objects that contain data about the image.</p>
-- @return DescribeImagesResponse structure as a key-value pair table
function M.DescribeImagesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeImagesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["imageDetails"] = args["imageDetails"],
	}
	asserts.AssertDescribeImagesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The operation did not succeed because it would have exceeded a service limit for your account. For more information, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/service_limits.html">Amazon ECR Default Service Limits</a> in the Amazon Elastic Container Registry User Guide.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * uploadId [UploadId] <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to associate with the image layer.</p>
-- * layerDigests [LayerDigestList] <p>The <code>sha256</code> digest of the image layer.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository to associate with the image layer.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry to which to upload layers. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- Required key: uploadId
-- Required key: layerDigests
-- @return CompleteLayerUploadRequest structure as a key-value pair table
function M.CompleteLayerUploadRequest(args)
	assert(args, "You must provide an argument table when creating CompleteLayerUploadRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["uploadId"] = args["uploadId"],
		["layerDigests"] = args["layerDigests"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertCompleteLayerUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return RepositoryNotFoundException structure as a key-value pair table
function M.RepositoryNotFoundException(args)
	assert(args, "You must provide an argument table when creating RepositoryNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertRepositoryNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * authorizationData [AuthorizationDataList] <p>A list of authorization token data objects that correspond to the <code>registryIds</code> values in the request.</p>
-- @return GetAuthorizationTokenResponse structure as a key-value pair table
function M.GetAuthorizationTokenResponse(args)
	assert(args, "You must provide an argument table when creating GetAuthorizationTokenResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["authorizationData"] = args["authorizationData"],
	}
	asserts.AssertGetAuthorizationTokenResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tagStatus [TagStatus] <p>The tag status with which to filter your <a>DescribeImages</a> results. You can filter results based on whether they are <code>TAGGED</code> or <code>UNTAGGED</code>.</p>
-- @return DescribeImagesFilter structure as a key-value pair table
function M.DescribeImagesFilter(args)
	assert(args, "You must provide an argument table when creating DescribeImagesFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tagStatus"] = args["tagStatus"],
	}
	asserts.AssertDescribeImagesFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * registryIds [GetAuthorizationTokenRegistryIdList] <p>A list of AWS account IDs that are associated with the registries for which to get authorization tokens. If you do not specify a registry, the default registry is assumed.</p>
-- @return GetAuthorizationTokenRequest structure as a key-value pair table
function M.GetAuthorizationTokenRequest(args)
	assert(args, "You must provide an argument table when creating GetAuthorizationTokenRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["registryIds"] = args["registryIds"],
	}
	asserts.AssertGetAuthorizationTokenRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecyclePolicyNotFoundException = { ["message"] = true, nil }

function asserts.AssertLifecyclePolicyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecyclePolicyNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecyclePolicyNotFoundException[k], "LifecyclePolicyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecyclePolicyNotFoundException
-- <p>The lifecycle policy could not be found, and no policy is set to the repository.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] 
-- @return LifecyclePolicyNotFoundException structure as a key-value pair table
function M.LifecyclePolicyNotFoundException(args)
	assert(args, "You must provide an argument table when creating LifecyclePolicyNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLifecyclePolicyNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tagStatus [TagStatus] <p>The tag status with which to filter your <a>ListImages</a> results. You can filter results based on whether they are <code>TAGGED</code> or <code>UNTAGGED</code>.</p>
-- @return ListImagesFilter structure as a key-value pair table
function M.ListImagesFilter(args)
	assert(args, "You must provide an argument table when creating ListImagesFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tagStatus"] = args["tagStatus"],
	}
	asserts.AssertListImagesFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyText [RepositoryPolicyText] <p>The JSON repository policy text to apply to the repository.</p>
-- * force [ForceFlag] <p>If the policy you are attempting to set on a repository policy would prevent you from setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental repository lock outs.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository to receive the policy.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- Required key: policyText
-- @return SetRepositoryPolicyRequest structure as a key-value pair table
function M.SetRepositoryPolicyRequest(args)
	assert(args, "You must provide an argument table when creating SetRepositoryPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["policyText"] = args["policyText"],
		["force"] = args["force"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertSetRepositoryPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * imageSizeInBytes [ImageSizeInBytes] <p>The size, in bytes, of the image in the repository.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>
-- * imageDigest [ImageDigest] <p>The <code>sha256</code> digest of the image manifest.</p>
-- * imageTags [ImageTagList] <p>The list of tags associated with this image.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry to which this image belongs.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository to which this image belongs.</p>
-- * imagePushedAt [PushTimestamp] <p>The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. </p>
-- @return ImageDetail structure as a key-value pair table
function M.ImageDetail(args)
	assert(args, "You must provide an argument table when creating ImageDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["imageSizeInBytes"] = args["imageSizeInBytes"],
		["imageDigest"] = args["imageDigest"],
		["imageTags"] = args["imageTags"],
		["registryId"] = args["registryId"],
		["repositoryName"] = args["repositoryName"],
		["imagePushedAt"] = args["imagePushedAt"],
	}
	asserts.AssertImageDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLifecyclePolicyResponse = { ["lifecyclePolicyText"] = true, ["repositoryName"] = true, ["registryId"] = true, ["lastEvaluatedAt"] = true, nil }

function asserts.AssertDeleteLifecyclePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLifecyclePolicyResponse to be of type 'table'")
	if struct["lifecyclePolicyText"] then asserts.AssertLifecyclePolicyText(struct["lifecyclePolicyText"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["lastEvaluatedAt"] then asserts.AssertEvaluationTimestamp(struct["lastEvaluatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLifecyclePolicyResponse[k], "DeleteLifecyclePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLifecyclePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lifecyclePolicyText [LifecyclePolicyText] <p>The JSON lifecycle policy text.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the request.</p>
-- * lastEvaluatedAt [EvaluationTimestamp] <p>The time stamp of the last time that the lifecycle policy was run.</p>
-- @return DeleteLifecyclePolicyResponse structure as a key-value pair table
function M.DeleteLifecyclePolicyResponse(args)
	assert(args, "You must provide an argument table when creating DeleteLifecyclePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lifecyclePolicyText"] = args["lifecyclePolicyText"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
		["lastEvaluatedAt"] = args["lastEvaluatedAt"],
	}
	asserts.AssertDeleteLifecyclePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return EmptyUploadException structure as a key-value pair table
function M.EmptyUploadException(args)
	assert(args, "You must provide an argument table when creating EmptyUploadException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertEmptyUploadException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return RepositoryAlreadyExistsException structure as a key-value pair table
function M.RepositoryAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating RepositoryAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertRepositoryAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeRepositories</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return. This option cannot be used when you specify repositories with <code>repositoryNames</code>.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * repositoryNames [RepositoryNameList] <p>A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repositories to be described. If you do not specify a registry, the default registry is assumed.</p>
-- * maxResults [MaxResults] <p>The maximum number of repository results returned by <code>DescribeRepositories</code> in paginated output. When this parameter is used, <code>DescribeRepositories</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeRepositories</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeRepositories</code> returns up to 100 results and a <code>nextToken</code> value, if applicable. This option cannot be used when you specify repositories with <code>repositoryNames</code>.</p>
-- @return DescribeRepositoriesRequest structure as a key-value pair table
function M.DescribeRepositoriesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeRepositoriesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["repositoryNames"] = args["repositoryNames"],
		["registryId"] = args["registryId"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertDescribeRepositoriesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failureReason [ImageFailureReason] <p>The reason for the failure.</p>
-- * failureCode [ImageFailureCode] <p>The code associated with the failure.</p>
-- * imageId [ImageIdentifier] <p>The image ID associated with the failure.</p>
-- @return ImageFailure structure as a key-value pair table
function M.ImageFailure(args)
	assert(args, "You must provide an argument table when creating ImageFailure")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failureReason"] = args["failureReason"],
		["failureCode"] = args["failureCode"],
		["imageId"] = args["imageId"],
	}
	asserts.AssertImageFailure(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * authorizationToken [Base64] <p>A base64-encoded string that contains authorization data for the specified Amazon ECR registry. When the string is decoded, it is presented in the format <code>user:password</code> for private registry authentication using <code>docker login</code>.</p>
-- * expiresAt [ExpirationTimestamp] <p>The Unix time in seconds and milliseconds when the authorization token expires. Authorization tokens are valid for 12 hours.</p>
-- * proxyEndpoint [ProxyEndpoint] <p>The registry URL to use for this authorization token in a <code>docker login</code> command. The Amazon ECR registry URL format is <code>https://aws_account_id.dkr.ecr.region.amazonaws.com</code>. For example, <code>https://012345678910.dkr.ecr.us-east-1.amazonaws.com</code>.. </p>
-- @return AuthorizationData structure as a key-value pair table
function M.AuthorizationData(args)
	assert(args, "You must provide an argument table when creating AuthorizationData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["authorizationToken"] = args["authorizationToken"],
		["expiresAt"] = args["expiresAt"],
		["proxyEndpoint"] = args["proxyEndpoint"],
	}
	asserts.AssertAuthorizationData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failures [ImageFailureList] <p>Any failures associated with the call.</p>
-- * imageIds [ImageIdentifierList] <p>The image IDs of the deleted images.</p>
-- @return BatchDeleteImageResponse structure as a key-value pair table
function M.BatchDeleteImageResponse(args)
	assert(args, "You must provide an argument table when creating BatchDeleteImageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failures"] = args["failures"],
		["imageIds"] = args["imageIds"],
	}
	asserts.AssertBatchDeleteImageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * layerDigests [BatchedOperationLayerDigestList] <p>The digests of the image layers to check.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository that is associated with the image layers to check.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the image layers to check. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- Required key: layerDigests
-- @return BatchCheckLayerAvailabilityRequest structure as a key-value pair table
function M.BatchCheckLayerAvailabilityRequest(args)
	assert(args, "You must provide an argument table when creating BatchCheckLayerAvailabilityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["layerDigests"] = args["layerDigests"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertBatchCheckLayerAvailabilityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLifecyclePolicyRequest = { ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertGetLifecyclePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLifecyclePolicyRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLifecyclePolicyRequest[k], "GetLifecyclePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLifecyclePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- @return GetLifecyclePolicyRequest structure as a key-value pair table
function M.GetLifecyclePolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetLifecyclePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertGetLifecyclePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecyclePolicyPreviewSummary = { ["expiringImageTotalCount"] = true, nil }

function asserts.AssertLifecyclePolicyPreviewSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecyclePolicyPreviewSummary to be of type 'table'")
	if struct["expiringImageTotalCount"] then asserts.AssertImageCount(struct["expiringImageTotalCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecyclePolicyPreviewSummary[k], "LifecyclePolicyPreviewSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecyclePolicyPreviewSummary
-- <p>The summary of the lifecycle policy preview request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * expiringImageTotalCount [ImageCount] <p>The number of expiring images.</p>
-- @return LifecyclePolicyPreviewSummary structure as a key-value pair table
function M.LifecyclePolicyPreviewSummary(args)
	assert(args, "You must provide an argument table when creating LifecyclePolicyPreviewSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["expiringImageTotalCount"] = args["expiringImageTotalCount"],
	}
	asserts.AssertLifecyclePolicyPreviewSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * partSize [PartSize] <p>The size, in bytes, that Amazon ECR expects future layer part uploads to be.</p>
-- * uploadId [UploadId] <p>The upload ID for the layer upload. This parameter is passed to further <a>UploadLayerPart</a> and <a>CompleteLayerUpload</a> operations.</p>
-- @return InitiateLayerUploadResponse structure as a key-value pair table
function M.InitiateLayerUploadResponse(args)
	assert(args, "You must provide an argument table when creating InitiateLayerUploadResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["partSize"] = args["partSize"],
		["uploadId"] = args["uploadId"],
	}
	asserts.AssertInitiateLayerUploadResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * imageTag [ImageTag] <p>The tag used for the image.</p>
-- * imageDigest [ImageDigest] <p>The <code>sha256</code> digest of the image manifest.</p>
-- @return ImageIdentifier structure as a key-value pair table
function M.ImageIdentifier(args)
	assert(args, "You must provide an argument table when creating ImageIdentifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["imageTag"] = args["imageTag"],
		["imageDigest"] = args["imageDigest"],
	}
	asserts.AssertImageIdentifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * uploadId [UploadId] <p>The upload ID associated with the layer.</p>
-- * layerDigest [LayerDigest] <p>The <code>sha256</code> digest of the image layer.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the request.</p>
-- @return CompleteLayerUploadResponse structure as a key-value pair table
function M.CompleteLayerUploadResponse(args)
	assert(args, "You must provide an argument table when creating CompleteLayerUploadResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["uploadId"] = args["uploadId"],
		["layerDigest"] = args["layerDigest"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertCompleteLayerUploadResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyText [RepositoryPolicyText] <p>The JSON repository policy text associated with the repository.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the request.</p>
-- @return GetRepositoryPolicyResponse structure as a key-value pair table
function M.GetRepositoryPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetRepositoryPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["policyText"] = args["policyText"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertGetRepositoryPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return LayersNotFoundException structure as a key-value pair table
function M.LayersNotFoundException(args)
	assert(args, "You must provide an argument table when creating LayersNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLayersNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * layerPartBlob [LayerPartBlob] <p>The base64-encoded layer part payload.</p>
-- * partFirstByte [PartSize] <p>The integer value of the first byte of the layer part.</p>
-- * uploadId [UploadId] <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to associate with the layer part upload.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry to which you are uploading layer parts. If you do not specify a registry, the default registry is assumed.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository to which you are uploading layer parts.</p>
-- * partLastByte [PartSize] <p>The integer value of the last byte of the layer part.</p>
-- Required key: repositoryName
-- Required key: uploadId
-- Required key: partFirstByte
-- Required key: partLastByte
-- Required key: layerPartBlob
-- @return UploadLayerPartRequest structure as a key-value pair table
function M.UploadLayerPartRequest(args)
	assert(args, "You must provide an argument table when creating UploadLayerPartRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["layerPartBlob"] = args["layerPartBlob"],
		["partFirstByte"] = args["partFirstByte"],
		["uploadId"] = args["uploadId"],
		["registryId"] = args["registryId"],
		["repositoryName"] = args["repositoryName"],
		["partLastByte"] = args["partLastByte"],
	}
	asserts.AssertUploadLayerPartRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return InvalidLayerException structure as a key-value pair table
function M.InvalidLayerException(args)
	assert(args, "You must provide an argument table when creating InvalidLayerException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidLayerException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository.</p>
-- * repositoryArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the <code>arn:aws:ecr</code> namespace, followed by the region of the repository, AWS account ID of the repository owner, repository namespace, and repository name. For example, <code>arn:aws:ecr:region:012345678910:repository/test</code>.</p>
-- * createdAt [CreationTimestamp] <p>The date and time, in JavaScript date format, when the repository was created.</p>
-- * repositoryUri [Url] <p>The URI for the repository. You can use this URI for Docker <code>push</code> or <code>pull</code> operations.</p>
-- @return Repository structure as a key-value pair table
function M.Repository(args)
	assert(args, "You must provide an argument table when creating Repository")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["registryId"] = args["registryId"],
		["repositoryName"] = args["repositoryName"],
		["repositoryArn"] = args["repositoryArn"],
		["createdAt"] = args["createdAt"],
		["repositoryUri"] = args["repositoryUri"],
	}
	asserts.AssertRepository(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecyclePolicyRuleAction = { ["type"] = true, nil }

function asserts.AssertLifecyclePolicyRuleAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecyclePolicyRuleAction to be of type 'table'")
	if struct["type"] then asserts.AssertImageActionType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecyclePolicyRuleAction[k], "LifecyclePolicyRuleAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecyclePolicyRuleAction
-- <p>The type of action to be taken.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [ImageActionType] <p>The type of action to be taken.</p>
-- @return LifecyclePolicyRuleAction structure as a key-value pair table
function M.LifecyclePolicyRuleAction(args)
	assert(args, "You must provide an argument table when creating LifecyclePolicyRuleAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
	}
	asserts.AssertLifecyclePolicyRuleAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecyclePolicyPreviewInProgressException = { ["message"] = true, nil }

function asserts.AssertLifecyclePolicyPreviewInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecyclePolicyPreviewInProgressException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecyclePolicyPreviewInProgressException[k], "LifecyclePolicyPreviewInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecyclePolicyPreviewInProgressException
-- <p>The previous lifecycle policy preview request has not completed. Please try again later.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] 
-- @return LifecyclePolicyPreviewInProgressException structure as a key-value pair table
function M.LifecyclePolicyPreviewInProgressException(args)
	assert(args, "You must provide an argument table when creating LifecyclePolicyPreviewInProgressException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLifecyclePolicyPreviewInProgressException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return RepositoryPolicyNotFoundException structure as a key-value pair table
function M.RepositoryPolicyNotFoundException(args)
	assert(args, "You must provide an argument table when creating RepositoryPolicyNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertRepositoryPolicyNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository with the policy to retrieve.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- @return GetRepositoryPolicyRequest structure as a key-value pair table
function M.GetRepositoryPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetRepositoryPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertGetRepositoryPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The specified image has already been pushed, and there were no changes to the manifest or image tag after the last push.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return ImageAlreadyExistsException structure as a key-value pair table
function M.ImageAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating ImageAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertImageAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] 
-- @return ImageNotFoundException structure as a key-value pair table
function M.ImageNotFoundException(args)
	assert(args, "You must provide an argument table when creating ImageNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertImageNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * imageManifest [ImageManifest] <p>The image manifest associated with the image.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository associated with the image.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry containing the image.</p>
-- * imageId [ImageIdentifier] <p>An object containing the image tag and image digest associated with an image.</p>
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
		["imageManifest"] = args["imageManifest"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
		["imageId"] = args["imageId"],
	}
	asserts.AssertImage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLifecyclePolicyPreviewResponse = { ["status"] = true, ["nextToken"] = true, ["lifecyclePolicyText"] = true, ["summary"] = true, ["previewResults"] = true, ["registryId"] = true, ["repositoryName"] = true, nil }

function asserts.AssertGetLifecyclePolicyPreviewResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLifecyclePolicyPreviewResponse to be of type 'table'")
	if struct["status"] then asserts.AssertLifecyclePolicyPreviewStatus(struct["status"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["lifecyclePolicyText"] then asserts.AssertLifecyclePolicyText(struct["lifecyclePolicyText"]) end
	if struct["summary"] then asserts.AssertLifecyclePolicyPreviewSummary(struct["summary"]) end
	if struct["previewResults"] then asserts.AssertLifecyclePolicyPreviewResultList(struct["previewResults"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLifecyclePolicyPreviewResponse[k], "GetLifecyclePolicyPreviewResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLifecyclePolicyPreviewResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [LifecyclePolicyPreviewStatus] <p>The status of the lifecycle policy preview request.</p>
-- * nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>GetLifecyclePolicyPreview</code> request. When the results of a <code>GetLifecyclePolicyPreview</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * lifecyclePolicyText [LifecyclePolicyText] <p>The JSON lifecycle policy text.</p>
-- * summary [LifecyclePolicyPreviewSummary] <p>The list of images that is returned as a result of the action.</p>
-- * previewResults [LifecyclePolicyPreviewResultList] <p>The results of the lifecycle policy preview request.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the request.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- @return GetLifecyclePolicyPreviewResponse structure as a key-value pair table
function M.GetLifecyclePolicyPreviewResponse(args)
	assert(args, "You must provide an argument table when creating GetLifecyclePolicyPreviewResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["nextToken"] = args["nextToken"],
		["lifecyclePolicyText"] = args["lifecyclePolicyText"],
		["summary"] = args["summary"],
		["previewResults"] = args["previewResults"],
		["registryId"] = args["registryId"],
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertGetLifecyclePolicyPreviewResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LifecyclePolicyPreviewFilter = { ["tagStatus"] = true, nil }

function asserts.AssertLifecyclePolicyPreviewFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LifecyclePolicyPreviewFilter to be of type 'table'")
	if struct["tagStatus"] then asserts.AssertTagStatus(struct["tagStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.LifecyclePolicyPreviewFilter[k], "LifecyclePolicyPreviewFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LifecyclePolicyPreviewFilter
-- <p>The filter for the lifecycle policy preview.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tagStatus [TagStatus] <p>The tag status of the image.</p>
-- @return LifecyclePolicyPreviewFilter structure as a key-value pair table
function M.LifecyclePolicyPreviewFilter(args)
	assert(args, "You must provide an argument table when creating LifecyclePolicyPreviewFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tagStatus"] = args["tagStatus"],
	}
	asserts.AssertLifecyclePolicyPreviewFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The <code>nextToken</code> value to include in a future <code>ListImages</code> request. When the results of a <code>ListImages</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * imageIds [ImageIdentifierList] <p>The list of image IDs for the requested repository.</p>
-- @return ListImagesResponse structure as a key-value pair table
function M.ListImagesResponse(args)
	assert(args, "You must provide an argument table when creating ListImagesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["imageIds"] = args["imageIds"],
	}
	asserts.AssertListImagesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * layerDigest [BatchedOperationLayerDigest] <p>The layer digest associated with the failure.</p>
-- * failureCode [LayerFailureCode] <p>The failure code associated with the failure.</p>
-- * failureReason [LayerFailureReason] <p>The reason for the failure.</p>
-- @return LayerFailure structure as a key-value pair table
function M.LayerFailure(args)
	assert(args, "You must provide an argument table when creating LayerFailure")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["layerDigest"] = args["layerDigest"],
		["failureCode"] = args["failureCode"],
		["failureReason"] = args["failureReason"],
	}
	asserts.AssertLayerFailure(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return UploadNotFoundException structure as a key-value pair table
function M.UploadNotFoundException(args)
	assert(args, "You must provide an argument table when creating UploadNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUploadNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidParameterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name to use for the repository. The repository name may be specified on its own (such as <code>nginx-web-app</code>) or it can be prepended with a namespace to group the repository into a category (such as <code>project-a/nginx-web-app</code>).</p>
-- Required key: repositoryName
-- @return CreateRepositoryRequest structure as a key-value pair table
function M.CreateRepositoryRequest(args)
	assert(args, "You must provide an argument table when creating CreateRepositoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertCreateRepositoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.</p>
-- * maxResults [MaxResults] <p>The maximum number of repository results returned by <code>DescribeImages</code> in paginated output. When this parameter is used, <code>DescribeImages</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeImages</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeImages</code> returns up to 100 results and a <code>nextToken</code> value, if applicable. This option cannot be used when you specify images with <code>imageIds</code>.</p>
-- * filter [DescribeImagesFilter] <p>The filter key and value with which to filter your <code>DescribeImages</code> results.</p>
-- * imageIds [ImageIdentifierList] <p>The list of image IDs for the requested repository.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository in which to describe images. If you do not specify a registry, the default registry is assumed.</p>
-- * nextToken [NextToken] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeImages</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return. This option cannot be used when you specify images with <code>imageIds</code>.</p>
-- Required key: repositoryName
-- @return DescribeImagesRequest structure as a key-value pair table
function M.DescribeImagesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeImagesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["maxResults"] = args["maxResults"],
		["filter"] = args["filter"],
		["imageIds"] = args["imageIds"],
		["registryId"] = args["registryId"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeImagesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository that is associated with the repository policy to delete.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository policy to delete. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- @return DeleteRepositoryPolicyRequest structure as a key-value pair table
function M.DeleteRepositoryPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRepositoryPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertDeleteRepositoryPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return ServerException structure as a key-value pair table
function M.ServerException(args)
	assert(args, "You must provide an argument table when creating ServerException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertServerException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLifecyclePolicyRequest = { ["repositoryName"] = true, ["registryId"] = true, nil }

function asserts.AssertDeleteLifecyclePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLifecyclePolicyRequest to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["registryId"] then asserts.AssertRegistryId(struct["registryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLifecyclePolicyRequest[k], "DeleteLifecyclePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLifecyclePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- @return DeleteLifecyclePolicyRequest structure as a key-value pair table
function M.DeleteLifecyclePolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLifecyclePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertDeleteLifecyclePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repository [Repository] <p>The repository that was created.</p>
-- @return CreateRepositoryResponse structure as a key-value pair table
function M.CreateRepositoryResponse(args)
	assert(args, "You must provide an argument table when creating CreateRepositoryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repository"] = args["repository"],
	}
	asserts.AssertCreateRepositoryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExceptionMessage] <p>The error message associated with the exception.</p>
-- @return LayerPartTooSmallException structure as a key-value pair table
function M.LayerPartTooSmallException(args)
	assert(args, "You must provide an argument table when creating LayerPartTooSmallException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLayerPartTooSmallException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyText [RepositoryPolicyText] <p>The JSON repository policy text applied to the repository.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the request.</p>
-- @return SetRepositoryPolicyResponse structure as a key-value pair table
function M.SetRepositoryPolicyResponse(args)
	assert(args, "You must provide an argument table when creating SetRepositoryPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["policyText"] = args["policyText"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertSetRepositoryPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The repository that contains the images to describe.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.</p>
-- * acceptedMediaTypes [MediaTypeList] <p>The accepted media types for the request.</p> <p>Valid values: <code>application/vnd.docker.distribution.manifest.v1+json</code> | <code>application/vnd.docker.distribution.manifest.v2+json</code> | <code>application/vnd.oci.image.manifest.v1+json</code> </p>
-- * imageIds [ImageIdentifierList] <p>A list of image ID references that correspond to images to describe. The format of the <code>imageIds</code> reference is <code>imageTag=tag</code> or <code>imageDigest=digest</code>.</p>
-- Required key: repositoryName
-- Required key: imageIds
-- @return BatchGetImageRequest structure as a key-value pair table
function M.BatchGetImageRequest(args)
	assert(args, "You must provide an argument table when creating BatchGetImageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
		["acceptedMediaTypes"] = args["acceptedMediaTypes"],
		["imageIds"] = args["imageIds"],
	}
	asserts.AssertBatchGetImageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * force [ForceFlag] <p> If a repository contains images, forces the deletion.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository to delete.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry that contains the repository to delete. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- @return DeleteRepositoryRequest structure as a key-value pair table
function M.DeleteRepositoryRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRepositoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["force"] = args["force"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertDeleteRepositoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyText [RepositoryPolicyText] <p>The JSON repository policy that was deleted from the repository.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the request.</p>
-- @return DeleteRepositoryPolicyResponse structure as a key-value pair table
function M.DeleteRepositoryPolicyResponse(args)
	assert(args, "You must provide an argument table when creating DeleteRepositoryPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["policyText"] = args["policyText"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertDeleteRepositoryPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * image [Image] <p>Details of the image uploaded.</p>
-- @return PutImageResponse structure as a key-value pair table
function M.PutImageResponse(args)
	assert(args, "You must provide an argument table when creating PutImageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["image"] = args["image"],
	}
	asserts.AssertPutImageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository to which you intend to upload layers.</p>
-- * registryId [RegistryId] <p>The AWS account ID associated with the registry to which you intend to upload layers. If you do not specify a registry, the default registry is assumed.</p>
-- Required key: repositoryName
-- @return InitiateLayerUploadRequest structure as a key-value pair table
function M.InitiateLayerUploadRequest(args)
	assert(args, "You must provide an argument table when creating InitiateLayerUploadRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertInitiateLayerUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * uploadId [UploadId] <p>The upload ID associated with the request.</p>
-- * lastByteReceived [PartSize] <p>The integer value of the last byte received in the request.</p>
-- * repositoryName [RepositoryName] <p>The repository name associated with the request.</p>
-- * registryId [RegistryId] <p>The registry ID associated with the request.</p>
-- @return UploadLayerPartResponse structure as a key-value pair table
function M.UploadLayerPartResponse(args)
	assert(args, "You must provide an argument table when creating UploadLayerPartResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["uploadId"] = args["uploadId"],
		["lastByteReceived"] = args["lastByteReceived"],
		["repositoryName"] = args["repositoryName"],
		["registryId"] = args["registryId"],
	}
	asserts.AssertUploadLayerPartResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertLifecyclePolicyPreviewStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecyclePolicyPreviewStatus to be of type 'string'")
end

--  
function M.LifecyclePolicyPreviewStatus(str)
	asserts.AssertLifecyclePolicyPreviewStatus(str)
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

function asserts.AssertLifecyclePolicyText(str)
	assert(str)
	assert(type(str) == "string", "Expected LifecyclePolicyText to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
	assert(#str >= 100, "Expected string to be min 100 characters")
end

--  
function M.LifecyclePolicyText(str)
	asserts.AssertLifecyclePolicyText(str)
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

function asserts.AssertImageActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ImageActionType to be of type 'string'")
end

--  
function M.ImageActionType(str)
	asserts.AssertImageActionType(str)
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

function asserts.AssertLifecyclePolicyRulePriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LifecyclePolicyRulePriority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.LifecyclePolicyRulePriority(integer)
	asserts.AssertLifecyclePolicyRulePriority(integer)
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

function asserts.AssertImageCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ImageCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ImageCount(integer)
	asserts.AssertImageCount(integer)
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

function asserts.AssertEvaluationTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EvaluationTimestamp to be of type 'string'")
end

function M.EvaluationTimestamp(timestamp)
	asserts.AssertEvaluationTimestamp(timestamp)
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
	assert(type(blob) == "string", "Expected LayerPartBlob to be of type 'string'")
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

function asserts.AssertLifecyclePolicyPreviewResultList(list)
	assert(list)
	assert(type(list) == "table", "Expected LifecyclePolicyPreviewResultList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLifecyclePolicyPreviewResult(v)
	end
end

--  
-- List of LifecyclePolicyPreviewResult objects
function M.LifecyclePolicyPreviewResultList(list)
	asserts.AssertLifecyclePolicyPreviewResultList(list)
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call DeleteRepository asynchronously, invoking a callback when done
-- @param DeleteRepositoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRepositoryAsync(DeleteRepositoryRequest, cb)
	assert(DeleteRepositoryRequest, "You must provide a DeleteRepositoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.DeleteRepository",
	}
	for header,value in pairs(DeleteRepositoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRepositoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRepository synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRepositoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRepositorySync(DeleteRepositoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRepositoryAsync(DeleteRepositoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAuthorizationToken asynchronously, invoking a callback when done
-- @param GetAuthorizationTokenRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAuthorizationTokenAsync(GetAuthorizationTokenRequest, cb)
	assert(GetAuthorizationTokenRequest, "You must provide a GetAuthorizationTokenRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.GetAuthorizationToken",
	}
	for header,value in pairs(GetAuthorizationTokenRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAuthorizationTokenRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAuthorizationToken synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAuthorizationTokenRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAuthorizationTokenSync(GetAuthorizationTokenRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAuthorizationTokenAsync(GetAuthorizationTokenRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartLifecyclePolicyPreview asynchronously, invoking a callback when done
-- @param StartLifecyclePolicyPreviewRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartLifecyclePolicyPreviewAsync(StartLifecyclePolicyPreviewRequest, cb)
	assert(StartLifecyclePolicyPreviewRequest, "You must provide a StartLifecyclePolicyPreviewRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.StartLifecyclePolicyPreview",
	}
	for header,value in pairs(StartLifecyclePolicyPreviewRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartLifecyclePolicyPreviewRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartLifecyclePolicyPreview synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartLifecyclePolicyPreviewRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartLifecyclePolicyPreviewSync(StartLifecyclePolicyPreviewRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartLifecyclePolicyPreviewAsync(StartLifecyclePolicyPreviewRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeImages asynchronously, invoking a callback when done
-- @param DescribeImagesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeImagesAsync(DescribeImagesRequest, cb)
	assert(DescribeImagesRequest, "You must provide a DescribeImagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.DescribeImages",
	}
	for header,value in pairs(DescribeImagesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeImagesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeImages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeImagesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeImagesSync(DescribeImagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeImagesAsync(DescribeImagesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLifecyclePolicy asynchronously, invoking a callback when done
-- @param DeleteLifecyclePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLifecyclePolicyAsync(DeleteLifecyclePolicyRequest, cb)
	assert(DeleteLifecyclePolicyRequest, "You must provide a DeleteLifecyclePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.DeleteLifecyclePolicy",
	}
	for header,value in pairs(DeleteLifecyclePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLifecyclePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLifecyclePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLifecyclePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLifecyclePolicySync(DeleteLifecyclePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLifecyclePolicyAsync(DeleteLifecyclePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRepositories asynchronously, invoking a callback when done
-- @param DescribeRepositoriesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRepositoriesAsync(DescribeRepositoriesRequest, cb)
	assert(DescribeRepositoriesRequest, "You must provide a DescribeRepositoriesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.DescribeRepositories",
	}
	for header,value in pairs(DescribeRepositoriesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRepositoriesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRepositories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRepositoriesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeRepositoriesSync(DescribeRepositoriesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRepositoriesAsync(DescribeRepositoriesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLifecyclePolicy asynchronously, invoking a callback when done
-- @param GetLifecyclePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLifecyclePolicyAsync(GetLifecyclePolicyRequest, cb)
	assert(GetLifecyclePolicyRequest, "You must provide a GetLifecyclePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.GetLifecyclePolicy",
	}
	for header,value in pairs(GetLifecyclePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetLifecyclePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLifecyclePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLifecyclePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLifecyclePolicySync(GetLifecyclePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLifecyclePolicyAsync(GetLifecyclePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetRepositoryPolicy asynchronously, invoking a callback when done
-- @param SetRepositoryPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetRepositoryPolicyAsync(SetRepositoryPolicyRequest, cb)
	assert(SetRepositoryPolicyRequest, "You must provide a SetRepositoryPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.SetRepositoryPolicy",
	}
	for header,value in pairs(SetRepositoryPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetRepositoryPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetRepositoryPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetRepositoryPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetRepositoryPolicySync(SetRepositoryPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetRepositoryPolicyAsync(SetRepositoryPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutImage asynchronously, invoking a callback when done
-- @param PutImageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutImageAsync(PutImageRequest, cb)
	assert(PutImageRequest, "You must provide a PutImageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.PutImage",
	}
	for header,value in pairs(PutImageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutImageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutImage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutImageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutImageSync(PutImageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutImageAsync(PutImageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadLayerPart asynchronously, invoking a callback when done
-- @param UploadLayerPartRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UploadLayerPartAsync(UploadLayerPartRequest, cb)
	assert(UploadLayerPartRequest, "You must provide a UploadLayerPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.UploadLayerPart",
	}
	for header,value in pairs(UploadLayerPartRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UploadLayerPartRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UploadLayerPart synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UploadLayerPartRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UploadLayerPartSync(UploadLayerPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadLayerPartAsync(UploadLayerPartRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutLifecyclePolicy asynchronously, invoking a callback when done
-- @param PutLifecyclePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutLifecyclePolicyAsync(PutLifecyclePolicyRequest, cb)
	assert(PutLifecyclePolicyRequest, "You must provide a PutLifecyclePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.PutLifecyclePolicy",
	}
	for header,value in pairs(PutLifecyclePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutLifecyclePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutLifecyclePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutLifecyclePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutLifecyclePolicySync(PutLifecyclePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutLifecyclePolicyAsync(PutLifecyclePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListImages asynchronously, invoking a callback when done
-- @param ListImagesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListImagesAsync(ListImagesRequest, cb)
	assert(ListImagesRequest, "You must provide a ListImagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.ListImages",
	}
	for header,value in pairs(ListImagesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListImagesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListImages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListImagesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListImagesSync(ListImagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListImagesAsync(ListImagesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CompleteLayerUpload asynchronously, invoking a callback when done
-- @param CompleteLayerUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CompleteLayerUploadAsync(CompleteLayerUploadRequest, cb)
	assert(CompleteLayerUploadRequest, "You must provide a CompleteLayerUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.CompleteLayerUpload",
	}
	for header,value in pairs(CompleteLayerUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CompleteLayerUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CompleteLayerUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CompleteLayerUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CompleteLayerUploadSync(CompleteLayerUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CompleteLayerUploadAsync(CompleteLayerUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InitiateLayerUpload asynchronously, invoking a callback when done
-- @param InitiateLayerUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InitiateLayerUploadAsync(InitiateLayerUploadRequest, cb)
	assert(InitiateLayerUploadRequest, "You must provide a InitiateLayerUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.InitiateLayerUpload",
	}
	for header,value in pairs(InitiateLayerUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", InitiateLayerUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InitiateLayerUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InitiateLayerUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InitiateLayerUploadSync(InitiateLayerUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitiateLayerUploadAsync(InitiateLayerUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRepository asynchronously, invoking a callback when done
-- @param CreateRepositoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRepositoryAsync(CreateRepositoryRequest, cb)
	assert(CreateRepositoryRequest, "You must provide a CreateRepositoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.CreateRepository",
	}
	for header,value in pairs(CreateRepositoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRepositoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRepository synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRepositoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRepositorySync(CreateRepositoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRepositoryAsync(CreateRepositoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchCheckLayerAvailability asynchronously, invoking a callback when done
-- @param BatchCheckLayerAvailabilityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchCheckLayerAvailabilityAsync(BatchCheckLayerAvailabilityRequest, cb)
	assert(BatchCheckLayerAvailabilityRequest, "You must provide a BatchCheckLayerAvailabilityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.BatchCheckLayerAvailability",
	}
	for header,value in pairs(BatchCheckLayerAvailabilityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchCheckLayerAvailabilityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchCheckLayerAvailability synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchCheckLayerAvailabilityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchCheckLayerAvailabilitySync(BatchCheckLayerAvailabilityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchCheckLayerAvailabilityAsync(BatchCheckLayerAvailabilityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLifecyclePolicyPreview asynchronously, invoking a callback when done
-- @param GetLifecyclePolicyPreviewRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLifecyclePolicyPreviewAsync(GetLifecyclePolicyPreviewRequest, cb)
	assert(GetLifecyclePolicyPreviewRequest, "You must provide a GetLifecyclePolicyPreviewRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.GetLifecyclePolicyPreview",
	}
	for header,value in pairs(GetLifecyclePolicyPreviewRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetLifecyclePolicyPreviewRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLifecyclePolicyPreview synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLifecyclePolicyPreviewRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLifecyclePolicyPreviewSync(GetLifecyclePolicyPreviewRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLifecyclePolicyPreviewAsync(GetLifecyclePolicyPreviewRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDeleteImage asynchronously, invoking a callback when done
-- @param BatchDeleteImageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDeleteImageAsync(BatchDeleteImageRequest, cb)
	assert(BatchDeleteImageRequest, "You must provide a BatchDeleteImageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.BatchDeleteImage",
	}
	for header,value in pairs(BatchDeleteImageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDeleteImageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDeleteImage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDeleteImageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDeleteImageSync(BatchDeleteImageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDeleteImageAsync(BatchDeleteImageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDownloadUrlForLayer asynchronously, invoking a callback when done
-- @param GetDownloadUrlForLayerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDownloadUrlForLayerAsync(GetDownloadUrlForLayerRequest, cb)
	assert(GetDownloadUrlForLayerRequest, "You must provide a GetDownloadUrlForLayerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.GetDownloadUrlForLayer",
	}
	for header,value in pairs(GetDownloadUrlForLayerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDownloadUrlForLayerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDownloadUrlForLayer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDownloadUrlForLayerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDownloadUrlForLayerSync(GetDownloadUrlForLayerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDownloadUrlForLayerAsync(GetDownloadUrlForLayerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRepositoryPolicy asynchronously, invoking a callback when done
-- @param GetRepositoryPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRepositoryPolicyAsync(GetRepositoryPolicyRequest, cb)
	assert(GetRepositoryPolicyRequest, "You must provide a GetRepositoryPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.GetRepositoryPolicy",
	}
	for header,value in pairs(GetRepositoryPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRepositoryPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRepositoryPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRepositoryPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRepositoryPolicySync(GetRepositoryPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRepositoryPolicyAsync(GetRepositoryPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRepositoryPolicy asynchronously, invoking a callback when done
-- @param DeleteRepositoryPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRepositoryPolicyAsync(DeleteRepositoryPolicyRequest, cb)
	assert(DeleteRepositoryPolicyRequest, "You must provide a DeleteRepositoryPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.DeleteRepositoryPolicy",
	}
	for header,value in pairs(DeleteRepositoryPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRepositoryPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRepositoryPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRepositoryPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRepositoryPolicySync(DeleteRepositoryPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRepositoryPolicyAsync(DeleteRepositoryPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetImage asynchronously, invoking a callback when done
-- @param BatchGetImageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetImageAsync(BatchGetImageRequest, cb)
	assert(BatchGetImageRequest, "You must provide a BatchGetImageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerRegistry_V20150921.BatchGetImage",
	}
	for header,value in pairs(BatchGetImageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetImageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetImage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetImageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetImageSync(BatchGetImageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetImageAsync(BatchGetImageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
