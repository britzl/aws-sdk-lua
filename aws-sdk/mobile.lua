--- GENERATED CODE - DO NOT MODIFY
-- AWS Mobile (mobile-2017-07-01)

local M = {}

M.metadata = {
	api_version = "2017-07-01",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "mobile",
	service_abbreviation = "",
	service_full_name = "AWS Mobile",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "mobile-2017-07-01",
}

local keys = {}
local asserts = {}

keys.LimitExceededException = { ["message"] = true, ["retryAfterSeconds"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["retryAfterSeconds"] then asserts.AssertErrorMessage(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p> There are too many AWS Mobile Hub projects in the account or the account has exceeded the maximum number of resources in some AWS service. You should create another sub-account using AWS Organizations or remove some resources and retry your request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- * retryAfterSeconds [ErrorMessage] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Retry-After"] = args["retryAfterSeconds"],
    }
	local all_args = { 
		["message"] = args["message"],
		["retryAfterSeconds"] = args["retryAfterSeconds"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeBundleResult = { ["details"] = true, nil }

function asserts.AssertDescribeBundleResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBundleResult to be of type 'table'")
	if struct["details"] then asserts.AssertBundleDetails(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBundleResult[k], "DescribeBundleResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBundleResult
-- <p> Result structure contains the details of the bundle. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * details [BundleDetails] <p> The details of the bundle. </p>
-- @return DescribeBundleResult structure as a key-value pair table
function M.DescribeBundleResult(args)
	assert(args, "You must provide an argument table when creating DescribeBundleResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["details"] = args["details"],
	}
	asserts.AssertDescribeBundleResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProjectRequest = { ["projectId"] = true, nil }

function asserts.AssertDeleteProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProjectRequest[k], "DeleteProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectRequest
-- <p> Request structure used to request a project be deleted. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectId [ProjectId] <p> Unique project identifier. </p>
-- Required key: projectId
-- @return DeleteProjectRequest structure as a key-value pair table
function M.DeleteProjectRequest(args)
	assert(args, "You must provide an argument table when creating DeleteProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{projectId}"] = args["projectId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["projectId"] = args["projectId"],
	}
	asserts.AssertDeleteProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportProjectRequest = { ["projectId"] = true, nil }

function asserts.AssertExportProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportProjectRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportProjectRequest[k], "ExportProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportProjectRequest
-- <p> Request structure used in requests to export project configuration details. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectId [ProjectId] <p> Unique project identifier. </p>
-- Required key: projectId
-- @return ExportProjectRequest structure as a key-value pair table
function M.ExportProjectRequest(args)
	assert(args, "You must provide an argument table when creating ExportProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{projectId}"] = args["projectId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["projectId"] = args["projectId"],
	}
	asserts.AssertExportProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceUnavailableException = { ["message"] = true, ["retryAfterSeconds"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["retryAfterSeconds"] then asserts.AssertErrorMessage(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p> The service is temporarily unavailable. The request should be retried after some time delay. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- * retryAfterSeconds [ErrorMessage] 
-- @return ServiceUnavailableException structure as a key-value pair table
function M.ServiceUnavailableException(args)
	assert(args, "You must provide an argument table when creating ServiceUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Retry-After"] = args["retryAfterSeconds"],
    }
	local all_args = { 
		["message"] = args["message"],
		["retryAfterSeconds"] = args["retryAfterSeconds"],
	}
	asserts.AssertServiceUnavailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BadRequestException = { ["message"] = true, nil }

function asserts.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadRequestException[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- <p> The request cannot be processed because some parameter is not valid or the project state prevents the operation from being performed. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return BadRequestException structure as a key-value pair table
function M.BadRequestException(args)
	assert(args, "You must provide an argument table when creating BadRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertBadRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProjectRequest = { ["projectId"] = true, ["contents"] = true, nil }

function asserts.AssertUpdateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["contents"] then asserts.AssertContents(struct["contents"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectRequest[k], "UpdateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectRequest
-- <p> Request structure used for requests to update project configuration. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectId [ProjectId] <p> Unique project identifier. </p>
-- * contents [Contents] <p> ZIP or YAML file which contains project configuration to be updated. This should be the contents of the file downloaded from the URL provided in an export project operation. </p>
-- Required key: projectId
-- @return UpdateProjectRequest structure as a key-value pair table
function M.UpdateProjectRequest(args)
	assert(args, "You must provide an argument table when creating UpdateProjectRequest")
    local query_args = { 
        ["projectId"] = args["projectId"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectId"] = args["projectId"],
		["contents"] = args["contents"],
	}
	asserts.AssertUpdateProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BundleDetails = { ["description"] = true, ["title"] = true, ["iconUrl"] = true, ["version"] = true, ["bundleId"] = true, ["availablePlatforms"] = true, nil }

function asserts.AssertBundleDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BundleDetails to be of type 'table'")
	if struct["description"] then asserts.AssertBundleDescription(struct["description"]) end
	if struct["title"] then asserts.AssertBundleTitle(struct["title"]) end
	if struct["iconUrl"] then asserts.AssertIconUrl(struct["iconUrl"]) end
	if struct["version"] then asserts.AssertBundleVersion(struct["version"]) end
	if struct["bundleId"] then asserts.AssertBundleId(struct["bundleId"]) end
	if struct["availablePlatforms"] then asserts.AssertPlatforms(struct["availablePlatforms"]) end
	for k,_ in pairs(struct) do
		assert(keys.BundleDetails[k], "BundleDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BundleDetails
-- <p> The details of the bundle. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [BundleDescription] 
-- * title [BundleTitle] 
-- * iconUrl [IconUrl] 
-- * version [BundleVersion] 
-- * bundleId [BundleId] 
-- * availablePlatforms [Platforms] 
-- @return BundleDetails structure as a key-value pair table
function M.BundleDetails(args)
	assert(args, "You must provide an argument table when creating BundleDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["description"] = args["description"],
		["title"] = args["title"],
		["iconUrl"] = args["iconUrl"],
		["version"] = args["version"],
		["bundleId"] = args["bundleId"],
		["availablePlatforms"] = args["availablePlatforms"],
	}
	asserts.AssertBundleDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProjectResult = { ["details"] = true, nil }

function asserts.AssertDescribeProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProjectResult to be of type 'table'")
	if struct["details"] then asserts.AssertProjectDetails(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProjectResult[k], "DescribeProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProjectResult
-- <p> Result structure used for requests of project details. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * details [ProjectDetails] 
-- @return DescribeProjectResult structure as a key-value pair table
function M.DescribeProjectResult(args)
	assert(args, "You must provide an argument table when creating DescribeProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["details"] = args["details"],
	}
	asserts.AssertDescribeProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProjectsRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListProjectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProjectsRequest[k], "ListProjectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsRequest
-- <p> Request structure used to request projects list in AWS Mobile Hub. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p> Pagination token. Set to null to start listing projects from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more projects. </p>
-- * maxResults [MaxResults] <p> Maximum number of records to list in a single response. </p>
-- @return ListProjectsRequest structure as a key-value pair table
function M.ListProjectsRequest(args)
	assert(args, "You must provide an argument table when creating ListProjectsRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListProjectsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProjectsResult = { ["nextToken"] = true, ["projects"] = true, nil }

function asserts.AssertListProjectsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["projects"] then asserts.AssertProjectSummaries(struct["projects"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProjectsResult[k], "ListProjectsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsResult
-- <p> Result structure used for requests to list projects in AWS Mobile Hub. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * projects [ProjectSummaries] 
-- @return ListProjectsResult structure as a key-value pair table
function M.ListProjectsResult(args)
	assert(args, "You must provide an argument table when creating ListProjectsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["projects"] = args["projects"],
	}
	asserts.AssertListProjectsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBundlesResult = { ["bundleList"] = true, ["nextToken"] = true, nil }

function asserts.AssertListBundlesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBundlesResult to be of type 'table'")
	if struct["bundleList"] then asserts.AssertBundleList(struct["bundleList"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBundlesResult[k], "ListBundlesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBundlesResult
-- <p> Result structure contains a list of all available bundles with details. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * bundleList [BundleList] <p> A list of bundles. </p>
-- * nextToken [NextToken] <p> Pagination token. If non-null pagination token is returned in a result, then pass its value in another request to fetch more entries. </p>
-- @return ListBundlesResult structure as a key-value pair table
function M.ListBundlesResult(args)
	assert(args, "You must provide an argument table when creating ListBundlesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["bundleList"] = args["bundleList"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListBundlesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotFoundException = { ["message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p> No entity can be found with the specified identifier. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return NotFoundException structure as a key-value pair table
function M.NotFoundException(args)
	assert(args, "You must provide an argument table when creating NotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportProjectResult = { ["downloadUrl"] = true, ["snapshotId"] = true, ["shareUrl"] = true, nil }

function asserts.AssertExportProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportProjectResult to be of type 'table'")
	if struct["downloadUrl"] then asserts.AssertDownloadUrl(struct["downloadUrl"]) end
	if struct["snapshotId"] then asserts.AssertSnapshotId(struct["snapshotId"]) end
	if struct["shareUrl"] then asserts.AssertShareUrl(struct["shareUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportProjectResult[k], "ExportProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportProjectResult
-- <p> Result structure used for requests to export project configuration details. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * downloadUrl [DownloadUrl] <p> URL which can be used to download the exported project configuation file(s). </p>
-- * snapshotId [SnapshotId] <p> Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL. </p>
-- * shareUrl [ShareUrl] <p> URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again. </p>
-- @return ExportProjectResult structure as a key-value pair table
function M.ExportProjectResult(args)
	assert(args, "You must provide an argument table when creating ExportProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["downloadUrl"] = args["downloadUrl"],
		["snapshotId"] = args["snapshotId"],
		["shareUrl"] = args["shareUrl"],
	}
	asserts.AssertExportProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Resource = { ["attributes"] = true, ["type"] = true, ["name"] = true, ["arn"] = true, ["feature"] = true, nil }

function asserts.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	if struct["type"] then asserts.AssertResourceType(struct["type"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["arn"] then asserts.AssertResourceArn(struct["arn"]) end
	if struct["feature"] then asserts.AssertFeature(struct["feature"]) end
	for k,_ in pairs(struct) do
		assert(keys.Resource[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- <p> Information about an instance of an AWS resource associated with a project. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [Attributes] 
-- * type [ResourceType] 
-- * name [ResourceName] 
-- * arn [ResourceArn] 
-- * feature [Feature] 
-- @return Resource structure as a key-value pair table
function M.Resource(args)
	assert(args, "You must provide an argument table when creating Resource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
		["type"] = args["type"],
		["name"] = args["name"],
		["arn"] = args["arn"],
		["feature"] = args["feature"],
	}
	asserts.AssertResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProjectResult = { ["orphanedResources"] = true, ["deletedResources"] = true, nil }

function asserts.AssertDeleteProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectResult to be of type 'table'")
	if struct["orphanedResources"] then asserts.AssertResources(struct["orphanedResources"]) end
	if struct["deletedResources"] then asserts.AssertResources(struct["deletedResources"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProjectResult[k], "DeleteProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectResult
-- <p> Result structure used in response to request to delete a project. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * orphanedResources [Resources] <p> Resources which were not deleted, due to a risk of losing potentially important data or files. </p>
-- * deletedResources [Resources] <p> Resources which were deleted. </p>
-- @return DeleteProjectResult structure as a key-value pair table
function M.DeleteProjectResult(args)
	assert(args, "You must provide an argument table when creating DeleteProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["orphanedResources"] = args["orphanedResources"],
		["deletedResources"] = args["deletedResources"],
	}
	asserts.AssertDeleteProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectDetails = { ["name"] = true, ["projectId"] = true, ["region"] = true, ["state"] = true, ["consoleUrl"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["resources"] = true, nil }

function asserts.AssertProjectDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectDetails to be of type 'table'")
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["region"] then asserts.AssertProjectRegion(struct["region"]) end
	if struct["state"] then asserts.AssertProjectState(struct["state"]) end
	if struct["consoleUrl"] then asserts.AssertConsoleUrl(struct["consoleUrl"]) end
	if struct["lastUpdatedDate"] then asserts.AssertDate(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertDate(struct["createdDate"]) end
	if struct["resources"] then asserts.AssertResources(struct["resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectDetails[k], "ProjectDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectDetails
-- <p> Detailed information about an AWS Mobile Hub project. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ProjectName] 
-- * projectId [ProjectId] 
-- * region [ProjectRegion] 
-- * state [ProjectState] 
-- * consoleUrl [ConsoleUrl] <p> Website URL for this project in the AWS Mobile Hub console. </p>
-- * lastUpdatedDate [Date] <p> Date of the last modification of the project. </p>
-- * createdDate [Date] <p> Date the project was created. </p>
-- * resources [Resources] 
-- @return ProjectDetails structure as a key-value pair table
function M.ProjectDetails(args)
	assert(args, "You must provide an argument table when creating ProjectDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["projectId"] = args["projectId"],
		["region"] = args["region"],
		["state"] = args["state"],
		["consoleUrl"] = args["consoleUrl"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["resources"] = args["resources"],
	}
	asserts.AssertProjectDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalFailureException = { ["message"] = true, nil }

function asserts.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalFailureException[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- <p> The service has encountered an unexpected error condition which prevents it from servicing the request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InternalFailureException structure as a key-value pair table
function M.InternalFailureException(args)
	assert(args, "You must provide an argument table when creating InternalFailureException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalFailureException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProjectResult = { ["details"] = true, nil }

function asserts.AssertCreateProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectResult to be of type 'table'")
	if struct["details"] then asserts.AssertProjectDetails(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectResult[k], "CreateProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectResult
-- <p> Result structure used in response to a request to create a project. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * details [ProjectDetails] <p> Detailed information about the created AWS Mobile Hub project. </p>
-- @return CreateProjectResult structure as a key-value pair table
function M.CreateProjectResult(args)
	assert(args, "You must provide an argument table when creating CreateProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["details"] = args["details"],
	}
	asserts.AssertCreateProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBundlesRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListBundlesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBundlesRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBundlesRequest[k], "ListBundlesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBundlesRequest
-- <p> Request structure to request all available bundles. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p> Pagination token. Set to null to start listing bundles from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more bundles. </p>
-- * maxResults [MaxResults] <p> Maximum number of records to list in a single response. </p>
-- @return ListBundlesRequest structure as a key-value pair table
function M.ListBundlesRequest(args)
	assert(args, "You must provide an argument table when creating ListBundlesRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListBundlesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProjectResult = { ["details"] = true, nil }

function asserts.AssertUpdateProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectResult to be of type 'table'")
	if struct["details"] then asserts.AssertProjectDetails(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectResult[k], "UpdateProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectResult
-- <p> Result structure used for requests to updated project configuration. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * details [ProjectDetails] <p> Detailed information about the updated AWS Mobile Hub project. </p>
-- @return UpdateProjectResult structure as a key-value pair table
function M.UpdateProjectResult(args)
	assert(args, "You must provide an argument table when creating UpdateProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["details"] = args["details"],
	}
	asserts.AssertUpdateProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeBundleRequest = { ["bundleId"] = true, nil }

function asserts.AssertDescribeBundleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBundleRequest to be of type 'table'")
	assert(struct["bundleId"], "Expected key bundleId to exist in table")
	if struct["bundleId"] then asserts.AssertBundleId(struct["bundleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBundleRequest[k], "DescribeBundleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBundleRequest
-- <p> Request structure to request the details of a specific bundle. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * bundleId [BundleId] <p> Unique bundle identifier. </p>
-- Required key: bundleId
-- @return DescribeBundleRequest structure as a key-value pair table
function M.DescribeBundleRequest(args)
	assert(args, "You must provide an argument table when creating DescribeBundleRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{bundleId}"] = args["bundleId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["bundleId"] = args["bundleId"],
	}
	asserts.AssertDescribeBundleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnauthorizedException = { ["message"] = true, nil }

function asserts.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedException[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
-- <p> Credentials of the caller are insufficient to authorize the request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return UnauthorizedException structure as a key-value pair table
function M.UnauthorizedException(args)
	assert(args, "You must provide an argument table when creating UnauthorizedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnauthorizedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyRequestsException = { ["message"] = true, ["retryAfterSeconds"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["retryAfterSeconds"] then asserts.AssertErrorMessage(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p> Too many requests have been received for this AWS account in too short a time. The request should be retried after some time delay. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- * retryAfterSeconds [ErrorMessage] 
-- @return TooManyRequestsException structure as a key-value pair table
function M.TooManyRequestsException(args)
	assert(args, "You must provide an argument table when creating TooManyRequestsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Retry-After"] = args["retryAfterSeconds"],
    }
	local all_args = { 
		["message"] = args["message"],
		["retryAfterSeconds"] = args["retryAfterSeconds"],
	}
	asserts.AssertTooManyRequestsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProjectRequest = { ["projectId"] = true, ["syncFromResources"] = true, nil }

function asserts.AssertDescribeProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProjectRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["syncFromResources"] then asserts.AssertBoolean(struct["syncFromResources"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProjectRequest[k], "DescribeProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProjectRequest
-- <p> Request structure used to request details about a project. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectId [ProjectId] <p> Unique project identifier. </p>
-- * syncFromResources [Boolean] <p> If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project. </p>
-- Required key: projectId
-- @return DescribeProjectRequest structure as a key-value pair table
function M.DescribeProjectRequest(args)
	assert(args, "You must provide an argument table when creating DescribeProjectRequest")
    local query_args = { 
        ["projectId"] = args["projectId"],
        ["syncFromResources"] = args["syncFromResources"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectId"] = args["projectId"],
		["syncFromResources"] = args["syncFromResources"],
	}
	asserts.AssertDescribeProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountActionRequiredException = { ["message"] = true, nil }

function asserts.AssertAccountActionRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountActionRequiredException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountActionRequiredException[k], "AccountActionRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountActionRequiredException
-- <p> Account Action is required in order to continue the request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return AccountActionRequiredException structure as a key-value pair table
function M.AccountActionRequiredException(args)
	assert(args, "You must provide an argument table when creating AccountActionRequiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertAccountActionRequiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportBundleResult = { ["downloadUrl"] = true, nil }

function asserts.AssertExportBundleResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportBundleResult to be of type 'table'")
	if struct["downloadUrl"] then asserts.AssertDownloadUrl(struct["downloadUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportBundleResult[k], "ExportBundleResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportBundleResult
-- <p> Result structure which contains link to download custom-generated SDK and tool packages used to integrate mobile web or app clients with backed AWS resources. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * downloadUrl [DownloadUrl] <p> URL which contains the custom-generated SDK and tool packages used to integrate the client mobile app or web app with the AWS resources created by the AWS Mobile Hub project. </p>
-- @return ExportBundleResult structure as a key-value pair table
function M.ExportBundleResult(args)
	assert(args, "You must provide an argument table when creating ExportBundleResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["downloadUrl"] = args["downloadUrl"],
	}
	asserts.AssertExportBundleResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectSummary = { ["projectId"] = true, ["name"] = true, nil }

function asserts.AssertProjectSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectSummary to be of type 'table'")
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectSummary[k], "ProjectSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectSummary
-- <p> Summary information about an AWS Mobile Hub project. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectId [ProjectId] <p> Unique project identifier. </p>
-- * name [ProjectName] <p> Name of the project. </p>
-- @return ProjectSummary structure as a key-value pair table
function M.ProjectSummary(args)
	assert(args, "You must provide an argument table when creating ProjectSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectId"] = args["projectId"],
		["name"] = args["name"],
	}
	asserts.AssertProjectSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportBundleRequest = { ["projectId"] = true, ["platform"] = true, ["bundleId"] = true, nil }

function asserts.AssertExportBundleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportBundleRequest to be of type 'table'")
	assert(struct["bundleId"], "Expected key bundleId to exist in table")
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["platform"] then asserts.AssertPlatform(struct["platform"]) end
	if struct["bundleId"] then asserts.AssertBundleId(struct["bundleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportBundleRequest[k], "ExportBundleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportBundleRequest
-- <p> Request structure used to request generation of custom SDK and tool packages required to integrate mobile web or app clients with backed AWS resources. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectId [ProjectId] <p> Unique project identifier. </p>
-- * platform [Platform] <p> Developer desktop or target application platform. </p>
-- * bundleId [BundleId] <p> Unique bundle identifier. </p>
-- Required key: bundleId
-- @return ExportBundleRequest structure as a key-value pair table
function M.ExportBundleRequest(args)
	assert(args, "You must provide an argument table when creating ExportBundleRequest")
    local query_args = { 
        ["projectId"] = args["projectId"],
        ["platform"] = args["platform"],
    }
    local uri_args = { 
        ["{bundleId}"] = args["bundleId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["projectId"] = args["projectId"],
		["platform"] = args["platform"],
		["bundleId"] = args["bundleId"],
	}
	asserts.AssertExportBundleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProjectRequest = { ["snapshotId"] = true, ["region"] = true, ["name"] = true, ["contents"] = true, nil }

function asserts.AssertCreateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectRequest to be of type 'table'")
	if struct["snapshotId"] then asserts.AssertSnapshotId(struct["snapshotId"]) end
	if struct["region"] then asserts.AssertProjectRegion(struct["region"]) end
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	if struct["contents"] then asserts.AssertContents(struct["contents"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectRequest[k], "CreateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectRequest
-- <p> Request structure used to request a project be created. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * snapshotId [SnapshotId] <p> Unique identifier for an exported snapshot of project configuration. This snapshot identifier is included in the share URL when a project is exported. </p>
-- * region [ProjectRegion] <p> Default region where project resources should be created. </p>
-- * name [ProjectName] <p> Name of the project. </p>
-- * contents [Contents] <p> ZIP or YAML file which contains configuration settings to be used when creating the project. This may be the contents of the file downloaded from the URL provided in an export project operation. </p>
-- @return CreateProjectRequest structure as a key-value pair table
function M.CreateProjectRequest(args)
	assert(args, "You must provide an argument table when creating CreateProjectRequest")
    local query_args = { 
        ["snapshotId"] = args["snapshotId"],
        ["region"] = args["region"],
        ["name"] = args["name"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["snapshotId"] = args["snapshotId"],
		["region"] = args["region"],
		["name"] = args["name"],
		["contents"] = args["contents"],
	}
	asserts.AssertCreateProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

-- <p> Simplified name for type of AWS resource (e.g., bucket is an Amazon S3 bucket). </p>
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertFeature(str)
	assert(str)
	assert(type(str) == "string", "Expected Feature to be of type 'string'")
end

-- <p> Identifies which feature in AWS Mobile Hub is associated with this AWS resource. </p>
function M.Feature(str)
	asserts.AssertFeature(str)
	return str
end

function asserts.AssertDownloadUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected DownloadUrl to be of type 'string'")
end

-- <p> The download Url. </p>
function M.DownloadUrl(str)
	asserts.AssertDownloadUrl(str)
	return str
end

function asserts.AssertBundleVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected BundleVersion to be of type 'string'")
end

-- <p> Version of the download bundle. </p>
function M.BundleVersion(str)
	asserts.AssertBundleVersion(str)
	return str
end

function asserts.AssertConsoleUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected ConsoleUrl to be of type 'string'")
end

--  
function M.ConsoleUrl(str)
	asserts.AssertConsoleUrl(str)
	return str
end

function asserts.AssertBundleDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected BundleDescription to be of type 'string'")
end

-- <p> Description of the download bundle. </p>
function M.BundleDescription(str)
	asserts.AssertBundleDescription(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

-- <p> Pagination token. Set to null to start listing records from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more entries. </p>
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertAttributeKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeKey to be of type 'string'")
end

-- <p> Key part of key-value attribute pairs. </p>
function M.AttributeKey(str)
	asserts.AssertAttributeKey(str)
	return str
end

function asserts.AssertSnapshotId(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotId to be of type 'string'")
end

-- <p> Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL. </p>
function M.SnapshotId(str)
	asserts.AssertSnapshotId(str)
	return str
end

function asserts.AssertIconUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected IconUrl to be of type 'string'")
end

-- <p> Icon for the download bundle. </p>
function M.IconUrl(str)
	asserts.AssertIconUrl(str)
	return str
end

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
end

-- <p> AWS resource name which uniquely identifies the resource in AWS systems. </p>
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
end

-- <p> Name of the AWS resource (e.g., for an Amazon S3 bucket this is the name of the bucket). </p>
function M.ResourceName(str)
	asserts.AssertResourceName(str)
	return str
end

function asserts.AssertBundleId(str)
	assert(str)
	assert(type(str) == "string", "Expected BundleId to be of type 'string'")
end

-- <p> Unique bundle identifier. </p>
function M.BundleId(str)
	asserts.AssertBundleId(str)
	return str
end

function asserts.AssertShareUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected ShareUrl to be of type 'string'")
end

-- <p> URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again. </p>
function M.ShareUrl(str)
	asserts.AssertShareUrl(str)
	return str
end

function asserts.AssertProjectId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectId to be of type 'string'")
end

-- <p> Unique project identifier. </p>
function M.ProjectId(str)
	asserts.AssertProjectId(str)
	return str
end

function asserts.AssertProjectState(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectState to be of type 'string'")
end

-- <p> Synchronization state for a project. </p>
function M.ProjectState(str)
	asserts.AssertProjectState(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
end

-- <p> Value part of key-value attribute pairs. </p>
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertPlatform(str)
	assert(str)
	assert(type(str) == "string", "Expected Platform to be of type 'string'")
end

-- <p> Developer desktop or target mobile app or website platform. </p>
function M.Platform(str)
	asserts.AssertPlatform(str)
	return str
end

function asserts.AssertProjectName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectName to be of type 'string'")
end

-- <p> Name of the project. </p>
function M.ProjectName(str)
	asserts.AssertProjectName(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- <p> The Exception Error Message. </p>
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertBundleTitle(str)
	assert(str)
	assert(type(str) == "string", "Expected BundleTitle to be of type 'string'")
end

-- <p> Title of the download bundle. </p>
function M.BundleTitle(str)
	asserts.AssertBundleTitle(str)
	return str
end

function asserts.AssertProjectRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectRegion to be of type 'string'")
end

-- <p> Default region to use for AWS resource creation in the AWS Mobile Hub project. </p>
function M.ProjectRegion(str)
	asserts.AssertProjectRegion(str)
	return str
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
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

function asserts.AssertAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected Attributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeKey(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.Attributes(map)
	asserts.AssertAttributes(map)
	return map
end

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertContents(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected Contents to be of type 'string'")
end

function M.Contents(blob)
	asserts.AssertContents(blob)
	return blob
end

function asserts.AssertProjectSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ProjectSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProjectSummary(v)
	end
end

-- <p> List of projects. </p>
-- List of ProjectSummary objects
function M.ProjectSummaries(list)
	asserts.AssertProjectSummaries(list)
	return list
end

function asserts.AssertResources(list)
	assert(list)
	assert(type(list) == "table", "Expected Resources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResource(v)
	end
end

-- <p> List of AWS resources associated with a project. </p>
-- List of Resource objects
function M.Resources(list)
	asserts.AssertResources(list)
	return list
end

function asserts.AssertBundleList(list)
	assert(list)
	assert(type(list) == "table", "Expected BundleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBundleDetails(v)
	end
end

-- <p> A list of bundles. </p>
-- List of BundleDetails objects
function M.BundleList(list)
	asserts.AssertBundleList(list)
	return list
end

function asserts.AssertPlatforms(list)
	assert(list)
	assert(type(list) == "table", "Expected Platforms to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlatform(v)
	end
end

-- <p> Developer desktop or mobile app or website platforms. </p>
-- List of Platform objects
function M.Platforms(list)
	asserts.AssertPlatforms(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "mobile.amazonaws.com"
		end
	end
	local ss = { "mobile" }
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
--- Call ExportProject asynchronously, invoking a callback when done
-- @param ExportProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ExportProjectAsync(ExportProjectRequest, cb)
	assert(ExportProjectRequest, "You must provide a ExportProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ExportProject",
	}
	for header,value in pairs(ExportProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/exports/{projectId}", ExportProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ExportProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ExportProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ExportProjectSync(ExportProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExportProjectAsync(ExportProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBundle asynchronously, invoking a callback when done
-- @param DescribeBundleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeBundleAsync(DescribeBundleRequest, cb)
	assert(DescribeBundleRequest, "You must provide a DescribeBundleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeBundle",
	}
	for header,value in pairs(DescribeBundleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/bundles/{bundleId}", DescribeBundleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBundle synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBundleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeBundleSync(DescribeBundleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBundleAsync(DescribeBundleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBundles asynchronously, invoking a callback when done
-- @param ListBundlesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBundlesAsync(ListBundlesRequest, cb)
	assert(ListBundlesRequest, "You must provide a ListBundlesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListBundles",
	}
	for header,value in pairs(ListBundlesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/bundles", ListBundlesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBundles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBundlesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListBundlesSync(ListBundlesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBundlesAsync(ListBundlesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProject asynchronously, invoking a callback when done
-- @param DescribeProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProjectAsync(DescribeProjectRequest, cb)
	assert(DescribeProjectRequest, "You must provide a DescribeProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeProject",
	}
	for header,value in pairs(DescribeProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/project", DescribeProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeProjectSync(DescribeProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProjectAsync(DescribeProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProject asynchronously, invoking a callback when done
-- @param CreateProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateProjectAsync(CreateProjectRequest, cb)
	assert(CreateProjectRequest, "You must provide a CreateProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateProject",
	}
	for header,value in pairs(CreateProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/projects", CreateProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateProjectSync(CreateProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProjectAsync(CreateProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProjects asynchronously, invoking a callback when done
-- @param ListProjectsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListProjectsAsync(ListProjectsRequest, cb)
	assert(ListProjectsRequest, "You must provide a ListProjectsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListProjects",
	}
	for header,value in pairs(ListProjectsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/projects", ListProjectsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListProjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProjectsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListProjectsSync(ListProjectsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProjectsAsync(ListProjectsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProject asynchronously, invoking a callback when done
-- @param UpdateProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateProjectAsync(UpdateProjectRequest, cb)
	assert(UpdateProjectRequest, "You must provide a UpdateProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateProject",
	}
	for header,value in pairs(UpdateProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/update", UpdateProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateProjectSync(UpdateProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProjectAsync(UpdateProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProject asynchronously, invoking a callback when done
-- @param DeleteProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteProjectAsync(DeleteProjectRequest, cb)
	assert(DeleteProjectRequest, "You must provide a DeleteProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteProject",
	}
	for header,value in pairs(DeleteProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectId}", DeleteProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteProjectSync(DeleteProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProjectAsync(DeleteProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ExportBundle asynchronously, invoking a callback when done
-- @param ExportBundleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ExportBundleAsync(ExportBundleRequest, cb)
	assert(ExportBundleRequest, "You must provide a ExportBundleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ExportBundle",
	}
	for header,value in pairs(ExportBundleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/bundles/{bundleId}", ExportBundleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ExportBundle synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ExportBundleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ExportBundleSync(ExportBundleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExportBundleAsync(ExportBundleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
