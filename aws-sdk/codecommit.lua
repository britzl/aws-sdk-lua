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
	assert(args, "You must provdide an argument table when creating PutRepositoryTriggersOutput")
	local t = { 
		["configurationId"] = args["configurationId"],
	}
	asserts.AssertPutRepositoryTriggersOutput(t)
	return t
end

keys.InvalidRepositoryDescriptionException = { nil }

function asserts.AssertInvalidRepositoryDescriptionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryDescriptionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRepositoryDescriptionException[k], "InvalidRepositoryDescriptionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryDescriptionException
-- <p>The specified repository description is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRepositoryDescriptionException structure as a key-value pair table
function M.InvalidRepositoryDescriptionException(args)
	assert(args, "You must provdide an argument table when creating InvalidRepositoryDescriptionException")
	local t = { 
	}
	asserts.AssertInvalidRepositoryDescriptionException(t)
	return t
end

keys.EncryptionKeyAccessDeniedException = { nil }

function asserts.AssertEncryptionKeyAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionKeyAccessDeniedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EncryptionKeyAccessDeniedException[k], "EncryptionKeyAccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionKeyAccessDeniedException
-- <p>An encryption key could not be accessed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EncryptionKeyAccessDeniedException structure as a key-value pair table
function M.EncryptionKeyAccessDeniedException(args)
	assert(args, "You must provdide an argument table when creating EncryptionKeyAccessDeniedException")
	local t = { 
	}
	asserts.AssertEncryptionKeyAccessDeniedException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListBranchesInput")
	local t = { 
		["nextToken"] = args["nextToken"],
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertListBranchesInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating TestRepositoryTriggersInput")
	local t = { 
		["repositoryName"] = args["repositoryName"],
		["triggers"] = args["triggers"],
	}
	asserts.AssertTestRepositoryTriggersInput(t)
	return t
end

keys.CommitDoesNotExistException = { nil }

function asserts.AssertCommitDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommitDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CommitDoesNotExistException[k], "CommitDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommitDoesNotExistException
-- <p>The specified commit does not exist or no commit was specified, and the specified repository has no default branch.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CommitDoesNotExistException structure as a key-value pair table
function M.CommitDoesNotExistException(args)
	assert(args, "You must provdide an argument table when creating CommitDoesNotExistException")
	local t = { 
	}
	asserts.AssertCommitDoesNotExistException(t)
	return t
end

keys.InvalidBranchNameException = { nil }

function asserts.AssertInvalidBranchNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBranchNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidBranchNameException[k], "InvalidBranchNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBranchNameException
-- <p>The specified branch name is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidBranchNameException structure as a key-value pair table
function M.InvalidBranchNameException(args)
	assert(args, "You must provdide an argument table when creating InvalidBranchNameException")
	local t = { 
	}
	asserts.AssertInvalidBranchNameException(t)
	return t
end

keys.InvalidSortByException = { nil }

function asserts.AssertInvalidSortByException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSortByException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSortByException[k], "InvalidSortByException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSortByException
-- <p>The specified sort by value is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidSortByException structure as a key-value pair table
function M.InvalidSortByException(args)
	assert(args, "You must provdide an argument table when creating InvalidSortByException")
	local t = { 
	}
	asserts.AssertInvalidSortByException(t)
	return t
end

keys.PathDoesNotExistException = { nil }

function asserts.AssertPathDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PathDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PathDoesNotExistException[k], "PathDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PathDoesNotExistException
-- <p>The specified path does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PathDoesNotExistException structure as a key-value pair table
function M.PathDoesNotExistException(args)
	assert(args, "You must provdide an argument table when creating PathDoesNotExistException")
	local t = { 
	}
	asserts.AssertPathDoesNotExistException(t)
	return t
end

keys.BlobIdRequiredException = { nil }

function asserts.AssertBlobIdRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlobIdRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BlobIdRequiredException[k], "BlobIdRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlobIdRequiredException
-- <p>A blob ID is required but was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BlobIdRequiredException structure as a key-value pair table
function M.BlobIdRequiredException(args)
	assert(args, "You must provdide an argument table when creating BlobIdRequiredException")
	local t = { 
	}
	asserts.AssertBlobIdRequiredException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateRepositoryDescriptionInput")
	local t = { 
		["repositoryName"] = args["repositoryName"],
		["repositoryDescription"] = args["repositoryDescription"],
	}
	asserts.AssertUpdateRepositoryDescriptionInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetRepositoryOutput")
	local t = { 
		["repositoryMetadata"] = args["repositoryMetadata"],
	}
	asserts.AssertGetRepositoryOutput(t)
	return t
end

keys.EncryptionKeyUnavailableException = { nil }

function asserts.AssertEncryptionKeyUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionKeyUnavailableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EncryptionKeyUnavailableException[k], "EncryptionKeyUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionKeyUnavailableException
-- <p>The encryption key is not available.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EncryptionKeyUnavailableException structure as a key-value pair table
function M.EncryptionKeyUnavailableException(args)
	assert(args, "You must provdide an argument table when creating EncryptionKeyUnavailableException")
	local t = { 
	}
	asserts.AssertEncryptionKeyUnavailableException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating BatchGetRepositoriesOutput")
	local t = { 
		["repositories"] = args["repositories"],
		["repositoriesNotFound"] = args["repositoriesNotFound"],
	}
	asserts.AssertBatchGetRepositoriesOutput(t)
	return t
end

keys.InvalidRepositoryTriggerDestinationArnException = { nil }

function asserts.AssertInvalidRepositoryTriggerDestinationArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerDestinationArnException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRepositoryTriggerDestinationArnException[k], "InvalidRepositoryTriggerDestinationArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerDestinationArnException
-- <p>The Amazon Resource Name (ARN) for the trigger is not valid for the specified destination. The most common reason for this error is that the ARN does not meet the requirements for the service type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRepositoryTriggerDestinationArnException structure as a key-value pair table
function M.InvalidRepositoryTriggerDestinationArnException(args)
	assert(args, "You must provdide an argument table when creating InvalidRepositoryTriggerDestinationArnException")
	local t = { 
	}
	asserts.AssertInvalidRepositoryTriggerDestinationArnException(t)
	return t
end

keys.RepositoryDoesNotExistException = { nil }

function asserts.AssertRepositoryDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RepositoryDoesNotExistException[k], "RepositoryDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryDoesNotExistException
-- <p>The specified repository does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RepositoryDoesNotExistException structure as a key-value pair table
function M.RepositoryDoesNotExistException(args)
	assert(args, "You must provdide an argument table when creating RepositoryDoesNotExistException")
	local t = { 
	}
	asserts.AssertRepositoryDoesNotExistException(t)
	return t
end

keys.RepositoryLimitExceededException = { nil }

function asserts.AssertRepositoryLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RepositoryLimitExceededException[k], "RepositoryLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryLimitExceededException
-- <p>A repository resource limit was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RepositoryLimitExceededException structure as a key-value pair table
function M.RepositoryLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating RepositoryLimitExceededException")
	local t = { 
	}
	asserts.AssertRepositoryLimitExceededException(t)
	return t
end

keys.Commit = { ["additionalData"] = true, ["committer"] = true, ["author"] = true, ["treeId"] = true, ["parents"] = true, ["message"] = true, nil }

function asserts.AssertCommit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Commit to be of type 'table'")
	if struct["additionalData"] then asserts.AssertAdditionalData(struct["additionalData"]) end
	if struct["committer"] then asserts.AssertUserInfo(struct["committer"]) end
	if struct["author"] then asserts.AssertUserInfo(struct["author"]) end
	if struct["treeId"] then asserts.AssertObjectId(struct["treeId"]) end
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
-- * additionalData [AdditionalData] <p>Any additional data associated with the specified commit.</p>
-- * committer [UserInfo] <p>Information about the person who committed the specified commit, also known as the committer. Information includes the date in timestamp format with GMT offset, the name of the committer, and the email address for the committer, as configured in Git.</p> <p>For more information about the difference between an author and a committer in Git, see <a href="http://git-scm.com/book/ch2-3.html">Viewing the Commit History</a> in Pro Git by Scott Chacon and Ben Straub.</p>
-- * author [UserInfo] <p>Information about the author of the specified commit. Information includes the date in timestamp format with GMT offset, the name of the author, and the email address for the author, as configured in Git.</p>
-- * treeId [ObjectId] <p>Tree information for the specified commit.</p>
-- * parents [ParentList] <p>The parent list for the specified commit.</p>
-- * message [Message] <p>The commit message associated with the specified commit.</p>
-- @return Commit structure as a key-value pair table
function M.Commit(args)
	assert(args, "You must provdide an argument table when creating Commit")
	local t = { 
		["additionalData"] = args["additionalData"],
		["committer"] = args["committer"],
		["author"] = args["author"],
		["treeId"] = args["treeId"],
		["parents"] = args["parents"],
		["message"] = args["message"],
	}
	asserts.AssertCommit(t)
	return t
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
-- * commitId [ObjectId] <p>The commit ID.</p>
-- * repositoryName [RepositoryName] <p>The name of the repository to which the commit was made.</p>
-- Required key: repositoryName
-- Required key: commitId
-- @return GetCommitInput structure as a key-value pair table
function M.GetCommitInput(args)
	assert(args, "You must provdide an argument table when creating GetCommitInput")
	local t = { 
		["commitId"] = args["commitId"],
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertGetCommitInput(t)
	return t
end

keys.InvalidRepositoryTriggerNameException = { nil }

function asserts.AssertInvalidRepositoryTriggerNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRepositoryTriggerNameException[k], "InvalidRepositoryTriggerNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerNameException
-- <p>The name of the trigger is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRepositoryTriggerNameException structure as a key-value pair table
function M.InvalidRepositoryTriggerNameException(args)
	assert(args, "You must provdide an argument table when creating InvalidRepositoryTriggerNameException")
	local t = { 
	}
	asserts.AssertInvalidRepositoryTriggerNameException(t)
	return t
end

keys.RepositoryNameExistsException = { nil }

function asserts.AssertRepositoryNameExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNameExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RepositoryNameExistsException[k], "RepositoryNameExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNameExistsException
-- <p>The specified repository name already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RepositoryNameExistsException structure as a key-value pair table
function M.RepositoryNameExistsException(args)
	assert(args, "You must provdide an argument table when creating RepositoryNameExistsException")
	local t = { 
	}
	asserts.AssertRepositoryNameExistsException(t)
	return t
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
-- * branches [BranchNameList] <p>The branches that will be included in the trigger configuration. If no branches are specified, the trigger will apply to all branches.</p>
-- * name [RepositoryTriggerName] <p>The name of the trigger.</p>
-- * customData [RepositoryTriggerCustomData] <p>Any custom data associated with the trigger that will be included in the information sent to the target of the trigger.</p>
-- * events [RepositoryTriggerEventList] <p>The repository events that will cause the trigger to run actions in another service, such as sending a notification through Amazon Simple Notification Service (SNS). </p> <note> <p>The valid value "all" cannot be used with any other values.</p> </note>
-- Required key: name
-- Required key: destinationArn
-- Required key: events
-- @return RepositoryTrigger structure as a key-value pair table
function M.RepositoryTrigger(args)
	assert(args, "You must provdide an argument table when creating RepositoryTrigger")
	local t = { 
		["destinationArn"] = args["destinationArn"],
		["branches"] = args["branches"],
		["name"] = args["name"],
		["customData"] = args["customData"],
		["events"] = args["events"],
	}
	asserts.AssertRepositoryTrigger(t)
	return t
end

keys.InvalidOrderException = { nil }

function asserts.AssertInvalidOrderException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOrderException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidOrderException[k], "InvalidOrderException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOrderException
-- <p>The specified sort order is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidOrderException structure as a key-value pair table
function M.InvalidOrderException(args)
	assert(args, "You must provdide an argument table when creating InvalidOrderException")
	local t = { 
	}
	asserts.AssertInvalidOrderException(t)
	return t
end

keys.BranchNameRequiredException = { nil }

function asserts.AssertBranchNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BranchNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BranchNameRequiredException[k], "BranchNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BranchNameRequiredException
-- <p>A branch name is required but was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BranchNameRequiredException structure as a key-value pair table
function M.BranchNameRequiredException(args)
	assert(args, "You must provdide an argument table when creating BranchNameRequiredException")
	local t = { 
	}
	asserts.AssertBranchNameRequiredException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating PutRepositoryTriggersInput")
	local t = { 
		["repositoryName"] = args["repositoryName"],
		["triggers"] = args["triggers"],
	}
	asserts.AssertPutRepositoryTriggersInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating BranchInfo")
	local t = { 
		["commitId"] = args["commitId"],
		["branchName"] = args["branchName"],
	}
	asserts.AssertBranchInfo(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetRepositoryTriggersOutput")
	local t = { 
		["configurationId"] = args["configurationId"],
		["triggers"] = args["triggers"],
	}
	asserts.AssertGetRepositoryTriggersOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteRepositoryOutput")
	local t = { 
		["repositoryId"] = args["repositoryId"],
	}
	asserts.AssertDeleteRepositoryOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListRepositoriesOutput")
	local t = { 
		["nextToken"] = args["nextToken"],
		["repositories"] = args["repositories"],
	}
	asserts.AssertListRepositoriesOutput(t)
	return t
end

keys.RepositoryTriggerNameRequiredException = { nil }

function asserts.AssertRepositoryTriggerNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggerNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RepositoryTriggerNameRequiredException[k], "RepositoryTriggerNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggerNameRequiredException
-- <p>A name for the trigger is required but was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RepositoryTriggerNameRequiredException structure as a key-value pair table
function M.RepositoryTriggerNameRequiredException(args)
	assert(args, "You must provdide an argument table when creating RepositoryTriggerNameRequiredException")
	local t = { 
	}
	asserts.AssertRepositoryTriggerNameRequiredException(t)
	return t
end

keys.RepositoryTriggerBranchNameListRequiredException = { nil }

function asserts.AssertRepositoryTriggerBranchNameListRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggerBranchNameListRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RepositoryTriggerBranchNameListRequiredException[k], "RepositoryTriggerBranchNameListRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggerBranchNameListRequiredException
-- <p>At least one branch name is required but was not specified in the trigger configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RepositoryTriggerBranchNameListRequiredException structure as a key-value pair table
function M.RepositoryTriggerBranchNameListRequiredException(args)
	assert(args, "You must provdide an argument table when creating RepositoryTriggerBranchNameListRequiredException")
	local t = { 
	}
	asserts.AssertRepositoryTriggerBranchNameListRequiredException(t)
	return t
end

keys.EncryptionIntegrityChecksFailedException = { nil }

function asserts.AssertEncryptionIntegrityChecksFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionIntegrityChecksFailedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EncryptionIntegrityChecksFailedException[k], "EncryptionIntegrityChecksFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionIntegrityChecksFailedException
-- <p>An encryption integrity check failed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EncryptionIntegrityChecksFailedException structure as a key-value pair table
function M.EncryptionIntegrityChecksFailedException(args)
	assert(args, "You must provdide an argument table when creating EncryptionIntegrityChecksFailedException")
	local t = { 
	}
	asserts.AssertEncryptionIntegrityChecksFailedException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating RepositoryMetadata")
	local t = { 
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
	asserts.AssertRepositoryMetadata(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListBranchesOutput")
	local t = { 
		["nextToken"] = args["nextToken"],
		["branches"] = args["branches"],
	}
	asserts.AssertListBranchesOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating TestRepositoryTriggersOutput")
	local t = { 
		["successfulExecutions"] = args["successfulExecutions"],
		["failedExecutions"] = args["failedExecutions"],
	}
	asserts.AssertTestRepositoryTriggersOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListRepositoriesInput")
	local t = { 
		["nextToken"] = args["nextToken"],
		["sortBy"] = args["sortBy"],
		["order"] = args["order"],
	}
	asserts.AssertListRepositoriesInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBlobInput")
	local t = { 
		["repositoryName"] = args["repositoryName"],
		["blobId"] = args["blobId"],
	}
	asserts.AssertGetBlobInput(t)
	return t
end

keys.RepositoryNameRequiredException = { nil }

function asserts.AssertRepositoryNameRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNameRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RepositoryNameRequiredException[k], "RepositoryNameRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNameRequiredException
-- <p>A repository name is required but was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RepositoryNameRequiredException structure as a key-value pair table
function M.RepositoryNameRequiredException(args)
	assert(args, "You must provdide an argument table when creating RepositoryNameRequiredException")
	local t = { 
	}
	asserts.AssertRepositoryNameRequiredException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBranchInput")
	local t = { 
		["repositoryName"] = args["repositoryName"],
		["branchName"] = args["branchName"],
	}
	asserts.AssertGetBranchInput(t)
	return t
end

keys.BranchDoesNotExistException = { nil }

function asserts.AssertBranchDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BranchDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BranchDoesNotExistException[k], "BranchDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BranchDoesNotExistException
-- <p>The specified branch does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BranchDoesNotExistException structure as a key-value pair table
function M.BranchDoesNotExistException(args)
	assert(args, "You must provdide an argument table when creating BranchDoesNotExistException")
	local t = { 
	}
	asserts.AssertBranchDoesNotExistException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteRepositoryInput")
	local t = { 
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertDeleteRepositoryInput(t)
	return t
end

keys.InvalidCommitIdException = { nil }

function asserts.AssertInvalidCommitIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCommitIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidCommitIdException[k], "InvalidCommitIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCommitIdException
-- <p>The specified commit ID is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidCommitIdException structure as a key-value pair table
function M.InvalidCommitIdException(args)
	assert(args, "You must provdide an argument table when creating InvalidCommitIdException")
	local t = { 
	}
	asserts.AssertInvalidCommitIdException(t)
	return t
end

keys.InvalidRepositoryTriggerBranchNameException = { nil }

function asserts.AssertInvalidRepositoryTriggerBranchNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerBranchNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRepositoryTriggerBranchNameException[k], "InvalidRepositoryTriggerBranchNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerBranchNameException
-- <p>One or more branch names specified for the trigger is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRepositoryTriggerBranchNameException structure as a key-value pair table
function M.InvalidRepositoryTriggerBranchNameException(args)
	assert(args, "You must provdide an argument table when creating InvalidRepositoryTriggerBranchNameException")
	local t = { 
	}
	asserts.AssertInvalidRepositoryTriggerBranchNameException(t)
	return t
end

keys.MaximumBranchesExceededException = { nil }

function asserts.AssertMaximumBranchesExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaximumBranchesExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MaximumBranchesExceededException[k], "MaximumBranchesExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaximumBranchesExceededException
-- <p>The number of branches for the trigger was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return MaximumBranchesExceededException structure as a key-value pair table
function M.MaximumBranchesExceededException(args)
	assert(args, "You must provdide an argument table when creating MaximumBranchesExceededException")
	local t = { 
	}
	asserts.AssertMaximumBranchesExceededException(t)
	return t
end

keys.InvalidPathException = { nil }

function asserts.AssertInvalidPathException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPathException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidPathException[k], "InvalidPathException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPathException
-- <p>The specified path is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidPathException structure as a key-value pair table
function M.InvalidPathException(args)
	assert(args, "You must provdide an argument table when creating InvalidPathException")
	local t = { 
	}
	asserts.AssertInvalidPathException(t)
	return t
end

keys.BranchNameExistsException = { nil }

function asserts.AssertBranchNameExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BranchNameExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BranchNameExistsException[k], "BranchNameExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BranchNameExistsException
-- <p>The specified branch name already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BranchNameExistsException structure as a key-value pair table
function M.BranchNameExistsException(args)
	assert(args, "You must provdide an argument table when creating BranchNameExistsException")
	local t = { 
	}
	asserts.AssertBranchNameExistsException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetRepositoryInput")
	local t = { 
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertGetRepositoryInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating RepositoryNameIdPair")
	local t = { 
		["repositoryName"] = args["repositoryName"],
		["repositoryId"] = args["repositoryId"],
	}
	asserts.AssertRepositoryNameIdPair(t)
	return t
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
-- * date [Date] <p>The date when the specified commit was pushed to the repository.</p>
-- * name [Name] <p>The name of the user who made the specified commit.</p>
-- * email [Email] <p>The email address associated with the user who made the commit, if any.</p>
-- @return UserInfo structure as a key-value pair table
function M.UserInfo(args)
	assert(args, "You must provdide an argument table when creating UserInfo")
	local t = { 
		["date"] = args["date"],
		["name"] = args["name"],
		["email"] = args["email"],
	}
	asserts.AssertUserInfo(t)
	return t
end

keys.FileTooLargeException = { nil }

function asserts.AssertFileTooLargeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileTooLargeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.FileTooLargeException[k], "FileTooLargeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileTooLargeException
-- <p>The specified file exceeds the file size limit for AWS CodeCommit. For more information about limits in AWS CodeCommit, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">AWS CodeCommit User Guide</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return FileTooLargeException structure as a key-value pair table
function M.FileTooLargeException(args)
	assert(args, "You must provdide an argument table when creating FileTooLargeException")
	local t = { 
	}
	asserts.AssertFileTooLargeException(t)
	return t
end

keys.CommitIdRequiredException = { nil }

function asserts.AssertCommitIdRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommitIdRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CommitIdRequiredException[k], "CommitIdRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommitIdRequiredException
-- <p>A commit ID was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CommitIdRequiredException structure as a key-value pair table
function M.CommitIdRequiredException(args)
	assert(args, "You must provdide an argument table when creating CommitIdRequiredException")
	local t = { 
	}
	asserts.AssertCommitIdRequiredException(t)
	return t
end

keys.MaximumRepositoryTriggersExceededException = { nil }

function asserts.AssertMaximumRepositoryTriggersExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaximumRepositoryTriggersExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MaximumRepositoryTriggersExceededException[k], "MaximumRepositoryTriggersExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaximumRepositoryTriggersExceededException
-- <p>The number of triggers allowed for the repository was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return MaximumRepositoryTriggersExceededException structure as a key-value pair table
function M.MaximumRepositoryTriggersExceededException(args)
	assert(args, "You must provdide an argument table when creating MaximumRepositoryTriggersExceededException")
	local t = { 
	}
	asserts.AssertMaximumRepositoryTriggersExceededException(t)
	return t
end

keys.RepositoryTriggersListRequiredException = { nil }

function asserts.AssertRepositoryTriggersListRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggersListRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RepositoryTriggersListRequiredException[k], "RepositoryTriggersListRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggersListRequiredException
-- <p>The list of triggers for the repository is required but was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RepositoryTriggersListRequiredException structure as a key-value pair table
function M.RepositoryTriggersListRequiredException(args)
	assert(args, "You must provdide an argument table when creating RepositoryTriggersListRequiredException")
	local t = { 
	}
	asserts.AssertRepositoryTriggersListRequiredException(t)
	return t
end

keys.RepositoryTriggerDestinationArnRequiredException = { nil }

function asserts.AssertRepositoryTriggerDestinationArnRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggerDestinationArnRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RepositoryTriggerDestinationArnRequiredException[k], "RepositoryTriggerDestinationArnRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggerDestinationArnRequiredException
-- <p>A destination ARN for the target service for the trigger is required but was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RepositoryTriggerDestinationArnRequiredException structure as a key-value pair table
function M.RepositoryTriggerDestinationArnRequiredException(args)
	assert(args, "You must provdide an argument table when creating RepositoryTriggerDestinationArnRequiredException")
	local t = { 
	}
	asserts.AssertRepositoryTriggerDestinationArnRequiredException(t)
	return t
end

keys.InvalidCommitException = { nil }

function asserts.AssertInvalidCommitException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCommitException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidCommitException[k], "InvalidCommitException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCommitException
-- <p>The specified commit is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidCommitException structure as a key-value pair table
function M.InvalidCommitException(args)
	assert(args, "You must provdide an argument table when creating InvalidCommitException")
	local t = { 
	}
	asserts.AssertInvalidCommitException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateDefaultBranchInput")
	local t = { 
		["defaultBranchName"] = args["defaultBranchName"],
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertUpdateDefaultBranchInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateBranchInput")
	local t = { 
		["commitId"] = args["commitId"],
		["repositoryName"] = args["repositoryName"],
		["branchName"] = args["branchName"],
	}
	asserts.AssertCreateBranchInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBranchOutput")
	local t = { 
		["branch"] = args["branch"],
	}
	asserts.AssertGetBranchOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetCommitOutput")
	local t = { 
		["commit"] = args["commit"],
	}
	asserts.AssertGetCommitOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetDifferencesInput")
	local t = { 
		["repositoryName"] = args["repositoryName"],
		["NextToken"] = args["NextToken"],
		["afterPath"] = args["afterPath"],
		["MaxResults"] = args["MaxResults"],
		["beforeCommitSpecifier"] = args["beforeCommitSpecifier"],
		["beforePath"] = args["beforePath"],
		["afterCommitSpecifier"] = args["afterCommitSpecifier"],
	}
	asserts.AssertGetDifferencesInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetRepositoryTriggersInput")
	local t = { 
		["repositoryName"] = args["repositoryName"],
	}
	asserts.AssertGetRepositoryTriggersInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateRepositoryNameInput")
	local t = { 
		["newName"] = args["newName"],
		["oldName"] = args["oldName"],
	}
	asserts.AssertUpdateRepositoryNameInput(t)
	return t
end

keys.MaximumRepositoryNamesExceededException = { nil }

function asserts.AssertMaximumRepositoryNamesExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaximumRepositoryNamesExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MaximumRepositoryNamesExceededException[k], "MaximumRepositoryNamesExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaximumRepositoryNamesExceededException
-- <p>The maximum number of allowed repository names was exceeded. Currently, this number is 25.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return MaximumRepositoryNamesExceededException structure as a key-value pair table
function M.MaximumRepositoryNamesExceededException(args)
	assert(args, "You must provdide an argument table when creating MaximumRepositoryNamesExceededException")
	local t = { 
	}
	asserts.AssertMaximumRepositoryNamesExceededException(t)
	return t
end

keys.RepositoryNamesRequiredException = { nil }

function asserts.AssertRepositoryNamesRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryNamesRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RepositoryNamesRequiredException[k], "RepositoryNamesRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryNamesRequiredException
-- <p>A repository names object is required but was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RepositoryNamesRequiredException structure as a key-value pair table
function M.RepositoryNamesRequiredException(args)
	assert(args, "You must provdide an argument table when creating RepositoryNamesRequiredException")
	local t = { 
	}
	asserts.AssertRepositoryNamesRequiredException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetDifferencesOutput")
	local t = { 
		["differences"] = args["differences"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetDifferencesOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateRepositoryInput")
	local t = { 
		["repositoryName"] = args["repositoryName"],
		["repositoryDescription"] = args["repositoryDescription"],
	}
	asserts.AssertCreateRepositoryInput(t)
	return t
end

keys.InvalidRepositoryTriggerCustomDataException = { nil }

function asserts.AssertInvalidRepositoryTriggerCustomDataException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerCustomDataException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRepositoryTriggerCustomDataException[k], "InvalidRepositoryTriggerCustomDataException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerCustomDataException
-- <p>The custom data provided for the trigger is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRepositoryTriggerCustomDataException structure as a key-value pair table
function M.InvalidRepositoryTriggerCustomDataException(args)
	assert(args, "You must provdide an argument table when creating InvalidRepositoryTriggerCustomDataException")
	local t = { 
	}
	asserts.AssertInvalidRepositoryTriggerCustomDataException(t)
	return t
end

keys.EncryptionKeyDisabledException = { nil }

function asserts.AssertEncryptionKeyDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionKeyDisabledException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EncryptionKeyDisabledException[k], "EncryptionKeyDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionKeyDisabledException
-- <p>The encryption key is disabled.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EncryptionKeyDisabledException structure as a key-value pair table
function M.EncryptionKeyDisabledException(args)
	assert(args, "You must provdide an argument table when creating EncryptionKeyDisabledException")
	local t = { 
	}
	asserts.AssertEncryptionKeyDisabledException(t)
	return t
end

keys.CommitRequiredException = { nil }

function asserts.AssertCommitRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommitRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CommitRequiredException[k], "CommitRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommitRequiredException
-- <p>A commit was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CommitRequiredException structure as a key-value pair table
function M.CommitRequiredException(args)
	assert(args, "You must provdide an argument table when creating CommitRequiredException")
	local t = { 
	}
	asserts.AssertCommitRequiredException(t)
	return t
end

keys.InvalidMaxResultsException = { nil }

function asserts.AssertInvalidMaxResultsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMaxResultsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidMaxResultsException[k], "InvalidMaxResultsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMaxResultsException
-- <p>The specified number of maximum results is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidMaxResultsException structure as a key-value pair table
function M.InvalidMaxResultsException(args)
	assert(args, "You must provdide an argument table when creating InvalidMaxResultsException")
	local t = { 
	}
	asserts.AssertInvalidMaxResultsException(t)
	return t
end

keys.InvalidBlobIdException = { nil }

function asserts.AssertInvalidBlobIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBlobIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidBlobIdException[k], "InvalidBlobIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBlobIdException
-- <p>The specified blob is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidBlobIdException structure as a key-value pair table
function M.InvalidBlobIdException(args)
	assert(args, "You must provdide an argument table when creating InvalidBlobIdException")
	local t = { 
	}
	asserts.AssertInvalidBlobIdException(t)
	return t
end

keys.InvalidContinuationTokenException = { nil }

function asserts.AssertInvalidContinuationTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidContinuationTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidContinuationTokenException[k], "InvalidContinuationTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidContinuationTokenException
-- <p>The specified continuation token is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidContinuationTokenException structure as a key-value pair table
function M.InvalidContinuationTokenException(args)
	assert(args, "You must provdide an argument table when creating InvalidContinuationTokenException")
	local t = { 
	}
	asserts.AssertInvalidContinuationTokenException(t)
	return t
end

keys.EncryptionKeyNotFoundException = { nil }

function asserts.AssertEncryptionKeyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionKeyNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EncryptionKeyNotFoundException[k], "EncryptionKeyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionKeyNotFoundException
-- <p>No encryption key was found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EncryptionKeyNotFoundException structure as a key-value pair table
function M.EncryptionKeyNotFoundException(args)
	assert(args, "You must provdide an argument table when creating EncryptionKeyNotFoundException")
	local t = { 
	}
	asserts.AssertEncryptionKeyNotFoundException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetBlobOutput")
	local t = { 
		["content"] = args["content"],
	}
	asserts.AssertGetBlobOutput(t)
	return t
end

keys.RepositoryTriggerEventsListRequiredException = { nil }

function asserts.AssertRepositoryTriggerEventsListRequiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepositoryTriggerEventsListRequiredException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RepositoryTriggerEventsListRequiredException[k], "RepositoryTriggerEventsListRequiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepositoryTriggerEventsListRequiredException
-- <p>At least one event for the trigger is required but was not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RepositoryTriggerEventsListRequiredException structure as a key-value pair table
function M.RepositoryTriggerEventsListRequiredException(args)
	assert(args, "You must provdide an argument table when creating RepositoryTriggerEventsListRequiredException")
	local t = { 
	}
	asserts.AssertRepositoryTriggerEventsListRequiredException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating RepositoryTriggerExecutionFailure")
	local t = { 
		["trigger"] = args["trigger"],
		["failureMessage"] = args["failureMessage"],
	}
	asserts.AssertRepositoryTriggerExecutionFailure(t)
	return t
end

keys.InvalidRepositoryTriggerEventsException = { nil }

function asserts.AssertInvalidRepositoryTriggerEventsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerEventsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRepositoryTriggerEventsException[k], "InvalidRepositoryTriggerEventsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerEventsException
-- <p>One or more events specified for the trigger is not valid. Check to make sure that all events specified match the requirements for allowed events.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRepositoryTriggerEventsException structure as a key-value pair table
function M.InvalidRepositoryTriggerEventsException(args)
	assert(args, "You must provdide an argument table when creating InvalidRepositoryTriggerEventsException")
	local t = { 
	}
	asserts.AssertInvalidRepositoryTriggerEventsException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Difference")
	local t = { 
		["afterBlob"] = args["afterBlob"],
		["changeType"] = args["changeType"],
		["beforeBlob"] = args["beforeBlob"],
	}
	asserts.AssertDifference(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateRepositoryOutput")
	local t = { 
		["repositoryMetadata"] = args["repositoryMetadata"],
	}
	asserts.AssertCreateRepositoryOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating BatchGetRepositoriesInput")
	local t = { 
		["repositoryNames"] = args["repositoryNames"],
	}
	asserts.AssertBatchGetRepositoriesInput(t)
	return t
end

keys.InvalidRepositoryNameException = { nil }

function asserts.AssertInvalidRepositoryNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRepositoryNameException[k], "InvalidRepositoryNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryNameException
-- <p>At least one specified repository name is not valid.</p> <note> <p>This exception only occurs when a specified repository name is not valid. Other exceptions occur when a required repository parameter is missing, or when a specified repository does not exist.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRepositoryNameException structure as a key-value pair table
function M.InvalidRepositoryNameException(args)
	assert(args, "You must provdide an argument table when creating InvalidRepositoryNameException")
	local t = { 
	}
	asserts.AssertInvalidRepositoryNameException(t)
	return t
end

keys.BlobIdDoesNotExistException = { nil }

function asserts.AssertBlobIdDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlobIdDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BlobIdDoesNotExistException[k], "BlobIdDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlobIdDoesNotExistException
-- <p>The specified blob does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BlobIdDoesNotExistException structure as a key-value pair table
function M.BlobIdDoesNotExistException(args)
	assert(args, "You must provdide an argument table when creating BlobIdDoesNotExistException")
	local t = { 
	}
	asserts.AssertBlobIdDoesNotExistException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating BlobMetadata")
	local t = { 
		["path"] = args["path"],
		["blobId"] = args["blobId"],
		["mode"] = args["mode"],
	}
	asserts.AssertBlobMetadata(t)
	return t
end

keys.InvalidRepositoryTriggerRegionException = { nil }

function asserts.AssertInvalidRepositoryTriggerRegionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRepositoryTriggerRegionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRepositoryTriggerRegionException[k], "InvalidRepositoryTriggerRegionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRepositoryTriggerRegionException
-- <p>The region for the trigger target does not match the region for the repository. Triggers must be created in the same region as the target for the trigger.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRepositoryTriggerRegionException structure as a key-value pair table
function M.InvalidRepositoryTriggerRegionException(args)
	assert(args, "You must provdide an argument table when creating InvalidRepositoryTriggerRegionException")
	local t = { 
	}
	asserts.AssertInvalidRepositoryTriggerRegionException(t)
	return t
end

keys.CommitIdDoesNotExistException = { nil }

function asserts.AssertCommitIdDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommitIdDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CommitIdDoesNotExistException[k], "CommitIdDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommitIdDoesNotExistException
-- <p>The specified commit ID does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CommitIdDoesNotExistException structure as a key-value pair table
function M.CommitIdDoesNotExistException(args)
	assert(args, "You must provdide an argument table when creating CommitIdDoesNotExistException")
	local t = { 
	}
	asserts.AssertCommitIdDoesNotExistException(t)
	return t
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

function asserts.AssertObjectId(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectId to be of type 'string'")
end

--  
function M.ObjectId(str)
	asserts.AssertObjectId(str)
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

function asserts.AssertBranchName(str)
	assert(str)
	assert(type(str) == "string", "Expected BranchName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BranchName(str)
	asserts.AssertBranchName(str)
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

function asserts.AssertMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Mode to be of type 'string'")
end

--  
function M.Mode(str)
	asserts.AssertMode(str)
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

function asserts.AssertLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Limit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Limit(integer)
	asserts.AssertLimit(integer)
	return integer
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

function asserts.Assertblob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected blob to be of type 'string'")
end

function M.blob(blob)
	asserts.Assertblob(blob)
	return blob
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
-- @param cb Callback function accepting two args: response, error_message
function M.TestRepositoryTriggersAsync(TestRepositoryTriggersInput, cb)
	assert(TestRepositoryTriggersInput, "You must provide a TestRepositoryTriggersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.TestRepositoryTriggers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.TestRepositoryTriggersSync(TestRepositoryTriggersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestRepositoryTriggersAsync(TestRepositoryTriggersInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRepositoryTriggers asynchronously, invoking a callback when done
-- @param GetRepositoryTriggersInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetRepositoryTriggersAsync(GetRepositoryTriggersInput, cb)
	assert(GetRepositoryTriggersInput, "You must provide a GetRepositoryTriggersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetRepositoryTriggers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetRepositoryTriggersSync(GetRepositoryTriggersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRepositoryTriggersAsync(GetRepositoryTriggersInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRepository asynchronously, invoking a callback when done
-- @param DeleteRepositoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRepositoryAsync(DeleteRepositoryInput, cb)
	assert(DeleteRepositoryInput, "You must provide a DeleteRepositoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.DeleteRepository",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteRepositorySync(DeleteRepositoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRepositoryAsync(DeleteRepositoryInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRepositoryName asynchronously, invoking a callback when done
-- @param UpdateRepositoryNameInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRepositoryNameAsync(UpdateRepositoryNameInput, cb)
	assert(UpdateRepositoryNameInput, "You must provide a UpdateRepositoryNameInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdateRepositoryName",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateRepositoryNameSync(UpdateRepositoryNameInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRepositoryNameAsync(UpdateRepositoryNameInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRepositoryTriggers asynchronously, invoking a callback when done
-- @param PutRepositoryTriggersInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutRepositoryTriggersAsync(PutRepositoryTriggersInput, cb)
	assert(PutRepositoryTriggersInput, "You must provide a PutRepositoryTriggersInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.PutRepositoryTriggers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.PutRepositoryTriggersSync(PutRepositoryTriggersInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRepositoryTriggersAsync(PutRepositoryTriggersInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBranch asynchronously, invoking a callback when done
-- @param CreateBranchInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBranchAsync(CreateBranchInput, cb)
	assert(CreateBranchInput, "You must provide a CreateBranchInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.CreateBranch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateBranchSync(CreateBranchInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBranchAsync(CreateBranchInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRepositories asynchronously, invoking a callback when done
-- @param ListRepositoriesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListRepositoriesAsync(ListRepositoriesInput, cb)
	assert(ListRepositoriesInput, "You must provide a ListRepositoriesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.ListRepositories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListRepositoriesSync(ListRepositoriesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRepositoriesAsync(ListRepositoriesInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRepositoryDescription asynchronously, invoking a callback when done
-- @param UpdateRepositoryDescriptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRepositoryDescriptionAsync(UpdateRepositoryDescriptionInput, cb)
	assert(UpdateRepositoryDescriptionInput, "You must provide a UpdateRepositoryDescriptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdateRepositoryDescription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateRepositoryDescriptionSync(UpdateRepositoryDescriptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRepositoryDescriptionAsync(UpdateRepositoryDescriptionInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRepository asynchronously, invoking a callback when done
-- @param GetRepositoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetRepositoryAsync(GetRepositoryInput, cb)
	assert(GetRepositoryInput, "You must provide a GetRepositoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetRepository",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetRepositorySync(GetRepositoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRepositoryAsync(GetRepositoryInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDefaultBranch asynchronously, invoking a callback when done
-- @param UpdateDefaultBranchInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDefaultBranchAsync(UpdateDefaultBranchInput, cb)
	assert(UpdateDefaultBranchInput, "You must provide a UpdateDefaultBranchInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.UpdateDefaultBranch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateDefaultBranchSync(UpdateDefaultBranchInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDefaultBranchAsync(UpdateDefaultBranchInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetRepositories asynchronously, invoking a callback when done
-- @param BatchGetRepositoriesInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetRepositoriesAsync(BatchGetRepositoriesInput, cb)
	assert(BatchGetRepositoriesInput, "You must provide a BatchGetRepositoriesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.BatchGetRepositories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.BatchGetRepositoriesSync(BatchGetRepositoriesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetRepositoriesAsync(BatchGetRepositoriesInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListBranches asynchronously, invoking a callback when done
-- @param ListBranchesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListBranchesAsync(ListBranchesInput, cb)
	assert(ListBranchesInput, "You must provide a ListBranchesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.ListBranches",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListBranchesSync(ListBranchesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListBranchesAsync(ListBranchesInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBlob asynchronously, invoking a callback when done
-- @param GetBlobInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetBlobAsync(GetBlobInput, cb)
	assert(GetBlobInput, "You must provide a GetBlobInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetBlob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetBlobSync(GetBlobInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBlobAsync(GetBlobInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBranch asynchronously, invoking a callback when done
-- @param GetBranchInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetBranchAsync(GetBranchInput, cb)
	assert(GetBranchInput, "You must provide a GetBranchInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetBranch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetBranchSync(GetBranchInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBranchAsync(GetBranchInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRepository asynchronously, invoking a callback when done
-- @param CreateRepositoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRepositoryAsync(CreateRepositoryInput, cb)
	assert(CreateRepositoryInput, "You must provide a CreateRepositoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.CreateRepository",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateRepositorySync(CreateRepositoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRepositoryAsync(CreateRepositoryInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCommit asynchronously, invoking a callback when done
-- @param GetCommitInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetCommitAsync(GetCommitInput, cb)
	assert(GetCommitInput, "You must provide a GetCommitInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetCommit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetCommitSync(GetCommitInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCommitAsync(GetCommitInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDifferences asynchronously, invoking a callback when done
-- @param GetDifferencesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetDifferencesAsync(GetDifferencesInput, cb)
	assert(GetDifferencesInput, "You must provide a GetDifferencesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeCommit_20150413.GetDifferences",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetDifferencesSync(GetDifferencesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDifferencesAsync(GetDifferencesInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
