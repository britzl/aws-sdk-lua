--- GENERATED CODE - DO NOT MODIFY
-- AWS CodeCommit (codecommit-2015-04-13)

local M = {}

M.metadata = {
	api_version = "2015-04-13",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "codecommit",
	service_abbreviation = "CodeCommit",
	service_full_name = "AWS CodeCommit",
	signature_version = "v4",
	target_prefix = "CodeCommit_20150413",
	timestamp_format = "",
	global_endpoint = "",
	uid = "codecommit-2015-04-13",
}

local keys = {}
local asserts = {}

keys.PutRepositoryTriggersOutput = { ["configurationId"] = true, nil }

function asserts.AssertPutRepositoryTriggersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRepositoryTriggersOutput to be of type 'table'")
	if struct["configurationId"] then asserts.AssertRepositoryTriggersConfigurationId(struct["configurationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRepositoryTriggersOutput[k], "PutRepositoryTriggersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRepositoryTriggersOutput
-- <p>Represents the output of a put repository triggers operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationId [RepositoryTriggersConfigurationId] <p>The system-generated unique ID for the create or update operation.</p>
-- @return PutRepositoryTriggersOutput structure as a key-value pair table
function M.PutRepositoryTriggersOutput(args)
	assert(args, "You must provide an argument table when creating PutRepositoryTriggersOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationId"] = args["configurationId"],
	}
	asserts.AssertPutRepositoryTriggersOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePullRequestTitleOutput = { ["pullRequest"] = true, nil }

function asserts.AssertUpdatePullRequestTitleOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePullRequestTitleOutput to be of type 'table'")
	assert(struct["pullRequest"], "Expected key pullRequest to exist in table")
	if struct["pullRequest"] then asserts.AssertPullRequest(struct["pullRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePullRequestTitleOutput[k], "UpdatePullRequestTitleOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePullRequestTitleOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequest [PullRequest] <p>Information about the updated pull request.</p>
-- Required key: pullRequest
-- @return UpdatePullRequestTitleOutput structure as a key-value pair table
function M.UpdatePullRequestTitleOutput(args)
	assert(args, "You must provide an argument table when creating UpdatePullRequestTitleOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequest"] = args["pullRequest"],
	}
	asserts.AssertUpdatePullRequestTitleOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PostCommentForComparedCommitInput = { ["afterCommitId"] = true, ["beforeCommitId"] = true, ["content"] = true, ["location"] = true, ["repositoryName"] = true, ["clientRequestToken"] = true, nil }

function asserts.AssertPostCommentForComparedCommitInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostCommentForComparedCommitInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["afterCommitId"], "Expected key afterCommitId to exist in table")
	assert(struct["content"], "Expected key content to exist in table")
	if struct["afterCommitId"] then asserts.AssertCommitId(struct["afterCommitId"]) end
	if struct["beforeCommitId"] then asserts.AssertCommitId(struct["beforeCommitId"]) end
	if struct["content"] then asserts.AssertContent(struct["content"]) end
	if struct["location"] then asserts.AssertLocation(struct["location"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.PostCommentForComparedCommitInput[k], "PostCommentForComparedCommitInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostCommentForComparedCommitInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * afterCommitId [CommitId] <p>To establish the directionality of the comparison, the full commit ID of the 'after' commit.</p>
-- * beforeCommitId [CommitId] <p>To establish the directionality of the comparison, the full commit ID of the 'before' commit.</p>
-- * content [Content] <p>The content of the comment you want to make.</p>
-- * location [Location] <p>The location of the comparison where you want to comment.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where you want to post a comment on the comparison between commits.</p>
-- * clientRequestToken [ClientRequestToken] <p>A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.</p>
-- Required key: repositoryName
-- Required key: afterCommitId
-- Required key: content
-- @return PostCommentForComparedCommitInput structure as a key-value pair table
function M.PostCommentForComparedCommitInput(args)
	assert(args, "You must provide an argument table when creating PostCommentForComparedCommitInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["afterCommitId"] = args["afterCommitId"],
		["beforeCommitId"] = args["beforeCommitId"],
		["content"] = args["content"],
		["location"] = args["location"],
		["repositoryName"] = args["repositoryName"],
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertPostCommentForComparedCommitInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFolderOutput = { ["files"] = true, ["symbolicLinks"] = true, ["subModules"] = true, ["commitId"] = true, ["treeId"] = true, ["subFolders"] = true, ["folderPath"] = true, nil }

function asserts.AssertGetFolderOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFolderOutput to be of type 'table'")
	assert(struct["commitId"], "Expected key commitId to exist in table")
	assert(struct["folderPath"], "Expected key folderPath to exist in table")
	if struct["files"] then asserts.AssertFileList(struct["files"]) end
	if struct["symbolicLinks"] then asserts.AssertSymbolicLinkList(struct["symbolicLinks"]) end
	if struct["subModules"] then asserts.AssertSubModuleList(struct["subModules"]) end
	if struct["commitId"] then asserts.AssertObjectId(struct["commitId"]) end
	if struct["treeId"] then asserts.AssertObjectId(struct["treeId"]) end
	if struct["subFolders"] then asserts.AssertFolderList(struct["subFolders"]) end
	if struct["folderPath"] then asserts.AssertPath(struct["folderPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFolderOutput[k], "GetFolderOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFolderOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * files [FileList] <p>The list of files that exist in the specified folder, if any.</p>
-- * symbolicLinks [SymbolicLinkList] <p>The list of symbolic links to other files and folders that exist in the specified folder, if any.</p>
-- * subModules [SubModuleList] <p>The list of submodules that exist in the specified folder, if any.</p>
-- * commitId [ObjectId] <p>The full commit ID used as a reference for which version of the folder content is returned.</p>
-- * treeId [ObjectId] <p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>
-- * subFolders [FolderList] <p>The list of folders that exist beneath the specified folder, if any.</p>
-- * folderPath [Path] <p>The fully-qualified path of the folder whose contents are returned.</p>
-- Required key: commitId
-- Required key: folderPath
-- @return GetFolderOutput structure as a key-value pair table
function M.GetFolderOutput(args)
	assert(args, "You must provide an argument table when creating GetFolderOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["files"] = args["files"],
		["symbolicLinks"] = args["symbolicLinks"],
		["subModules"] = args["subModules"],
		["commitId"] = args["commitId"],
		["treeId"] = args["treeId"],
		["subFolders"] = args["subFolders"],
		["folderPath"] = args["folderPath"],
	}
	asserts.AssertGetFolderOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePullRequestTitleInput = { ["pullRequestId"] = true, ["title"] = true, nil }

function asserts.AssertUpdatePullRequestTitleInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePullRequestTitleInput to be of type 'table'")
	assert(struct["pullRequestId"], "Expected key pullRequestId to exist in table")
	assert(struct["title"], "Expected key title to exist in table")
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["title"] then asserts.AssertTitle(struct["title"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePullRequestTitleInput[k], "UpdatePullRequestTitleInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePullRequestTitleInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
-- * title [Title] <p>The updated title of the pull request. This will replace the existing title.</p>
-- Required key: pullRequestId
-- Required key: title
-- @return UpdatePullRequestTitleInput structure as a key-value pair table
function M.UpdatePullRequestTitleInput(args)
	assert(args, "You must provide an argument table when creating UpdatePullRequestTitleInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequestId"] = args["pullRequestId"],
		["title"] = args["title"],
	}
	asserts.AssertUpdatePullRequestTitleInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePullRequestStatusOutput = { ["pullRequest"] = true, nil }

function asserts.AssertUpdatePullRequestStatusOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePullRequestStatusOutput to be of type 'table'")
	assert(struct["pullRequest"], "Expected key pullRequest to exist in table")
	if struct["pullRequest"] then asserts.AssertPullRequest(struct["pullRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePullRequestStatusOutput[k], "UpdatePullRequestStatusOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePullRequestStatusOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequest [PullRequest] <p>Information about the pull request.</p>
-- Required key: pullRequest
-- @return UpdatePullRequestStatusOutput structure as a key-value pair table
function M.UpdatePullRequestStatusOutput(args)
	assert(args, "You must provide an argument table when creating UpdatePullRequestStatusOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequest"] = args["pullRequest"],
	}
	asserts.AssertUpdatePullRequestStatusOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBranchesInput = { ["nextToken"] = true, ["repositoryName"] = true, nil }

function asserts.AssertListBranchesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBranchesInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBranchesInput[k], "ListBranchesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBranchesInput
-- <p>Represents the input of a list branches operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An enumeration token that allows the operation to batch the results.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the branches.</p>
-- Required key: repositoryName
-- @return ListBranchesInput structure as a key-value pair table
function M.ListBranchesInput(args)
	assert(args, "You must provide an argument table when creating ListBranchesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertListBranchesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePullRequestOutput = { ["pullRequest"] = true, nil }

function asserts.AssertCreatePullRequestOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePullRequestOutput to be of type 'table'")
	assert(struct["pullRequest"], "Expected key pullRequest to exist in table")
	if struct["pullRequest"] then asserts.AssertPullRequest(struct["pullRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePullRequestOutput[k], "CreatePullRequestOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePullRequestOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequest [PullRequest] <p>Information about the newly created pull request.</p>
-- Required key: pullRequest
-- @return CreatePullRequestOutput structure as a key-value pair table
function M.CreatePullRequestOutput(args)
	assert(args, "You must provide an argument table when creating CreatePullRequestOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequest"] = args["pullRequest"],
	}
	asserts.AssertCreatePullRequestOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCommentsForPullRequestOutput = { ["nextToken"] = true, ["commentsForPullRequestData"] = true, nil }

function asserts.AssertGetCommentsForPullRequestOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommentsForPullRequestOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["commentsForPullRequestData"] then asserts.AssertCommentsForPullRequestData(struct["commentsForPullRequestData"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCommentsForPullRequestOutput[k], "GetCommentsForPullRequestOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommentsForPullRequestOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
-- * commentsForPullRequestData [CommentsForPullRequestData] <p>An array of comment objects on the pull request.</p>
-- @return GetCommentsForPullRequestOutput structure as a key-value pair table
function M.GetCommentsForPullRequestOutput(args)
	assert(args, "You must provide an argument table when creating GetCommentsForPullRequestOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["commentsForPullRequestData"] = args["commentsForPullRequestData"],
	}
	asserts.AssertGetCommentsForPullRequestOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PullRequestStatusChangedEventMetadata = { ["pullRequestStatus"] = true, nil }

function asserts.AssertPullRequestStatusChangedEventMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PullRequestStatusChangedEventMetadata to be of type 'table'")
	if struct["pullRequestStatus"] then asserts.AssertPullRequestStatusEnum(struct["pullRequestStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.PullRequestStatusChangedEventMetadata[k], "PullRequestStatusChangedEventMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PullRequestStatusChangedEventMetadata
-- <p>Information about a change to the status of a pull request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequestStatus [PullRequestStatusEnum] <p>The changed status of the pull request.</p>
-- @return PullRequestStatusChangedEventMetadata structure as a key-value pair table
function M.PullRequestStatusChangedEventMetadata(args)
	assert(args, "You must provide an argument table when creating PullRequestStatusChangedEventMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequestStatus"] = args["pullRequestStatus"],
	}
	asserts.AssertPullRequestStatusChangedEventMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCommentInput = { ["content"] = true, ["commentId"] = true, nil }

function asserts.AssertUpdateCommentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCommentInput to be of type 'table'")
	assert(struct["commentId"], "Expected key commentId to exist in table")
	assert(struct["content"], "Expected key content to exist in table")
	if struct["content"] then asserts.AssertContent(struct["content"]) end
	if struct["commentId"] then asserts.AssertCommentId(struct["commentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCommentInput[k], "UpdateCommentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCommentInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * content [Content] <p>The updated content with which you want to replace the existing content of the comment.</p>
-- * commentId [CommentId] <p>The system-generated ID of the comment you want to update. To get this ID, use <a>GetCommentsForComparedCommit</a> or <a>GetCommentsForPullRequest</a>.</p>
-- Required key: commentId
-- Required key: content
-- @return UpdateCommentInput structure as a key-value pair table
function M.UpdateCommentInput(args)
	assert(args, "You must provide an argument table when creating UpdateCommentInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["content"] = args["content"],
		["commentId"] = args["commentId"],
	}
	asserts.AssertUpdateCommentInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PostCommentForPullRequestOutput = { ["comment"] = true, ["afterCommitId"] = true, ["afterBlobId"] = true, ["beforeCommitId"] = true, ["pullRequestId"] = true, ["location"] = true, ["repositoryName"] = true, ["beforeBlobId"] = true, nil }

function asserts.AssertPostCommentForPullRequestOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostCommentForPullRequestOutput to be of type 'table'")
	if struct["comment"] then asserts.AssertComment(struct["comment"]) end
	if struct["afterCommitId"] then asserts.AssertCommitId(struct["afterCommitId"]) end
	if struct["afterBlobId"] then asserts.AssertObjectId(struct["afterBlobId"]) end
	if struct["beforeCommitId"] then asserts.AssertCommitId(struct["beforeCommitId"]) end
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["location"] then asserts.AssertLocation(struct["location"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["beforeBlobId"] then asserts.AssertObjectId(struct["beforeBlobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PostCommentForPullRequestOutput[k], "PostCommentForPullRequestOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostCommentForPullRequestOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * comment [Comment] <p>The content of the comment you posted.</p>
-- * afterCommitId [CommitId] <p>The full commit ID of the commit in the destination branch where the pull request will be merged.</p>
-- * afterBlobId [ObjectId] <p>In the directionality of the pull request, the blob ID of the 'after' blob.</p>
-- * beforeCommitId [CommitId] <p>The full commit ID of the commit in the source branch used to create the pull request, or in the case of an updated pull request, the full commit ID of the commit used to update the pull request.</p>
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request. </p>
-- * location [Location] <p>The location of the change where you posted your comment.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where you posted a comment on a pull request.</p>
-- * beforeBlobId [ObjectId] <p>In the directionality of the pull request, the blob ID of the 'before' blob.</p>
-- @return PostCommentForPullRequestOutput structure as a key-value pair table
function M.PostCommentForPullRequestOutput(args)
	assert(args, "You must provide an argument table when creating PostCommentForPullRequestOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["comment"] = args["comment"],
		["afterCommitId"] = args["afterCommitId"],
		["afterBlobId"] = args["afterBlobId"],
		["beforeCommitId"] = args["beforeCommitId"],
		["pullRequestId"] = args["pullRequestId"],
		["location"] = args["location"],
		["repositoryName"] = args["repositoryName"],
		["beforeBlobId"] = args["beforeBlobId"],
	}
	asserts.AssertPostCommentForPullRequestOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PostCommentForPullRequestInput = { ["afterCommitId"] = true, ["beforeCommitId"] = true, ["content"] = true, ["pullRequestId"] = true, ["location"] = true, ["repositoryName"] = true, ["clientRequestToken"] = true, nil }

function asserts.AssertPostCommentForPullRequestInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostCommentForPullRequestInput to be of type 'table'")
	assert(struct["pullRequestId"], "Expected key pullRequestId to exist in table")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["beforeCommitId"], "Expected key beforeCommitId to exist in table")
	assert(struct["afterCommitId"], "Expected key afterCommitId to exist in table")
	assert(struct["content"], "Expected key content to exist in table")
	if struct["afterCommitId"] then asserts.AssertCommitId(struct["afterCommitId"]) end
	if struct["beforeCommitId"] then asserts.AssertCommitId(struct["beforeCommitId"]) end
	if struct["content"] then asserts.AssertContent(struct["content"]) end
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["location"] then asserts.AssertLocation(struct["location"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.PostCommentForPullRequestInput[k], "PostCommentForPullRequestInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostCommentForPullRequestInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * afterCommitId [CommitId] <p>The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.</p>
-- * beforeCommitId [CommitId] <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>
-- * content [Content] <p>The content of your comment on the change.</p>
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
-- * location [Location] <p>The location of the change where you want to post your comment. If no location is provided, the comment will be posted as a general comment on the pull request difference between the before commit ID and the after commit ID.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where you want to post a comment on a pull request.</p>
-- * clientRequestToken [ClientRequestToken] <p>A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.</p>
-- Required key: pullRequestId
-- Required key: repositoryName
-- Required key: beforeCommitId
-- Required key: afterCommitId
-- Required key: content
-- @return PostCommentForPullRequestInput structure as a key-value pair table
function M.PostCommentForPullRequestInput(args)
	assert(args, "You must provide an argument table when creating PostCommentForPullRequestInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["afterCommitId"] = args["afterCommitId"],
		["beforeCommitId"] = args["beforeCommitId"],
		["content"] = args["content"],
		["pullRequestId"] = args["pullRequestId"],
		["location"] = args["location"],
		["repositoryName"] = args["repositoryName"],
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertPostCommentForPullRequestInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRepositoryDescriptionInput = { ["repositoryName"] = true, ["repositoryDescription"] = true, nil }

function asserts.AssertUpdateRepositoryDescriptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRepositoryDescriptionInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["repositoryDescription"] then asserts.AssertRepositoryDescription(struct["repositoryDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRepositoryDescriptionInput[k], "UpdateRepositoryDescriptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRepositoryDescriptionInput
-- <p>Represents the input of an update repository description operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository to set or change the comment or description for.</p>
-- * repositoryDescription [RepositoryDescription] <p>The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.</p>
-- Required key: repositoryName
-- @return UpdateRepositoryDescriptionInput structure as a key-value pair table
function M.UpdateRepositoryDescriptionInput(args)
	assert(args, "You must provide an argument table when creating UpdateRepositoryDescriptionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["repositoryDescription"] = args["repositoryDescription"],
	}
	asserts.AssertUpdateRepositoryDescriptionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRepositoryOutput = { ["repositoryMetadata"] = true, nil }

function asserts.AssertGetRepositoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryOutput to be of type 'table'")
	if struct["repositoryMetadata"] then asserts.AssertRepositoryMetadata(struct["repositoryMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRepositoryOutput[k], "GetRepositoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryOutput
-- <p>Represents the output of a get repository operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryMetadata [RepositoryMetadata] <p>Information about the repository.</p>
-- @return GetRepositoryOutput structure as a key-value pair table
function M.GetRepositoryOutput(args)
	assert(args, "You must provide an argument table when creating GetRepositoryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryMetadata"] = args["repositoryMetadata"],
	}
	asserts.AssertGetRepositoryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMergeConflictsOutput = { ["destinationCommitId"] = true, ["mergeable"] = true, ["sourceCommitId"] = true, nil }

function asserts.AssertGetMergeConflictsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMergeConflictsOutput to be of type 'table'")
	assert(struct["mergeable"], "Expected key mergeable to exist in table")
	assert(struct["destinationCommitId"], "Expected key destinationCommitId to exist in table")
	assert(struct["sourceCommitId"], "Expected key sourceCommitId to exist in table")
	if struct["destinationCommitId"] then asserts.AssertCommitId(struct["destinationCommitId"]) end
	if struct["mergeable"] then asserts.AssertIsMergeable(struct["mergeable"]) end
	if struct["sourceCommitId"] then asserts.AssertCommitId(struct["sourceCommitId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMergeConflictsOutput[k], "GetMergeConflictsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMergeConflictsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * destinationCommitId [CommitId] <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
-- * mergeable [IsMergeable] <p>A Boolean value that indicates whether the code is mergable by the specified merge option.</p>
-- * sourceCommitId [CommitId] <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
-- Required key: mergeable
-- Required key: destinationCommitId
-- Required key: sourceCommitId
-- @return GetMergeConflictsOutput structure as a key-value pair table
function M.GetMergeConflictsOutput(args)
	assert(args, "You must provide an argument table when creating GetMergeConflictsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["destinationCommitId"] = args["destinationCommitId"],
		["mergeable"] = args["mergeable"],
		["sourceCommitId"] = args["sourceCommitId"],
	}
	asserts.AssertGetMergeConflictsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPullRequestsInput = { ["authorArn"] = true, ["nextToken"] = true, ["repositoryName"] = true, ["maxResults"] = true, ["pullRequestStatus"] = true, nil }

function asserts.AssertListPullRequestsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPullRequestsInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["authorArn"] then asserts.AssertArn(struct["authorArn"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	if struct["pullRequestStatus"] then asserts.AssertPullRequestStatusEnum(struct["pullRequestStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPullRequestsInput[k], "ListPullRequestsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPullRequestsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * authorArn [Arn] <p>Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results to pull requests created by that user.</p>
-- * nextToken [NextToken] <p>An enumeration token that when provided in a request, returns the next batch of the results.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository for which you want to list pull requests.</p>
-- * maxResults [MaxResults] <p>A non-negative integer used to limit the number of returned results.</p>
-- * pullRequestStatus [PullRequestStatusEnum] <p>Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.</p>
-- Required key: repositoryName
-- @return ListPullRequestsInput structure as a key-value pair table
function M.ListPullRequestsInput(args)
	assert(args, "You must provide an argument table when creating ListPullRequestsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["authorArn"] = args["authorArn"],
		["nextToken"] = args["nextToken"],
		["repositoryName"] = args["repositoryName"],
		["maxResults"] = args["maxResults"],
		["pullRequestStatus"] = args["pullRequestStatus"],
	}
	asserts.AssertListPullRequestsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePullRequestDescriptionInput = { ["pullRequestId"] = true, ["description"] = true, nil }

function asserts.AssertUpdatePullRequestDescriptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePullRequestDescriptionInput to be of type 'table'")
	assert(struct["pullRequestId"], "Expected key pullRequestId to exist in table")
	assert(struct["description"], "Expected key description to exist in table")
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePullRequestDescriptionInput[k], "UpdatePullRequestDescriptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePullRequestDescriptionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
-- * description [Description] <p>The updated content of the description for the pull request. This content will replace the existing description.</p>
-- Required key: pullRequestId
-- Required key: description
-- @return UpdatePullRequestDescriptionInput structure as a key-value pair table
function M.UpdatePullRequestDescriptionInput(args)
	assert(args, "You must provide an argument table when creating UpdatePullRequestDescriptionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequestId"] = args["pullRequestId"],
		["description"] = args["description"],
	}
	asserts.AssertUpdatePullRequestDescriptionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetRepositoriesOutput = { ["repositories"] = true, ["repositoriesNotFound"] = true, nil }

function asserts.AssertBatchGetRepositoriesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetRepositoriesOutput to be of type 'table'")
	if struct["repositories"] then asserts.AssertRepositoryMetadataList(struct["repositories"]) end
	if struct["repositoriesNotFound"] then asserts.AssertRepositoryNotFoundList(struct["repositoriesNotFound"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetRepositoriesOutput[k], "BatchGetRepositoriesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetRepositoriesOutput
-- <p>Represents the output of a batch get repositories operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositories [RepositoryMetadataList] <p>A list of repositories returned by the batch get repositories operation.</p>
-- * repositoriesNotFound [RepositoryNotFoundList] <p>Returns a list of repository names for which information could not be found.</p>
-- @return BatchGetRepositoriesOutput structure as a key-value pair table
function M.BatchGetRepositoriesOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetRepositoriesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositories"] = args["repositories"],
		["repositoriesNotFound"] = args["repositoriesNotFound"],
	}
	asserts.AssertBatchGetRepositoriesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutFileOutput = { ["commitId"] = true, ["treeId"] = true, ["blobId"] = true, nil }

function asserts.AssertPutFileOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutFileOutput to be of type 'table'")
	assert(struct["commitId"], "Expected key commitId to exist in table")
	assert(struct["blobId"], "Expected key blobId to exist in table")
	assert(struct["treeId"], "Expected key treeId to exist in table")
	if struct["commitId"] then asserts.AssertObjectId(struct["commitId"]) end
	if struct["treeId"] then asserts.AssertObjectId(struct["treeId"]) end
	if struct["blobId"] then asserts.AssertObjectId(struct["blobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutFileOutput[k], "PutFileOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutFileOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commitId [ObjectId] <p>The full SHA of the commit that contains this file change.</p>
-- * treeId [ObjectId] <p>The full SHA-1 pointer of the tree information for the commit that contains this file change.</p>
-- * blobId [ObjectId] <p>The ID of the blob, which is its SHA-1 pointer.</p>
-- Required key: commitId
-- Required key: blobId
-- Required key: treeId
-- @return PutFileOutput structure as a key-value pair table
function M.PutFileOutput(args)
	assert(args, "You must provide an argument table when creating PutFileOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commitId"] = args["commitId"],
		["treeId"] = args["treeId"],
		["blobId"] = args["blobId"],
	}
	asserts.AssertPutFileOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCommentsForComparedCommitOutput = { ["nextToken"] = true, ["commentsForComparedCommitData"] = true, nil }

function asserts.AssertGetCommentsForComparedCommitOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommentsForComparedCommitOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["commentsForComparedCommitData"] then asserts.AssertCommentsForComparedCommitData(struct["commentsForComparedCommitData"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCommentsForComparedCommitOutput[k], "GetCommentsForComparedCommitOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommentsForComparedCommitOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
-- * commentsForComparedCommitData [CommentsForComparedCommitData] <p>A list of comment objects on the compared commit.</p>
-- @return GetCommentsForComparedCommitOutput structure as a key-value pair table
function M.GetCommentsForComparedCommitOutput(args)
	assert(args, "You must provide an argument table when creating GetCommentsForComparedCommitOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["commentsForComparedCommitData"] = args["commentsForComparedCommitData"],
	}
	asserts.AssertGetCommentsForComparedCommitOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutFileInput = { ["branchName"] = true, ["fileContent"] = true, ["filePath"] = true, ["commitMessage"] = true, ["parentCommitId"] = true, ["fileMode"] = true, ["repositoryName"] = true, ["email"] = true, ["name"] = true, nil }

function asserts.AssertPutFileInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutFileInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["branchName"], "Expected key branchName to exist in table")
	assert(struct["fileContent"], "Expected key fileContent to exist in table")
	assert(struct["filePath"], "Expected key filePath to exist in table")
	if struct["branchName"] then asserts.AssertBranchName(struct["branchName"]) end
	if struct["fileContent"] then asserts.AssertFileContent(struct["fileContent"]) end
	if struct["filePath"] then asserts.AssertPath(struct["filePath"]) end
	if struct["commitMessage"] then asserts.AssertMessage(struct["commitMessage"]) end
	if struct["parentCommitId"] then asserts.AssertCommitId(struct["parentCommitId"]) end
	if struct["fileMode"] then asserts.AssertFileModeTypeEnum(struct["fileMode"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["email"] then asserts.AssertEmail(struct["email"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutFileInput[k], "PutFileInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutFileInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * branchName [BranchName] <p>The name of the branch where you want to add or update the file. If this is an empty repository, this branch will be created.</p>
-- * fileContent [FileContent] <p>The content of the file, in binary object format. </p>
-- * filePath [Path] <p>The name of the file you want to add or update, including the relative path to the file in the repository.</p> <note> <p>If the path does not currently exist in the repository, the path will be created as part of adding the file.</p> </note>
-- * commitMessage [Message] <p>A message about why this file was added or updated. While optional, adding a message is strongly encouraged in order to provide a more useful commit history for your repository.</p>
-- * parentCommitId [CommitId] <p>The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository, no commit ID is required. If this is not an empty repository, a commit ID is required. </p> <p>The commit ID must match the ID of the head commit at the time of the operation, or an error will occur, and the file will not be added or updated.</p>
-- * fileMode [FileModeTypeEnum] <p>The file mode permissions of the blob. Valid file mode permissions are listed below.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where you want to add or update the file.</p>
-- * email [Email] <p>An email address for the person adding or updating the file.</p>
-- * name [Name] <p>The name of the person adding or updating the file. While optional, adding a name is strongly encouraged in order to provide a more useful commit history for your repository.</p>
-- Required key: repositoryName
-- Required key: branchName
-- Required key: fileContent
-- Required key: filePath
-- @return PutFileInput structure as a key-value pair table
function M.PutFileInput(args)
	assert(args, "You must provide an argument table when creating PutFileInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["branchName"] = args["branchName"],
		["fileContent"] = args["fileContent"],
		["filePath"] = args["filePath"],
		["commitMessage"] = args["commitMessage"],
		["parentCommitId"] = args["parentCommitId"],
		["fileMode"] = args["fileMode"],
		["repositoryName"] = args["repositoryName"],
		["email"] = args["email"],
		["name"] = args["name"],
	}
	asserts.AssertPutFileInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CommentsForPullRequest = { ["afterCommitId"] = true, ["afterBlobId"] = true, ["beforeCommitId"] = true, ["comments"] = true, ["pullRequestId"] = true, ["location"] = true, ["repositoryName"] = true, ["beforeBlobId"] = true, nil }

function asserts.AssertCommentsForPullRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommentsForPullRequest to be of type 'table'")
	if struct["afterCommitId"] then asserts.AssertCommitId(struct["afterCommitId"]) end
	if struct["afterBlobId"] then asserts.AssertObjectId(struct["afterBlobId"]) end
	if struct["beforeCommitId"] then asserts.AssertCommitId(struct["beforeCommitId"]) end
	if struct["comments"] then asserts.AssertComments(struct["comments"]) end
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["location"] then asserts.AssertLocation(struct["location"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["beforeBlobId"] then asserts.AssertObjectId(struct["beforeBlobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CommentsForPullRequest[k], "CommentsForPullRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommentsForPullRequest
-- <p>Returns information about comments on a pull request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * afterCommitId [CommitId] <p>he full commit ID of the commit that was the tip of the source branch at the time the comment was made. </p>
-- * afterBlobId [ObjectId] <p>The full blob ID of the file on which you want to comment on the source commit.</p>
-- * beforeCommitId [CommitId] <p>The full commit ID of the commit that was the tip of the destination branch when the pull request was created. This commit will be superceded by the after commit in the source branch when and if you merge the source branch into the destination branch.</p>
-- * comments [Comments] <p>An array of comment objects. Each comment object contains information about a comment on the pull request.</p>
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request.</p>
-- * location [Location] <p>Location information about the comment on the pull request, including the file name, line number, and whether the version of the file where the comment was made is 'BEFORE' (destination branch) or 'AFTER' (source branch).</p>
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the pull request.</p>
-- * beforeBlobId [ObjectId] <p>The full blob ID of the file on which you want to comment on the destination commit.</p>
-- @return CommentsForPullRequest structure as a key-value pair table
function M.CommentsForPullRequest(args)
	assert(args, "You must provide an argument table when creating CommentsForPullRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["afterCommitId"] = args["afterCommitId"],
		["afterBlobId"] = args["afterBlobId"],
		["beforeCommitId"] = args["beforeCommitId"],
		["comments"] = args["comments"],
		["pullRequestId"] = args["pullRequestId"],
		["location"] = args["location"],
		["repositoryName"] = args["repositoryName"],
		["beforeBlobId"] = args["beforeBlobId"],
	}
	asserts.AssertCommentsForPullRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPullRequestsOutput = { ["pullRequestIds"] = true, ["nextToken"] = true, nil }

function asserts.AssertListPullRequestsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPullRequestsOutput to be of type 'table'")
	assert(struct["pullRequestIds"], "Expected key pullRequestIds to exist in table")
	if struct["pullRequestIds"] then asserts.AssertPullRequestIdList(struct["pullRequestIds"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPullRequestsOutput[k], "ListPullRequestsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPullRequestsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequestIds [PullRequestIdList] <p>The system-generated IDs of the pull requests.</p>
-- * nextToken [NextToken] <p>An enumeration token that when provided in a request, returns the next batch of the results.</p>
-- Required key: pullRequestIds
-- @return ListPullRequestsOutput structure as a key-value pair table
function M.ListPullRequestsOutput(args)
	assert(args, "You must provide an argument table when creating ListPullRequestsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequestIds"] = args["pullRequestIds"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListPullRequestsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Commit = { ["committer"] = true, ["author"] = true, ["commitId"] = true, ["treeId"] = true, ["additionalData"] = true, ["parents"] = true, ["message"] = true, nil }

function asserts.AssertCommit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Commit to be of type 'table'")
	if struct["committer"] then asserts.AssertUserInfo(struct["committer"]) end
	if struct["author"] then asserts.AssertUserInfo(struct["author"]) end
	if struct["commitId"] then asserts.AssertObjectId(struct["commitId"]) end
	if struct["treeId"] then asserts.AssertObjectId(struct["treeId"]) end
	if struct["additionalData"] then asserts.AssertAdditionalData(struct["additionalData"]) end
	if struct["parents"] then asserts.AssertParentList(struct["parents"]) end
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.Commit[k], "Commit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Commit
-- <p>Returns information about a specific commit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * committer [UserInfo] <p>Information about the person who committed the specified commit, also known as the committer. Information includes the date in timestamp format with GMT offset, the name of the committer, and the email address for the committer, as configured in Git.</p> <p>For more information about the difference between an author and a committer in Git, see <a href="http://git-scm.com/book/ch2-3.html">Viewing the Commit History</a> in Pro Git by Scott Chacon and Ben Straub.</p>
-- * author [UserInfo] <p>Information about the author of the specified commit. Information includes the date in timestamp format with GMT offset, the name of the author, and the email address for the author, as configured in Git.</p>
-- * commitId [ObjectId] <p>The full SHA of the specified commit. </p>
-- * treeId [ObjectId] <p>Tree information for the specified commit.</p>
-- * additionalData [AdditionalData] <p>Any additional data associated with the specified commit.</p>
-- * parents [ParentList] <p>A list of parent commits for the specified commit. Each parent commit ID is the full commit ID.</p>
-- * message [Message] <p>The commit message associated with the specified commit.</p>
-- @return Commit structure as a key-value pair table
function M.Commit(args)
	assert(args, "You must provide an argument table when creating Commit")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["committer"] = args["committer"],
		["author"] = args["author"],
		["commitId"] = args["commitId"],
		["treeId"] = args["treeId"],
		["additionalData"] = args["additionalData"],
		["parents"] = args["parents"],
		["message"] = args["message"],
	}
	asserts.AssertCommit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PullRequestEvent = { ["pullRequestCreatedEventMetadata"] = true, ["pullRequestSourceReferenceUpdatedEventMetadata"] = true, ["actorArn"] = true, ["pullRequestId"] = true, ["pullRequestEventType"] = true, ["pullRequestMergedStateChangedEventMetadata"] = true, ["pullRequestStatusChangedEventMetadata"] = true, ["eventDate"] = true, nil }

function asserts.AssertPullRequestEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PullRequestEvent to be of type 'table'")
	if struct["pullRequestCreatedEventMetadata"] then asserts.AssertPullRequestCreatedEventMetadata(struct["pullRequestCreatedEventMetadata"]) end
	if struct["pullRequestSourceReferenceUpdatedEventMetadata"] then asserts.AssertPullRequestSourceReferenceUpdatedEventMetadata(struct["pullRequestSourceReferenceUpdatedEventMetadata"]) end
	if struct["actorArn"] then asserts.AssertArn(struct["actorArn"]) end
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["pullRequestEventType"] then asserts.AssertPullRequestEventType(struct["pullRequestEventType"]) end
	if struct["pullRequestMergedStateChangedEventMetadata"] then asserts.AssertPullRequestMergedStateChangedEventMetadata(struct["pullRequestMergedStateChangedEventMetadata"]) end
	if struct["pullRequestStatusChangedEventMetadata"] then asserts.AssertPullRequestStatusChangedEventMetadata(struct["pullRequestStatusChangedEventMetadata"]) end
	if struct["eventDate"] then asserts.AssertEventDate(struct["eventDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.PullRequestEvent[k], "PullRequestEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PullRequestEvent
-- <p>Returns information about a pull request event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequestCreatedEventMetadata [PullRequestCreatedEventMetadata] <p>Information about the source and destination branches for the pull request.</p>
-- * pullRequestSourceReferenceUpdatedEventMetadata [PullRequestSourceReferenceUpdatedEventMetadata] <p>Information about the updated source branch for the pull request event. </p>
-- * actorArn [Arn] <p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event. Examples include updating the pull request with additional commits or changing the status of a pull request.</p>
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request.</p>
-- * pullRequestEventType [PullRequestEventType] <p>The type of the pull request event, for example a status change event (PULL_REQUEST_STATUS_CHANGED) or update event (PULL_REQUEST_SOURCE_REFERENCE_UPDATED).</p>
-- * pullRequestMergedStateChangedEventMetadata [PullRequestMergedStateChangedEventMetadata] <p>Information about the change in mergability state for the pull request event.</p>
-- * pullRequestStatusChangedEventMetadata [PullRequestStatusChangedEventMetadata] <p>Information about the change in status for the pull request event.</p>
-- * eventDate [EventDate] <p>The day and time of the pull request event, in timestamp format.</p>
-- @return PullRequestEvent structure as a key-value pair table
function M.PullRequestEvent(args)
	assert(args, "You must provide an argument table when creating PullRequestEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequestCreatedEventMetadata"] = args["pullRequestCreatedEventMetadata"],
		["pullRequestSourceReferenceUpdatedEventMetadata"] = args["pullRequestSourceReferenceUpdatedEventMetadata"],
		["actorArn"] = args["actorArn"],
		["pullRequestId"] = args["pullRequestId"],
		["pullRequestEventType"] = args["pullRequestEventType"],
		["pullRequestMergedStateChangedEventMetadata"] = args["pullRequestMergedStateChangedEventMetadata"],
		["pullRequestStatusChangedEventMetadata"] = args["pullRequestStatusChangedEventMetadata"],
		["eventDate"] = args["eventDate"],
	}
	asserts.AssertPullRequestEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCommitInput = { ["commitId"] = true, ["repositoryName"] = true, nil }

function asserts.AssertGetCommitInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommitInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["commitId"], "Expected key commitId to exist in table")
	if struct["commitId"] then asserts.AssertObjectId(struct["commitId"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCommitInput[k], "GetCommitInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommitInput
-- <p>Represents the input of a get commit operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commitId [ObjectId] <p>The commit ID. Commit IDs are the full SHA of the commit.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository to which the commit was made.</p>
-- Required key: repositoryName
-- Required key: commitId
-- @return GetCommitInput structure as a key-value pair table
function M.GetCommitInput(args)
	assert(args, "You must provide an argument table when creating GetCommitInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commitId"] = args["commitId"],
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertGetCommitInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFileOutput = { ["filePath"] = true, ["blobId"] = true, ["commitId"] = true, ["fileSize"] = true, ["fileContent"] = true, ["fileMode"] = true, nil }

function asserts.AssertGetFileOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFileOutput to be of type 'table'")
	assert(struct["commitId"], "Expected key commitId to exist in table")
	assert(struct["blobId"], "Expected key blobId to exist in table")
	assert(struct["filePath"], "Expected key filePath to exist in table")
	assert(struct["fileMode"], "Expected key fileMode to exist in table")
	assert(struct["fileSize"], "Expected key fileSize to exist in table")
	assert(struct["fileContent"], "Expected key fileContent to exist in table")
	if struct["filePath"] then asserts.AssertPath(struct["filePath"]) end
	if struct["blobId"] then asserts.AssertObjectId(struct["blobId"]) end
	if struct["commitId"] then asserts.AssertObjectId(struct["commitId"]) end
	if struct["fileSize"] then asserts.AssertObjectSize(struct["fileSize"]) end
	if struct["fileContent"] then asserts.AssertFileContent(struct["fileContent"]) end
	if struct["fileMode"] then asserts.AssertFileModeTypeEnum(struct["fileMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFileOutput[k], "GetFileOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFileOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filePath [Path] <p>The fully qualified path to the specified file. This returns the name and extension of the file.</p>
-- * blobId [ObjectId] <p>The blob ID of the object that represents the file content.</p>
-- * commitId [ObjectId] <p>The full commit ID of the commit that contains the content returned by GetFile.</p>
-- * fileSize [ObjectSize] <p>The size of the contents of the file, in bytes.</p>
-- * fileContent [FileContent] <p>The base-64 encoded binary data object that represents the content of the file.</p>
-- * fileMode [FileModeTypeEnum] <p>The extrapolated file mode permissions of the blob. Valid values include strings such as EXECUTABLE and not numeric values.</p> <note> <p>The file mode permissions returned by this API are not the standard file mode permission values, such as 100644, but rather extrapolated values. See below for a full list of supported return values.</p> </note>
-- Required key: commitId
-- Required key: blobId
-- Required key: filePath
-- Required key: fileMode
-- Required key: fileSize
-- Required key: fileContent
-- @return GetFileOutput structure as a key-value pair table
function M.GetFileOutput(args)
	assert(args, "You must provide an argument table when creating GetFileOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filePath"] = args["filePath"],
		["blobId"] = args["blobId"],
		["commitId"] = args["commitId"],
		["fileSize"] = args["fileSize"],
		["fileContent"] = args["fileContent"],
		["fileMode"] = args["fileMode"],
	}
	asserts.AssertGetFileOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PullRequestSourceReferenceUpdatedEventMetadata = { ["beforeCommitId"] = true, ["afterCommitId"] = true, ["repositoryName"] = true, ["mergeBase"] = true, nil }

function asserts.AssertPullRequestSourceReferenceUpdatedEventMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PullRequestSourceReferenceUpdatedEventMetadata to be of type 'table'")
	if struct["beforeCommitId"] then asserts.AssertCommitId(struct["beforeCommitId"]) end
	if struct["afterCommitId"] then asserts.AssertCommitId(struct["afterCommitId"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["mergeBase"] then asserts.AssertCommitId(struct["mergeBase"]) end
	for k,_ in pairs(struct) do
		assert(keys.PullRequestSourceReferenceUpdatedEventMetadata[k], "PullRequestSourceReferenceUpdatedEventMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PullRequestSourceReferenceUpdatedEventMetadata
-- <p>Information about an update to the source branch of a pull request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * beforeCommitId [CommitId] <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was updated.</p>
-- * afterCommitId [CommitId] <p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the pull request was updated.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where the pull request was updated.</p>
-- * mergeBase [CommitId] <p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>
-- @return PullRequestSourceReferenceUpdatedEventMetadata structure as a key-value pair table
function M.PullRequestSourceReferenceUpdatedEventMetadata(args)
	assert(args, "You must provide an argument table when creating PullRequestSourceReferenceUpdatedEventMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["beforeCommitId"] = args["beforeCommitId"],
		["afterCommitId"] = args["afterCommitId"],
		["repositoryName"] = args["repositoryName"],
		["mergeBase"] = args["mergeBase"],
	}
	asserts.AssertPullRequestSourceReferenceUpdatedEventMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RepositoryTrigger = { ["destinationArn"] = true, ["branches"] = true, ["name"] = true, ["customData"] = true, ["events"] = true, nil }

function asserts.AssertRepositoryTrigger(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTrigger to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["destinationArn"], "Expected key destinationArn to exist in table")
	assert(struct["events"], "Expected key events to exist in table")
	if struct["destinationArn"] then asserts.AssertArn(struct["destinationArn"]) end
	if struct["branches"] then asserts.AssertBranchNameList(struct["branches"]) end
	if struct["name"] then asserts.AssertRepositoryTriggerName(struct["name"]) end
	if struct["customData"] then asserts.AssertRepositoryTriggerCustomData(struct["customData"]) end
	if struct["events"] then asserts.AssertRepositoryTriggerEventList(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(keys.RepositoryTrigger[k], "RepositoryTrigger contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTrigger
-- <p>Information about a trigger for a repository.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * destinationArn [Arn] <p>The ARN of the resource that is the target for a trigger. For example, the ARN of a topic in Amazon Simple Notification Service (SNS).</p>
-- * branches [BranchNameList] <p>The branches that will be included in the trigger configuration. If you specify an empty array, the trigger will apply to all branches.</p> <note> <p>While no content is required in the array, you must include the array itself.</p> </note>
-- * name [RepositoryTriggerName] <p>The name of the trigger.</p>
-- * customData [RepositoryTriggerCustomData] <p>Any custom data associated with the trigger that will be included in the information sent to the target of the trigger.</p>
-- * events [RepositoryTriggerEventList] <p>The repository events that will cause the trigger to run actions in another service, such as sending a notification through Amazon Simple Notification Service (SNS). </p> <note> <p>The valid value "all" cannot be used with any other values.</p> </note>
-- Required key: name
-- Required key: destinationArn
-- Required key: events
-- @return RepositoryTrigger structure as a key-value pair table
function M.RepositoryTrigger(args)
	assert(args, "You must provide an argument table when creating RepositoryTrigger")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["destinationArn"] = args["destinationArn"],
		["branches"] = args["branches"],
		["name"] = args["name"],
		["customData"] = args["customData"],
		["events"] = args["events"],
	}
	asserts.AssertRepositoryTrigger(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCommentContentOutput = { ["comment"] = true, nil }

function asserts.AssertDeleteCommentContentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCommentContentOutput to be of type 'table'")
	if struct["comment"] then asserts.AssertComment(struct["comment"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCommentContentOutput[k], "DeleteCommentContentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCommentContentOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * comment [Comment] <p>Information about the comment you just deleted.</p>
-- @return DeleteCommentContentOutput structure as a key-value pair table
function M.DeleteCommentContentOutput(args)
	assert(args, "You must provide an argument table when creating DeleteCommentContentOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["comment"] = args["comment"],
	}
	asserts.AssertDeleteCommentContentOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestRepositoryTriggersInput = { ["repositoryName"] = true, ["triggers"] = true, nil }

function asserts.AssertTestRepositoryTriggersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestRepositoryTriggersInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["triggers"], "Expected key triggers to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["triggers"] then asserts.AssertRepositoryTriggersList(struct["triggers"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestRepositoryTriggersInput[k], "TestRepositoryTriggersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestRepositoryTriggersInput
-- <p>Represents the input of a test repository triggers operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository in which to test the triggers.</p>
-- * triggers [RepositoryTriggersList] <p>The list of triggers to test.</p>
-- Required key: repositoryName
-- Required key: triggers
-- @return TestRepositoryTriggersInput structure as a key-value pair table
function M.TestRepositoryTriggersInput(args)
	assert(args, "You must provide an argument table when creating TestRepositoryTriggersInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["triggers"] = args["triggers"],
	}
	asserts.AssertTestRepositoryTriggersInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPullRequestOutput = { ["pullRequest"] = true, nil }

function asserts.AssertGetPullRequestOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPullRequestOutput to be of type 'table'")
	assert(struct["pullRequest"], "Expected key pullRequest to exist in table")
	if struct["pullRequest"] then asserts.AssertPullRequest(struct["pullRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPullRequestOutput[k], "GetPullRequestOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPullRequestOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequest [PullRequest] <p>Information about the specified pull request.</p>
-- Required key: pullRequest
-- @return GetPullRequestOutput structure as a key-value pair table
function M.GetPullRequestOutput(args)
	assert(args, "You must provide an argument table when creating GetPullRequestOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequest"] = args["pullRequest"],
	}
	asserts.AssertGetPullRequestOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Target = { ["sourceReference"] = true, ["destinationReference"] = true, ["repositoryName"] = true, nil }

function asserts.AssertTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Target to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["sourceReference"], "Expected key sourceReference to exist in table")
	if struct["sourceReference"] then asserts.AssertReferenceName(struct["sourceReference"]) end
	if struct["destinationReference"] then asserts.AssertReferenceName(struct["destinationReference"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Target[k], "Target contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Target
-- <p>Returns information about a target for a pull request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sourceReference [ReferenceName] <p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>
-- * destinationReference [ReferenceName] <p>The branch of the repository where the pull request changes will be merged into. Also known as the destination branch.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the pull request.</p>
-- Required key: repositoryName
-- Required key: sourceReference
-- @return Target structure as a key-value pair table
function M.Target(args)
	assert(args, "You must provide an argument table when creating Target")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["sourceReference"] = args["sourceReference"],
		["destinationReference"] = args["destinationReference"],
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRepositoryTriggersInput = { ["repositoryName"] = true, ["triggers"] = true, nil }

function asserts.AssertPutRepositoryTriggersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRepositoryTriggersInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["triggers"], "Expected key triggers to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["triggers"] then asserts.AssertRepositoryTriggersList(struct["triggers"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRepositoryTriggersInput[k], "PutRepositoryTriggersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRepositoryTriggersInput
-- <p>Represents the input ofa put repository triggers operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository where you want to create or update the trigger.</p>
-- * triggers [RepositoryTriggersList] <p>The JSON block of configuration information for each trigger.</p>
-- Required key: repositoryName
-- Required key: triggers
-- @return PutRepositoryTriggersInput structure as a key-value pair table
function M.PutRepositoryTriggersInput(args)
	assert(args, "You must provide an argument table when creating PutRepositoryTriggersInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["triggers"] = args["triggers"],
	}
	asserts.AssertPutRepositoryTriggersInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Location = { ["filePosition"] = true, ["relativeFileVersion"] = true, ["filePath"] = true, nil }

function asserts.AssertLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Location to be of type 'table'")
	if struct["filePosition"] then asserts.AssertPosition(struct["filePosition"]) end
	if struct["relativeFileVersion"] then asserts.AssertRelativeFileVersionEnum(struct["relativeFileVersion"]) end
	if struct["filePath"] then asserts.AssertPath(struct["filePath"]) end
	for k,_ in pairs(struct) do
		assert(keys.Location[k], "Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Location
-- <p>Returns information about the location of a change or comment in the comparison between two commits or a pull request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filePosition [Position] <p>The position of a change within a compared file, in line number format.</p>
-- * relativeFileVersion [RelativeFileVersionEnum] <p>In a comparison of commits or a pull request, whether the change is in the 'before' or 'after' of that comparison.</p>
-- * filePath [Path] <p>The name of the file being compared, including its extension and subdirectory, if any.</p>
-- @return Location structure as a key-value pair table
function M.Location(args)
	assert(args, "You must provide an argument table when creating Location")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filePosition"] = args["filePosition"],
		["relativeFileVersion"] = args["relativeFileVersion"],
		["filePath"] = args["filePath"],
	}
	asserts.AssertLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCommentInput = { ["commentId"] = true, nil }

function asserts.AssertGetCommentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommentInput to be of type 'table'")
	assert(struct["commentId"], "Expected key commentId to exist in table")
	if struct["commentId"] then asserts.AssertCommentId(struct["commentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCommentInput[k], "GetCommentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommentInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commentId [CommentId] <p>The unique, system-generated ID of the comment. To get this ID, use <a>GetCommentsForComparedCommit</a> or <a>GetCommentsForPullRequest</a>.</p>
-- Required key: commentId
-- @return GetCommentInput structure as a key-value pair table
function M.GetCommentInput(args)
	assert(args, "You must provide an argument table when creating GetCommentInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commentId"] = args["commentId"],
	}
	asserts.AssertGetCommentInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePullRequestEventsInput = { ["actorArn"] = true, ["pullRequestId"] = true, ["nextToken"] = true, ["pullRequestEventType"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribePullRequestEventsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePullRequestEventsInput to be of type 'table'")
	assert(struct["pullRequestId"], "Expected key pullRequestId to exist in table")
	if struct["actorArn"] then asserts.AssertArn(struct["actorArn"]) end
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["pullRequestEventType"] then asserts.AssertPullRequestEventType(struct["pullRequestEventType"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePullRequestEventsInput[k], "DescribePullRequestEventsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePullRequestEventsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * actorArn [Arn] <p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event. Examples include updating the pull request with additional commits or changing the status of a pull request.</p>
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
-- * nextToken [NextToken] <p>An enumeration token that when provided in a request, returns the next batch of the results.</p>
-- * pullRequestEventType [PullRequestEventType] <p>Optional. The pull request event type about which you want to return information.</p>
-- * maxResults [MaxResults] <p>A non-negative integer used to limit the number of returned results. The default is 100 events, which is also the maximum number of events that can be returned in a result.</p>
-- Required key: pullRequestId
-- @return DescribePullRequestEventsInput structure as a key-value pair table
function M.DescribePullRequestEventsInput(args)
	assert(args, "You must provide an argument table when creating DescribePullRequestEventsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["actorArn"] = args["actorArn"],
		["pullRequestId"] = args["pullRequestId"],
		["nextToken"] = args["nextToken"],
		["pullRequestEventType"] = args["pullRequestEventType"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertDescribePullRequestEventsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePullRequestEventsOutput = { ["pullRequestEvents"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribePullRequestEventsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePullRequestEventsOutput to be of type 'table'")
	assert(struct["pullRequestEvents"], "Expected key pullRequestEvents to exist in table")
	if struct["pullRequestEvents"] then asserts.AssertPullRequestEventList(struct["pullRequestEvents"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePullRequestEventsOutput[k], "DescribePullRequestEventsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePullRequestEventsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequestEvents [PullRequestEventList] <p>Information about the pull request events.</p>
-- * nextToken [NextToken] <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
-- Required key: pullRequestEvents
-- @return DescribePullRequestEventsOutput structure as a key-value pair table
function M.DescribePullRequestEventsOutput(args)
	assert(args, "You must provide an argument table when creating DescribePullRequestEventsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequestEvents"] = args["pullRequestEvents"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribePullRequestEventsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRepositoryTriggersOutput = { ["configurationId"] = true, ["triggers"] = true, nil }

function asserts.AssertGetRepositoryTriggersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryTriggersOutput to be of type 'table'")
	if struct["configurationId"] then asserts.AssertRepositoryTriggersConfigurationId(struct["configurationId"]) end
	if struct["triggers"] then asserts.AssertRepositoryTriggersList(struct["triggers"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRepositoryTriggersOutput[k], "GetRepositoryTriggersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryTriggersOutput
-- <p>Represents the output of a get repository triggers operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configurationId [RepositoryTriggersConfigurationId] <p>The system-generated unique ID for the trigger.</p>
-- * triggers [RepositoryTriggersList] <p>The JSON block of configuration information for each trigger.</p>
-- @return GetRepositoryTriggersOutput structure as a key-value pair table
function M.GetRepositoryTriggersOutput(args)
	assert(args, "You must provide an argument table when creating GetRepositoryTriggersOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configurationId"] = args["configurationId"],
		["triggers"] = args["triggers"],
	}
	asserts.AssertGetRepositoryTriggersOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRepositoryOutput = { ["repositoryId"] = true, nil }

function asserts.AssertDeleteRepositoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryOutput to be of type 'table'")
	if struct["repositoryId"] then asserts.AssertRepositoryId(struct["repositoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRepositoryOutput[k], "DeleteRepositoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryOutput
-- <p>Represents the output of a delete repository operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryId [RepositoryId] <p>The ID of the repository that was deleted.</p>
-- @return DeleteRepositoryOutput structure as a key-value pair table
function M.DeleteRepositoryOutput(args)
	assert(args, "You must provide an argument table when creating DeleteRepositoryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryId"] = args["repositoryId"],
	}
	asserts.AssertDeleteRepositoryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRepositoriesOutput = { ["nextToken"] = true, ["repositories"] = true, nil }

function asserts.AssertListRepositoriesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRepositoriesOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["repositories"] then asserts.AssertRepositoryNameIdPairList(struct["repositories"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRepositoriesOutput[k], "ListRepositoriesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRepositoriesOutput
-- <p>Represents the output of a list repositories operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.</p>
-- * repositories [RepositoryNameIdPairList] <p>Lists the repositories called by the list repositories operation.</p>
-- @return ListRepositoriesOutput structure as a key-value pair table
function M.ListRepositoriesOutput(args)
	assert(args, "You must provide an argument table when creating ListRepositoriesOutput")
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
	asserts.AssertListRepositoriesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFileOutput = { ["commitId"] = true, ["treeId"] = true, ["blobId"] = true, ["filePath"] = true, nil }

function asserts.AssertDeleteFileOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFileOutput to be of type 'table'")
	assert(struct["commitId"], "Expected key commitId to exist in table")
	assert(struct["blobId"], "Expected key blobId to exist in table")
	assert(struct["treeId"], "Expected key treeId to exist in table")
	assert(struct["filePath"], "Expected key filePath to exist in table")
	if struct["commitId"] then asserts.AssertObjectId(struct["commitId"]) end
	if struct["treeId"] then asserts.AssertObjectId(struct["treeId"]) end
	if struct["blobId"] then asserts.AssertObjectId(struct["blobId"]) end
	if struct["filePath"] then asserts.AssertPath(struct["filePath"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFileOutput[k], "DeleteFileOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFileOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commitId [ObjectId] <p>The full commit ID of the commit that contains the change that deletes the file.</p>
-- * treeId [ObjectId] <p>The full SHA-1 pointer of the tree information for the commit that contains the delete file change.</p>
-- * blobId [ObjectId] <p>The blob ID removed from the tree as part of deleting the file.</p>
-- * filePath [Path] <p>The fully-qualified path to the file that will be deleted, including the full name and extension of that file.</p>
-- Required key: commitId
-- Required key: blobId
-- Required key: treeId
-- Required key: filePath
-- @return DeleteFileOutput structure as a key-value pair table
function M.DeleteFileOutput(args)
	assert(args, "You must provide an argument table when creating DeleteFileOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commitId"] = args["commitId"],
		["treeId"] = args["treeId"],
		["blobId"] = args["blobId"],
		["filePath"] = args["filePath"],
	}
	asserts.AssertDeleteFileOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PostCommentForComparedCommitOutput = { ["comment"] = true, ["afterCommitId"] = true, ["afterBlobId"] = true, ["beforeCommitId"] = true, ["location"] = true, ["repositoryName"] = true, ["beforeBlobId"] = true, nil }

function asserts.AssertPostCommentForComparedCommitOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostCommentForComparedCommitOutput to be of type 'table'")
	if struct["comment"] then asserts.AssertComment(struct["comment"]) end
	if struct["afterCommitId"] then asserts.AssertCommitId(struct["afterCommitId"]) end
	if struct["afterBlobId"] then asserts.AssertObjectId(struct["afterBlobId"]) end
	if struct["beforeCommitId"] then asserts.AssertCommitId(struct["beforeCommitId"]) end
	if struct["location"] then asserts.AssertLocation(struct["location"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["beforeBlobId"] then asserts.AssertObjectId(struct["beforeBlobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PostCommentForComparedCommitOutput[k], "PostCommentForComparedCommitOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostCommentForComparedCommitOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * comment [Comment] <p>The content of the comment you posted.</p>
-- * afterCommitId [CommitId] <p>In the directionality you established, the full commit ID of the 'after' commit.</p>
-- * afterBlobId [ObjectId] <p>In the directionality you established, the blob ID of the 'after' blob.</p>
-- * beforeCommitId [CommitId] <p>In the directionality you established, the full commit ID of the 'before' commit.</p>
-- * location [Location] <p>The location of the comment in the comparison between the two commits.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where you posted a comment on the comparison between commits.</p>
-- * beforeBlobId [ObjectId] <p>In the directionality you established, the blob ID of the 'before' blob.</p>
-- @return PostCommentForComparedCommitOutput structure as a key-value pair table
function M.PostCommentForComparedCommitOutput(args)
	assert(args, "You must provide an argument table when creating PostCommentForComparedCommitOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["comment"] = args["comment"],
		["afterCommitId"] = args["afterCommitId"],
		["afterBlobId"] = args["afterBlobId"],
		["beforeCommitId"] = args["beforeCommitId"],
		["location"] = args["location"],
		["repositoryName"] = args["repositoryName"],
		["beforeBlobId"] = args["beforeBlobId"],
	}
	asserts.AssertPostCommentForComparedCommitOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PostCommentReplyInput = { ["content"] = true, ["inReplyTo"] = true, ["clientRequestToken"] = true, nil }

function asserts.AssertPostCommentReplyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostCommentReplyInput to be of type 'table'")
	assert(struct["inReplyTo"], "Expected key inReplyTo to exist in table")
	assert(struct["content"], "Expected key content to exist in table")
	if struct["content"] then asserts.AssertContent(struct["content"]) end
	if struct["inReplyTo"] then asserts.AssertCommentId(struct["inReplyTo"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.PostCommentReplyInput[k], "PostCommentReplyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostCommentReplyInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * content [Content] <p>The contents of your reply to a comment.</p>
-- * inReplyTo [CommentId] <p>The system-generated ID of the comment to which you want to reply. To get this ID, use <a>GetCommentsForComparedCommit</a> or <a>GetCommentsForPullRequest</a>.</p>
-- * clientRequestToken [ClientRequestToken] <p>A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.</p>
-- Required key: inReplyTo
-- Required key: content
-- @return PostCommentReplyInput structure as a key-value pair table
function M.PostCommentReplyInput(args)
	assert(args, "You must provide an argument table when creating PostCommentReplyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["content"] = args["content"],
		["inReplyTo"] = args["inReplyTo"],
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertPostCommentReplyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCommentsForComparedCommitInput = { ["beforeCommitId"] = true, ["nextToken"] = true, ["afterCommitId"] = true, ["repositoryName"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetCommentsForComparedCommitInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommentsForComparedCommitInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["afterCommitId"], "Expected key afterCommitId to exist in table")
	if struct["beforeCommitId"] then asserts.AssertCommitId(struct["beforeCommitId"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["afterCommitId"] then asserts.AssertCommitId(struct["afterCommitId"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCommentsForComparedCommitInput[k], "GetCommentsForComparedCommitInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommentsForComparedCommitInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * beforeCommitId [CommitId] <p>To establish the directionality of the comparison, the full commit ID of the 'before' commit.</p>
-- * nextToken [NextToken] <p>An enumeration token that when provided in a request, returns the next batch of the results. </p>
-- * afterCommitId [CommitId] <p>To establish the directionality of the comparison, the full commit ID of the 'after' commit.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where you want to compare commits.</p>
-- * maxResults [MaxResults] <p>A non-negative integer used to limit the number of returned results. The default is 100 comments, and is configurable up to 500.</p>
-- Required key: repositoryName
-- Required key: afterCommitId
-- @return GetCommentsForComparedCommitInput structure as a key-value pair table
function M.GetCommentsForComparedCommitInput(args)
	assert(args, "You must provide an argument table when creating GetCommentsForComparedCommitInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["beforeCommitId"] = args["beforeCommitId"],
		["nextToken"] = args["nextToken"],
		["afterCommitId"] = args["afterCommitId"],
		["repositoryName"] = args["repositoryName"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetCommentsForComparedCommitInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RepositoryMetadata = { ["creationDate"] = true, ["defaultBranch"] = true, ["repositoryName"] = true, ["cloneUrlSsh"] = true, ["lastModifiedDate"] = true, ["repositoryDescription"] = true, ["cloneUrlHttp"] = true, ["repositoryId"] = true, ["Arn"] = true, ["accountId"] = true, nil }

function asserts.AssertRepositoryMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryMetadata to be of type 'table'")
	if struct["creationDate"] then asserts.AssertCreationDate(struct["creationDate"]) end
	if struct["defaultBranch"] then asserts.AssertBranchName(struct["defaultBranch"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["cloneUrlSsh"] then asserts.AssertCloneUrlSsh(struct["cloneUrlSsh"]) end
	if struct["lastModifiedDate"] then asserts.AssertLastModifiedDate(struct["lastModifiedDate"]) end
	if struct["repositoryDescription"] then asserts.AssertRepositoryDescription(struct["repositoryDescription"]) end
	if struct["cloneUrlHttp"] then asserts.AssertCloneUrlHttp(struct["cloneUrlHttp"]) end
	if struct["repositoryId"] then asserts.AssertRepositoryId(struct["repositoryId"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["accountId"] then asserts.AssertAccountId(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RepositoryMetadata[k], "RepositoryMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryMetadata
-- <p>Information about a repository.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * creationDate [CreationDate] <p>The date and time the repository was created, in timestamp format.</p>
-- * defaultBranch [BranchName] <p>The repository's default branch name.</p>
-- * repositoryName [RepositoryName] <p>The repository's name.</p>
-- * cloneUrlSsh [CloneUrlSsh] <p>The URL to use for cloning the repository over SSH.</p>
-- * lastModifiedDate [LastModifiedDate] <p>The date and time the repository was last modified, in timestamp format.</p>
-- * repositoryDescription [RepositoryDescription] <p>A comment or description about the repository.</p>
-- * cloneUrlHttp [CloneUrlHttp] <p>The URL to use for cloning the repository over HTTPS.</p>
-- * repositoryId [RepositoryId] <p>The ID of the repository.</p>
-- * Arn [Arn] <p>The Amazon Resource Name (ARN) of the repository.</p>
-- * accountId [AccountId] <p>The ID of the AWS account associated with the repository.</p>
-- @return RepositoryMetadata structure as a key-value pair table
function M.RepositoryMetadata(args)
	assert(args, "You must provide an argument table when creating RepositoryMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["creationDate"] = args["creationDate"],
		["defaultBranch"] = args["defaultBranch"],
		["repositoryName"] = args["repositoryName"],
		["cloneUrlSsh"] = args["cloneUrlSsh"],
		["lastModifiedDate"] = args["lastModifiedDate"],
		["repositoryDescription"] = args["repositoryDescription"],
		["cloneUrlHttp"] = args["cloneUrlHttp"],
		["repositoryId"] = args["repositoryId"],
		["Arn"] = args["Arn"],
		["accountId"] = args["accountId"],
	}
	asserts.AssertRepositoryMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListBranchesOutput = { ["nextToken"] = true, ["branches"] = true, nil }

function asserts.AssertListBranchesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBranchesOutput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["branches"] then asserts.AssertBranchNameList(struct["branches"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListBranchesOutput[k], "ListBranchesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBranchesOutput
-- <p>Represents the output of a list branches operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An enumeration token that returns the batch of the results.</p>
-- * branches [BranchNameList] <p>The list of branch names.</p>
-- @return ListBranchesOutput structure as a key-value pair table
function M.ListBranchesOutput(args)
	assert(args, "You must provide an argument table when creating ListBranchesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["branches"] = args["branches"],
	}
	asserts.AssertListBranchesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBranchInput = { ["repositoryName"] = true, ["branchName"] = true, nil }

function asserts.AssertDeleteBranchInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBranchInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["branchName"], "Expected key branchName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["branchName"] then asserts.AssertBranchName(struct["branchName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBranchInput[k], "DeleteBranchInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBranchInput
-- <p>Represents the input of a delete branch operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the branch to be deleted.</p>
-- * branchName [BranchName] <p>The name of the branch to delete.</p>
-- Required key: repositoryName
-- Required key: branchName
-- @return DeleteBranchInput structure as a key-value pair table
function M.DeleteBranchInput(args)
	assert(args, "You must provide an argument table when creating DeleteBranchInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["branchName"] = args["branchName"],
	}
	asserts.AssertDeleteBranchInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCommentContentInput = { ["commentId"] = true, nil }

function asserts.AssertDeleteCommentContentInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCommentContentInput to be of type 'table'")
	assert(struct["commentId"], "Expected key commentId to exist in table")
	if struct["commentId"] then asserts.AssertCommentId(struct["commentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCommentContentInput[k], "DeleteCommentContentInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCommentContentInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commentId [CommentId] <p>The unique, system-generated ID of the comment. To get this ID, use <a>GetCommentsForComparedCommit</a> or <a>GetCommentsForPullRequest</a>.</p>
-- Required key: commentId
-- @return DeleteCommentContentInput structure as a key-value pair table
function M.DeleteCommentContentInput(args)
	assert(args, "You must provide an argument table when creating DeleteCommentContentInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commentId"] = args["commentId"],
	}
	asserts.AssertDeleteCommentContentInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestRepositoryTriggersOutput = { ["successfulExecutions"] = true, ["failedExecutions"] = true, nil }

function asserts.AssertTestRepositoryTriggersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestRepositoryTriggersOutput to be of type 'table'")
	if struct["successfulExecutions"] then asserts.AssertRepositoryTriggerNameList(struct["successfulExecutions"]) end
	if struct["failedExecutions"] then asserts.AssertRepositoryTriggerExecutionFailureList(struct["failedExecutions"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestRepositoryTriggersOutput[k], "TestRepositoryTriggersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestRepositoryTriggersOutput
-- <p>Represents the output of a test repository triggers operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * successfulExecutions [RepositoryTriggerNameList] <p>The list of triggers that were successfully tested. This list provides the names of the triggers that were successfully tested, separated by commas.</p>
-- * failedExecutions [RepositoryTriggerExecutionFailureList] <p>The list of triggers that were not able to be tested. This list provides the names of the triggers that could not be tested, separated by commas.</p>
-- @return TestRepositoryTriggersOutput structure as a key-value pair table
function M.TestRepositoryTriggersOutput(args)
	assert(args, "You must provide an argument table when creating TestRepositoryTriggersOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["successfulExecutions"] = args["successfulExecutions"],
		["failedExecutions"] = args["failedExecutions"],
	}
	asserts.AssertTestRepositoryTriggersOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRepositoriesInput = { ["nextToken"] = true, ["sortBy"] = true, ["order"] = true, nil }

function asserts.AssertListRepositoriesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRepositoriesInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["sortBy"] then asserts.AssertSortByEnum(struct["sortBy"]) end
	if struct["order"] then asserts.AssertOrderEnum(struct["order"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRepositoriesInput[k], "ListRepositoriesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRepositoriesInput
-- <p>Represents the input of a list repositories operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.</p>
-- * sortBy [SortByEnum] <p>The criteria used to sort the results of a list repositories operation.</p>
-- * order [OrderEnum] <p>The order in which to sort the results of a list repositories operation.</p>
-- @return ListRepositoriesInput structure as a key-value pair table
function M.ListRepositoriesInput(args)
	assert(args, "You must provide an argument table when creating ListRepositoriesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["sortBy"] = args["sortBy"],
		["order"] = args["order"],
	}
	asserts.AssertListRepositoriesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBlobInput = { ["repositoryName"] = true, ["blobId"] = true, nil }

function asserts.AssertGetBlobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBlobInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["blobId"], "Expected key blobId to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["blobId"] then asserts.AssertObjectId(struct["blobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBlobInput[k], "GetBlobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBlobInput
-- <p>Represents the input of a get blob operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the blob.</p>
-- * blobId [ObjectId] <p>The ID of the blob, which is its SHA-1 pointer.</p>
-- Required key: repositoryName
-- Required key: blobId
-- @return GetBlobInput structure as a key-value pair table
function M.GetBlobInput(args)
	assert(args, "You must provide an argument table when creating GetBlobInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["blobId"] = args["blobId"],
	}
	asserts.AssertGetBlobInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PullRequestMergedStateChangedEventMetadata = { ["destinationReference"] = true, ["repositoryName"] = true, ["mergeMetadata"] = true, nil }

function asserts.AssertPullRequestMergedStateChangedEventMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PullRequestMergedStateChangedEventMetadata to be of type 'table'")
	if struct["destinationReference"] then asserts.AssertReferenceName(struct["destinationReference"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["mergeMetadata"] then asserts.AssertMergeMetadata(struct["mergeMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.PullRequestMergedStateChangedEventMetadata[k], "PullRequestMergedStateChangedEventMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PullRequestMergedStateChangedEventMetadata
-- <p>Returns information about the change in the merge state for a pull request event. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * destinationReference [ReferenceName] <p>The name of the branch that the pull request will be merged into.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where the pull request was created.</p>
-- * mergeMetadata [MergeMetadata] <p>Information about the merge state change event.</p>
-- @return PullRequestMergedStateChangedEventMetadata structure as a key-value pair table
function M.PullRequestMergedStateChangedEventMetadata(args)
	assert(args, "You must provide an argument table when creating PullRequestMergedStateChangedEventMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["destinationReference"] = args["destinationReference"],
		["repositoryName"] = args["repositoryName"],
		["mergeMetadata"] = args["mergeMetadata"],
	}
	asserts.AssertPullRequestMergedStateChangedEventMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFileInput = { ["commitSpecifier"] = true, ["repositoryName"] = true, ["filePath"] = true, nil }

function asserts.AssertGetFileInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFileInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["filePath"], "Expected key filePath to exist in table")
	if struct["commitSpecifier"] then asserts.AssertCommitName(struct["commitSpecifier"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["filePath"] then asserts.AssertPath(struct["filePath"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFileInput[k], "GetFileInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFileInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commitSpecifier [CommitName] <p>The fully-quaified reference that identifies the commit that contains the file. For example, you could specify a full commit ID, a tag, a branch name, or a reference such as refs/heads/master. If none is provided, then the head commit will be used.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the file.</p>
-- * filePath [Path] <p>The fully-qualified path to the file, including the full name and extension of the file. For example, /examples/file.md is the fully-qualified path to a file named file.md in a folder named examples.</p>
-- Required key: repositoryName
-- Required key: filePath
-- @return GetFileInput structure as a key-value pair table
function M.GetFileInput(args)
	assert(args, "You must provide an argument table when creating GetFileInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commitSpecifier"] = args["commitSpecifier"],
		["repositoryName"] = args["repositoryName"],
		["filePath"] = args["filePath"],
	}
	asserts.AssertGetFileInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBranchOutput = { ["deletedBranch"] = true, nil }

function asserts.AssertDeleteBranchOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBranchOutput to be of type 'table'")
	if struct["deletedBranch"] then asserts.AssertBranchInfo(struct["deletedBranch"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBranchOutput[k], "DeleteBranchOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBranchOutput
-- <p>Represents the output of a delete branch operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deletedBranch [BranchInfo] <p>Information about the branch deleted by the operation, including the branch name and the commit ID that was the tip of the branch.</p>
-- @return DeleteBranchOutput structure as a key-value pair table
function M.DeleteBranchOutput(args)
	assert(args, "You must provide an argument table when creating DeleteBranchOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deletedBranch"] = args["deletedBranch"],
	}
	asserts.AssertDeleteBranchOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFolderInput = { ["commitSpecifier"] = true, ["repositoryName"] = true, ["folderPath"] = true, nil }

function asserts.AssertGetFolderInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFolderInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["folderPath"], "Expected key folderPath to exist in table")
	if struct["commitSpecifier"] then asserts.AssertCommitName(struct["commitSpecifier"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["folderPath"] then asserts.AssertPath(struct["folderPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFolderInput[k], "GetFolderInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFolderInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commitSpecifier [CommitName] <p>A fully-qualified reference used to identify a commit that contains the version of the folder's content to return. A fully-qualified reference can be a commit ID, branch name, tag, or reference such as HEAD. If no specifier is provided, the folder content will be returned as it exists in the HEAD commit.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository.</p>
-- * folderPath [Path] <p>The fully-qualified path to the folder whose contents will be returned, including the folder name. For example, /examples is a fully-qualified path to a folder named examples that was created off of the root directory (/) of a repository. </p>
-- Required key: repositoryName
-- Required key: folderPath
-- @return GetFolderInput structure as a key-value pair table
function M.GetFolderInput(args)
	assert(args, "You must provide an argument table when creating GetFolderInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commitSpecifier"] = args["commitSpecifier"],
		["repositoryName"] = args["repositoryName"],
		["folderPath"] = args["folderPath"],
	}
	asserts.AssertGetFolderInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBranchInput = { ["repositoryName"] = true, ["branchName"] = true, nil }

function asserts.AssertGetBranchInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBranchInput to be of type 'table'")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["branchName"] then asserts.AssertBranchName(struct["branchName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBranchInput[k], "GetBranchInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBranchInput
-- <p>Represents the input of a get branch operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the branch for which you want to retrieve information.</p>
-- * branchName [BranchName] <p>The name of the branch for which you want to retrieve information.</p>
-- @return GetBranchInput structure as a key-value pair table
function M.GetBranchInput(args)
	assert(args, "You must provide an argument table when creating GetBranchInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["branchName"] = args["branchName"],
	}
	asserts.AssertGetBranchInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePullRequestStatusInput = { ["pullRequestId"] = true, ["pullRequestStatus"] = true, nil }

function asserts.AssertUpdatePullRequestStatusInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePullRequestStatusInput to be of type 'table'")
	assert(struct["pullRequestId"], "Expected key pullRequestId to exist in table")
	assert(struct["pullRequestStatus"], "Expected key pullRequestStatus to exist in table")
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["pullRequestStatus"] then asserts.AssertPullRequestStatusEnum(struct["pullRequestStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePullRequestStatusInput[k], "UpdatePullRequestStatusInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePullRequestStatusInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
-- * pullRequestStatus [PullRequestStatusEnum] <p>The status of the pull request. The only valid operations are to update the status from <code>OPEN</code> to <code>OPEN</code>, <code>OPEN</code> to <code>CLOSED</code> or from from <code>CLOSED</code> to <code>CLOSED</code>.</p>
-- Required key: pullRequestId
-- Required key: pullRequestStatus
-- @return UpdatePullRequestStatusInput structure as a key-value pair table
function M.UpdatePullRequestStatusInput(args)
	assert(args, "You must provide an argument table when creating UpdatePullRequestStatusInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequestId"] = args["pullRequestId"],
		["pullRequestStatus"] = args["pullRequestStatus"],
	}
	asserts.AssertUpdatePullRequestStatusInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Comment = { ["inReplyTo"] = true, ["authorArn"] = true, ["deleted"] = true, ["lastModifiedDate"] = true, ["content"] = true, ["clientRequestToken"] = true, ["commentId"] = true, ["creationDate"] = true, nil }

function asserts.AssertComment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Comment to be of type 'table'")
	if struct["inReplyTo"] then asserts.AssertCommentId(struct["inReplyTo"]) end
	if struct["authorArn"] then asserts.AssertArn(struct["authorArn"]) end
	if struct["deleted"] then asserts.AssertIsCommentDeleted(struct["deleted"]) end
	if struct["lastModifiedDate"] then asserts.AssertLastModifiedDate(struct["lastModifiedDate"]) end
	if struct["content"] then asserts.AssertContent(struct["content"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["commentId"] then asserts.AssertCommentId(struct["commentId"]) end
	if struct["creationDate"] then asserts.AssertCreationDate(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.Comment[k], "Comment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Comment
-- <p>Returns information about a specific comment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * inReplyTo [CommentId] <p>The ID of the comment for which this comment is a reply, if any.</p>
-- * authorArn [Arn] <p>The Amazon Resource Name (ARN) of the person who posted the comment.</p>
-- * deleted [IsCommentDeleted] <p>A Boolean value indicating whether the comment has been deleted.</p>
-- * lastModifiedDate [LastModifiedDate] <p>The date and time the comment was most recently modified, in timestamp format.</p>
-- * content [Content] <p>The content of the comment.</p>
-- * clientRequestToken [ClientRequestToken] <p>A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.</p>
-- * commentId [CommentId] <p>The system-generated comment ID.</p>
-- * creationDate [CreationDate] <p>The date and time the comment was created, in timestamp format.</p>
-- @return Comment structure as a key-value pair table
function M.Comment(args)
	assert(args, "You must provide an argument table when creating Comment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["inReplyTo"] = args["inReplyTo"],
		["authorArn"] = args["authorArn"],
		["deleted"] = args["deleted"],
		["lastModifiedDate"] = args["lastModifiedDate"],
		["content"] = args["content"],
		["clientRequestToken"] = args["clientRequestToken"],
		["commentId"] = args["commentId"],
		["creationDate"] = args["creationDate"],
	}
	asserts.AssertComment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRepositoryInput = { ["repositoryName"] = true, nil }

function asserts.AssertGetRepositoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRepositoryInput[k], "GetRepositoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryInput
-- <p>Represents the input of a get repository operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository to get information about.</p>
-- Required key: repositoryName
-- @return GetRepositoryInput structure as a key-value pair table
function M.GetRepositoryInput(args)
	assert(args, "You must provide an argument table when creating GetRepositoryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertGetRepositoryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RepositoryNameIdPair = { ["repositoryName"] = true, ["repositoryId"] = true, nil }

function asserts.AssertRepositoryNameIdPair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNameIdPair to be of type 'table'")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["repositoryId"] then asserts.AssertRepositoryId(struct["repositoryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RepositoryNameIdPair[k], "RepositoryNameIdPair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNameIdPair
-- <p>Information about a repository name and ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name associated with the repository.</p>
-- * repositoryId [RepositoryId] <p>The ID associated with the repository.</p>
-- @return RepositoryNameIdPair structure as a key-value pair table
function M.RepositoryNameIdPair(args)
	assert(args, "You must provide an argument table when creating RepositoryNameIdPair")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["repositoryId"] = args["repositoryId"],
	}
	asserts.AssertRepositoryNameIdPair(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserInfo = { ["date"] = true, ["name"] = true, ["email"] = true, nil }

function asserts.AssertUserInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserInfo to be of type 'table'")
	if struct["date"] then asserts.AssertDate(struct["date"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["email"] then asserts.AssertEmail(struct["email"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserInfo[k], "UserInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserInfo
-- <p>Information about the user who made a specified commit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * date [Date] <p>The date when the specified commit was commited, in timestamp format with GMT offset.</p>
-- * name [Name] <p>The name of the user who made the specified commit.</p>
-- * email [Email] <p>The email address associated with the user who made the commit, if any.</p>
-- @return UserInfo structure as a key-value pair table
function M.UserInfo(args)
	assert(args, "You must provide an argument table when creating UserInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["date"] = args["date"],
		["name"] = args["name"],
		["email"] = args["email"],
	}
	asserts.AssertUserInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MergePullRequestByFastForwardInput = { ["pullRequestId"] = true, ["repositoryName"] = true, ["sourceCommitId"] = true, nil }

function asserts.AssertMergePullRequestByFastForwardInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MergePullRequestByFastForwardInput to be of type 'table'")
	assert(struct["pullRequestId"], "Expected key pullRequestId to exist in table")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["sourceCommitId"] then asserts.AssertCommitId(struct["sourceCommitId"]) end
	for k,_ in pairs(struct) do
		assert(keys.MergePullRequestByFastForwardInput[k], "MergePullRequestByFastForwardInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MergePullRequestByFastForwardInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where the pull request was created.</p>
-- * sourceCommitId [CommitId] <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
-- Required key: pullRequestId
-- Required key: repositoryName
-- @return MergePullRequestByFastForwardInput structure as a key-value pair table
function M.MergePullRequestByFastForwardInput(args)
	assert(args, "You must provide an argument table when creating MergePullRequestByFastForwardInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequestId"] = args["pullRequestId"],
		["repositoryName"] = args["repositoryName"],
		["sourceCommitId"] = args["sourceCommitId"],
	}
	asserts.AssertMergePullRequestByFastForwardInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCommentOutput = { ["comment"] = true, nil }

function asserts.AssertUpdateCommentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCommentOutput to be of type 'table'")
	if struct["comment"] then asserts.AssertComment(struct["comment"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCommentOutput[k], "UpdateCommentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCommentOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * comment [Comment] <p>Information about the updated comment.</p>
-- @return UpdateCommentOutput structure as a key-value pair table
function M.UpdateCommentOutput(args)
	assert(args, "You must provide an argument table when creating UpdateCommentOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["comment"] = args["comment"],
	}
	asserts.AssertUpdateCommentOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDefaultBranchInput = { ["defaultBranchName"] = true, ["repositoryName"] = true, nil }

function asserts.AssertUpdateDefaultBranchInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDefaultBranchInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["defaultBranchName"], "Expected key defaultBranchName to exist in table")
	if struct["defaultBranchName"] then asserts.AssertBranchName(struct["defaultBranchName"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDefaultBranchInput[k], "UpdateDefaultBranchInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDefaultBranchInput
-- <p>Represents the input of an update default branch operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultBranchName [BranchName] <p>The name of the branch to set as the default.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository to set or change the default branch for.</p>
-- Required key: repositoryName
-- Required key: defaultBranchName
-- @return UpdateDefaultBranchInput structure as a key-value pair table
function M.UpdateDefaultBranchInput(args)
	assert(args, "You must provide an argument table when creating UpdateDefaultBranchInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultBranchName"] = args["defaultBranchName"],
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertUpdateDefaultBranchInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PullRequestCreatedEventMetadata = { ["mergeBase"] = true, ["repositoryName"] = true, ["sourceCommitId"] = true, ["destinationCommitId"] = true, nil }

function asserts.AssertPullRequestCreatedEventMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PullRequestCreatedEventMetadata to be of type 'table'")
	if struct["mergeBase"] then asserts.AssertCommitId(struct["mergeBase"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["sourceCommitId"] then asserts.AssertCommitId(struct["sourceCommitId"]) end
	if struct["destinationCommitId"] then asserts.AssertCommitId(struct["destinationCommitId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PullRequestCreatedEventMetadata[k], "PullRequestCreatedEventMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PullRequestCreatedEventMetadata
-- <p>Metadata about the pull request that is used when comparing the pull request source with its destination.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * mergeBase [CommitId] <p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where the pull request was created.</p>
-- * sourceCommitId [CommitId] <p>The commit ID on the source branch used when the pull request was created.</p>
-- * destinationCommitId [CommitId] <p>The commit ID of the tip of the branch specified as the destination branch when the pull request was created.</p>
-- @return PullRequestCreatedEventMetadata structure as a key-value pair table
function M.PullRequestCreatedEventMetadata(args)
	assert(args, "You must provide an argument table when creating PullRequestCreatedEventMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["mergeBase"] = args["mergeBase"],
		["repositoryName"] = args["repositoryName"],
		["sourceCommitId"] = args["sourceCommitId"],
		["destinationCommitId"] = args["destinationCommitId"],
	}
	asserts.AssertPullRequestCreatedEventMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateBranchInput = { ["commitId"] = true, ["repositoryName"] = true, ["branchName"] = true, nil }

function asserts.AssertCreateBranchInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBranchInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["branchName"], "Expected key branchName to exist in table")
	assert(struct["commitId"], "Expected key commitId to exist in table")
	if struct["commitId"] then asserts.AssertCommitId(struct["commitId"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["branchName"] then asserts.AssertBranchName(struct["branchName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBranchInput[k], "CreateBranchInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBranchInput
-- <p>Represents the input of a create branch operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commitId [CommitId] <p>The ID of the commit to point the new branch to.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository in which you want to create the new branch.</p>
-- * branchName [BranchName] <p>The name of the new branch to create.</p>
-- Required key: repositoryName
-- Required key: branchName
-- Required key: commitId
-- @return CreateBranchInput structure as a key-value pair table
function M.CreateBranchInput(args)
	assert(args, "You must provide an argument table when creating CreateBranchInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commitId"] = args["commitId"],
		["repositoryName"] = args["repositoryName"],
		["branchName"] = args["branchName"],
	}
	asserts.AssertCreateBranchInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PullRequest = { ["authorArn"] = true, ["description"] = true, ["title"] = true, ["pullRequestTargets"] = true, ["lastActivityDate"] = true, ["pullRequestId"] = true, ["clientRequestToken"] = true, ["pullRequestStatus"] = true, ["creationDate"] = true, nil }

function asserts.AssertPullRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PullRequest to be of type 'table'")
	if struct["authorArn"] then asserts.AssertArn(struct["authorArn"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["title"] then asserts.AssertTitle(struct["title"]) end
	if struct["pullRequestTargets"] then asserts.AssertPullRequestTargetList(struct["pullRequestTargets"]) end
	if struct["lastActivityDate"] then asserts.AssertLastModifiedDate(struct["lastActivityDate"]) end
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["pullRequestStatus"] then asserts.AssertPullRequestStatusEnum(struct["pullRequestStatus"]) end
	if struct["creationDate"] then asserts.AssertCreationDate(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.PullRequest[k], "PullRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PullRequest
-- <p>Returns information about a pull request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * authorArn [Arn] <p>The Amazon Resource Name (ARN) of the user who created the pull request.</p>
-- * description [Description] <p>The user-defined description of the pull request. This description can be used to clarify what should be reviewed and other details of the request.</p>
-- * title [Title] <p>The user-defined title of the pull request. This title is displayed in the list of pull requests to other users of the repository.</p>
-- * pullRequestTargets [PullRequestTargetList] <p>The targets of the pull request, including the source branch and destination branch for the pull request.</p>
-- * lastActivityDate [LastModifiedDate] <p>The day and time of the last user or system activity on the pull request, in timestamp format.</p>
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request. </p>
-- * clientRequestToken [ClientRequestToken] <p>A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.</p>
-- * pullRequestStatus [PullRequestStatusEnum] <p>The status of the pull request. Pull request status can only change from <code>OPEN</code> to <code>CLOSED</code>.</p>
-- * creationDate [CreationDate] <p>The date and time the pull request was originally created, in timestamp format.</p>
-- @return PullRequest structure as a key-value pair table
function M.PullRequest(args)
	assert(args, "You must provide an argument table when creating PullRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["authorArn"] = args["authorArn"],
		["description"] = args["description"],
		["title"] = args["title"],
		["pullRequestTargets"] = args["pullRequestTargets"],
		["lastActivityDate"] = args["lastActivityDate"],
		["pullRequestId"] = args["pullRequestId"],
		["clientRequestToken"] = args["clientRequestToken"],
		["pullRequestStatus"] = args["pullRequestStatus"],
		["creationDate"] = args["creationDate"],
	}
	asserts.AssertPullRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBranchOutput = { ["branch"] = true, nil }

function asserts.AssertGetBranchOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBranchOutput to be of type 'table'")
	if struct["branch"] then asserts.AssertBranchInfo(struct["branch"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBranchOutput[k], "GetBranchOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBranchOutput
-- <p>Represents the output of a get branch operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * branch [BranchInfo] <p>The name of the branch.</p>
-- @return GetBranchOutput structure as a key-value pair table
function M.GetBranchOutput(args)
	assert(args, "You must provide an argument table when creating GetBranchOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["branch"] = args["branch"],
	}
	asserts.AssertGetBranchOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePullRequestInput = { ["targets"] = true, ["description"] = true, ["clientRequestToken"] = true, ["title"] = true, nil }

function asserts.AssertCreatePullRequestInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePullRequestInput to be of type 'table'")
	assert(struct["title"], "Expected key title to exist in table")
	assert(struct["targets"], "Expected key targets to exist in table")
	if struct["targets"] then asserts.AssertTargetList(struct["targets"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["title"] then asserts.AssertTitle(struct["title"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePullRequestInput[k], "CreatePullRequestInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePullRequestInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * targets [TargetList] <p>The targets for the pull request, including the source of the code to be reviewed (the source branch), and the destination where the creator of the pull request intends the code to be merged after the pull request is closed (the destination branch).</p>
-- * description [Description] <p>A description of the pull request.</p>
-- * clientRequestToken [ClientRequestToken] <p>A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.</p> <note> <p>The AWS SDKs prepopulate client request tokens. If using an AWS SDK, you do not have to generate an idempotency token, as this will be done for you.</p> </note>
-- * title [Title] <p>The title of the pull request. This title will be used to identify the pull request to other users in the repository.</p>
-- Required key: title
-- Required key: targets
-- @return CreatePullRequestInput structure as a key-value pair table
function M.CreatePullRequestInput(args)
	assert(args, "You must provide an argument table when creating CreatePullRequestInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["targets"] = args["targets"],
		["description"] = args["description"],
		["clientRequestToken"] = args["clientRequestToken"],
		["title"] = args["title"],
	}
	asserts.AssertCreatePullRequestInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCommitOutput = { ["commit"] = true, nil }

function asserts.AssertGetCommitOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommitOutput to be of type 'table'")
	assert(struct["commit"], "Expected key commit to exist in table")
	if struct["commit"] then asserts.AssertCommit(struct["commit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCommitOutput[k], "GetCommitOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommitOutput
-- <p>Represents the output of a get commit operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commit [Commit] <p>A commit data type object that contains information about the specified commit.</p>
-- Required key: commit
-- @return GetCommitOutput structure as a key-value pair table
function M.GetCommitOutput(args)
	assert(args, "You must provide an argument table when creating GetCommitOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commit"] = args["commit"],
	}
	asserts.AssertGetCommitOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PullRequestTarget = { ["repositoryName"] = true, ["mergeBase"] = true, ["destinationCommit"] = true, ["sourceReference"] = true, ["sourceCommit"] = true, ["destinationReference"] = true, ["mergeMetadata"] = true, nil }

function asserts.AssertPullRequestTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PullRequestTarget to be of type 'table'")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["mergeBase"] then asserts.AssertCommitId(struct["mergeBase"]) end
	if struct["destinationCommit"] then asserts.AssertCommitId(struct["destinationCommit"]) end
	if struct["sourceReference"] then asserts.AssertReferenceName(struct["sourceReference"]) end
	if struct["sourceCommit"] then asserts.AssertCommitId(struct["sourceCommit"]) end
	if struct["destinationReference"] then asserts.AssertReferenceName(struct["destinationReference"]) end
	if struct["mergeMetadata"] then asserts.AssertMergeMetadata(struct["mergeMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.PullRequestTarget[k], "PullRequestTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PullRequestTarget
-- <p>Returns information about a pull request target.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the pull request source and destination branches.</p>
-- * mergeBase [CommitId] <p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>
-- * destinationCommit [CommitId] <p>The full commit ID that is the tip of the destination branch. This is the commit where the pull request was or will be merged.</p>
-- * sourceReference [ReferenceName] <p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>
-- * sourceCommit [CommitId] <p>The full commit ID of the tip of the source branch used to create the pull request. If the pull request branch is updated by a push while the pull request is open, the commit ID will change to reflect the new tip of the branch.</p>
-- * destinationReference [ReferenceName] <p>The branch of the repository where the pull request changes will be merged into. Also known as the destination branch. </p>
-- * mergeMetadata [MergeMetadata] <p>Returns metadata about the state of the merge, including whether the merge has been made.</p>
-- @return PullRequestTarget structure as a key-value pair table
function M.PullRequestTarget(args)
	assert(args, "You must provide an argument table when creating PullRequestTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["mergeBase"] = args["mergeBase"],
		["destinationCommit"] = args["destinationCommit"],
		["sourceReference"] = args["sourceReference"],
		["sourceCommit"] = args["sourceCommit"],
		["destinationReference"] = args["destinationReference"],
		["mergeMetadata"] = args["mergeMetadata"],
	}
	asserts.AssertPullRequestTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDifferencesInput = { ["repositoryName"] = true, ["NextToken"] = true, ["afterPath"] = true, ["MaxResults"] = true, ["beforeCommitSpecifier"] = true, ["beforePath"] = true, ["afterCommitSpecifier"] = true, nil }

function asserts.AssertGetDifferencesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDifferencesInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["afterCommitSpecifier"], "Expected key afterCommitSpecifier to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["afterPath"] then asserts.AssertPath(struct["afterPath"]) end
	if struct["MaxResults"] then asserts.AssertLimit(struct["MaxResults"]) end
	if struct["beforeCommitSpecifier"] then asserts.AssertCommitName(struct["beforeCommitSpecifier"]) end
	if struct["beforePath"] then asserts.AssertPath(struct["beforePath"]) end
	if struct["afterCommitSpecifier"] then asserts.AssertCommitName(struct["afterCommitSpecifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDifferencesInput[k], "GetDifferencesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDifferencesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository where you want to get differences.</p>
-- * NextToken [NextToken] <p>An enumeration token that when provided in a request, returns the next batch of the results.</p>
-- * afterPath [Path] <p>The file path in which to check differences. Limits the results to this path. Can also be used to specify the changed name of a directory or folder, if it has changed. If not specified, differences will be shown for all paths.</p>
-- * MaxResults [Limit] <p>A non-negative integer used to limit the number of returned results.</p>
-- * beforeCommitSpecifier [CommitName] <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, the full commit ID. Optional. If not specified, all changes prior to the <code>afterCommitSpecifier</code> value will be shown. If you do not use <code>beforeCommitSpecifier</code> in your request, consider limiting the results with <code>maxResults</code>.</p>
-- * beforePath [Path] <p>The file path in which to check for differences. Limits the results to this path. Can also be used to specify the previous name of a directory or folder. If <code>beforePath</code> and <code>afterPath</code> are not specified, differences will be shown for all paths.</p>
-- * afterCommitSpecifier [CommitName] <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit.</p>
-- Required key: repositoryName
-- Required key: afterCommitSpecifier
-- @return GetDifferencesInput structure as a key-value pair table
function M.GetDifferencesInput(args)
	assert(args, "You must provide an argument table when creating GetDifferencesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["NextToken"] = args["NextToken"],
		["afterPath"] = args["afterPath"],
		["MaxResults"] = args["MaxResults"],
		["beforeCommitSpecifier"] = args["beforeCommitSpecifier"],
		["beforePath"] = args["beforePath"],
		["afterCommitSpecifier"] = args["afterCommitSpecifier"],
	}
	asserts.AssertGetDifferencesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CommentsForComparedCommit = { ["afterCommitId"] = true, ["afterBlobId"] = true, ["beforeCommitId"] = true, ["comments"] = true, ["location"] = true, ["repositoryName"] = true, ["beforeBlobId"] = true, nil }

function asserts.AssertCommentsForComparedCommit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommentsForComparedCommit to be of type 'table'")
	if struct["afterCommitId"] then asserts.AssertCommitId(struct["afterCommitId"]) end
	if struct["afterBlobId"] then asserts.AssertObjectId(struct["afterBlobId"]) end
	if struct["beforeCommitId"] then asserts.AssertCommitId(struct["beforeCommitId"]) end
	if struct["comments"] then asserts.AssertComments(struct["comments"]) end
	if struct["location"] then asserts.AssertLocation(struct["location"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["beforeBlobId"] then asserts.AssertObjectId(struct["beforeBlobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CommentsForComparedCommit[k], "CommentsForComparedCommit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommentsForComparedCommit
-- <p>Returns information about comments on the comparison between two commits.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * afterCommitId [CommitId] <p>The full commit ID of the commit used to establish the 'after' of the comparison.</p>
-- * afterBlobId [ObjectId] <p>The full blob ID of the commit used to establish the 'after' of the comparison.</p>
-- * beforeCommitId [CommitId] <p>The full commit ID of the commit used to establish the 'before' of the comparison.</p>
-- * comments [Comments] <p>An array of comment objects. Each comment object contains information about a comment on the comparison between commits.</p>
-- * location [Location] <p>Location information about the comment on the comparison, including the file name, line number, and whether the version of the file where the comment was made is 'BEFORE' or 'AFTER'.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the compared commits.</p>
-- * beforeBlobId [ObjectId] <p>The full blob ID of the commit used to establish the 'before' of the comparison.</p>
-- @return CommentsForComparedCommit structure as a key-value pair table
function M.CommentsForComparedCommit(args)
	assert(args, "You must provide an argument table when creating CommentsForComparedCommit")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["afterCommitId"] = args["afterCommitId"],
		["afterBlobId"] = args["afterBlobId"],
		["beforeCommitId"] = args["beforeCommitId"],
		["comments"] = args["comments"],
		["location"] = args["location"],
		["repositoryName"] = args["repositoryName"],
		["beforeBlobId"] = args["beforeBlobId"],
	}
	asserts.AssertCommentsForComparedCommit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRepositoryTriggersInput = { ["repositoryName"] = true, nil }

function asserts.AssertGetRepositoryTriggersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryTriggersInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRepositoryTriggersInput[k], "GetRepositoryTriggersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryTriggersInput
-- <p>Represents the input of a get repository triggers operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository for which the trigger is configured.</p>
-- Required key: repositoryName
-- @return GetRepositoryTriggersInput structure as a key-value pair table
function M.GetRepositoryTriggersInput(args)
	assert(args, "You must provide an argument table when creating GetRepositoryTriggersInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertGetRepositoryTriggersInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RepositoryTriggerExecutionFailure = { ["trigger"] = true, ["failureMessage"] = true, nil }

function asserts.AssertRepositoryTriggerExecutionFailure(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggerExecutionFailure to be of type 'table'")
	if struct["trigger"] then asserts.AssertRepositoryTriggerName(struct["trigger"]) end
	if struct["failureMessage"] then asserts.AssertRepositoryTriggerExecutionFailureMessage(struct["failureMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.RepositoryTriggerExecutionFailure[k], "RepositoryTriggerExecutionFailure contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggerExecutionFailure
-- <p>A trigger failed to run.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * trigger [RepositoryTriggerName] <p>The name of the trigger that did not run.</p>
-- * failureMessage [RepositoryTriggerExecutionFailureMessage] <p>Additional message information about the trigger that did not run.</p>
-- @return RepositoryTriggerExecutionFailure structure as a key-value pair table
function M.RepositoryTriggerExecutionFailure(args)
	assert(args, "You must provide an argument table when creating RepositoryTriggerExecutionFailure")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["trigger"] = args["trigger"],
		["failureMessage"] = args["failureMessage"],
	}
	asserts.AssertRepositoryTriggerExecutionFailure(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MergeMetadata = { ["isMerged"] = true, ["mergedBy"] = true, nil }

function asserts.AssertMergeMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MergeMetadata to be of type 'table'")
	if struct["isMerged"] then asserts.AssertIsMerged(struct["isMerged"]) end
	if struct["mergedBy"] then asserts.AssertArn(struct["mergedBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.MergeMetadata[k], "MergeMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MergeMetadata
-- <p>Returns information about a merge or potential merge between a source reference and a destination reference in a pull request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * isMerged [IsMerged] <p>A Boolean value indicating whether the merge has been made.</p>
-- * mergedBy [Arn] <p>The Amazon Resource Name (ARN) of the user who merged the branches.</p>
-- @return MergeMetadata structure as a key-value pair table
function M.MergeMetadata(args)
	assert(args, "You must provide an argument table when creating MergeMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["isMerged"] = args["isMerged"],
		["mergedBy"] = args["mergedBy"],
	}
	asserts.AssertMergeMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDifferencesOutput = { ["differences"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetDifferencesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDifferencesOutput to be of type 'table'")
	if struct["differences"] then asserts.AssertDifferenceList(struct["differences"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDifferencesOutput[k], "GetDifferencesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDifferencesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * differences [DifferenceList] <p>A differences data type object that contains information about the differences, including whether the difference is added, modified, or deleted (A, D, M).</p>
-- * NextToken [NextToken] <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
-- @return GetDifferencesOutput structure as a key-value pair table
function M.GetDifferencesOutput(args)
	assert(args, "You must provide an argument table when creating GetDifferencesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["differences"] = args["differences"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetDifferencesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRepositoryInput = { ["repositoryName"] = true, ["repositoryDescription"] = true, nil }

function asserts.AssertCreateRepositoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRepositoryInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["repositoryDescription"] then asserts.AssertRepositoryDescription(struct["repositoryDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRepositoryInput[k], "CreateRepositoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRepositoryInput
-- <p>Represents the input of a create repository operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the new repository to be created.</p> <note> <p>The repository name must be unique across the calling AWS account. In addition, repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. For a full description of the limits on repository names, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Limits</a> in the AWS CodeCommit User Guide. The suffix ".git" is prohibited.</p> </note>
-- * repositoryDescription [RepositoryDescription] <p>A comment or description about the new repository.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.</p> </note>
-- Required key: repositoryName
-- @return CreateRepositoryInput structure as a key-value pair table
function M.CreateRepositoryInput(args)
	assert(args, "You must provide an argument table when creating CreateRepositoryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["repositoryDescription"] = args["repositoryDescription"],
	}
	asserts.AssertCreateRepositoryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPullRequestInput = { ["pullRequestId"] = true, nil }

function asserts.AssertGetPullRequestInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPullRequestInput to be of type 'table'")
	assert(struct["pullRequestId"], "Expected key pullRequestId to exist in table")
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPullRequestInput[k], "GetPullRequestInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPullRequestInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
-- Required key: pullRequestId
-- @return GetPullRequestInput structure as a key-value pair table
function M.GetPullRequestInput(args)
	assert(args, "You must provide an argument table when creating GetPullRequestInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequestId"] = args["pullRequestId"],
	}
	asserts.AssertGetPullRequestInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFileInput = { ["branchName"] = true, ["name"] = true, ["filePath"] = true, ["commitMessage"] = true, ["keepEmptyFolders"] = true, ["parentCommitId"] = true, ["repositoryName"] = true, ["email"] = true, nil }

function asserts.AssertDeleteFileInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFileInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["branchName"], "Expected key branchName to exist in table")
	assert(struct["filePath"], "Expected key filePath to exist in table")
	assert(struct["parentCommitId"], "Expected key parentCommitId to exist in table")
	if struct["branchName"] then asserts.AssertBranchName(struct["branchName"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["filePath"] then asserts.AssertPath(struct["filePath"]) end
	if struct["commitMessage"] then asserts.AssertMessage(struct["commitMessage"]) end
	if struct["keepEmptyFolders"] then asserts.AssertKeepEmptyFolders(struct["keepEmptyFolders"]) end
	if struct["parentCommitId"] then asserts.AssertCommitId(struct["parentCommitId"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["email"] then asserts.AssertEmail(struct["email"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFileInput[k], "DeleteFileInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFileInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * branchName [BranchName] <p>The name of the branch where the commit will be made deleting the file.</p>
-- * name [Name] <p>The name of the author of the commit that deletes the file. If no name is specified, the user's ARN will be used as the author name and committer name.</p>
-- * filePath [Path] <p>The fully-qualified path to the file that will be deleted, including the full name and extension of that file. For example, /examples/file.md is a fully qualified path to a file named file.md in a folder named examples.</p>
-- * commitMessage [Message] <p>The commit message you want to include as part of deleting the file. Commit messages are limited to 256 KB. If no message is specified, a default message will be used.</p>
-- * keepEmptyFolders [KeepEmptyFolders] <p>Specifies whether to delete the folder or directory that contains the file you want to delete if that file is the only object in the folder or directory. By default, empty folders will be deleted. This includes empty folders that are part of the directory structure. For example, if the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the last file in dir4 will also delete the empty folders dir4, dir3, and dir2.</p>
-- * parentCommitId [CommitId] <p>The ID of the commit that is the tip of the branch where you want to create the commit that will delete the file. This must be the HEAD commit for the branch. The commit that deletes the file will be created from this commit ID.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the file to delete.</p>
-- * email [Email] <p>The email address for the commit that deletes the file. If no email address is specified, the email address will be left blank.</p>
-- Required key: repositoryName
-- Required key: branchName
-- Required key: filePath
-- Required key: parentCommitId
-- @return DeleteFileInput structure as a key-value pair table
function M.DeleteFileInput(args)
	assert(args, "You must provide an argument table when creating DeleteFileInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["branchName"] = args["branchName"],
		["name"] = args["name"],
		["filePath"] = args["filePath"],
		["commitMessage"] = args["commitMessage"],
		["keepEmptyFolders"] = args["keepEmptyFolders"],
		["parentCommitId"] = args["parentCommitId"],
		["repositoryName"] = args["repositoryName"],
		["email"] = args["email"],
	}
	asserts.AssertDeleteFileInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCommentOutput = { ["comment"] = true, nil }

function asserts.AssertGetCommentOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommentOutput to be of type 'table'")
	if struct["comment"] then asserts.AssertComment(struct["comment"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCommentOutput[k], "GetCommentOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommentOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * comment [Comment] <p>The contents of the comment.</p>
-- @return GetCommentOutput structure as a key-value pair table
function M.GetCommentOutput(args)
	assert(args, "You must provide an argument table when creating GetCommentOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["comment"] = args["comment"],
	}
	asserts.AssertGetCommentOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MergePullRequestByFastForwardOutput = { ["pullRequest"] = true, nil }

function asserts.AssertMergePullRequestByFastForwardOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MergePullRequestByFastForwardOutput to be of type 'table'")
	if struct["pullRequest"] then asserts.AssertPullRequest(struct["pullRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.MergePullRequestByFastForwardOutput[k], "MergePullRequestByFastForwardOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MergePullRequestByFastForwardOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequest [PullRequest] <p>Information about the specified pull request, including information about the merge.</p>
-- @return MergePullRequestByFastForwardOutput structure as a key-value pair table
function M.MergePullRequestByFastForwardOutput(args)
	assert(args, "You must provide an argument table when creating MergePullRequestByFastForwardOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequest"] = args["pullRequest"],
	}
	asserts.AssertMergePullRequestByFastForwardOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRepositoryInput = { ["repositoryName"] = true, nil }

function asserts.AssertDeleteRepositoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRepositoryInput[k], "DeleteRepositoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryInput
-- <p>Represents the input of a delete repository operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository to delete.</p>
-- Required key: repositoryName
-- @return DeleteRepositoryInput structure as a key-value pair table
function M.DeleteRepositoryInput(args)
	assert(args, "You must provide an argument table when creating DeleteRepositoryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertDeleteRepositoryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePullRequestDescriptionOutput = { ["pullRequest"] = true, nil }

function asserts.AssertUpdatePullRequestDescriptionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePullRequestDescriptionOutput to be of type 'table'")
	assert(struct["pullRequest"], "Expected key pullRequest to exist in table")
	if struct["pullRequest"] then asserts.AssertPullRequest(struct["pullRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePullRequestDescriptionOutput[k], "UpdatePullRequestDescriptionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePullRequestDescriptionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pullRequest [PullRequest] <p>Information about the updated pull request.</p>
-- Required key: pullRequest
-- @return UpdatePullRequestDescriptionOutput structure as a key-value pair table
function M.UpdatePullRequestDescriptionOutput(args)
	assert(args, "You must provide an argument table when creating UpdatePullRequestDescriptionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pullRequest"] = args["pullRequest"],
	}
	asserts.AssertUpdatePullRequestDescriptionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Folder = { ["treeId"] = true, ["absolutePath"] = true, ["relativePath"] = true, nil }

function asserts.AssertFolder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Folder to be of type 'table'")
	if struct["treeId"] then asserts.AssertObjectId(struct["treeId"]) end
	if struct["absolutePath"] then asserts.AssertPath(struct["absolutePath"]) end
	if struct["relativePath"] then asserts.AssertPath(struct["relativePath"]) end
	for k,_ in pairs(struct) do
		assert(keys.Folder[k], "Folder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Folder
-- <p>Returns information about a folder in a repository.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * treeId [ObjectId] <p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>
-- * absolutePath [Path] <p>The fully-qualified path of the folder in the repository.</p>
-- * relativePath [Path] <p>The relative path of the specified folder from the folder where the query originated.</p>
-- @return Folder structure as a key-value pair table
function M.Folder(args)
	assert(args, "You must provide an argument table when creating Folder")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["treeId"] = args["treeId"],
		["absolutePath"] = args["absolutePath"],
		["relativePath"] = args["relativePath"],
	}
	asserts.AssertFolder(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBlobOutput = { ["content"] = true, nil }

function asserts.AssertGetBlobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBlobOutput to be of type 'table'")
	assert(struct["content"], "Expected key content to exist in table")
	if struct["content"] then asserts.Assertblob(struct["content"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBlobOutput[k], "GetBlobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBlobOutput
-- <p>Represents the output of a get blob operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * content [blob] <p>The content of the blob, usually a file.</p>
-- Required key: content
-- @return GetBlobOutput structure as a key-value pair table
function M.GetBlobOutput(args)
	assert(args, "You must provide an argument table when creating GetBlobOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["content"] = args["content"],
	}
	asserts.AssertGetBlobOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMergeConflictsInput = { ["sourceCommitSpecifier"] = true, ["repositoryName"] = true, ["mergeOption"] = true, ["destinationCommitSpecifier"] = true, nil }

function asserts.AssertGetMergeConflictsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMergeConflictsInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["destinationCommitSpecifier"], "Expected key destinationCommitSpecifier to exist in table")
	assert(struct["sourceCommitSpecifier"], "Expected key sourceCommitSpecifier to exist in table")
	assert(struct["mergeOption"], "Expected key mergeOption to exist in table")
	if struct["sourceCommitSpecifier"] then asserts.AssertCommitName(struct["sourceCommitSpecifier"]) end
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["mergeOption"] then asserts.AssertMergeOptionTypeEnum(struct["mergeOption"]) end
	if struct["destinationCommitSpecifier"] then asserts.AssertCommitName(struct["destinationCommitSpecifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMergeConflictsInput[k], "GetMergeConflictsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMergeConflictsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sourceCommitSpecifier [CommitName] <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, a branch name or a full commit ID.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository where the pull request was created.</p>
-- * mergeOption [MergeOptionTypeEnum] <p>The merge option or strategy you want to use to merge the code. The only valid value is FAST_FORWARD_MERGE.</p>
-- * destinationCommitSpecifier [CommitName] <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, a branch name or a full commit ID.</p>
-- Required key: repositoryName
-- Required key: destinationCommitSpecifier
-- Required key: sourceCommitSpecifier
-- Required key: mergeOption
-- @return GetMergeConflictsInput structure as a key-value pair table
function M.GetMergeConflictsInput(args)
	assert(args, "You must provide an argument table when creating GetMergeConflictsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["sourceCommitSpecifier"] = args["sourceCommitSpecifier"],
		["repositoryName"] = args["repositoryName"],
		["mergeOption"] = args["mergeOption"],
		["destinationCommitSpecifier"] = args["destinationCommitSpecifier"],
	}
	asserts.AssertGetMergeConflictsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BranchInfo = { ["commitId"] = true, ["branchName"] = true, nil }

function asserts.AssertBranchInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BranchInfo to be of type 'table'")
	if struct["commitId"] then asserts.AssertCommitId(struct["commitId"]) end
	if struct["branchName"] then asserts.AssertBranchName(struct["branchName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BranchInfo[k], "BranchInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BranchInfo
-- <p>Returns information about a branch.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commitId [CommitId] <p>The ID of the last commit made to the branch.</p>
-- * branchName [BranchName] <p>The name of the branch.</p>
-- @return BranchInfo structure as a key-value pair table
function M.BranchInfo(args)
	assert(args, "You must provide an argument table when creating BranchInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commitId"] = args["commitId"],
		["branchName"] = args["branchName"],
	}
	asserts.AssertBranchInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Difference = { ["afterBlob"] = true, ["changeType"] = true, ["beforeBlob"] = true, nil }

function asserts.AssertDifference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Difference to be of type 'table'")
	if struct["afterBlob"] then asserts.AssertBlobMetadata(struct["afterBlob"]) end
	if struct["changeType"] then asserts.AssertChangeTypeEnum(struct["changeType"]) end
	if struct["beforeBlob"] then asserts.AssertBlobMetadata(struct["beforeBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.Difference[k], "Difference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Difference
-- <p>Returns information about a set of differences for a commit specifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * afterBlob [BlobMetadata] <p>Information about an <code>afterBlob</code> data type object, including the ID, the file mode permission code, and the path.</p>
-- * changeType [ChangeTypeEnum] <p>Whether the change type of the difference is an addition (A), deletion (D), or modification (M).</p>
-- * beforeBlob [BlobMetadata] <p>Information about a <code>beforeBlob</code> data type object, including the ID, the file mode permission code, and the path.</p>
-- @return Difference structure as a key-value pair table
function M.Difference(args)
	assert(args, "You must provide an argument table when creating Difference")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["afterBlob"] = args["afterBlob"],
		["changeType"] = args["changeType"],
		["beforeBlob"] = args["beforeBlob"],
	}
	asserts.AssertDifference(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRepositoryOutput = { ["repositoryMetadata"] = true, nil }

function asserts.AssertCreateRepositoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRepositoryOutput to be of type 'table'")
	if struct["repositoryMetadata"] then asserts.AssertRepositoryMetadata(struct["repositoryMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRepositoryOutput[k], "CreateRepositoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRepositoryOutput
-- <p>Represents the output of a create repository operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryMetadata [RepositoryMetadata] <p>Information about the newly created repository.</p>
-- @return CreateRepositoryOutput structure as a key-value pair table
function M.CreateRepositoryOutput(args)
	assert(args, "You must provide an argument table when creating CreateRepositoryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryMetadata"] = args["repositoryMetadata"],
	}
	asserts.AssertCreateRepositoryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetRepositoriesInput = { ["repositoryNames"] = true, nil }

function asserts.AssertBatchGetRepositoriesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetRepositoriesInput to be of type 'table'")
	assert(struct["repositoryNames"], "Expected key repositoryNames to exist in table")
	if struct["repositoryNames"] then asserts.AssertRepositoryNameList(struct["repositoryNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetRepositoriesInput[k], "BatchGetRepositoriesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetRepositoriesInput
-- <p>Represents the input of a batch get repositories operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryNames [RepositoryNameList] <p>The names of the repositories to get information about.</p>
-- Required key: repositoryNames
-- @return BatchGetRepositoriesInput structure as a key-value pair table
function M.BatchGetRepositoriesInput(args)
	assert(args, "You must provide an argument table when creating BatchGetRepositoriesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryNames"] = args["repositoryNames"],
	}
	asserts.AssertBatchGetRepositoriesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubModule = { ["commitId"] = true, ["relativePath"] = true, ["absolutePath"] = true, nil }

function asserts.AssertSubModule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubModule to be of type 'table'")
	if struct["commitId"] then asserts.AssertObjectId(struct["commitId"]) end
	if struct["relativePath"] then asserts.AssertPath(struct["relativePath"]) end
	if struct["absolutePath"] then asserts.AssertPath(struct["absolutePath"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubModule[k], "SubModule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubModule
-- <p>Returns information about a submodule reference in a repository folder.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * commitId [ObjectId] <p>The commit ID that contains the reference to the submodule.</p>
-- * relativePath [Path] <p>The relative path of the submodule from the folder where the query originated.</p>
-- * absolutePath [Path] <p>The fully qualified path to the folder that contains the reference to the submodule.</p>
-- @return SubModule structure as a key-value pair table
function M.SubModule(args)
	assert(args, "You must provide an argument table when creating SubModule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["commitId"] = args["commitId"],
		["relativePath"] = args["relativePath"],
		["absolutePath"] = args["absolutePath"],
	}
	asserts.AssertSubModule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SymbolicLink = { ["relativePath"] = true, ["blobId"] = true, ["absolutePath"] = true, ["fileMode"] = true, nil }

function asserts.AssertSymbolicLink(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SymbolicLink to be of type 'table'")
	if struct["relativePath"] then asserts.AssertPath(struct["relativePath"]) end
	if struct["blobId"] then asserts.AssertObjectId(struct["blobId"]) end
	if struct["absolutePath"] then asserts.AssertPath(struct["absolutePath"]) end
	if struct["fileMode"] then asserts.AssertFileModeTypeEnum(struct["fileMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.SymbolicLink[k], "SymbolicLink contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SymbolicLink
-- <p>Returns information about a symbolic link in a repository folder.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relativePath [Path] <p>The relative path of the symbolic link from the folder where the query originated.</p>
-- * blobId [ObjectId] <p>The blob ID that contains the information about the symbolic link.</p>
-- * absolutePath [Path] <p>The fully-qualified path to the folder that contains the symbolic link.</p>
-- * fileMode [FileModeTypeEnum] <p>The file mode permissions of the blob that cotains information about the symbolic link.</p>
-- @return SymbolicLink structure as a key-value pair table
function M.SymbolicLink(args)
	assert(args, "You must provide an argument table when creating SymbolicLink")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relativePath"] = args["relativePath"],
		["blobId"] = args["blobId"],
		["absolutePath"] = args["absolutePath"],
		["fileMode"] = args["fileMode"],
	}
	asserts.AssertSymbolicLink(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRepositoryNameInput = { ["newName"] = true, ["oldName"] = true, nil }

function asserts.AssertUpdateRepositoryNameInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRepositoryNameInput to be of type 'table'")
	assert(struct["oldName"], "Expected key oldName to exist in table")
	assert(struct["newName"], "Expected key newName to exist in table")
	if struct["newName"] then asserts.AssertRepositoryName(struct["newName"]) end
	if struct["oldName"] then asserts.AssertRepositoryName(struct["oldName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRepositoryNameInput[k], "UpdateRepositoryNameInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRepositoryNameInput
-- <p>Represents the input of an update repository description operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * newName [RepositoryName] <p>The new name for the repository.</p>
-- * oldName [RepositoryName] <p>The existing name of the repository.</p>
-- Required key: oldName
-- Required key: newName
-- @return UpdateRepositoryNameInput structure as a key-value pair table
function M.UpdateRepositoryNameInput(args)
	assert(args, "You must provide an argument table when creating UpdateRepositoryNameInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["newName"] = args["newName"],
		["oldName"] = args["oldName"],
	}
	asserts.AssertUpdateRepositoryNameInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BlobMetadata = { ["path"] = true, ["blobId"] = true, ["mode"] = true, nil }

function asserts.AssertBlobMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlobMetadata to be of type 'table'")
	if struct["path"] then asserts.AssertPath(struct["path"]) end
	if struct["blobId"] then asserts.AssertObjectId(struct["blobId"]) end
	if struct["mode"] then asserts.AssertMode(struct["mode"]) end
	for k,_ in pairs(struct) do
		assert(keys.BlobMetadata[k], "BlobMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlobMetadata
-- <p>Returns information about a specific Git blob object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * path [Path] <p>The path to the blob and any associated file name, if any.</p>
-- * blobId [ObjectId] <p>The full ID of the blob.</p>
-- * mode [Mode] <p>The file mode permissions of the blob. File mode permission codes include:</p> <ul> <li> <p> <code>100644</code> indicates read/write</p> </li> <li> <p> <code>100755</code> indicates read/write/execute</p> </li> <li> <p> <code>160000</code> indicates a submodule</p> </li> <li> <p> <code>120000</code> indicates a symlink</p> </li> </ul>
-- @return BlobMetadata structure as a key-value pair table
function M.BlobMetadata(args)
	assert(args, "You must provide an argument table when creating BlobMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["path"] = args["path"],
		["blobId"] = args["blobId"],
		["mode"] = args["mode"],
	}
	asserts.AssertBlobMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCommentsForPullRequestInput = { ["repositoryName"] = true, ["beforeCommitId"] = true, ["maxResults"] = true, ["pullRequestId"] = true, ["afterCommitId"] = true, ["nextToken"] = true, nil }

function asserts.AssertGetCommentsForPullRequestInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommentsForPullRequestInput to be of type 'table'")
	assert(struct["pullRequestId"], "Expected key pullRequestId to exist in table")
	if struct["repositoryName"] then asserts.AssertRepositoryName(struct["repositoryName"]) end
	if struct["beforeCommitId"] then asserts.AssertCommitId(struct["beforeCommitId"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	if struct["pullRequestId"] then asserts.AssertPullRequestId(struct["pullRequestId"]) end
	if struct["afterCommitId"] then asserts.AssertCommitId(struct["afterCommitId"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCommentsForPullRequestInput[k], "GetCommentsForPullRequestInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommentsForPullRequestInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * repositoryName [RepositoryName] <p>The name of the repository that contains the pull request.</p>
-- * beforeCommitId [CommitId] <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>
-- * maxResults [MaxResults] <p>A non-negative integer used to limit the number of returned results. The default is 100 comments. You can return up to 500 comments with a single request.</p>
-- * pullRequestId [PullRequestId] <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
-- * afterCommitId [CommitId] <p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made.</p>
-- * nextToken [NextToken] <p>An enumeration token that when provided in a request, returns the next batch of the results.</p>
-- Required key: pullRequestId
-- @return GetCommentsForPullRequestInput structure as a key-value pair table
function M.GetCommentsForPullRequestInput(args)
	assert(args, "You must provide an argument table when creating GetCommentsForPullRequestInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["repositoryName"] = args["repositoryName"],
		["beforeCommitId"] = args["beforeCommitId"],
		["maxResults"] = args["maxResults"],
		["pullRequestId"] = args["pullRequestId"],
		["afterCommitId"] = args["afterCommitId"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertGetCommentsForPullRequestInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.File = { ["relativePath"] = true, ["blobId"] = true, ["absolutePath"] = true, ["fileMode"] = true, nil }

function asserts.AssertFile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected File to be of type 'table'")
	if struct["relativePath"] then asserts.AssertPath(struct["relativePath"]) end
	if struct["blobId"] then asserts.AssertObjectId(struct["blobId"]) end
	if struct["absolutePath"] then asserts.AssertPath(struct["absolutePath"]) end
	if struct["fileMode"] then asserts.AssertFileModeTypeEnum(struct["fileMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.File[k], "File contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type File
-- <p>Returns information about a file in a repository.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * relativePath [Path] <p>The relative path of the file from the folder where the query originated.</p>
-- * blobId [ObjectId] <p>The blob ID that contains the file information.</p>
-- * absolutePath [Path] <p>The fully-qualified path to the file in the repository.</p>
-- * fileMode [FileModeTypeEnum] <p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>
-- @return File structure as a key-value pair table
function M.File(args)
	assert(args, "You must provide an argument table when creating File")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["relativePath"] = args["relativePath"],
		["blobId"] = args["blobId"],
		["absolutePath"] = args["absolutePath"],
		["fileMode"] = args["fileMode"],
	}
	asserts.AssertFile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PostCommentReplyOutput = { ["comment"] = true, nil }

function asserts.AssertPostCommentReplyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostCommentReplyOutput to be of type 'table'")
	if struct["comment"] then asserts.AssertComment(struct["comment"]) end
	for k,_ in pairs(struct) do
		assert(keys.PostCommentReplyOutput[k], "PostCommentReplyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostCommentReplyOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * comment [Comment] <p>Information about the reply to a comment.</p>
-- @return PostCommentReplyOutput structure as a key-value pair table
function M.PostCommentReplyOutput(args)
	assert(args, "You must provide an argument table when creating PostCommentReplyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["comment"] = args["comment"],
	}
	asserts.AssertPostCommentReplyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertRepositoryDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryDescription to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.RepositoryDescription(str)
	asserts.AssertRepositoryDescription(str)
	return str
end

function asserts.AssertTitle(str)
	assert(str)
	assert(type(str) == "string", "Expected Title to be of type 'string'")
	assert(#str <= 150, "Expected string to be max 150 characters")
end

--  
function M.Title(str)
	asserts.AssertTitle(str)
	return str
end

function asserts.AssertOrderEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected OrderEnum to be of type 'string'")
end

--  
function M.OrderEnum(str)
	asserts.AssertOrderEnum(str)
	return str
end

function asserts.AssertFileModeTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected FileModeTypeEnum to be of type 'string'")
end

--  
function M.FileModeTypeEnum(str)
	asserts.AssertFileModeTypeEnum(str)
	return str
end

function asserts.AssertCloneUrlHttp(str)
	assert(str)
	assert(type(str) == "string", "Expected CloneUrlHttp to be of type 'string'")
end

--  
function M.CloneUrlHttp(str)
	asserts.AssertCloneUrlHttp(str)
	return str
end

function asserts.AssertPath(str)
	assert(str)
	assert(type(str) == "string", "Expected Path to be of type 'string'")
end

--  
function M.Path(str)
	asserts.AssertPath(str)
	return str
end

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	asserts.AssertAccountId(str)
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

function asserts.AssertAdditionalData(str)
	assert(str)
	assert(type(str) == "string", "Expected AdditionalData to be of type 'string'")
end

--  
function M.AdditionalData(str)
	asserts.AssertAdditionalData(str)
	return str
end

function asserts.AssertChangeTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeTypeEnum to be of type 'string'")
end

--  
function M.ChangeTypeEnum(str)
	asserts.AssertChangeTypeEnum(str)
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

function asserts.AssertEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected Email to be of type 'string'")
end

--  
function M.Email(str)
	asserts.AssertEmail(str)
	return str
end

function asserts.AssertRelativeFileVersionEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected RelativeFileVersionEnum to be of type 'string'")
end

--  
function M.RelativeFileVersionEnum(str)
	asserts.AssertRelativeFileVersionEnum(str)
	return str
end

function asserts.AssertRepositoryTriggerCustomData(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryTriggerCustomData to be of type 'string'")
end

--  
function M.RepositoryTriggerCustomData(str)
	asserts.AssertRepositoryTriggerCustomData(str)
	return str
end

function asserts.AssertCommitId(str)
	assert(str)
	assert(type(str) == "string", "Expected CommitId to be of type 'string'")
end

--  
function M.CommitId(str)
	asserts.AssertCommitId(str)
	return str
end

function asserts.AssertClientRequestToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientRequestToken to be of type 'string'")
end

--  
function M.ClientRequestToken(str)
	asserts.AssertClientRequestToken(str)
	return str
end

function asserts.AssertRepositoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RepositoryName(str)
	asserts.AssertRepositoryName(str)
	return str
end

function asserts.AssertSortByEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected SortByEnum to be of type 'string'")
end

--  
function M.SortByEnum(str)
	asserts.AssertSortByEnum(str)
	return str
end

function asserts.AssertPullRequestStatusEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected PullRequestStatusEnum to be of type 'string'")
end

--  
function M.PullRequestStatusEnum(str)
	asserts.AssertPullRequestStatusEnum(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertRepositoryTriggersConfigurationId(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryTriggersConfigurationId to be of type 'string'")
end

--  
function M.RepositoryTriggersConfigurationId(str)
	asserts.AssertRepositoryTriggersConfigurationId(str)
	return str
end

function asserts.AssertDate(str)
	assert(str)
	assert(type(str) == "string", "Expected Date to be of type 'string'")
end

--  
function M.Date(str)
	asserts.AssertDate(str)
	return str
end

function asserts.AssertRepositoryTriggerExecutionFailureMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryTriggerExecutionFailureMessage to be of type 'string'")
end

--  
function M.RepositoryTriggerExecutionFailureMessage(str)
	asserts.AssertRepositoryTriggerExecutionFailureMessage(str)
	return str
end

function asserts.AssertRepositoryTriggerEventEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryTriggerEventEnum to be of type 'string'")
end

--  
function M.RepositoryTriggerEventEnum(str)
	asserts.AssertRepositoryTriggerEventEnum(str)
	return str
end

function asserts.AssertRepositoryTriggerName(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryTriggerName to be of type 'string'")
end

--  
function M.RepositoryTriggerName(str)
	asserts.AssertRepositoryTriggerName(str)
	return str
end

function asserts.AssertObjectId(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectId to be of type 'string'")
end

--  
function M.ObjectId(str)
	asserts.AssertObjectId(str)
	return str
end

function asserts.AssertContent(str)
	assert(str)
	assert(type(str) == "string", "Expected Content to be of type 'string'")
end

--  
function M.Content(str)
	asserts.AssertContent(str)
	return str
end

function asserts.AssertBranchName(str)
	assert(str)
	assert(type(str) == "string", "Expected BranchName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BranchName(str)
	asserts.AssertBranchName(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertCommitName(str)
	assert(str)
	assert(type(str) == "string", "Expected CommitName to be of type 'string'")
end

--  
function M.CommitName(str)
	asserts.AssertCommitName(str)
	return str
end

function asserts.AssertMergeOptionTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected MergeOptionTypeEnum to be of type 'string'")
end

--  
function M.MergeOptionTypeEnum(str)
	asserts.AssertMergeOptionTypeEnum(str)
	return str
end

function asserts.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
end

--  
function M.Name(str)
	asserts.AssertName(str)
	return str
end

function asserts.AssertCloneUrlSsh(str)
	assert(str)
	assert(type(str) == "string", "Expected CloneUrlSsh to be of type 'string'")
end

--  
function M.CloneUrlSsh(str)
	asserts.AssertCloneUrlSsh(str)
	return str
end

function asserts.AssertRepositoryId(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryId to be of type 'string'")
end

--  
function M.RepositoryId(str)
	asserts.AssertRepositoryId(str)
	return str
end

function asserts.AssertPullRequestId(str)
	assert(str)
	assert(type(str) == "string", "Expected PullRequestId to be of type 'string'")
end

--  
function M.PullRequestId(str)
	asserts.AssertPullRequestId(str)
	return str
end

function asserts.AssertMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Mode to be of type 'string'")
end

--  
function M.Mode(str)
	asserts.AssertMode(str)
	return str
end

function asserts.AssertReferenceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ReferenceName to be of type 'string'")
end

--  
function M.ReferenceName(str)
	asserts.AssertReferenceName(str)
	return str
end

function asserts.AssertCommentId(str)
	assert(str)
	assert(type(str) == "string", "Expected CommentId to be of type 'string'")
end

--  
function M.CommentId(str)
	asserts.AssertCommentId(str)
	return str
end

function asserts.AssertPullRequestEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected PullRequestEventType to be of type 'string'")
end

--  
function M.PullRequestEventType(str)
	asserts.AssertPullRequestEventType(str)
	return str
end

function asserts.AssertPosition(long)
	assert(long)
	assert(type(long) == "number", "Expected Position to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Position(long)
	asserts.AssertPosition(long)
	return long
end

function asserts.AssertObjectSize(long)
	assert(long)
	assert(type(long) == "number", "Expected ObjectSize to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ObjectSize(long)
	asserts.AssertObjectSize(long)
	return long
end

function asserts.AssertLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Limit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Limit(integer)
	asserts.AssertLimit(integer)
	return integer
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

function asserts.AssertIsMergeable(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsMergeable to be of type 'boolean'")
end

function M.IsMergeable(boolean)
	asserts.AssertIsMergeable(boolean)
	return boolean
end

function asserts.AssertIsCommentDeleted(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsCommentDeleted to be of type 'boolean'")
end

function M.IsCommentDeleted(boolean)
	asserts.AssertIsCommentDeleted(boolean)
	return boolean
end

function asserts.AssertKeepEmptyFolders(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected KeepEmptyFolders to be of type 'boolean'")
end

function M.KeepEmptyFolders(boolean)
	asserts.AssertKeepEmptyFolders(boolean)
	return boolean
end

function asserts.AssertIsMerged(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsMerged to be of type 'boolean'")
end

function M.IsMerged(boolean)
	asserts.AssertIsMerged(boolean)
	return boolean
end

function asserts.AssertLastModifiedDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModifiedDate to be of type 'string'")
end

function M.LastModifiedDate(timestamp)
	asserts.AssertLastModifiedDate(timestamp)
	return timestamp
end

function asserts.AssertCreationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationDate to be of type 'string'")
end

function M.CreationDate(timestamp)
	asserts.AssertCreationDate(timestamp)
	return timestamp
end

function asserts.AssertEventDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EventDate to be of type 'string'")
end

function M.EventDate(timestamp)
	asserts.AssertEventDate(timestamp)
	return timestamp
end

function asserts.Assertblob(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected blob to be of type 'string'")
end

function M.blob(blob)
	asserts.Assertblob(blob)
	return blob
end

function asserts.AssertFileContent(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected FileContent to be of type 'string'")
	assert(#blob <= 6291456, "Expected blob to be max 6291456")
end

function M.FileContent(blob)
	asserts.AssertFileContent(blob)
	return blob
end

function asserts.AssertComments(list)
	assert(list)
	assert(type(list) == "table", "Expected Comments to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertComment(v)
	end
end

--  
-- List of Comment objects
function M.Comments(list)
	asserts.AssertComments(list)
	return list
end

function asserts.AssertPullRequestIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected PullRequestIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPullRequestId(v)
	end
end

--  
-- List of PullRequestId objects
function M.PullRequestIdList(list)
	asserts.AssertPullRequestIdList(list)
	return list
end

function asserts.AssertCommentsForComparedCommitData(list)
	assert(list)
	assert(type(list) == "table", "Expected CommentsForComparedCommitData to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCommentsForComparedCommit(v)
	end
end

--  
-- List of CommentsForComparedCommit objects
function M.CommentsForComparedCommitData(list)
	asserts.AssertCommentsForComparedCommitData(list)
	return list
end

function asserts.AssertRepositoryNotFoundList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryNotFoundList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRepositoryName(v)
	end
end

--  
-- List of RepositoryName objects
function M.RepositoryNotFoundList(list)
	asserts.AssertRepositoryNotFoundList(list)
	return list
end

function asserts.AssertRepositoryTriggerEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryTriggerEventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRepositoryTriggerEventEnum(v)
	end
end

--  
-- List of RepositoryTriggerEventEnum objects
function M.RepositoryTriggerEventList(list)
	asserts.AssertRepositoryTriggerEventList(list)
	return list
end

function asserts.AssertSymbolicLinkList(list)
	assert(list)
	assert(type(list) == "table", "Expected SymbolicLinkList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSymbolicLink(v)
	end
end

--  
-- List of SymbolicLink objects
function M.SymbolicLinkList(list)
	asserts.AssertSymbolicLinkList(list)
	return list
end

function asserts.AssertFolderList(list)
	assert(list)
	assert(type(list) == "table", "Expected FolderList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFolder(v)
	end
end

--  
-- List of Folder objects
function M.FolderList(list)
	asserts.AssertFolderList(list)
	return list
end

function asserts.AssertFileList(list)
	assert(list)
	assert(type(list) == "table", "Expected FileList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFile(v)
	end
end

--  
-- List of File objects
function M.FileList(list)
	asserts.AssertFileList(list)
	return list
end

function asserts.AssertRepositoryNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryNameList to be of type ''table")
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

function asserts.AssertSubModuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubModuleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubModule(v)
	end
end

--  
-- List of SubModule objects
function M.SubModuleList(list)
	asserts.AssertSubModuleList(list)
	return list
end

function asserts.AssertCommentsForPullRequestData(list)
	assert(list)
	assert(type(list) == "table", "Expected CommentsForPullRequestData to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCommentsForPullRequest(v)
	end
end

--  
-- List of CommentsForPullRequest objects
function M.CommentsForPullRequestData(list)
	asserts.AssertCommentsForPullRequestData(list)
	return list
end

function asserts.AssertRepositoryTriggerNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryTriggerNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRepositoryTriggerName(v)
	end
end

--  
-- List of RepositoryTriggerName objects
function M.RepositoryTriggerNameList(list)
	asserts.AssertRepositoryTriggerNameList(list)
	return list
end

function asserts.AssertParentList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertObjectId(v)
	end
end

--  
-- List of ObjectId objects
function M.ParentList(list)
	asserts.AssertParentList(list)
	return list
end

function asserts.AssertDifferenceList(list)
	assert(list)
	assert(type(list) == "table", "Expected DifferenceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDifference(v)
	end
end

--  
-- List of Difference objects
function M.DifferenceList(list)
	asserts.AssertDifferenceList(list)
	return list
end

function asserts.AssertRepositoryMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRepositoryMetadata(v)
	end
end

--  
-- List of RepositoryMetadata objects
function M.RepositoryMetadataList(list)
	asserts.AssertRepositoryMetadataList(list)
	return list
end

function asserts.AssertBranchNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected BranchNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBranchName(v)
	end
end

--  
-- List of BranchName objects
function M.BranchNameList(list)
	asserts.AssertBranchNameList(list)
	return list
end

function asserts.AssertRepositoryTriggersList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryTriggersList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRepositoryTrigger(v)
	end
end

--  
-- List of RepositoryTrigger objects
function M.RepositoryTriggersList(list)
	asserts.AssertRepositoryTriggersList(list)
	return list
end

function asserts.AssertPullRequestTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected PullRequestTargetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPullRequestTarget(v)
	end
end

--  
-- List of PullRequestTarget objects
function M.PullRequestTargetList(list)
	asserts.AssertPullRequestTargetList(list)
	return list
end

function asserts.AssertRepositoryNameIdPairList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryNameIdPairList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRepositoryNameIdPair(v)
	end
end

--  
-- List of RepositoryNameIdPair objects
function M.RepositoryNameIdPairList(list)
	asserts.AssertRepositoryNameIdPairList(list)
	return list
end

function asserts.AssertRepositoryTriggerExecutionFailureList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryTriggerExecutionFailureList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRepositoryTriggerExecutionFailure(v)
	end
end

--  
-- List of RepositoryTriggerExecutionFailure objects
function M.RepositoryTriggerExecutionFailureList(list)
	asserts.AssertRepositoryTriggerExecutionFailureList(list)
	return list
end

function asserts.AssertTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTarget(v)
	end
end

--  
-- List of Target objects
function M.TargetList(list)
	asserts.AssertTargetList(list)
	return list
end

function asserts.AssertPullRequestEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected PullRequestEventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPullRequestEvent(v)
	end
end

--  
-- List of PullRequestEvent objects
function M.PullRequestEventList(list)
	asserts.AssertPullRequestEventList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "codecommit.amazonaws.com"
		end
	end
	local ss = { "codecommit" }
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
--- Call TestRepositoryTriggers asynchronously, invoking a callback when done
-- @param TestRepositoryTriggersInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TestRepositoryTriggersAsync(TestRepositoryTriggersInput, cb)
	assert(TestRepositoryTriggersInput, "You must provide a TestRepositoryTriggersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.TestRepositoryTriggers",
	}
	for header,value in pairs(TestRepositoryTriggersInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TestRepositoryTriggersInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TestRepositoryTriggers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestRepositoryTriggersInput
-- @return response
-- @return error_type
-- @return error_message
function M.TestRepositoryTriggersSync(TestRepositoryTriggersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestRepositoryTriggersAsync(TestRepositoryTriggersInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRepository asynchronously, invoking a callback when done
-- @param DeleteRepositoryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRepositoryAsync(DeleteRepositoryInput, cb)
	assert(DeleteRepositoryInput, "You must provide a DeleteRepositoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.DeleteRepository",
	}
	for header,value in pairs(DeleteRepositoryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRepositoryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRepository synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRepositoryInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRepositorySync(DeleteRepositoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRepositoryAsync(DeleteRepositoryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPullRequests asynchronously, invoking a callback when done
-- @param ListPullRequestsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPullRequestsAsync(ListPullRequestsInput, cb)
	assert(ListPullRequestsInput, "You must provide a ListPullRequestsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.ListPullRequests",
	}
	for header,value in pairs(ListPullRequestsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPullRequestsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPullRequests synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPullRequestsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListPullRequestsSync(ListPullRequestsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPullRequestsAsync(ListPullRequestsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRepositoryDescription asynchronously, invoking a callback when done
-- @param UpdateRepositoryDescriptionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRepositoryDescriptionAsync(UpdateRepositoryDescriptionInput, cb)
	assert(UpdateRepositoryDescriptionInput, "You must provide a UpdateRepositoryDescriptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdateRepositoryDescription",
	}
	for header,value in pairs(UpdateRepositoryDescriptionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRepositoryDescriptionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRepositoryDescription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRepositoryDescriptionInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRepositoryDescriptionSync(UpdateRepositoryDescriptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRepositoryDescriptionAsync(UpdateRepositoryDescriptionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePullRequestDescription asynchronously, invoking a callback when done
-- @param UpdatePullRequestDescriptionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePullRequestDescriptionAsync(UpdatePullRequestDescriptionInput, cb)
	assert(UpdatePullRequestDescriptionInput, "You must provide a UpdatePullRequestDescriptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdatePullRequestDescription",
	}
	for header,value in pairs(UpdatePullRequestDescriptionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdatePullRequestDescriptionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePullRequestDescription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePullRequestDescriptionInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePullRequestDescriptionSync(UpdatePullRequestDescriptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePullRequestDescriptionAsync(UpdatePullRequestDescriptionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBranch asynchronously, invoking a callback when done
-- @param DeleteBranchInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBranchAsync(DeleteBranchInput, cb)
	assert(DeleteBranchInput, "You must provide a DeleteBranchInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.DeleteBranch",
	}
	for header,value in pairs(DeleteBranchInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteBranchInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBranch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBranchInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBranchSync(DeleteBranchInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBranchAsync(DeleteBranchInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMergeConflicts asynchronously, invoking a callback when done
-- @param GetMergeConflictsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMergeConflictsAsync(GetMergeConflictsInput, cb)
	assert(GetMergeConflictsInput, "You must provide a GetMergeConflictsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetMergeConflicts",
	}
	for header,value in pairs(GetMergeConflictsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetMergeConflictsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMergeConflicts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMergeConflictsInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetMergeConflictsSync(GetMergeConflictsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMergeConflictsAsync(GetMergeConflictsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFolder asynchronously, invoking a callback when done
-- @param GetFolderInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFolderAsync(GetFolderInput, cb)
	assert(GetFolderInput, "You must provide a GetFolderInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetFolder",
	}
	for header,value in pairs(GetFolderInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetFolderInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFolder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFolderInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetFolderSync(GetFolderInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFolderAsync(GetFolderInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCommentContent asynchronously, invoking a callback when done
-- @param DeleteCommentContentInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCommentContentAsync(DeleteCommentContentInput, cb)
	assert(DeleteCommentContentInput, "You must provide a DeleteCommentContentInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.DeleteCommentContent",
	}
	for header,value in pairs(DeleteCommentContentInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCommentContentInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCommentContent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCommentContentInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCommentContentSync(DeleteCommentContentInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCommentContentAsync(DeleteCommentContentInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFile asynchronously, invoking a callback when done
-- @param GetFileInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFileAsync(GetFileInput, cb)
	assert(GetFileInput, "You must provide a GetFileInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetFile",
	}
	for header,value in pairs(GetFileInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetFileInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFileInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetFileSync(GetFileInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFileAsync(GetFileInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDifferences asynchronously, invoking a callback when done
-- @param GetDifferencesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDifferencesAsync(GetDifferencesInput, cb)
	assert(GetDifferencesInput, "You must provide a GetDifferencesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetDifferences",
	}
	for header,value in pairs(GetDifferencesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDifferencesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDifferences synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDifferencesInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetDifferencesSync(GetDifferencesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDifferencesAsync(GetDifferencesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRepositoryName asynchronously, invoking a callback when done
-- @param UpdateRepositoryNameInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRepositoryNameAsync(UpdateRepositoryNameInput, cb)
	assert(UpdateRepositoryNameInput, "You must provide a UpdateRepositoryNameInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdateRepositoryName",
	}
	for header,value in pairs(UpdateRepositoryNameInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRepositoryNameInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRepositoryName synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRepositoryNameInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRepositoryNameSync(UpdateRepositoryNameInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRepositoryNameAsync(UpdateRepositoryNameInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PostCommentForPullRequest asynchronously, invoking a callback when done
-- @param PostCommentForPullRequestInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PostCommentForPullRequestAsync(PostCommentForPullRequestInput, cb)
	assert(PostCommentForPullRequestInput, "You must provide a PostCommentForPullRequestInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.PostCommentForPullRequest",
	}
	for header,value in pairs(PostCommentForPullRequestInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PostCommentForPullRequestInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PostCommentForPullRequest synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PostCommentForPullRequestInput
-- @return response
-- @return error_type
-- @return error_message
function M.PostCommentForPullRequestSync(PostCommentForPullRequestInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PostCommentForPullRequestAsync(PostCommentForPullRequestInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBranch asynchronously, invoking a callback when done
-- @param CreateBranchInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateBranchAsync(CreateBranchInput, cb)
	assert(CreateBranchInput, "You must provide a CreateBranchInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.CreateBranch",
	}
	for header,value in pairs(CreateBranchInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateBranchInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBranch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBranchInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateBranchSync(CreateBranchInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBranchAsync(CreateBranchInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRepository asynchronously, invoking a callback when done
-- @param GetRepositoryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRepositoryAsync(GetRepositoryInput, cb)
	assert(GetRepositoryInput, "You must provide a GetRepositoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetRepository",
	}
	for header,value in pairs(GetRepositoryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRepositoryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRepository synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRepositoryInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetRepositorySync(GetRepositoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRepositoryAsync(GetRepositoryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBlob asynchronously, invoking a callback when done
-- @param GetBlobInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBlobAsync(GetBlobInput, cb)
	assert(GetBlobInput, "You must provide a GetBlobInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetBlob",
	}
	for header,value in pairs(GetBlobInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetBlobInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBlob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBlobInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetBlobSync(GetBlobInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBlobAsync(GetBlobInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBranches asynchronously, invoking a callback when done
-- @param ListBranchesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListBranchesAsync(ListBranchesInput, cb)
	assert(ListBranchesInput, "You must provide a ListBranchesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.ListBranches",
	}
	for header,value in pairs(ListBranchesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListBranchesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListBranches synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListBranchesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListBranchesSync(ListBranchesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBranchesAsync(ListBranchesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRepositoryTriggers asynchronously, invoking a callback when done
-- @param GetRepositoryTriggersInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRepositoryTriggersAsync(GetRepositoryTriggersInput, cb)
	assert(GetRepositoryTriggersInput, "You must provide a GetRepositoryTriggersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetRepositoryTriggers",
	}
	for header,value in pairs(GetRepositoryTriggersInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRepositoryTriggersInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRepositoryTriggers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRepositoryTriggersInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetRepositoryTriggersSync(GetRepositoryTriggersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRepositoryTriggersAsync(GetRepositoryTriggersInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateComment asynchronously, invoking a callback when done
-- @param UpdateCommentInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateCommentAsync(UpdateCommentInput, cb)
	assert(UpdateCommentInput, "You must provide a UpdateCommentInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdateComment",
	}
	for header,value in pairs(UpdateCommentInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateCommentInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateComment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCommentInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateCommentSync(UpdateCommentInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCommentAsync(UpdateCommentInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFile asynchronously, invoking a callback when done
-- @param DeleteFileInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFileAsync(DeleteFileInput, cb)
	assert(DeleteFileInput, "You must provide a DeleteFileInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.DeleteFile",
	}
	for header,value in pairs(DeleteFileInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteFileInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFileInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFileSync(DeleteFileInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFileAsync(DeleteFileInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDefaultBranch asynchronously, invoking a callback when done
-- @param UpdateDefaultBranchInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDefaultBranchAsync(UpdateDefaultBranchInput, cb)
	assert(UpdateDefaultBranchInput, "You must provide a UpdateDefaultBranchInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdateDefaultBranch",
	}
	for header,value in pairs(UpdateDefaultBranchInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDefaultBranchInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDefaultBranch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDefaultBranchInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDefaultBranchSync(UpdateDefaultBranchInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDefaultBranchAsync(UpdateDefaultBranchInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRepositoryTriggers asynchronously, invoking a callback when done
-- @param PutRepositoryTriggersInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRepositoryTriggersAsync(PutRepositoryTriggersInput, cb)
	assert(PutRepositoryTriggersInput, "You must provide a PutRepositoryTriggersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.PutRepositoryTriggers",
	}
	for header,value in pairs(PutRepositoryTriggersInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRepositoryTriggersInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRepositoryTriggers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRepositoryTriggersInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutRepositoryTriggersSync(PutRepositoryTriggersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRepositoryTriggersAsync(PutRepositoryTriggersInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCommentsForComparedCommit asynchronously, invoking a callback when done
-- @param GetCommentsForComparedCommitInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCommentsForComparedCommitAsync(GetCommentsForComparedCommitInput, cb)
	assert(GetCommentsForComparedCommitInput, "You must provide a GetCommentsForComparedCommitInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetCommentsForComparedCommit",
	}
	for header,value in pairs(GetCommentsForComparedCommitInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCommentsForComparedCommitInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCommentsForComparedCommit synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCommentsForComparedCommitInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetCommentsForComparedCommitSync(GetCommentsForComparedCommitInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCommentsForComparedCommitAsync(GetCommentsForComparedCommitInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBranch asynchronously, invoking a callback when done
-- @param GetBranchInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBranchAsync(GetBranchInput, cb)
	assert(GetBranchInput, "You must provide a GetBranchInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetBranch",
	}
	for header,value in pairs(GetBranchInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetBranchInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBranch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBranchInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetBranchSync(GetBranchInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBranchAsync(GetBranchInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRepository asynchronously, invoking a callback when done
-- @param CreateRepositoryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRepositoryAsync(CreateRepositoryInput, cb)
	assert(CreateRepositoryInput, "You must provide a CreateRepositoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.CreateRepository",
	}
	for header,value in pairs(CreateRepositoryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRepositoryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRepository synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRepositoryInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRepositorySync(CreateRepositoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRepositoryAsync(CreateRepositoryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCommit asynchronously, invoking a callback when done
-- @param GetCommitInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCommitAsync(GetCommitInput, cb)
	assert(GetCommitInput, "You must provide a GetCommitInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetCommit",
	}
	for header,value in pairs(GetCommitInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCommitInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCommit synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCommitInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetCommitSync(GetCommitInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCommitAsync(GetCommitInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PostCommentReply asynchronously, invoking a callback when done
-- @param PostCommentReplyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PostCommentReplyAsync(PostCommentReplyInput, cb)
	assert(PostCommentReplyInput, "You must provide a PostCommentReplyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.PostCommentReply",
	}
	for header,value in pairs(PostCommentReplyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PostCommentReplyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PostCommentReply synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PostCommentReplyInput
-- @return response
-- @return error_type
-- @return error_message
function M.PostCommentReplySync(PostCommentReplyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PostCommentReplyAsync(PostCommentReplyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutFile asynchronously, invoking a callback when done
-- @param PutFileInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutFileAsync(PutFileInput, cb)
	assert(PutFileInput, "You must provide a PutFileInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.PutFile",
	}
	for header,value in pairs(PutFileInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutFileInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutFile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutFileInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutFileSync(PutFileInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutFileAsync(PutFileInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePullRequestEvents asynchronously, invoking a callback when done
-- @param DescribePullRequestEventsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePullRequestEventsAsync(DescribePullRequestEventsInput, cb)
	assert(DescribePullRequestEventsInput, "You must provide a DescribePullRequestEventsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.DescribePullRequestEvents",
	}
	for header,value in pairs(DescribePullRequestEventsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePullRequestEventsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePullRequestEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePullRequestEventsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePullRequestEventsSync(DescribePullRequestEventsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePullRequestEventsAsync(DescribePullRequestEventsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetRepositories asynchronously, invoking a callback when done
-- @param BatchGetRepositoriesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetRepositoriesAsync(BatchGetRepositoriesInput, cb)
	assert(BatchGetRepositoriesInput, "You must provide a BatchGetRepositoriesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.BatchGetRepositories",
	}
	for header,value in pairs(BatchGetRepositoriesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetRepositoriesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetRepositories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetRepositoriesInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetRepositoriesSync(BatchGetRepositoriesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetRepositoriesAsync(BatchGetRepositoriesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPullRequest asynchronously, invoking a callback when done
-- @param GetPullRequestInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPullRequestAsync(GetPullRequestInput, cb)
	assert(GetPullRequestInput, "You must provide a GetPullRequestInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetPullRequest",
	}
	for header,value in pairs(GetPullRequestInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPullRequestInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPullRequest synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPullRequestInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetPullRequestSync(GetPullRequestInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPullRequestAsync(GetPullRequestInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePullRequest asynchronously, invoking a callback when done
-- @param CreatePullRequestInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePullRequestAsync(CreatePullRequestInput, cb)
	assert(CreatePullRequestInput, "You must provide a CreatePullRequestInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.CreatePullRequest",
	}
	for header,value in pairs(CreatePullRequestInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePullRequestInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePullRequest synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePullRequestInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePullRequestSync(CreatePullRequestInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePullRequestAsync(CreatePullRequestInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCommentsForPullRequest asynchronously, invoking a callback when done
-- @param GetCommentsForPullRequestInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCommentsForPullRequestAsync(GetCommentsForPullRequestInput, cb)
	assert(GetCommentsForPullRequestInput, "You must provide a GetCommentsForPullRequestInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetCommentsForPullRequest",
	}
	for header,value in pairs(GetCommentsForPullRequestInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCommentsForPullRequestInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCommentsForPullRequest synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCommentsForPullRequestInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetCommentsForPullRequestSync(GetCommentsForPullRequestInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCommentsForPullRequestAsync(GetCommentsForPullRequestInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePullRequestStatus asynchronously, invoking a callback when done
-- @param UpdatePullRequestStatusInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePullRequestStatusAsync(UpdatePullRequestStatusInput, cb)
	assert(UpdatePullRequestStatusInput, "You must provide a UpdatePullRequestStatusInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdatePullRequestStatus",
	}
	for header,value in pairs(UpdatePullRequestStatusInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdatePullRequestStatusInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePullRequestStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePullRequestStatusInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePullRequestStatusSync(UpdatePullRequestStatusInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePullRequestStatusAsync(UpdatePullRequestStatusInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PostCommentForComparedCommit asynchronously, invoking a callback when done
-- @param PostCommentForComparedCommitInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PostCommentForComparedCommitAsync(PostCommentForComparedCommitInput, cb)
	assert(PostCommentForComparedCommitInput, "You must provide a PostCommentForComparedCommitInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.PostCommentForComparedCommit",
	}
	for header,value in pairs(PostCommentForComparedCommitInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PostCommentForComparedCommitInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PostCommentForComparedCommit synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PostCommentForComparedCommitInput
-- @return response
-- @return error_type
-- @return error_message
function M.PostCommentForComparedCommitSync(PostCommentForComparedCommitInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PostCommentForComparedCommitAsync(PostCommentForComparedCommitInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRepositories asynchronously, invoking a callback when done
-- @param ListRepositoriesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRepositoriesAsync(ListRepositoriesInput, cb)
	assert(ListRepositoriesInput, "You must provide a ListRepositoriesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.ListRepositories",
	}
	for header,value in pairs(ListRepositoriesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRepositoriesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRepositories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRepositoriesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListRepositoriesSync(ListRepositoriesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRepositoriesAsync(ListRepositoriesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetComment asynchronously, invoking a callback when done
-- @param GetCommentInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCommentAsync(GetCommentInput, cb)
	assert(GetCommentInput, "You must provide a GetCommentInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetComment",
	}
	for header,value in pairs(GetCommentInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCommentInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetComment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCommentInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetCommentSync(GetCommentInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCommentAsync(GetCommentInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePullRequestTitle asynchronously, invoking a callback when done
-- @param UpdatePullRequestTitleInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePullRequestTitleAsync(UpdatePullRequestTitleInput, cb)
	assert(UpdatePullRequestTitleInput, "You must provide a UpdatePullRequestTitleInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdatePullRequestTitle",
	}
	for header,value in pairs(UpdatePullRequestTitleInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdatePullRequestTitleInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePullRequestTitle synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePullRequestTitleInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePullRequestTitleSync(UpdatePullRequestTitleInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePullRequestTitleAsync(UpdatePullRequestTitleInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call MergePullRequestByFastForward asynchronously, invoking a callback when done
-- @param MergePullRequestByFastForwardInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.MergePullRequestByFastForwardAsync(MergePullRequestByFastForwardInput, cb)
	assert(MergePullRequestByFastForwardInput, "You must provide a MergePullRequestByFastForwardInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.MergePullRequestByFastForward",
	}
	for header,value in pairs(MergePullRequestByFastForwardInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", MergePullRequestByFastForwardInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call MergePullRequestByFastForward synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param MergePullRequestByFastForwardInput
-- @return response
-- @return error_type
-- @return error_message
function M.MergePullRequestByFastForwardSync(MergePullRequestByFastForwardInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.MergePullRequestByFastForwardAsync(MergePullRequestByFastForwardInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
