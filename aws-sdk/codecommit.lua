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

local PutRepositoryTriggersOutput_keys = { "configurationId" = true, nil }

function M.AssertPutRepositoryTriggersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRepositoryTriggersOutput to be of type 'table'")
	if struct["configurationId"] then M.AssertRepositoryTriggersConfigurationId(struct["configurationId"]) end
	for k,_ in pairs(struct) do
		assert(PutRepositoryTriggersOutput_keys[k], "PutRepositoryTriggersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRepositoryTriggersOutput
-- <p>Represents the output of a put repository triggers operation.</p>
-- @param configurationId [RepositoryTriggersConfigurationId] <p>The system-generated unique ID for the create or update operation.</p>
function M.PutRepositoryTriggersOutput(configurationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRepositoryTriggersOutput")
	local t = { 
		["configurationId"] = configurationId,
	}
	M.AssertPutRepositoryTriggersOutput(t)
	return t
end

local InvalidRepositoryDescriptionException_keys = { nil }

function M.AssertInvalidRepositoryDescriptionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryDescriptionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRepositoryDescriptionException_keys[k], "InvalidRepositoryDescriptionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryDescriptionException
-- <p>The specified repository description is not valid.</p>
function M.InvalidRepositoryDescriptionException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRepositoryDescriptionException")
	local t = { 
	}
	M.AssertInvalidRepositoryDescriptionException(t)
	return t
end

local EncryptionKeyAccessDeniedException_keys = { nil }

function M.AssertEncryptionKeyAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionKeyAccessDeniedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EncryptionKeyAccessDeniedException_keys[k], "EncryptionKeyAccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionKeyAccessDeniedException
-- <p>An encryption key could not be accessed.</p>
function M.EncryptionKeyAccessDeniedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptionKeyAccessDeniedException")
	local t = { 
	}
	M.AssertEncryptionKeyAccessDeniedException(t)
	return t
end

local ListBranchesInput_keys = { "nextToken" = true, "repositoryName" = true, nil }

function M.AssertListBranchesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBranchesInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(ListBranchesInput_keys[k], "ListBranchesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBranchesInput
-- <p>Represents the input of a list branches operation.</p>
-- @param nextToken [NextToken] <p>An enumeration token that allows the operation to batch the results.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository that contains the branches.</p>
-- Required parameter: repositoryName
function M.ListBranchesInput(nextToken, repositoryName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBranchesInput")
	local t = { 
		["nextToken"] = nextToken,
		["repositoryName"] = repositoryName,
	}
	M.AssertListBranchesInput(t)
	return t
end

local TestRepositoryTriggersInput_keys = { "repositoryName" = true, "triggers" = true, nil }

function M.AssertTestRepositoryTriggersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestRepositoryTriggersInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["triggers"], "Expected key triggers to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["triggers"] then M.AssertRepositoryTriggersList(struct["triggers"]) end
	for k,_ in pairs(struct) do
		assert(TestRepositoryTriggersInput_keys[k], "TestRepositoryTriggersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestRepositoryTriggersInput
-- <p>Represents the input of a test repository triggers operation.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository in which to test the triggers.</p>
-- @param triggers [RepositoryTriggersList] <p>The list of triggers to test.</p>
-- Required parameter: repositoryName
-- Required parameter: triggers
function M.TestRepositoryTriggersInput(repositoryName, triggers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestRepositoryTriggersInput")
	local t = { 
		["repositoryName"] = repositoryName,
		["triggers"] = triggers,
	}
	M.AssertTestRepositoryTriggersInput(t)
	return t
end

local CommitDoesNotExistException_keys = { nil }

function M.AssertCommitDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommitDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CommitDoesNotExistException_keys[k], "CommitDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommitDoesNotExistException
-- <p>The specified commit does not exist or no commit was specified, and the specified repository has no default branch.</p>
function M.CommitDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CommitDoesNotExistException")
	local t = { 
	}
	M.AssertCommitDoesNotExistException(t)
	return t
end

local InvalidBranchNameException_keys = { nil }

function M.AssertInvalidBranchNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBranchNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidBranchNameException_keys[k], "InvalidBranchNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBranchNameException
-- <p>The specified branch name is not valid.</p>
function M.InvalidBranchNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidBranchNameException")
	local t = { 
	}
	M.AssertInvalidBranchNameException(t)
	return t
end

local InvalidSortByException_keys = { nil }

function M.AssertInvalidSortByException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSortByException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSortByException_keys[k], "InvalidSortByException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSortByException
-- <p>The specified sort by value is not valid.</p>
function M.InvalidSortByException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSortByException")
	local t = { 
	}
	M.AssertInvalidSortByException(t)
	return t
end

local PathDoesNotExistException_keys = { nil }

function M.AssertPathDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PathDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PathDoesNotExistException_keys[k], "PathDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PathDoesNotExistException
-- <p>The specified path does not exist.</p>
function M.PathDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PathDoesNotExistException")
	local t = { 
	}
	M.AssertPathDoesNotExistException(t)
	return t
end

local BlobIdRequiredException_keys = { nil }

function M.AssertBlobIdRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlobIdRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BlobIdRequiredException_keys[k], "BlobIdRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlobIdRequiredException
-- <p>A blob ID is required but was not specified.</p>
function M.BlobIdRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlobIdRequiredException")
	local t = { 
	}
	M.AssertBlobIdRequiredException(t)
	return t
end

local UpdateRepositoryDescriptionInput_keys = { "repositoryName" = true, "repositoryDescription" = true, nil }

function M.AssertUpdateRepositoryDescriptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRepositoryDescriptionInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["repositoryDescription"] then M.AssertRepositoryDescription(struct["repositoryDescription"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRepositoryDescriptionInput_keys[k], "UpdateRepositoryDescriptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRepositoryDescriptionInput
-- <p>Represents the input of an update repository description operation.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository to set or change the comment or description for.</p>
-- @param repositoryDescription [RepositoryDescription] <p>The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.</p>
-- Required parameter: repositoryName
function M.UpdateRepositoryDescriptionInput(repositoryName, repositoryDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRepositoryDescriptionInput")
	local t = { 
		["repositoryName"] = repositoryName,
		["repositoryDescription"] = repositoryDescription,
	}
	M.AssertUpdateRepositoryDescriptionInput(t)
	return t
end

local GetRepositoryOutput_keys = { "repositoryMetadata" = true, nil }

function M.AssertGetRepositoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryOutput to be of type 'table'")
	if struct["repositoryMetadata"] then M.AssertRepositoryMetadata(struct["repositoryMetadata"]) end
	for k,_ in pairs(struct) do
		assert(GetRepositoryOutput_keys[k], "GetRepositoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryOutput
-- <p>Represents the output of a get repository operation.</p>
-- @param repositoryMetadata [RepositoryMetadata] <p>Information about the repository.</p>
function M.GetRepositoryOutput(repositoryMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRepositoryOutput")
	local t = { 
		["repositoryMetadata"] = repositoryMetadata,
	}
	M.AssertGetRepositoryOutput(t)
	return t
end

local EncryptionKeyUnavailableException_keys = { nil }

function M.AssertEncryptionKeyUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionKeyUnavailableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EncryptionKeyUnavailableException_keys[k], "EncryptionKeyUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionKeyUnavailableException
-- <p>The encryption key is not available.</p>
function M.EncryptionKeyUnavailableException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptionKeyUnavailableException")
	local t = { 
	}
	M.AssertEncryptionKeyUnavailableException(t)
	return t
end

local BatchGetRepositoriesOutput_keys = { "repositories" = true, "repositoriesNotFound" = true, nil }

function M.AssertBatchGetRepositoriesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetRepositoriesOutput to be of type 'table'")
	if struct["repositories"] then M.AssertRepositoryMetadataList(struct["repositories"]) end
	if struct["repositoriesNotFound"] then M.AssertRepositoryNotFoundList(struct["repositoriesNotFound"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetRepositoriesOutput_keys[k], "BatchGetRepositoriesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetRepositoriesOutput
-- <p>Represents the output of a batch get repositories operation.</p>
-- @param repositories [RepositoryMetadataList] <p>A list of repositories returned by the batch get repositories operation.</p>
-- @param repositoriesNotFound [RepositoryNotFoundList] <p>Returns a list of repository names for which information could not be found.</p>
function M.BatchGetRepositoriesOutput(repositories, repositoriesNotFound, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetRepositoriesOutput")
	local t = { 
		["repositories"] = repositories,
		["repositoriesNotFound"] = repositoriesNotFound,
	}
	M.AssertBatchGetRepositoriesOutput(t)
	return t
end

local InvalidRepositoryTriggerDestinationArnException_keys = { nil }

function M.AssertInvalidRepositoryTriggerDestinationArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerDestinationArnException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRepositoryTriggerDestinationArnException_keys[k], "InvalidRepositoryTriggerDestinationArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerDestinationArnException
-- <p>The Amazon Resource Name (ARN) for the trigger is not valid for the specified destination. The most common reason for this error is that the ARN does not meet the requirements for the service type.</p>
function M.InvalidRepositoryTriggerDestinationArnException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRepositoryTriggerDestinationArnException")
	local t = { 
	}
	M.AssertInvalidRepositoryTriggerDestinationArnException(t)
	return t
end

local RepositoryDoesNotExistException_keys = { nil }

function M.AssertRepositoryDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RepositoryDoesNotExistException_keys[k], "RepositoryDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryDoesNotExistException
-- <p>The specified repository does not exist.</p>
function M.RepositoryDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryDoesNotExistException")
	local t = { 
	}
	M.AssertRepositoryDoesNotExistException(t)
	return t
end

local RepositoryLimitExceededException_keys = { nil }

function M.AssertRepositoryLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RepositoryLimitExceededException_keys[k], "RepositoryLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryLimitExceededException
-- <p>A repository resource limit was exceeded.</p>
function M.RepositoryLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryLimitExceededException")
	local t = { 
	}
	M.AssertRepositoryLimitExceededException(t)
	return t
end

local Commit_keys = { "additionalData" = true, "committer" = true, "author" = true, "treeId" = true, "parents" = true, "message" = true, nil }

function M.AssertCommit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Commit to be of type 'table'")
	if struct["additionalData"] then M.AssertAdditionalData(struct["additionalData"]) end
	if struct["committer"] then M.AssertUserInfo(struct["committer"]) end
	if struct["author"] then M.AssertUserInfo(struct["author"]) end
	if struct["treeId"] then M.AssertObjectId(struct["treeId"]) end
	if struct["parents"] then M.AssertParentList(struct["parents"]) end
	if struct["message"] then M.AssertMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(Commit_keys[k], "Commit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Commit
-- <p>Returns information about a specific commit.</p>
-- @param additionalData [AdditionalData] <p>Any additional data associated with the specified commit.</p>
-- @param committer [UserInfo] <p>Information about the person who committed the specified commit, also known as the committer. Information includes the date in timestamp format with GMT offset, the name of the committer, and the email address for the committer, as configured in Git.</p> <p>For more information about the difference between an author and a committer in Git, see <a href="http://git-scm.com/book/ch2-3.html">Viewing the Commit History</a> in Pro Git by Scott Chacon and Ben Straub.</p>
-- @param author [UserInfo] <p>Information about the author of the specified commit. Information includes the date in timestamp format with GMT offset, the name of the author, and the email address for the author, as configured in Git.</p>
-- @param treeId [ObjectId] <p>Tree information for the specified commit.</p>
-- @param parents [ParentList] <p>The parent list for the specified commit.</p>
-- @param message [Message] <p>The commit message associated with the specified commit.</p>
function M.Commit(additionalData, committer, author, treeId, parents, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Commit")
	local t = { 
		["additionalData"] = additionalData,
		["committer"] = committer,
		["author"] = author,
		["treeId"] = treeId,
		["parents"] = parents,
		["message"] = message,
	}
	M.AssertCommit(t)
	return t
end

local GetCommitInput_keys = { "commitId" = true, "repositoryName" = true, nil }

function M.AssertGetCommitInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommitInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["commitId"], "Expected key commitId to exist in table")
	if struct["commitId"] then M.AssertObjectId(struct["commitId"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(GetCommitInput_keys[k], "GetCommitInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommitInput
-- <p>Represents the input of a get commit operation.</p>
-- @param commitId [ObjectId] <p>The commit ID.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository to which the commit was made.</p>
-- Required parameter: repositoryName
-- Required parameter: commitId
function M.GetCommitInput(commitId, repositoryName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCommitInput")
	local t = { 
		["commitId"] = commitId,
		["repositoryName"] = repositoryName,
	}
	M.AssertGetCommitInput(t)
	return t
end

local InvalidRepositoryTriggerNameException_keys = { nil }

function M.AssertInvalidRepositoryTriggerNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRepositoryTriggerNameException_keys[k], "InvalidRepositoryTriggerNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerNameException
-- <p>The name of the trigger is not valid.</p>
function M.InvalidRepositoryTriggerNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRepositoryTriggerNameException")
	local t = { 
	}
	M.AssertInvalidRepositoryTriggerNameException(t)
	return t
end

local RepositoryNameExistsException_keys = { nil }

function M.AssertRepositoryNameExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNameExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RepositoryNameExistsException_keys[k], "RepositoryNameExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNameExistsException
-- <p>The specified repository name already exists.</p>
function M.RepositoryNameExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryNameExistsException")
	local t = { 
	}
	M.AssertRepositoryNameExistsException(t)
	return t
end

local RepositoryTrigger_keys = { "destinationArn" = true, "branches" = true, "name" = true, "customData" = true, "events" = true, nil }

function M.AssertRepositoryTrigger(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTrigger to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["destinationArn"], "Expected key destinationArn to exist in table")
	assert(struct["events"], "Expected key events to exist in table")
	if struct["destinationArn"] then M.AssertArn(struct["destinationArn"]) end
	if struct["branches"] then M.AssertBranchNameList(struct["branches"]) end
	if struct["name"] then M.AssertRepositoryTriggerName(struct["name"]) end
	if struct["customData"] then M.AssertRepositoryTriggerCustomData(struct["customData"]) end
	if struct["events"] then M.AssertRepositoryTriggerEventList(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(RepositoryTrigger_keys[k], "RepositoryTrigger contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTrigger
-- <p>Information about a trigger for a repository.</p>
-- @param destinationArn [Arn] <p>The ARN of the resource that is the target for a trigger. For example, the ARN of a topic in Amazon Simple Notification Service (SNS).</p>
-- @param branches [BranchNameList] <p>The branches that will be included in the trigger configuration. If no branches are specified, the trigger will apply to all branches.</p>
-- @param name [RepositoryTriggerName] <p>The name of the trigger.</p>
-- @param customData [RepositoryTriggerCustomData] <p>Any custom data associated with the trigger that will be included in the information sent to the target of the trigger.</p>
-- @param events [RepositoryTriggerEventList] <p>The repository events that will cause the trigger to run actions in another service, such as sending a notification through Amazon Simple Notification Service (SNS). </p> <note> <p>The valid value "all" cannot be used with any other values.</p> </note>
-- Required parameter: name
-- Required parameter: destinationArn
-- Required parameter: events
function M.RepositoryTrigger(destinationArn, branches, name, customData, events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryTrigger")
	local t = { 
		["destinationArn"] = destinationArn,
		["branches"] = branches,
		["name"] = name,
		["customData"] = customData,
		["events"] = events,
	}
	M.AssertRepositoryTrigger(t)
	return t
end

local InvalidOrderException_keys = { nil }

function M.AssertInvalidOrderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOrderException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidOrderException_keys[k], "InvalidOrderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOrderException
-- <p>The specified sort order is not valid.</p>
function M.InvalidOrderException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOrderException")
	local t = { 
	}
	M.AssertInvalidOrderException(t)
	return t
end

local BranchNameRequiredException_keys = { nil }

function M.AssertBranchNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BranchNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BranchNameRequiredException_keys[k], "BranchNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BranchNameRequiredException
-- <p>A branch name is required but was not specified.</p>
function M.BranchNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BranchNameRequiredException")
	local t = { 
	}
	M.AssertBranchNameRequiredException(t)
	return t
end

local PutRepositoryTriggersInput_keys = { "repositoryName" = true, "triggers" = true, nil }

function M.AssertPutRepositoryTriggersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRepositoryTriggersInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["triggers"], "Expected key triggers to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["triggers"] then M.AssertRepositoryTriggersList(struct["triggers"]) end
	for k,_ in pairs(struct) do
		assert(PutRepositoryTriggersInput_keys[k], "PutRepositoryTriggersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRepositoryTriggersInput
-- <p>Represents the input ofa put repository triggers operation.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository where you want to create or update the trigger.</p>
-- @param triggers [RepositoryTriggersList] <p>The JSON block of configuration information for each trigger.</p>
-- Required parameter: repositoryName
-- Required parameter: triggers
function M.PutRepositoryTriggersInput(repositoryName, triggers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRepositoryTriggersInput")
	local t = { 
		["repositoryName"] = repositoryName,
		["triggers"] = triggers,
	}
	M.AssertPutRepositoryTriggersInput(t)
	return t
end

local BranchInfo_keys = { "commitId" = true, "branchName" = true, nil }

function M.AssertBranchInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BranchInfo to be of type 'table'")
	if struct["commitId"] then M.AssertCommitId(struct["commitId"]) end
	if struct["branchName"] then M.AssertBranchName(struct["branchName"]) end
	for k,_ in pairs(struct) do
		assert(BranchInfo_keys[k], "BranchInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BranchInfo
-- <p>Returns information about a branch.</p>
-- @param commitId [CommitId] <p>The ID of the last commit made to the branch.</p>
-- @param branchName [BranchName] <p>The name of the branch.</p>
function M.BranchInfo(commitId, branchName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BranchInfo")
	local t = { 
		["commitId"] = commitId,
		["branchName"] = branchName,
	}
	M.AssertBranchInfo(t)
	return t
end

local GetRepositoryTriggersOutput_keys = { "configurationId" = true, "triggers" = true, nil }

function M.AssertGetRepositoryTriggersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryTriggersOutput to be of type 'table'")
	if struct["configurationId"] then M.AssertRepositoryTriggersConfigurationId(struct["configurationId"]) end
	if struct["triggers"] then M.AssertRepositoryTriggersList(struct["triggers"]) end
	for k,_ in pairs(struct) do
		assert(GetRepositoryTriggersOutput_keys[k], "GetRepositoryTriggersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryTriggersOutput
-- <p>Represents the output of a get repository triggers operation.</p>
-- @param configurationId [RepositoryTriggersConfigurationId] <p>The system-generated unique ID for the trigger.</p>
-- @param triggers [RepositoryTriggersList] <p>The JSON block of configuration information for each trigger.</p>
function M.GetRepositoryTriggersOutput(configurationId, triggers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRepositoryTriggersOutput")
	local t = { 
		["configurationId"] = configurationId,
		["triggers"] = triggers,
	}
	M.AssertGetRepositoryTriggersOutput(t)
	return t
end

local DeleteRepositoryOutput_keys = { "repositoryId" = true, nil }

function M.AssertDeleteRepositoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryOutput to be of type 'table'")
	if struct["repositoryId"] then M.AssertRepositoryId(struct["repositoryId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRepositoryOutput_keys[k], "DeleteRepositoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryOutput
-- <p>Represents the output of a delete repository operation.</p>
-- @param repositoryId [RepositoryId] <p>The ID of the repository that was deleted.</p>
function M.DeleteRepositoryOutput(repositoryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRepositoryOutput")
	local t = { 
		["repositoryId"] = repositoryId,
	}
	M.AssertDeleteRepositoryOutput(t)
	return t
end

local ListRepositoriesOutput_keys = { "nextToken" = true, "repositories" = true, nil }

function M.AssertListRepositoriesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRepositoriesOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["repositories"] then M.AssertRepositoryNameIdPairList(struct["repositories"]) end
	for k,_ in pairs(struct) do
		assert(ListRepositoriesOutput_keys[k], "ListRepositoriesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRepositoriesOutput
-- <p>Represents the output of a list repositories operation.</p>
-- @param nextToken [NextToken] <p>An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.</p>
-- @param repositories [RepositoryNameIdPairList] <p>Lists the repositories called by the list repositories operation.</p>
function M.ListRepositoriesOutput(nextToken, repositories, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRepositoriesOutput")
	local t = { 
		["nextToken"] = nextToken,
		["repositories"] = repositories,
	}
	M.AssertListRepositoriesOutput(t)
	return t
end

local RepositoryTriggerNameRequiredException_keys = { nil }

function M.AssertRepositoryTriggerNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggerNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RepositoryTriggerNameRequiredException_keys[k], "RepositoryTriggerNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggerNameRequiredException
-- <p>A name for the trigger is required but was not specified.</p>
function M.RepositoryTriggerNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryTriggerNameRequiredException")
	local t = { 
	}
	M.AssertRepositoryTriggerNameRequiredException(t)
	return t
end

local RepositoryTriggerBranchNameListRequiredException_keys = { nil }

function M.AssertRepositoryTriggerBranchNameListRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggerBranchNameListRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RepositoryTriggerBranchNameListRequiredException_keys[k], "RepositoryTriggerBranchNameListRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggerBranchNameListRequiredException
-- <p>At least one branch name is required but was not specified in the trigger configuration.</p>
function M.RepositoryTriggerBranchNameListRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryTriggerBranchNameListRequiredException")
	local t = { 
	}
	M.AssertRepositoryTriggerBranchNameListRequiredException(t)
	return t
end

local EncryptionIntegrityChecksFailedException_keys = { nil }

function M.AssertEncryptionIntegrityChecksFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionIntegrityChecksFailedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EncryptionIntegrityChecksFailedException_keys[k], "EncryptionIntegrityChecksFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionIntegrityChecksFailedException
-- <p>An encryption integrity check failed.</p>
function M.EncryptionIntegrityChecksFailedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptionIntegrityChecksFailedException")
	local t = { 
	}
	M.AssertEncryptionIntegrityChecksFailedException(t)
	return t
end

local RepositoryMetadata_keys = { "creationDate" = true, "defaultBranch" = true, "repositoryName" = true, "cloneUrlSsh" = true, "lastModifiedDate" = true, "repositoryDescription" = true, "cloneUrlHttp" = true, "repositoryId" = true, "Arn" = true, "accountId" = true, nil }

function M.AssertRepositoryMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryMetadata to be of type 'table'")
	if struct["creationDate"] then M.AssertCreationDate(struct["creationDate"]) end
	if struct["defaultBranch"] then M.AssertBranchName(struct["defaultBranch"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["cloneUrlSsh"] then M.AssertCloneUrlSsh(struct["cloneUrlSsh"]) end
	if struct["lastModifiedDate"] then M.AssertLastModifiedDate(struct["lastModifiedDate"]) end
	if struct["repositoryDescription"] then M.AssertRepositoryDescription(struct["repositoryDescription"]) end
	if struct["cloneUrlHttp"] then M.AssertCloneUrlHttp(struct["cloneUrlHttp"]) end
	if struct["repositoryId"] then M.AssertRepositoryId(struct["repositoryId"]) end
	if struct["Arn"] then M.AssertArn(struct["Arn"]) end
	if struct["accountId"] then M.AssertAccountId(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(RepositoryMetadata_keys[k], "RepositoryMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryMetadata
-- <p>Information about a repository.</p>
-- @param creationDate [CreationDate] <p>The date and time the repository was created, in timestamp format.</p>
-- @param defaultBranch [BranchName] <p>The repository's default branch name.</p>
-- @param repositoryName [RepositoryName] <p>The repository's name.</p>
-- @param cloneUrlSsh [CloneUrlSsh] <p>The URL to use for cloning the repository over SSH.</p>
-- @param lastModifiedDate [LastModifiedDate] <p>The date and time the repository was last modified, in timestamp format.</p>
-- @param repositoryDescription [RepositoryDescription] <p>A comment or description about the repository.</p>
-- @param cloneUrlHttp [CloneUrlHttp] <p>The URL to use for cloning the repository over HTTPS.</p>
-- @param repositoryId [RepositoryId] <p>The ID of the repository.</p>
-- @param Arn [Arn] <p>The Amazon Resource Name (ARN) of the repository.</p>
-- @param accountId [AccountId] <p>The ID of the AWS account associated with the repository.</p>
function M.RepositoryMetadata(creationDate, defaultBranch, repositoryName, cloneUrlSsh, lastModifiedDate, repositoryDescription, cloneUrlHttp, repositoryId, Arn, accountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryMetadata")
	local t = { 
		["creationDate"] = creationDate,
		["defaultBranch"] = defaultBranch,
		["repositoryName"] = repositoryName,
		["cloneUrlSsh"] = cloneUrlSsh,
		["lastModifiedDate"] = lastModifiedDate,
		["repositoryDescription"] = repositoryDescription,
		["cloneUrlHttp"] = cloneUrlHttp,
		["repositoryId"] = repositoryId,
		["Arn"] = Arn,
		["accountId"] = accountId,
	}
	M.AssertRepositoryMetadata(t)
	return t
end

local ListBranchesOutput_keys = { "nextToken" = true, "branches" = true, nil }

function M.AssertListBranchesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListBranchesOutput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["branches"] then M.AssertBranchNameList(struct["branches"]) end
	for k,_ in pairs(struct) do
		assert(ListBranchesOutput_keys[k], "ListBranchesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListBranchesOutput
-- <p>Represents the output of a list branches operation.</p>
-- @param nextToken [NextToken] <p>An enumeration token that returns the batch of the results.</p>
-- @param branches [BranchNameList] <p>The list of branch names.</p>
function M.ListBranchesOutput(nextToken, branches, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListBranchesOutput")
	local t = { 
		["nextToken"] = nextToken,
		["branches"] = branches,
	}
	M.AssertListBranchesOutput(t)
	return t
end

local TestRepositoryTriggersOutput_keys = { "successfulExecutions" = true, "failedExecutions" = true, nil }

function M.AssertTestRepositoryTriggersOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestRepositoryTriggersOutput to be of type 'table'")
	if struct["successfulExecutions"] then M.AssertRepositoryTriggerNameList(struct["successfulExecutions"]) end
	if struct["failedExecutions"] then M.AssertRepositoryTriggerExecutionFailureList(struct["failedExecutions"]) end
	for k,_ in pairs(struct) do
		assert(TestRepositoryTriggersOutput_keys[k], "TestRepositoryTriggersOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestRepositoryTriggersOutput
-- <p>Represents the output of a test repository triggers operation.</p>
-- @param successfulExecutions [RepositoryTriggerNameList] <p>The list of triggers that were successfully tested. This list provides the names of the triggers that were successfully tested, separated by commas.</p>
-- @param failedExecutions [RepositoryTriggerExecutionFailureList] <p>The list of triggers that were not able to be tested. This list provides the names of the triggers that could not be tested, separated by commas.</p>
function M.TestRepositoryTriggersOutput(successfulExecutions, failedExecutions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestRepositoryTriggersOutput")
	local t = { 
		["successfulExecutions"] = successfulExecutions,
		["failedExecutions"] = failedExecutions,
	}
	M.AssertTestRepositoryTriggersOutput(t)
	return t
end

local ListRepositoriesInput_keys = { "nextToken" = true, "sortBy" = true, "order" = true, nil }

function M.AssertListRepositoriesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRepositoriesInput to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["sortBy"] then M.AssertSortByEnum(struct["sortBy"]) end
	if struct["order"] then M.AssertOrderEnum(struct["order"]) end
	for k,_ in pairs(struct) do
		assert(ListRepositoriesInput_keys[k], "ListRepositoriesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRepositoriesInput
-- <p>Represents the input of a list repositories operation.</p>
-- @param nextToken [NextToken] <p>An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.</p>
-- @param sortBy [SortByEnum] <p>The criteria used to sort the results of a list repositories operation.</p>
-- @param order [OrderEnum] <p>The order in which to sort the results of a list repositories operation.</p>
function M.ListRepositoriesInput(nextToken, sortBy, order, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRepositoriesInput")
	local t = { 
		["nextToken"] = nextToken,
		["sortBy"] = sortBy,
		["order"] = order,
	}
	M.AssertListRepositoriesInput(t)
	return t
end

local GetBlobInput_keys = { "repositoryName" = true, "blobId" = true, nil }

function M.AssertGetBlobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBlobInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["blobId"], "Expected key blobId to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["blobId"] then M.AssertObjectId(struct["blobId"]) end
	for k,_ in pairs(struct) do
		assert(GetBlobInput_keys[k], "GetBlobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBlobInput
-- <p>Represents the input of a get blob operation.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository that contains the blob.</p>
-- @param blobId [ObjectId] <p>The ID of the blob, which is its SHA-1 pointer.</p>
-- Required parameter: repositoryName
-- Required parameter: blobId
function M.GetBlobInput(repositoryName, blobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBlobInput")
	local t = { 
		["repositoryName"] = repositoryName,
		["blobId"] = blobId,
	}
	M.AssertGetBlobInput(t)
	return t
end

local RepositoryNameRequiredException_keys = { nil }

function M.AssertRepositoryNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RepositoryNameRequiredException_keys[k], "RepositoryNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNameRequiredException
-- <p>A repository name is required but was not specified.</p>
function M.RepositoryNameRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryNameRequiredException")
	local t = { 
	}
	M.AssertRepositoryNameRequiredException(t)
	return t
end

local GetBranchInput_keys = { "repositoryName" = true, "branchName" = true, nil }

function M.AssertGetBranchInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBranchInput to be of type 'table'")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["branchName"] then M.AssertBranchName(struct["branchName"]) end
	for k,_ in pairs(struct) do
		assert(GetBranchInput_keys[k], "GetBranchInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBranchInput
-- <p>Represents the input of a get branch operation.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository that contains the branch for which you want to retrieve information.</p>
-- @param branchName [BranchName] <p>The name of the branch for which you want to retrieve information.</p>
function M.GetBranchInput(repositoryName, branchName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBranchInput")
	local t = { 
		["repositoryName"] = repositoryName,
		["branchName"] = branchName,
	}
	M.AssertGetBranchInput(t)
	return t
end

local BranchDoesNotExistException_keys = { nil }

function M.AssertBranchDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BranchDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BranchDoesNotExistException_keys[k], "BranchDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BranchDoesNotExistException
-- <p>The specified branch does not exist.</p>
function M.BranchDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BranchDoesNotExistException")
	local t = { 
	}
	M.AssertBranchDoesNotExistException(t)
	return t
end

local DeleteRepositoryInput_keys = { "repositoryName" = true, nil }

function M.AssertDeleteRepositoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRepositoryInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRepositoryInput_keys[k], "DeleteRepositoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRepositoryInput
-- <p>Represents the input of a delete repository operation.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository to delete.</p>
-- Required parameter: repositoryName
function M.DeleteRepositoryInput(repositoryName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRepositoryInput")
	local t = { 
		["repositoryName"] = repositoryName,
	}
	M.AssertDeleteRepositoryInput(t)
	return t
end

local InvalidCommitIdException_keys = { nil }

function M.AssertInvalidCommitIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCommitIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidCommitIdException_keys[k], "InvalidCommitIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCommitIdException
-- <p>The specified commit ID is not valid.</p>
function M.InvalidCommitIdException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCommitIdException")
	local t = { 
	}
	M.AssertInvalidCommitIdException(t)
	return t
end

local InvalidRepositoryTriggerBranchNameException_keys = { nil }

function M.AssertInvalidRepositoryTriggerBranchNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerBranchNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRepositoryTriggerBranchNameException_keys[k], "InvalidRepositoryTriggerBranchNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerBranchNameException
-- <p>One or more branch names specified for the trigger is not valid.</p>
function M.InvalidRepositoryTriggerBranchNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRepositoryTriggerBranchNameException")
	local t = { 
	}
	M.AssertInvalidRepositoryTriggerBranchNameException(t)
	return t
end

local MaximumBranchesExceededException_keys = { nil }

function M.AssertMaximumBranchesExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaximumBranchesExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MaximumBranchesExceededException_keys[k], "MaximumBranchesExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaximumBranchesExceededException
-- <p>The number of branches for the trigger was exceeded.</p>
function M.MaximumBranchesExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaximumBranchesExceededException")
	local t = { 
	}
	M.AssertMaximumBranchesExceededException(t)
	return t
end

local InvalidPathException_keys = { nil }

function M.AssertInvalidPathException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPathException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidPathException_keys[k], "InvalidPathException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPathException
-- <p>The specified path is not valid.</p>
function M.InvalidPathException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPathException")
	local t = { 
	}
	M.AssertInvalidPathException(t)
	return t
end

local BranchNameExistsException_keys = { nil }

function M.AssertBranchNameExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BranchNameExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BranchNameExistsException_keys[k], "BranchNameExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BranchNameExistsException
-- <p>The specified branch name already exists.</p>
function M.BranchNameExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BranchNameExistsException")
	local t = { 
	}
	M.AssertBranchNameExistsException(t)
	return t
end

local GetRepositoryInput_keys = { "repositoryName" = true, nil }

function M.AssertGetRepositoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(GetRepositoryInput_keys[k], "GetRepositoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryInput
-- <p>Represents the input of a get repository operation.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository to get information about.</p>
-- Required parameter: repositoryName
function M.GetRepositoryInput(repositoryName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRepositoryInput")
	local t = { 
		["repositoryName"] = repositoryName,
	}
	M.AssertGetRepositoryInput(t)
	return t
end

local RepositoryNameIdPair_keys = { "repositoryName" = true, "repositoryId" = true, nil }

function M.AssertRepositoryNameIdPair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNameIdPair to be of type 'table'")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["repositoryId"] then M.AssertRepositoryId(struct["repositoryId"]) end
	for k,_ in pairs(struct) do
		assert(RepositoryNameIdPair_keys[k], "RepositoryNameIdPair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNameIdPair
-- <p>Information about a repository name and ID.</p>
-- @param repositoryName [RepositoryName] <p>The name associated with the repository.</p>
-- @param repositoryId [RepositoryId] <p>The ID associated with the repository.</p>
function M.RepositoryNameIdPair(repositoryName, repositoryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryNameIdPair")
	local t = { 
		["repositoryName"] = repositoryName,
		["repositoryId"] = repositoryId,
	}
	M.AssertRepositoryNameIdPair(t)
	return t
end

local UserInfo_keys = { "date" = true, "name" = true, "email" = true, nil }

function M.AssertUserInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserInfo to be of type 'table'")
	if struct["date"] then M.AssertDate(struct["date"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["email"] then M.AssertEmail(struct["email"]) end
	for k,_ in pairs(struct) do
		assert(UserInfo_keys[k], "UserInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserInfo
-- <p>Information about the user who made a specified commit.</p>
-- @param date [Date] <p>The date when the specified commit was pushed to the repository.</p>
-- @param name [Name] <p>The name of the user who made the specified commit.</p>
-- @param email [Email] <p>The email address associated with the user who made the commit, if any.</p>
function M.UserInfo(date, name, email, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserInfo")
	local t = { 
		["date"] = date,
		["name"] = name,
		["email"] = email,
	}
	M.AssertUserInfo(t)
	return t
end

local FileTooLargeException_keys = { nil }

function M.AssertFileTooLargeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileTooLargeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(FileTooLargeException_keys[k], "FileTooLargeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileTooLargeException
-- <p>The specified file exceeds the file size limit for AWS CodeCommit. For more information about limits in AWS CodeCommit, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">AWS CodeCommit User Guide</a>.</p>
function M.FileTooLargeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating FileTooLargeException")
	local t = { 
	}
	M.AssertFileTooLargeException(t)
	return t
end

local CommitIdRequiredException_keys = { nil }

function M.AssertCommitIdRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommitIdRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CommitIdRequiredException_keys[k], "CommitIdRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommitIdRequiredException
-- <p>A commit ID was not specified.</p>
function M.CommitIdRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CommitIdRequiredException")
	local t = { 
	}
	M.AssertCommitIdRequiredException(t)
	return t
end

local MaximumRepositoryTriggersExceededException_keys = { nil }

function M.AssertMaximumRepositoryTriggersExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaximumRepositoryTriggersExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MaximumRepositoryTriggersExceededException_keys[k], "MaximumRepositoryTriggersExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaximumRepositoryTriggersExceededException
-- <p>The number of triggers allowed for the repository was exceeded.</p>
function M.MaximumRepositoryTriggersExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaximumRepositoryTriggersExceededException")
	local t = { 
	}
	M.AssertMaximumRepositoryTriggersExceededException(t)
	return t
end

local RepositoryTriggersListRequiredException_keys = { nil }

function M.AssertRepositoryTriggersListRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggersListRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RepositoryTriggersListRequiredException_keys[k], "RepositoryTriggersListRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggersListRequiredException
-- <p>The list of triggers for the repository is required but was not specified.</p>
function M.RepositoryTriggersListRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryTriggersListRequiredException")
	local t = { 
	}
	M.AssertRepositoryTriggersListRequiredException(t)
	return t
end

local RepositoryTriggerDestinationArnRequiredException_keys = { nil }

function M.AssertRepositoryTriggerDestinationArnRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggerDestinationArnRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RepositoryTriggerDestinationArnRequiredException_keys[k], "RepositoryTriggerDestinationArnRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggerDestinationArnRequiredException
-- <p>A destination ARN for the target service for the trigger is required but was not specified.</p>
function M.RepositoryTriggerDestinationArnRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryTriggerDestinationArnRequiredException")
	local t = { 
	}
	M.AssertRepositoryTriggerDestinationArnRequiredException(t)
	return t
end

local InvalidCommitException_keys = { nil }

function M.AssertInvalidCommitException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCommitException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidCommitException_keys[k], "InvalidCommitException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCommitException
-- <p>The specified commit is not valid.</p>
function M.InvalidCommitException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCommitException")
	local t = { 
	}
	M.AssertInvalidCommitException(t)
	return t
end

local UpdateDefaultBranchInput_keys = { "defaultBranchName" = true, "repositoryName" = true, nil }

function M.AssertUpdateDefaultBranchInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDefaultBranchInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["defaultBranchName"], "Expected key defaultBranchName to exist in table")
	if struct["defaultBranchName"] then M.AssertBranchName(struct["defaultBranchName"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDefaultBranchInput_keys[k], "UpdateDefaultBranchInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDefaultBranchInput
-- <p>Represents the input of an update default branch operation.</p>
-- @param defaultBranchName [BranchName] <p>The name of the branch to set as the default.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository to set or change the default branch for.</p>
-- Required parameter: repositoryName
-- Required parameter: defaultBranchName
function M.UpdateDefaultBranchInput(defaultBranchName, repositoryName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDefaultBranchInput")
	local t = { 
		["defaultBranchName"] = defaultBranchName,
		["repositoryName"] = repositoryName,
	}
	M.AssertUpdateDefaultBranchInput(t)
	return t
end

local CreateBranchInput_keys = { "commitId" = true, "repositoryName" = true, "branchName" = true, nil }

function M.AssertCreateBranchInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBranchInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["branchName"], "Expected key branchName to exist in table")
	assert(struct["commitId"], "Expected key commitId to exist in table")
	if struct["commitId"] then M.AssertCommitId(struct["commitId"]) end
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["branchName"] then M.AssertBranchName(struct["branchName"]) end
	for k,_ in pairs(struct) do
		assert(CreateBranchInput_keys[k], "CreateBranchInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBranchInput
-- <p>Represents the input of a create branch operation.</p>
-- @param commitId [CommitId] <p>The ID of the commit to point the new branch to.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository in which you want to create the new branch.</p>
-- @param branchName [BranchName] <p>The name of the new branch to create.</p>
-- Required parameter: repositoryName
-- Required parameter: branchName
-- Required parameter: commitId
function M.CreateBranchInput(commitId, repositoryName, branchName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBranchInput")
	local t = { 
		["commitId"] = commitId,
		["repositoryName"] = repositoryName,
		["branchName"] = branchName,
	}
	M.AssertCreateBranchInput(t)
	return t
end

local GetBranchOutput_keys = { "branch" = true, nil }

function M.AssertGetBranchOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBranchOutput to be of type 'table'")
	if struct["branch"] then M.AssertBranchInfo(struct["branch"]) end
	for k,_ in pairs(struct) do
		assert(GetBranchOutput_keys[k], "GetBranchOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBranchOutput
-- <p>Represents the output of a get branch operation.</p>
-- @param branch [BranchInfo] <p>The name of the branch.</p>
function M.GetBranchOutput(branch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBranchOutput")
	local t = { 
		["branch"] = branch,
	}
	M.AssertGetBranchOutput(t)
	return t
end

local GetCommitOutput_keys = { "commit" = true, nil }

function M.AssertGetCommitOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommitOutput to be of type 'table'")
	assert(struct["commit"], "Expected key commit to exist in table")
	if struct["commit"] then M.AssertCommit(struct["commit"]) end
	for k,_ in pairs(struct) do
		assert(GetCommitOutput_keys[k], "GetCommitOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommitOutput
-- <p>Represents the output of a get commit operation.</p>
-- @param commit [Commit] <p>A commit data type object that contains information about the specified commit.</p>
-- Required parameter: commit
function M.GetCommitOutput(commit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCommitOutput")
	local t = { 
		["commit"] = commit,
	}
	M.AssertGetCommitOutput(t)
	return t
end

local GetDifferencesInput_keys = { "repositoryName" = true, "NextToken" = true, "afterPath" = true, "MaxResults" = true, "beforeCommitSpecifier" = true, "beforePath" = true, "afterCommitSpecifier" = true, nil }

function M.AssertGetDifferencesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDifferencesInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	assert(struct["afterCommitSpecifier"], "Expected key afterCommitSpecifier to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["afterPath"] then M.AssertPath(struct["afterPath"]) end
	if struct["MaxResults"] then M.AssertLimit(struct["MaxResults"]) end
	if struct["beforeCommitSpecifier"] then M.AssertCommitName(struct["beforeCommitSpecifier"]) end
	if struct["beforePath"] then M.AssertPath(struct["beforePath"]) end
	if struct["afterCommitSpecifier"] then M.AssertCommitName(struct["afterCommitSpecifier"]) end
	for k,_ in pairs(struct) do
		assert(GetDifferencesInput_keys[k], "GetDifferencesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDifferencesInput
--  
-- @param repositoryName [RepositoryName] <p>The name of the repository where you want to get differences.</p>
-- @param NextToken [NextToken] <p>An enumeration token that when provided in a request, returns the next batch of the results.</p>
-- @param afterPath [Path] <p>The file path in which to check differences. Limits the results to this path. Can also be used to specify the changed name of a directory or folder, if it has changed. If not specified, differences will be shown for all paths.</p>
-- @param MaxResults [Limit] <p>A non-negative integer used to limit the number of returned results.</p>
-- @param beforeCommitSpecifier [CommitName] <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, the full commit ID. Optional. If not specified, all changes prior to the <code>afterCommitSpecifier</code> value will be shown. If you do not use <code>beforeCommitSpecifier</code> in your request, consider limiting the results with <code>maxResults</code>.</p>
-- @param beforePath [Path] <p>The file path in which to check for differences. Limits the results to this path. Can also be used to specify the previous name of a directory or folder. If <code>beforePath</code> and <code>afterPath</code> are not specified, differences will be shown for all paths.</p>
-- @param afterCommitSpecifier [CommitName] <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit.</p>
-- Required parameter: repositoryName
-- Required parameter: afterCommitSpecifier
function M.GetDifferencesInput(repositoryName, NextToken, afterPath, MaxResults, beforeCommitSpecifier, beforePath, afterCommitSpecifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDifferencesInput")
	local t = { 
		["repositoryName"] = repositoryName,
		["NextToken"] = NextToken,
		["afterPath"] = afterPath,
		["MaxResults"] = MaxResults,
		["beforeCommitSpecifier"] = beforeCommitSpecifier,
		["beforePath"] = beforePath,
		["afterCommitSpecifier"] = afterCommitSpecifier,
	}
	M.AssertGetDifferencesInput(t)
	return t
end

local GetRepositoryTriggersInput_keys = { "repositoryName" = true, nil }

function M.AssertGetRepositoryTriggersInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRepositoryTriggersInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	for k,_ in pairs(struct) do
		assert(GetRepositoryTriggersInput_keys[k], "GetRepositoryTriggersInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRepositoryTriggersInput
-- <p>Represents the input of a get repository triggers operation.</p>
-- @param repositoryName [RepositoryName] <p>The name of the repository for which the trigger is configured.</p>
-- Required parameter: repositoryName
function M.GetRepositoryTriggersInput(repositoryName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRepositoryTriggersInput")
	local t = { 
		["repositoryName"] = repositoryName,
	}
	M.AssertGetRepositoryTriggersInput(t)
	return t
end

local UpdateRepositoryNameInput_keys = { "newName" = true, "oldName" = true, nil }

function M.AssertUpdateRepositoryNameInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRepositoryNameInput to be of type 'table'")
	assert(struct["oldName"], "Expected key oldName to exist in table")
	assert(struct["newName"], "Expected key newName to exist in table")
	if struct["newName"] then M.AssertRepositoryName(struct["newName"]) end
	if struct["oldName"] then M.AssertRepositoryName(struct["oldName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRepositoryNameInput_keys[k], "UpdateRepositoryNameInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRepositoryNameInput
-- <p>Represents the input of an update repository description operation.</p>
-- @param newName [RepositoryName] <p>The new name for the repository.</p>
-- @param oldName [RepositoryName] <p>The existing name of the repository.</p>
-- Required parameter: oldName
-- Required parameter: newName
function M.UpdateRepositoryNameInput(newName, oldName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRepositoryNameInput")
	local t = { 
		["newName"] = newName,
		["oldName"] = oldName,
	}
	M.AssertUpdateRepositoryNameInput(t)
	return t
end

local MaximumRepositoryNamesExceededException_keys = { nil }

function M.AssertMaximumRepositoryNamesExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaximumRepositoryNamesExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MaximumRepositoryNamesExceededException_keys[k], "MaximumRepositoryNamesExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaximumRepositoryNamesExceededException
-- <p>The maximum number of allowed repository names was exceeded. Currently, this number is 25.</p>
function M.MaximumRepositoryNamesExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaximumRepositoryNamesExceededException")
	local t = { 
	}
	M.AssertMaximumRepositoryNamesExceededException(t)
	return t
end

local RepositoryNamesRequiredException_keys = { nil }

function M.AssertRepositoryNamesRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNamesRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RepositoryNamesRequiredException_keys[k], "RepositoryNamesRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNamesRequiredException
-- <p>A repository names object is required but was not specified.</p>
function M.RepositoryNamesRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryNamesRequiredException")
	local t = { 
	}
	M.AssertRepositoryNamesRequiredException(t)
	return t
end

local GetDifferencesOutput_keys = { "differences" = true, "NextToken" = true, nil }

function M.AssertGetDifferencesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDifferencesOutput to be of type 'table'")
	if struct["differences"] then M.AssertDifferenceList(struct["differences"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetDifferencesOutput_keys[k], "GetDifferencesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDifferencesOutput
--  
-- @param differences [DifferenceList] <p>A differences data type object that contains information about the differences, including whether the difference is added, modified, or deleted (A, D, M).</p>
-- @param NextToken [NextToken] <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
function M.GetDifferencesOutput(differences, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDifferencesOutput")
	local t = { 
		["differences"] = differences,
		["NextToken"] = NextToken,
	}
	M.AssertGetDifferencesOutput(t)
	return t
end

local CreateRepositoryInput_keys = { "repositoryName" = true, "repositoryDescription" = true, nil }

function M.AssertCreateRepositoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRepositoryInput to be of type 'table'")
	assert(struct["repositoryName"], "Expected key repositoryName to exist in table")
	if struct["repositoryName"] then M.AssertRepositoryName(struct["repositoryName"]) end
	if struct["repositoryDescription"] then M.AssertRepositoryDescription(struct["repositoryDescription"]) end
	for k,_ in pairs(struct) do
		assert(CreateRepositoryInput_keys[k], "CreateRepositoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRepositoryInput
-- <p>Represents the input of a create repository operation.</p>
-- @param repositoryName [RepositoryName] <p>The name of the new repository to be created.</p> <note> <p>The repository name must be unique across the calling AWS account. In addition, repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. For a full description of the limits on repository names, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Limits</a> in the AWS CodeCommit User Guide. The suffix ".git" is prohibited.</p> </note>
-- @param repositoryDescription [RepositoryDescription] <p>A comment or description about the new repository.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.</p> </note>
-- Required parameter: repositoryName
function M.CreateRepositoryInput(repositoryName, repositoryDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRepositoryInput")
	local t = { 
		["repositoryName"] = repositoryName,
		["repositoryDescription"] = repositoryDescription,
	}
	M.AssertCreateRepositoryInput(t)
	return t
end

local InvalidRepositoryTriggerCustomDataException_keys = { nil }

function M.AssertInvalidRepositoryTriggerCustomDataException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerCustomDataException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRepositoryTriggerCustomDataException_keys[k], "InvalidRepositoryTriggerCustomDataException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerCustomDataException
-- <p>The custom data provided for the trigger is not valid.</p>
function M.InvalidRepositoryTriggerCustomDataException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRepositoryTriggerCustomDataException")
	local t = { 
	}
	M.AssertInvalidRepositoryTriggerCustomDataException(t)
	return t
end

local EncryptionKeyDisabledException_keys = { nil }

function M.AssertEncryptionKeyDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionKeyDisabledException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EncryptionKeyDisabledException_keys[k], "EncryptionKeyDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionKeyDisabledException
-- <p>The encryption key is disabled.</p>
function M.EncryptionKeyDisabledException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptionKeyDisabledException")
	local t = { 
	}
	M.AssertEncryptionKeyDisabledException(t)
	return t
end

local CommitRequiredException_keys = { nil }

function M.AssertCommitRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommitRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CommitRequiredException_keys[k], "CommitRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommitRequiredException
-- <p>A commit was not specified.</p>
function M.CommitRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CommitRequiredException")
	local t = { 
	}
	M.AssertCommitRequiredException(t)
	return t
end

local InvalidMaxResultsException_keys = { nil }

function M.AssertInvalidMaxResultsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMaxResultsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidMaxResultsException_keys[k], "InvalidMaxResultsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMaxResultsException
-- <p>The specified number of maximum results is not valid.</p>
function M.InvalidMaxResultsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMaxResultsException")
	local t = { 
	}
	M.AssertInvalidMaxResultsException(t)
	return t
end

local InvalidBlobIdException_keys = { nil }

function M.AssertInvalidBlobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBlobIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidBlobIdException_keys[k], "InvalidBlobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBlobIdException
-- <p>The specified blob is not valid.</p>
function M.InvalidBlobIdException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidBlobIdException")
	local t = { 
	}
	M.AssertInvalidBlobIdException(t)
	return t
end

local InvalidContinuationTokenException_keys = { nil }

function M.AssertInvalidContinuationTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidContinuationTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidContinuationTokenException_keys[k], "InvalidContinuationTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidContinuationTokenException
-- <p>The specified continuation token is not valid.</p>
function M.InvalidContinuationTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidContinuationTokenException")
	local t = { 
	}
	M.AssertInvalidContinuationTokenException(t)
	return t
end

local EncryptionKeyNotFoundException_keys = { nil }

function M.AssertEncryptionKeyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionKeyNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EncryptionKeyNotFoundException_keys[k], "EncryptionKeyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionKeyNotFoundException
-- <p>No encryption key was found.</p>
function M.EncryptionKeyNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptionKeyNotFoundException")
	local t = { 
	}
	M.AssertEncryptionKeyNotFoundException(t)
	return t
end

local GetBlobOutput_keys = { "content" = true, nil }

function M.AssertGetBlobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBlobOutput to be of type 'table'")
	assert(struct["content"], "Expected key content to exist in table")
	if struct["content"] then M.Assertblob(struct["content"]) end
	for k,_ in pairs(struct) do
		assert(GetBlobOutput_keys[k], "GetBlobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBlobOutput
-- <p>Represents the output of a get blob operation.</p>
-- @param content [blob] <p>The content of the blob, usually a file.</p>
-- Required parameter: content
function M.GetBlobOutput(content, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBlobOutput")
	local t = { 
		["content"] = content,
	}
	M.AssertGetBlobOutput(t)
	return t
end

local RepositoryTriggerEventsListRequiredException_keys = { nil }

function M.AssertRepositoryTriggerEventsListRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggerEventsListRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RepositoryTriggerEventsListRequiredException_keys[k], "RepositoryTriggerEventsListRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggerEventsListRequiredException
-- <p>At least one event for the trigger is required but was not specified.</p>
function M.RepositoryTriggerEventsListRequiredException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryTriggerEventsListRequiredException")
	local t = { 
	}
	M.AssertRepositoryTriggerEventsListRequiredException(t)
	return t
end

local RepositoryTriggerExecutionFailure_keys = { "trigger" = true, "failureMessage" = true, nil }

function M.AssertRepositoryTriggerExecutionFailure(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggerExecutionFailure to be of type 'table'")
	if struct["trigger"] then M.AssertRepositoryTriggerName(struct["trigger"]) end
	if struct["failureMessage"] then M.AssertRepositoryTriggerExecutionFailureMessage(struct["failureMessage"]) end
	for k,_ in pairs(struct) do
		assert(RepositoryTriggerExecutionFailure_keys[k], "RepositoryTriggerExecutionFailure contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggerExecutionFailure
-- <p>A trigger failed to run.</p>
-- @param trigger [RepositoryTriggerName] <p>The name of the trigger that did not run.</p>
-- @param failureMessage [RepositoryTriggerExecutionFailureMessage] <p>Additional message information about the trigger that did not run.</p>
function M.RepositoryTriggerExecutionFailure(trigger, failureMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepositoryTriggerExecutionFailure")
	local t = { 
		["trigger"] = trigger,
		["failureMessage"] = failureMessage,
	}
	M.AssertRepositoryTriggerExecutionFailure(t)
	return t
end

local InvalidRepositoryTriggerEventsException_keys = { nil }

function M.AssertInvalidRepositoryTriggerEventsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerEventsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRepositoryTriggerEventsException_keys[k], "InvalidRepositoryTriggerEventsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerEventsException
-- <p>One or more events specified for the trigger is not valid. Check to make sure that all events specified match the requirements for allowed events.</p>
function M.InvalidRepositoryTriggerEventsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRepositoryTriggerEventsException")
	local t = { 
	}
	M.AssertInvalidRepositoryTriggerEventsException(t)
	return t
end

local Difference_keys = { "afterBlob" = true, "changeType" = true, "beforeBlob" = true, nil }

function M.AssertDifference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Difference to be of type 'table'")
	if struct["afterBlob"] then M.AssertBlobMetadata(struct["afterBlob"]) end
	if struct["changeType"] then M.AssertChangeTypeEnum(struct["changeType"]) end
	if struct["beforeBlob"] then M.AssertBlobMetadata(struct["beforeBlob"]) end
	for k,_ in pairs(struct) do
		assert(Difference_keys[k], "Difference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Difference
-- <p>Returns information about a set of differences for a commit specifier.</p>
-- @param afterBlob [BlobMetadata] <p>Information about an <code>afterBlob</code> data type object, including the ID, the file mode permission code, and the path.</p>
-- @param changeType [ChangeTypeEnum] <p>Whether the change type of the difference is an addition (A), deletion (D), or modification (M).</p>
-- @param beforeBlob [BlobMetadata] <p>Information about a <code>beforeBlob</code> data type object, including the ID, the file mode permission code, and the path.</p>
function M.Difference(afterBlob, changeType, beforeBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Difference")
	local t = { 
		["afterBlob"] = afterBlob,
		["changeType"] = changeType,
		["beforeBlob"] = beforeBlob,
	}
	M.AssertDifference(t)
	return t
end

local CreateRepositoryOutput_keys = { "repositoryMetadata" = true, nil }

function M.AssertCreateRepositoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRepositoryOutput to be of type 'table'")
	if struct["repositoryMetadata"] then M.AssertRepositoryMetadata(struct["repositoryMetadata"]) end
	for k,_ in pairs(struct) do
		assert(CreateRepositoryOutput_keys[k], "CreateRepositoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRepositoryOutput
-- <p>Represents the output of a create repository operation.</p>
-- @param repositoryMetadata [RepositoryMetadata] <p>Information about the newly created repository.</p>
function M.CreateRepositoryOutput(repositoryMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRepositoryOutput")
	local t = { 
		["repositoryMetadata"] = repositoryMetadata,
	}
	M.AssertCreateRepositoryOutput(t)
	return t
end

local BatchGetRepositoriesInput_keys = { "repositoryNames" = true, nil }

function M.AssertBatchGetRepositoriesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetRepositoriesInput to be of type 'table'")
	assert(struct["repositoryNames"], "Expected key repositoryNames to exist in table")
	if struct["repositoryNames"] then M.AssertRepositoryNameList(struct["repositoryNames"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetRepositoriesInput_keys[k], "BatchGetRepositoriesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetRepositoriesInput
-- <p>Represents the input of a batch get repositories operation.</p>
-- @param repositoryNames [RepositoryNameList] <p>The names of the repositories to get information about.</p>
-- Required parameter: repositoryNames
function M.BatchGetRepositoriesInput(repositoryNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetRepositoriesInput")
	local t = { 
		["repositoryNames"] = repositoryNames,
	}
	M.AssertBatchGetRepositoriesInput(t)
	return t
end

local InvalidRepositoryNameException_keys = { nil }

function M.AssertInvalidRepositoryNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRepositoryNameException_keys[k], "InvalidRepositoryNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryNameException
-- <p>At least one specified repository name is not valid.</p> <note> <p>This exception only occurs when a specified repository name is not valid. Other exceptions occur when a required repository parameter is missing, or when a specified repository does not exist.</p> </note>
function M.InvalidRepositoryNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRepositoryNameException")
	local t = { 
	}
	M.AssertInvalidRepositoryNameException(t)
	return t
end

local BlobIdDoesNotExistException_keys = { nil }

function M.AssertBlobIdDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlobIdDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BlobIdDoesNotExistException_keys[k], "BlobIdDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlobIdDoesNotExistException
-- <p>The specified blob does not exist.</p>
function M.BlobIdDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlobIdDoesNotExistException")
	local t = { 
	}
	M.AssertBlobIdDoesNotExistException(t)
	return t
end

local BlobMetadata_keys = { "path" = true, "blobId" = true, "mode" = true, nil }

function M.AssertBlobMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlobMetadata to be of type 'table'")
	if struct["path"] then M.AssertPath(struct["path"]) end
	if struct["blobId"] then M.AssertObjectId(struct["blobId"]) end
	if struct["mode"] then M.AssertMode(struct["mode"]) end
	for k,_ in pairs(struct) do
		assert(BlobMetadata_keys[k], "BlobMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlobMetadata
-- <p>Returns information about a specific Git blob object.</p>
-- @param path [Path] <p>The path to the blob and any associated file name, if any.</p>
-- @param blobId [ObjectId] <p>The full ID of the blob.</p>
-- @param mode [Mode] <p>The file mode permissions of the blob. File mode permission codes include:</p> <ul> <li> <p> <code>100644</code> indicates read/write</p> </li> <li> <p> <code>100755</code> indicates read/write/execute</p> </li> <li> <p> <code>160000</code> indicates a submodule</p> </li> <li> <p> <code>120000</code> indicates a symlink</p> </li> </ul>
function M.BlobMetadata(path, blobId, mode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BlobMetadata")
	local t = { 
		["path"] = path,
		["blobId"] = blobId,
		["mode"] = mode,
	}
	M.AssertBlobMetadata(t)
	return t
end

local InvalidRepositoryTriggerRegionException_keys = { nil }

function M.AssertInvalidRepositoryTriggerRegionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerRegionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRepositoryTriggerRegionException_keys[k], "InvalidRepositoryTriggerRegionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerRegionException
-- <p>The region for the trigger target does not match the region for the repository. Triggers must be created in the same region as the target for the trigger.</p>
function M.InvalidRepositoryTriggerRegionException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRepositoryTriggerRegionException")
	local t = { 
	}
	M.AssertInvalidRepositoryTriggerRegionException(t)
	return t
end

local CommitIdDoesNotExistException_keys = { nil }

function M.AssertCommitIdDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommitIdDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CommitIdDoesNotExistException_keys[k], "CommitIdDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommitIdDoesNotExistException
-- <p>The specified commit ID does not exist.</p>
function M.CommitIdDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CommitIdDoesNotExistException")
	local t = { 
	}
	M.AssertCommitIdDoesNotExistException(t)
	return t
end

function M.AssertOrderEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected OrderEnum to be of type 'string'")
end

--  
function M.OrderEnum(str)
	M.AssertOrderEnum(str)
	return str
end

function M.AssertCloneUrlHttp(str)
	assert(str)
	assert(type(str) == "string", "Expected CloneUrlHttp to be of type 'string'")
end

--  
function M.CloneUrlHttp(str)
	M.AssertCloneUrlHttp(str)
	return str
end

function M.AssertPath(str)
	assert(str)
	assert(type(str) == "string", "Expected Path to be of type 'string'")
end

--  
function M.Path(str)
	M.AssertPath(str)
	return str
end

function M.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	M.AssertAccountId(str)
	return str
end

function M.AssertObjectId(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectId to be of type 'string'")
end

--  
function M.ObjectId(str)
	M.AssertObjectId(str)
	return str
end

function M.AssertSortByEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected SortByEnum to be of type 'string'")
end

--  
function M.SortByEnum(str)
	M.AssertSortByEnum(str)
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

function M.AssertAdditionalData(str)
	assert(str)
	assert(type(str) == "string", "Expected AdditionalData to be of type 'string'")
end

--  
function M.AdditionalData(str)
	M.AssertAdditionalData(str)
	return str
end

function M.AssertChangeTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeTypeEnum to be of type 'string'")
end

--  
function M.ChangeTypeEnum(str)
	M.AssertChangeTypeEnum(str)
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

function M.AssertEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected Email to be of type 'string'")
end

--  
function M.Email(str)
	M.AssertEmail(str)
	return str
end

function M.AssertRepositoryDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryDescription to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.RepositoryDescription(str)
	M.AssertRepositoryDescription(str)
	return str
end

function M.AssertRepositoryTriggerCustomData(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryTriggerCustomData to be of type 'string'")
end

--  
function M.RepositoryTriggerCustomData(str)
	M.AssertRepositoryTriggerCustomData(str)
	return str
end

function M.AssertCommitId(str)
	assert(str)
	assert(type(str) == "string", "Expected CommitId to be of type 'string'")
end

--  
function M.CommitId(str)
	M.AssertCommitId(str)
	return str
end

function M.AssertRepositoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w%.-]+"), "Expected string to match pattern '[%w%.-]+'")
end

--  
function M.RepositoryName(str)
	M.AssertRepositoryName(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	M.AssertMessage(str)
	return str
end

function M.AssertRepositoryTriggersConfigurationId(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryTriggersConfigurationId to be of type 'string'")
end

--  
function M.RepositoryTriggersConfigurationId(str)
	M.AssertRepositoryTriggersConfigurationId(str)
	return str
end

function M.AssertDate(str)
	assert(str)
	assert(type(str) == "string", "Expected Date to be of type 'string'")
end

--  
function M.Date(str)
	M.AssertDate(str)
	return str
end

function M.AssertRepositoryTriggerEventEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryTriggerEventEnum to be of type 'string'")
end

--  
function M.RepositoryTriggerEventEnum(str)
	M.AssertRepositoryTriggerEventEnum(str)
	return str
end

function M.AssertRepositoryTriggerName(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryTriggerName to be of type 'string'")
end

--  
function M.RepositoryTriggerName(str)
	M.AssertRepositoryTriggerName(str)
	return str
end

function M.AssertBranchName(str)
	assert(str)
	assert(type(str) == "string", "Expected BranchName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BranchName(str)
	M.AssertBranchName(str)
	return str
end

function M.AssertCommitName(str)
	assert(str)
	assert(type(str) == "string", "Expected CommitName to be of type 'string'")
end

--  
function M.CommitName(str)
	M.AssertCommitName(str)
	return str
end

function M.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
end

--  
function M.Name(str)
	M.AssertName(str)
	return str
end

function M.AssertCloneUrlSsh(str)
	assert(str)
	assert(type(str) == "string", "Expected CloneUrlSsh to be of type 'string'")
end

--  
function M.CloneUrlSsh(str)
	M.AssertCloneUrlSsh(str)
	return str
end

function M.AssertRepositoryId(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryId to be of type 'string'")
end

--  
function M.RepositoryId(str)
	M.AssertRepositoryId(str)
	return str
end

function M.AssertMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Mode to be of type 'string'")
end

--  
function M.Mode(str)
	M.AssertMode(str)
	return str
end

function M.AssertRepositoryTriggerExecutionFailureMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryTriggerExecutionFailureMessage to be of type 'string'")
end

--  
function M.RepositoryTriggerExecutionFailureMessage(str)
	M.AssertRepositoryTriggerExecutionFailureMessage(str)
	return str
end

function M.AssertLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Limit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Limit(integer)
	M.AssertLimit(integer)
	return integer
end

function M.AssertLastModifiedDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModifiedDate to be of type 'string'")
end

function M.LastModifiedDate(timestamp)
	M.AssertLastModifiedDate(timestamp)
	return timestamp
end

function M.AssertCreationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationDate to be of type 'string'")
end

function M.CreationDate(timestamp)
	M.AssertCreationDate(timestamp)
	return timestamp
end

function M.Assertblob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected blob to be of type 'string'")
end

function M.blob(blob)
	M.Assertblob(blob)
	return blob
end

function M.AssertRepositoryNotFoundList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryNotFoundList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRepositoryName(v)
	end
end

--  
-- List of RepositoryName objects
function M.RepositoryNotFoundList(list)
	M.AssertRepositoryNotFoundList(list)
	return list
end

function M.AssertRepositoryNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryNameList to be of type ''table")
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

function M.AssertRepositoryTriggerNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryTriggerNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRepositoryTriggerName(v)
	end
end

--  
-- List of RepositoryTriggerName objects
function M.RepositoryTriggerNameList(list)
	M.AssertRepositoryTriggerNameList(list)
	return list
end

function M.AssertParentList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParentList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertObjectId(v)
	end
end

--  
-- List of ObjectId objects
function M.ParentList(list)
	M.AssertParentList(list)
	return list
end

function M.AssertDifferenceList(list)
	assert(list)
	assert(type(list) == "table", "Expected DifferenceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDifference(v)
	end
end

--  
-- List of Difference objects
function M.DifferenceList(list)
	M.AssertDifferenceList(list)
	return list
end

function M.AssertRepositoryMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRepositoryMetadata(v)
	end
end

--  
-- List of RepositoryMetadata objects
function M.RepositoryMetadataList(list)
	M.AssertRepositoryMetadataList(list)
	return list
end

function M.AssertBranchNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected BranchNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBranchName(v)
	end
end

--  
-- List of BranchName objects
function M.BranchNameList(list)
	M.AssertBranchNameList(list)
	return list
end

function M.AssertRepositoryTriggersList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryTriggersList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRepositoryTrigger(v)
	end
end

--  
-- List of RepositoryTrigger objects
function M.RepositoryTriggersList(list)
	M.AssertRepositoryTriggersList(list)
	return list
end

function M.AssertRepositoryTriggerEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryTriggerEventList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRepositoryTriggerEventEnum(v)
	end
end

--  
-- List of RepositoryTriggerEventEnum objects
function M.RepositoryTriggerEventList(list)
	M.AssertRepositoryTriggerEventList(list)
	return list
end

function M.AssertRepositoryNameIdPairList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryNameIdPairList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRepositoryNameIdPair(v)
	end
end

--  
-- List of RepositoryNameIdPair objects
function M.RepositoryNameIdPairList(list)
	M.AssertRepositoryNameIdPairList(list)
	return list
end

function M.AssertRepositoryTriggerExecutionFailureList(list)
	assert(list)
	assert(type(list) == "table", "Expected RepositoryTriggerExecutionFailureList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRepositoryTriggerExecutionFailure(v)
	end
end

--  
-- List of RepositoryTriggerExecutionFailure objects
function M.RepositoryTriggerExecutionFailureList(list)
	M.AssertRepositoryTriggerExecutionFailureList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- TestRepositoryTriggers
-- @param TestRepositoryTriggersInput
-- @param cb Callback function accepting two args: response, error_message
function M.TestRepositoryTriggersAsync(TestRepositoryTriggersInput, cb)
	assert(TestRepositoryTriggersInput, "You must provide a TestRepositoryTriggersInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.TestRepositoryTriggers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TestRepositoryTriggersInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRepositoryTriggers
-- @param GetRepositoryTriggersInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetRepositoryTriggersAsync(GetRepositoryTriggersInput, cb)
	assert(GetRepositoryTriggersInput, "You must provide a GetRepositoryTriggersInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetRepositoryTriggers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRepositoryTriggersInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRepository
-- @param DeleteRepositoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRepositoryAsync(DeleteRepositoryInput, cb)
	assert(DeleteRepositoryInput, "You must provide a DeleteRepositoryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.DeleteRepository",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRepositoryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRepositoryName
-- @param UpdateRepositoryNameInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRepositoryNameAsync(UpdateRepositoryNameInput, cb)
	assert(UpdateRepositoryNameInput, "You must provide a UpdateRepositoryNameInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdateRepositoryName",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateRepositoryNameInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutRepositoryTriggers
-- @param PutRepositoryTriggersInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutRepositoryTriggersAsync(PutRepositoryTriggersInput, cb)
	assert(PutRepositoryTriggersInput, "You must provide a PutRepositoryTriggersInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.PutRepositoryTriggers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutRepositoryTriggersInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateBranch
-- @param CreateBranchInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBranchAsync(CreateBranchInput, cb)
	assert(CreateBranchInput, "You must provide a CreateBranchInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.CreateBranch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateBranchInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRepositories
-- @param ListRepositoriesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListRepositoriesAsync(ListRepositoriesInput, cb)
	assert(ListRepositoriesInput, "You must provide a ListRepositoriesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.ListRepositories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRepositoriesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRepositoryDescription
-- @param UpdateRepositoryDescriptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRepositoryDescriptionAsync(UpdateRepositoryDescriptionInput, cb)
	assert(UpdateRepositoryDescriptionInput, "You must provide a UpdateRepositoryDescriptionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdateRepositoryDescription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateRepositoryDescriptionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRepository
-- @param GetRepositoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetRepositoryAsync(GetRepositoryInput, cb)
	assert(GetRepositoryInput, "You must provide a GetRepositoryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetRepository",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRepositoryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDefaultBranch
-- @param UpdateDefaultBranchInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDefaultBranchAsync(UpdateDefaultBranchInput, cb)
	assert(UpdateDefaultBranchInput, "You must provide a UpdateDefaultBranchInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdateDefaultBranch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDefaultBranchInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetRepositories
-- @param BatchGetRepositoriesInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetRepositoriesAsync(BatchGetRepositoriesInput, cb)
	assert(BatchGetRepositoriesInput, "You must provide a BatchGetRepositoriesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.BatchGetRepositories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetRepositoriesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListBranches
-- @param ListBranchesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListBranchesAsync(ListBranchesInput, cb)
	assert(ListBranchesInput, "You must provide a ListBranchesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.ListBranches",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListBranchesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBlob
-- @param GetBlobInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetBlobAsync(GetBlobInput, cb)
	assert(GetBlobInput, "You must provide a GetBlobInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetBlob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetBlobInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBranch
-- @param GetBranchInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetBranchAsync(GetBranchInput, cb)
	assert(GetBranchInput, "You must provide a GetBranchInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetBranch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetBranchInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateRepository
-- @param CreateRepositoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRepositoryAsync(CreateRepositoryInput, cb)
	assert(CreateRepositoryInput, "You must provide a CreateRepositoryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.CreateRepository",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateRepositoryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCommit
-- @param GetCommitInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetCommitAsync(GetCommitInput, cb)
	assert(GetCommitInput, "You must provide a GetCommitInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetCommit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetCommitInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDifferences
-- @param GetDifferencesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDifferencesAsync(GetDifferencesInput, cb)
	assert(GetDifferencesInput, "You must provide a GetDifferencesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetDifferences",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDifferencesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
