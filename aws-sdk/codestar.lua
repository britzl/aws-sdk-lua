--- GENERATED CODE - DO NOT MODIFY
-- AWS CodeStar (codestar-2017-04-19)

local M = {}

M.metadata = {
	api_version = "2017-04-19",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "codestar",
	service_abbreviation = "CodeStar",
	service_full_name = "AWS CodeStar",
	signature_version = "v4",
	target_prefix = "CodeStar_20170419",
	timestamp_format = "",
	global_endpoint = "",
	uid = "codestar-2017-04-19",
}

local keys = {}
local asserts = {}

keys.DeleteProjectRequest = { ["deleteStack"] = true, ["id"] = true, ["clientRequestToken"] = true, nil }

function asserts.AssertDeleteProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["deleteStack"] then asserts.AssertDeleteStack(struct["deleteStack"]) end
	if struct["id"] then asserts.AssertProjectId(struct["id"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProjectRequest[k], "DeleteProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deleteStack [DeleteStack] <p>Whether to send a delete request for the primary stack in AWS CloudFormation originally used to generate the project and its resources. This option will delete all AWS resources for the project (except for any buckets in Amazon S3) as well as deleting the project itself. Recommended for most use cases.</p>
-- * id [ProjectId] <p>The ID of the project to be deleted in AWS CodeStar.</p>
-- * clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested project deletion. This token can be used to repeat the request. </p>
-- Required key: id
-- @return DeleteProjectRequest structure as a key-value pair table
function M.DeleteProjectRequest(args)
	assert(args, "You must provide an argument table when creating DeleteProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deleteStack"] = args["deleteStack"],
		["id"] = args["id"],
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertDeleteProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CodeDestination = { ["gitHub"] = true, ["codeCommit"] = true, nil }

function asserts.AssertCodeDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeDestination to be of type 'table'")
	if struct["gitHub"] then asserts.AssertGitHubCodeDestination(struct["gitHub"]) end
	if struct["codeCommit"] then asserts.AssertCodeCommitCodeDestination(struct["codeCommit"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeDestination[k], "CodeDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeDestination
-- <p>The repository to be created in AWS CodeStar. Valid values are AWS CodeCommit or GitHub. After AWS CodeStar provisions the new repository, the source code files provided with the project request are placed in the repository.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * gitHub [GitHubCodeDestination] <p>Information about the GitHub repository to be created in AWS CodeStar. This is where the source code files provided with the project request will be uploaded after project creation.</p>
-- * codeCommit [CodeCommitCodeDestination] <p>Information about the AWS CodeCommit repository to be created in AWS CodeStar. This is where the source code files provided with the project request will be uploaded after project creation.</p>
-- @return CodeDestination structure as a key-value pair table
function M.CodeDestination(args)
	assert(args, "You must provide an argument table when creating CodeDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["gitHub"] = args["gitHub"],
		["codeCommit"] = args["codeCommit"],
	}
	asserts.AssertCodeDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProjectResult = { ["stackId"] = true, ["status"] = true, ["projectTemplateId"] = true, ["description"] = true, ["createdTimeStamp"] = true, ["clientRequestToken"] = true, ["id"] = true, ["arn"] = true, ["name"] = true, nil }

function asserts.AssertDescribeProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProjectResult to be of type 'table'")
	if struct["stackId"] then asserts.AssertStackId(struct["stackId"]) end
	if struct["status"] then asserts.AssertProjectStatus(struct["status"]) end
	if struct["projectTemplateId"] then asserts.AssertProjectTemplateId(struct["projectTemplateId"]) end
	if struct["description"] then asserts.AssertProjectDescription(struct["description"]) end
	if struct["createdTimeStamp"] then asserts.AssertCreatedTimestamp(struct["createdTimeStamp"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["id"] then asserts.AssertProjectId(struct["id"]) end
	if struct["arn"] then asserts.AssertProjectArn(struct["arn"]) end
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProjectResult[k], "DescribeProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProjectResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stackId [StackId] <p>The ID of the primary stack in AWS CloudFormation used to generate resources for the project.</p>
-- * status [ProjectStatus] <p>The project creation or deletion status.</p>
-- * projectTemplateId [ProjectTemplateId] <p>The ID for the AWS CodeStar project template used to create the project.</p>
-- * description [ProjectDescription] <p>The description of the project, if any.</p>
-- * createdTimeStamp [CreatedTimestamp] <p>The date and time the project was created, in timestamp format.</p>
-- * clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested project creation. </p>
-- * id [ProjectId] <p>The ID of the project.</p>
-- * arn [ProjectArn] <p>The Amazon Resource Name (ARN) for the project.</p>
-- * name [ProjectName] <p>The display name for the project.</p>
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
		["stackId"] = args["stackId"],
		["status"] = args["status"],
		["projectTemplateId"] = args["projectTemplateId"],
		["description"] = args["description"],
		["createdTimeStamp"] = args["createdTimeStamp"],
		["clientRequestToken"] = args["clientRequestToken"],
		["id"] = args["id"],
		["arn"] = args["arn"],
		["name"] = args["name"],
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
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProjectsRequest[k], "ListProjectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>The continuation token to be used to return the next set of results, if the results cannot be returned in one response.</p>
-- * maxResults [MaxResults] <p>The maximum amount of data that can be contained in a single set of results.</p>
-- @return ListProjectsRequest structure as a key-value pair table
function M.ListProjectsRequest(args)
	assert(args, "You must provide an argument table when creating ListProjectsRequest")
    local query_args = { 
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

keys.UserProfileSummary = { ["emailAddress"] = true, ["sshPublicKey"] = true, ["displayName"] = true, ["userArn"] = true, nil }

function asserts.AssertUserProfileSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserProfileSummary to be of type 'table'")
	if struct["emailAddress"] then asserts.AssertEmail(struct["emailAddress"]) end
	if struct["sshPublicKey"] then asserts.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["displayName"] then asserts.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserProfileSummary[k], "UserProfileSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserProfileSummary
-- <p>Information about a user's profile in AWS CodeStar.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * emailAddress [Email] <p>The email address associated with the user.</p>
-- * sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>
-- * displayName [UserProfileDisplayName] <p>The display name of a user in AWS CodeStar. For example, this could be set to both first and last name ("Mary Major") or a single name ("Mary"). The display name is also used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the display name, the first character that appears after the space will be used as the second character in the user initial icon. The initial icon displays a maximum of two characters, so a display name with more than one space (for example "Mary Jane Major") would generate an initial icon using the first character and the first character after the space ("MJ", not "MM").</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- @return UserProfileSummary structure as a key-value pair table
function M.UserProfileSummary(args)
	assert(args, "You must provide an argument table when creating UserProfileSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["emailAddress"] = args["emailAddress"],
		["sshPublicKey"] = args["sshPublicKey"],
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertUserProfileSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProjectRequest = { ["description"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertUpdateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["description"] then asserts.AssertProjectDescription(struct["description"]) end
	if struct["id"] then asserts.AssertProjectId(struct["id"]) end
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectRequest[k], "UpdateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [ProjectDescription] <p>The description of the project, if any.</p>
-- * id [ProjectId] <p>The ID of the project you want to update.</p>
-- * name [ProjectName] <p>The name of the project you want to update.</p>
-- Required key: id
-- @return UpdateProjectRequest structure as a key-value pair table
function M.UpdateProjectRequest(args)
	assert(args, "You must provide an argument table when creating UpdateProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["description"] = args["description"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertUpdateProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagProjectRequest = { ["id"] = true, ["tags"] = true, nil }

function asserts.AssertTagProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagProjectRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["id"] then asserts.AssertProjectId(struct["id"]) end
	if struct["tags"] then asserts.AssertTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagProjectRequest[k], "TagProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * id [ProjectId] <p>The ID of the project you want to add a tag to.</p>
-- * tags [Tags] <p>The tags you want to add to the project.</p>
-- Required key: id
-- Required key: tags
-- @return TagProjectRequest structure as a key-value pair table
function M.TagProjectRequest(args)
	assert(args, "You must provide an argument table when creating TagProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["id"] = args["id"],
		["tags"] = args["tags"],
	}
	asserts.AssertTagProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUserProfilesRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListUserProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserProfilesRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserProfilesRequest[k], "ListUserProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserProfilesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return in a response.</p>
-- @return ListUserProfilesRequest structure as a key-value pair table
function M.ListUserProfilesRequest(args)
	assert(args, "You must provide an argument table when creating ListUserProfilesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListUserProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Code = { ["source"] = true, ["destination"] = true, nil }

function asserts.AssertCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Code to be of type 'table'")
	assert(struct["source"], "Expected key source to exist in table")
	assert(struct["destination"], "Expected key destination to exist in table")
	if struct["source"] then asserts.AssertCodeSource(struct["source"]) end
	if struct["destination"] then asserts.AssertCodeDestination(struct["destination"]) end
	for k,_ in pairs(struct) do
		assert(keys.Code[k], "Code contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Code
-- <p>Location and destination information about the source code files provided with the project request. The source code is uploaded to the new project source repository after project creation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * source [CodeSource] <p>The location where the source code files provided with the project request are stored. AWS CodeStar retrieves the files during project creation.</p>
-- * destination [CodeDestination] <p>The repository to be created in AWS CodeStar. Valid values are AWS CodeCommit or GitHub. After AWS CodeStar provisions the new repository, the source code files provided with the project request are placed in the repository.</p>
-- Required key: source
-- Required key: destination
-- @return Code structure as a key-value pair table
function M.Code(args)
	assert(args, "You must provide an argument table when creating Code")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["source"] = args["source"],
		["destination"] = args["destination"],
	}
	asserts.AssertCode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserProfileResult = { ["displayName"] = true, ["userArn"] = true, ["sshPublicKey"] = true, ["createdTimestamp"] = true, ["emailAddress"] = true, ["lastModifiedTimestamp"] = true, nil }

function asserts.AssertDescribeUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserProfileResult to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	assert(struct["createdTimestamp"], "Expected key createdTimestamp to exist in table")
	assert(struct["lastModifiedTimestamp"], "Expected key lastModifiedTimestamp to exist in table")
	if struct["displayName"] then asserts.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	if struct["sshPublicKey"] then asserts.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["createdTimestamp"] then asserts.AssertCreatedTimestamp(struct["createdTimestamp"]) end
	if struct["emailAddress"] then asserts.AssertEmail(struct["emailAddress"]) end
	if struct["lastModifiedTimestamp"] then asserts.AssertLastModifiedTimestamp(struct["lastModifiedTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserProfileResult[k], "DescribeUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * displayName [UserProfileDisplayName] <p>The display name shown for the user in AWS CodeStar projects. For example, this could be set to both first and last name ("Mary Major") or a single name ("Mary"). The display name is also used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the display name, the first character that appears after the space will be used as the second character in the user initial icon. The initial icon displays a maximum of two characters, so a display name with more than one space (for example "Mary Jane Major") would generate an initial icon using the first character and the first character after the space ("MJ", not "MM").</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user.</p>
-- * sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user. This SSH public key is associated with the user profile, and can be used in conjunction with the associated private key for access to project resources, such as Amazon EC2 instances, if a project owner grants remote access to those resources.</p>
-- * createdTimestamp [CreatedTimestamp] <p>The date and time when the user profile was created in AWS CodeStar, in timestamp format.</p>
-- * emailAddress [Email] <p>The email address for the user. Optional.</p>
-- * lastModifiedTimestamp [LastModifiedTimestamp] <p>The date and time when the user profile was last modified, in timestamp format.</p>
-- Required key: userArn
-- Required key: createdTimestamp
-- Required key: lastModifiedTimestamp
-- @return DescribeUserProfileResult structure as a key-value pair table
function M.DescribeUserProfileResult(args)
	assert(args, "You must provide an argument table when creating DescribeUserProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
		["sshPublicKey"] = args["sshPublicKey"],
		["createdTimestamp"] = args["createdTimestamp"],
		["emailAddress"] = args["emailAddress"],
		["lastModifiedTimestamp"] = args["lastModifiedTimestamp"],
	}
	asserts.AssertDescribeUserProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUserProfilesResult = { ["nextToken"] = true, ["userProfiles"] = true, nil }

function asserts.AssertListUserProfilesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserProfilesResult to be of type 'table'")
	assert(struct["userProfiles"], "Expected key userProfiles to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["userProfiles"] then asserts.AssertUserProfilesList(struct["userProfiles"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserProfilesResult[k], "ListUserProfilesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserProfilesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- * userProfiles [UserProfilesList] <p>All the user profiles configured in AWS CodeStar for an AWS account.</p>
-- Required key: userProfiles
-- @return ListUserProfilesResult structure as a key-value pair table
function M.ListUserProfilesResult(args)
	assert(args, "You must provide an argument table when creating ListUserProfilesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["userProfiles"] = args["userProfiles"],
	}
	asserts.AssertListUserProfilesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateTeamMemberRequest = { ["projectId"] = true, ["userArn"] = true, nil }

function asserts.AssertDisassociateTeamMemberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateTeamMemberRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateTeamMemberRequest[k], "DisassociateTeamMemberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateTeamMemberRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectId [ProjectId] <p>The ID of the AWS CodeStar project from which you want to remove a team member.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the IAM user or group whom you want to remove from the project.</p>
-- Required key: projectId
-- Required key: userArn
-- @return DisassociateTeamMemberRequest structure as a key-value pair table
function M.DisassociateTeamMemberRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateTeamMemberRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectId"] = args["projectId"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertDisassociateTeamMemberRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProjectRequest = { ["toolchain"] = true, ["description"] = true, ["tags"] = true, ["clientRequestToken"] = true, ["sourceCode"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertCreateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["toolchain"] then asserts.AssertToolchain(struct["toolchain"]) end
	if struct["description"] then asserts.AssertProjectDescription(struct["description"]) end
	if struct["tags"] then asserts.AssertTags(struct["tags"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["sourceCode"] then asserts.AssertSourceCode(struct["sourceCode"]) end
	if struct["id"] then asserts.AssertProjectId(struct["id"]) end
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectRequest[k], "CreateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * toolchain [Toolchain] <p>The name of the toolchain template file submitted with the project request. If this parameter is specified, the request must also include the sourceCode parameter.</p>
-- * description [ProjectDescription] <p>The description of the project, if any.</p>
-- * tags [Tags] <p>The tags created for the project.</p>
-- * clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested project creation. This token can be used to repeat the request.</p>
-- * sourceCode [SourceCode] <p>A list of the Code objects submitted with the project request. If this parameter is specified, the request must also include the toolchain parameter.</p>
-- * id [ProjectId] <p>The ID of the project to be created in AWS CodeStar.</p>
-- * name [ProjectName] <p>The display name for the project to be created in AWS CodeStar.</p>
-- Required key: name
-- Required key: id
-- @return CreateProjectRequest structure as a key-value pair table
function M.CreateProjectRequest(args)
	assert(args, "You must provide an argument table when creating CreateProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["toolchain"] = args["toolchain"],
		["description"] = args["description"],
		["tags"] = args["tags"],
		["clientRequestToken"] = args["clientRequestToken"],
		["sourceCode"] = args["sourceCode"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertCreateProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTeamMembersRequest = { ["projectId"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListTeamMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTeamMembersRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTeamMembersRequest[k], "ListTeamMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTeamMembersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectId [ProjectId] <p>The ID of the project for which you want to list team members.</p>
-- * nextToken [PaginationToken] <p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>
-- * maxResults [MaxResults] <p>The maximum number of team members you want returned in a response.</p>
-- Required key: projectId
-- @return ListTeamMembersRequest structure as a key-value pair table
function M.ListTeamMembersRequest(args)
	assert(args, "You must provide an argument table when creating ListTeamMembersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectId"] = args["projectId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListTeamMembersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TeamMember = { ["projectRole"] = true, ["remoteAccessAllowed"] = true, ["userArn"] = true, nil }

function asserts.AssertTeamMember(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TeamMember to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	assert(struct["projectRole"], "Expected key projectRole to exist in table")
	if struct["projectRole"] then asserts.AssertRole(struct["projectRole"]) end
	if struct["remoteAccessAllowed"] then asserts.AssertRemoteAccessAllowed(struct["remoteAccessAllowed"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.TeamMember[k], "TeamMember contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TeamMember
-- <p>Information about a team member in a project.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectRole [Role] <p>The role assigned to the user in the project. Project roles have different levels of access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with Teams</a> in the <i>AWS CodeStar User Guide</i>. </p>
-- * remoteAccessAllowed [RemoteAccessAllowed] <p>Whether the user is allowed to remotely access project resources using an SSH public/private key pair.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- Required key: userArn
-- Required key: projectRole
-- @return TeamMember structure as a key-value pair table
function M.TeamMember(args)
	assert(args, "You must provide an argument table when creating TeamMember")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectRole"] = args["projectRole"],
		["remoteAccessAllowed"] = args["remoteAccessAllowed"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertTeamMember(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserProfileResult = { ["displayName"] = true, ["userArn"] = true, ["sshPublicKey"] = true, ["createdTimestamp"] = true, ["emailAddress"] = true, ["lastModifiedTimestamp"] = true, nil }

function asserts.AssertCreateUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserProfileResult to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["displayName"] then asserts.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	if struct["sshPublicKey"] then asserts.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["createdTimestamp"] then asserts.AssertCreatedTimestamp(struct["createdTimestamp"]) end
	if struct["emailAddress"] then asserts.AssertEmail(struct["emailAddress"]) end
	if struct["lastModifiedTimestamp"] then asserts.AssertLastModifiedTimestamp(struct["lastModifiedTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserProfileResult[k], "CreateUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * displayName [UserProfileDisplayName] <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- * sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.</p>
-- * createdTimestamp [CreatedTimestamp] <p>The date the user profile was created, in timestamp format.</p>
-- * emailAddress [Email] <p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>
-- * lastModifiedTimestamp [LastModifiedTimestamp] <p>The date the user profile was last modified, in timestamp format.</p>
-- Required key: userArn
-- @return CreateUserProfileResult structure as a key-value pair table
function M.CreateUserProfileResult(args)
	assert(args, "You must provide an argument table when creating CreateUserProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
		["sshPublicKey"] = args["sshPublicKey"],
		["createdTimestamp"] = args["createdTimestamp"],
		["emailAddress"] = args["emailAddress"],
		["lastModifiedTimestamp"] = args["lastModifiedTimestamp"],
	}
	asserts.AssertCreateUserProfileResult(all_args)
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
	assert(struct["projects"], "Expected key projects to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["projects"] then asserts.AssertProjectsList(struct["projects"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProjectsResult[k], "ListProjectsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- * projects [ProjectsList] <p>A list of projects.</p>
-- Required key: projects
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

keys.ListResourcesResult = { ["nextToken"] = true, ["resources"] = true, nil }

function asserts.AssertListResourcesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["resources"] then asserts.AssertResourcesResult(struct["resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourcesResult[k], "ListResourcesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- * resources [ResourcesResult] <p>An array of resources associated with the project. </p>
-- @return ListResourcesResult structure as a key-value pair table
function M.ListResourcesResult(args)
	assert(args, "You must provide an argument table when creating ListResourcesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["resources"] = args["resources"],
	}
	asserts.AssertListResourcesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserProfileResult = { ["userArn"] = true, nil }

function asserts.AssertDeleteUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserProfileResult to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserProfileResult[k], "DeleteUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user deleted from AWS CodeStar.</p>
-- Required key: userArn
-- @return DeleteUserProfileResult structure as a key-value pair table
function M.DeleteUserProfileResult(args)
	assert(args, "You must provide an argument table when creating DeleteUserProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["userArn"] = args["userArn"],
	}
	asserts.AssertDeleteUserProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserProfileRequest = { ["userArn"] = true, nil }

function asserts.AssertDescribeUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserProfileRequest to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserProfileRequest[k], "DescribeUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user.</p>
-- Required key: userArn
-- @return DescribeUserProfileRequest structure as a key-value pair table
function M.DescribeUserProfileRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["userArn"] = args["userArn"],
	}
	asserts.AssertDescribeUserProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProjectResult = { ["projectTemplateId"] = true, ["id"] = true, ["arn"] = true, ["clientRequestToken"] = true, nil }

function asserts.AssertCreateProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectResult to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["projectTemplateId"] then asserts.AssertProjectTemplateId(struct["projectTemplateId"]) end
	if struct["id"] then asserts.AssertProjectId(struct["id"]) end
	if struct["arn"] then asserts.AssertProjectArn(struct["arn"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectResult[k], "CreateProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectTemplateId [ProjectTemplateId] <p>Reserved for future use.</p>
-- * id [ProjectId] <p>The ID of the project.</p>
-- * arn [ProjectArn] <p>The Amazon Resource Name (ARN) of the created project.</p>
-- * clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested project creation.</p>
-- Required key: id
-- Required key: arn
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
		["projectTemplateId"] = args["projectTemplateId"],
		["id"] = args["id"],
		["arn"] = args["arn"],
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertCreateProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GitHubCodeDestination = { ["name"] = true, ["token"] = true, ["privateRepository"] = true, ["owner"] = true, ["type"] = true, ["issuesEnabled"] = true, ["description"] = true, nil }

function asserts.AssertGitHubCodeDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GitHubCodeDestination to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["owner"], "Expected key owner to exist in table")
	assert(struct["privateRepository"], "Expected key privateRepository to exist in table")
	assert(struct["issuesEnabled"], "Expected key issuesEnabled to exist in table")
	assert(struct["token"], "Expected key token to exist in table")
	if struct["name"] then asserts.AssertRepositoryName(struct["name"]) end
	if struct["token"] then asserts.AssertGitHubPersonalToken(struct["token"]) end
	if struct["privateRepository"] then asserts.AssertRepositoryIsPrivate(struct["privateRepository"]) end
	if struct["owner"] then asserts.AssertRepositoryOwner(struct["owner"]) end
	if struct["type"] then asserts.AssertRepositoryType(struct["type"]) end
	if struct["issuesEnabled"] then asserts.AssertRepositoryEnableIssues(struct["issuesEnabled"]) end
	if struct["description"] then asserts.AssertRepositoryDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.GitHubCodeDestination[k], "GitHubCodeDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GitHubCodeDestination
-- <p>Information about the GitHub repository to be created in AWS CodeStar. This is where the source code files provided with the project request will be uploaded after project creation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [RepositoryName] <p>Name of the GitHub repository to be created in AWS CodeStar.</p>
-- * token [GitHubPersonalToken] <p>The GitHub user's personal access token for the GitHub repository.</p>
-- * privateRepository [RepositoryIsPrivate] <p>Whether the GitHub repository is to be a private repository.</p>
-- * owner [RepositoryOwner] <p>The GitHub username for the owner of the GitHub repository to be created in AWS CodeStar. If this repository should be owned by a GitHub organization, provide its name.</p>
-- * type [RepositoryType] <p>The type of GitHub repository to be created in AWS CodeStar. Valid values are User or Organization.</p>
-- * issuesEnabled [RepositoryEnableIssues] <p>Whether to enable issues for the GitHub repository.</p>
-- * description [RepositoryDescription] <p>Description for the GitHub repository to be created in AWS CodeStar. This description displays in GitHub after the repository is created.</p>
-- Required key: name
-- Required key: type
-- Required key: owner
-- Required key: privateRepository
-- Required key: issuesEnabled
-- Required key: token
-- @return GitHubCodeDestination structure as a key-value pair table
function M.GitHubCodeDestination(args)
	assert(args, "You must provide an argument table when creating GitHubCodeDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["token"] = args["token"],
		["privateRepository"] = args["privateRepository"],
		["owner"] = args["owner"],
		["type"] = args["type"],
		["issuesEnabled"] = args["issuesEnabled"],
		["description"] = args["description"],
	}
	asserts.AssertGitHubCodeDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CodeCommitCodeDestination = { ["name"] = true, nil }

function asserts.AssertCodeCommitCodeDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeCommitCodeDestination to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertRepositoryName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeCommitCodeDestination[k], "CodeCommitCodeDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeCommitCodeDestination
-- <p>Information about the AWS CodeCommit repository to be created in AWS CodeStar. This is where the source code files provided with the project request will be uploaded after project creation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [RepositoryName] <p>The name of the AWS CodeCommit repository to be created in AWS CodeStar.</p>
-- Required key: name
-- @return CodeCommitCodeDestination structure as a key-value pair table
function M.CodeCommitCodeDestination(args)
	assert(args, "You must provide an argument table when creating CodeCommitCodeDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertCodeCommitCodeDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Resource = { ["id"] = true, nil }

function asserts.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["id"] then asserts.AssertResourceId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Resource[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- <p>Information about a resource for a project.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * id [ResourceId] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- Required key: id
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
		["id"] = args["id"],
	}
	asserts.AssertResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateTeamMemberResult = { ["clientRequestToken"] = true, nil }

function asserts.AssertAssociateTeamMemberResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateTeamMemberResult to be of type 'table'")
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateTeamMemberResult[k], "AssociateTeamMemberResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateTeamMemberResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientRequestToken [ClientRequestToken] <p>The user- or system-generated token from the initial request that can be used to repeat the request.</p>
-- @return AssociateTeamMemberResult structure as a key-value pair table
function M.AssociateTeamMemberResult(args)
	assert(args, "You must provide an argument table when creating AssociateTeamMemberResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertAssociateTeamMemberResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CodeSource = { ["s3"] = true, nil }

function asserts.AssertCodeSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeSource to be of type 'table'")
	assert(struct["s3"], "Expected key s3 to exist in table")
	if struct["s3"] then asserts.AssertS3Location(struct["s3"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeSource[k], "CodeSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeSource
-- <p>The location where the source code files provided with the project request are stored. AWS CodeStar retrieves the files during project creation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * s3 [S3Location] <p>Information about the Amazon S3 location where the source code files provided with the project request are stored. </p>
-- Required key: s3
-- @return CodeSource structure as a key-value pair table
function M.CodeSource(args)
	assert(args, "You must provide an argument table when creating CodeSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["s3"] = args["s3"],
	}
	asserts.AssertCodeSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForProjectResult = { ["nextToken"] = true, ["tags"] = true, nil }

function asserts.AssertListTagsForProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForProjectResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["tags"] then asserts.AssertTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForProjectResult[k], "ListTagsForProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForProjectResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>Reserved for future use.</p>
-- * tags [Tags] <p>The tags for the project.</p>
-- @return ListTagsForProjectResult structure as a key-value pair table
function M.ListTagsForProjectResult(args)
	assert(args, "You must provide an argument table when creating ListTagsForProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["tags"] = args["tags"],
	}
	asserts.AssertListTagsForProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserProfileResult = { ["displayName"] = true, ["userArn"] = true, ["sshPublicKey"] = true, ["createdTimestamp"] = true, ["emailAddress"] = true, ["lastModifiedTimestamp"] = true, nil }

function asserts.AssertUpdateUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserProfileResult to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["displayName"] then asserts.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	if struct["sshPublicKey"] then asserts.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["createdTimestamp"] then asserts.AssertCreatedTimestamp(struct["createdTimestamp"]) end
	if struct["emailAddress"] then asserts.AssertEmail(struct["emailAddress"]) end
	if struct["lastModifiedTimestamp"] then asserts.AssertLastModifiedTimestamp(struct["lastModifiedTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserProfileResult[k], "UpdateUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * displayName [UserProfileDisplayName] <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- * sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.</p>
-- * createdTimestamp [CreatedTimestamp] <p>The date the user profile was created, in timestamp format.</p>
-- * emailAddress [Email] <p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>
-- * lastModifiedTimestamp [LastModifiedTimestamp] <p>The date the user profile was last modified, in timestamp format.</p>
-- Required key: userArn
-- @return UpdateUserProfileResult structure as a key-value pair table
function M.UpdateUserProfileResult(args)
	assert(args, "You must provide an argument table when creating UpdateUserProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
		["sshPublicKey"] = args["sshPublicKey"],
		["createdTimestamp"] = args["createdTimestamp"],
		["emailAddress"] = args["emailAddress"],
		["lastModifiedTimestamp"] = args["lastModifiedTimestamp"],
	}
	asserts.AssertUpdateUserProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTeamMemberRequest = { ["projectRole"] = true, ["projectId"] = true, ["remoteAccessAllowed"] = true, ["userArn"] = true, nil }

function asserts.AssertUpdateTeamMemberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTeamMemberRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["projectRole"] then asserts.AssertRole(struct["projectRole"]) end
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["remoteAccessAllowed"] then asserts.AssertRemoteAccessAllowed(struct["remoteAccessAllowed"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTeamMemberRequest[k], "UpdateTeamMemberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTeamMemberRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectRole [Role] <p>The role assigned to the user in the project. Project roles have different levels of access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with Teams</a> in the <i>AWS CodeStar User Guide</i>.</p>
-- * projectId [ProjectId] <p>The ID of the project.</p>
-- * remoteAccessAllowed [RemoteAccessAllowed] <p>Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile. Even if this is set to True, the user must associate a public key with their profile before the user can access resources.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user for whom you want to change team membership attributes.</p>
-- Required key: projectId
-- Required key: userArn
-- @return UpdateTeamMemberRequest structure as a key-value pair table
function M.UpdateTeamMemberRequest(args)
	assert(args, "You must provide an argument table when creating UpdateTeamMemberRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectRole"] = args["projectRole"],
		["projectId"] = args["projectId"],
		["remoteAccessAllowed"] = args["remoteAccessAllowed"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertUpdateTeamMemberRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTeamMemberResult = { ["projectRole"] = true, ["remoteAccessAllowed"] = true, ["userArn"] = true, nil }

function asserts.AssertUpdateTeamMemberResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTeamMemberResult to be of type 'table'")
	if struct["projectRole"] then asserts.AssertRole(struct["projectRole"]) end
	if struct["remoteAccessAllowed"] then asserts.AssertRemoteAccessAllowed(struct["remoteAccessAllowed"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTeamMemberResult[k], "UpdateTeamMemberResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTeamMemberResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectRole [Role] <p>The project role granted to the user.</p>
-- * remoteAccessAllowed [RemoteAccessAllowed] <p>Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user whose team membership attributes were updated.</p>
-- @return UpdateTeamMemberResult structure as a key-value pair table
function M.UpdateTeamMemberResult(args)
	assert(args, "You must provide an argument table when creating UpdateTeamMemberResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectRole"] = args["projectRole"],
		["remoteAccessAllowed"] = args["remoteAccessAllowed"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertUpdateTeamMemberResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTeamMembersResult = { ["nextToken"] = true, ["teamMembers"] = true, nil }

function asserts.AssertListTeamMembersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTeamMembersResult to be of type 'table'")
	assert(struct["teamMembers"], "Expected key teamMembers to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["teamMembers"] then asserts.AssertTeamMemberResult(struct["teamMembers"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTeamMembersResult[k], "ListTeamMembersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTeamMembersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- * teamMembers [TeamMemberResult] <p>A list of team member objects for the project.</p>
-- Required key: teamMembers
-- @return ListTeamMembersResult structure as a key-value pair table
function M.ListTeamMembersResult(args)
	assert(args, "You must provide an argument table when creating ListTeamMembersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["teamMembers"] = args["teamMembers"],
	}
	asserts.AssertListTeamMembersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateTeamMemberResult = { nil }

function asserts.AssertDisassociateTeamMemberResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateTeamMemberResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateTeamMemberResult[k], "DisassociateTeamMemberResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateTeamMemberResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateTeamMemberResult structure as a key-value pair table
function M.DisassociateTeamMemberResult(args)
	assert(args, "You must provide an argument table when creating DisassociateTeamMemberResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateTeamMemberResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectStatus = { ["state"] = true, ["reason"] = true, nil }

function asserts.AssertProjectStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectStatus to be of type 'table'")
	assert(struct["state"], "Expected key state to exist in table")
	if struct["state"] then asserts.AssertState(struct["state"]) end
	if struct["reason"] then asserts.AssertReason(struct["reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectStatus[k], "ProjectStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectStatus
-- <p>An indication of whether a project creation or deletion is failed or successful.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * state [State] <p>The phase of completion for a project creation or deletion.</p>
-- * reason [Reason] <p>In the case of a project creation or deletion failure, a reason for the failure.</p>
-- Required key: state
-- @return ProjectStatus structure as a key-value pair table
function M.ProjectStatus(args)
	assert(args, "You must provide an argument table when creating ProjectStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["state"] = args["state"],
		["reason"] = args["reason"],
	}
	asserts.AssertProjectStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateTeamMemberRequest = { ["projectRole"] = true, ["projectId"] = true, ["remoteAccessAllowed"] = true, ["clientRequestToken"] = true, ["userArn"] = true, nil }

function asserts.AssertAssociateTeamMemberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateTeamMemberRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	assert(struct["projectRole"], "Expected key projectRole to exist in table")
	if struct["projectRole"] then asserts.AssertRole(struct["projectRole"]) end
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["remoteAccessAllowed"] then asserts.AssertRemoteAccessAllowed(struct["remoteAccessAllowed"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateTeamMemberRequest[k], "AssociateTeamMemberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateTeamMemberRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectRole [Role] <p>The AWS CodeStar project role that will apply to this user. This role determines what actions a user can take in an AWS CodeStar project.</p>
-- * projectId [ProjectId] <p>The ID of the project to which you will add the IAM user.</p>
-- * remoteAccessAllowed [RemoteAccessAllowed] <p>Whether the team member is allowed to use an SSH public/private key pair to remotely access project resources, for example Amazon EC2 instances.</p>
-- * clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested the team member association to the project. This token can be used to repeat the request.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) for the IAM user you want to add to the AWS CodeStar project.</p>
-- Required key: projectId
-- Required key: userArn
-- Required key: projectRole
-- @return AssociateTeamMemberRequest structure as a key-value pair table
function M.AssociateTeamMemberRequest(args)
	assert(args, "You must provide an argument table when creating AssociateTeamMemberRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectRole"] = args["projectRole"],
		["projectId"] = args["projectId"],
		["remoteAccessAllowed"] = args["remoteAccessAllowed"],
		["clientRequestToken"] = args["clientRequestToken"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertAssociateTeamMemberRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserProfileRequest = { ["userArn"] = true, nil }

function asserts.AssertDeleteUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserProfileRequest to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserProfileRequest[k], "DeleteUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user to delete from AWS CodeStar.</p>
-- Required key: userArn
-- @return DeleteUserProfileRequest structure as a key-value pair table
function M.DeleteUserProfileRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["userArn"] = args["userArn"],
	}
	asserts.AssertDeleteUserProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProjectResult = { ["stackId"] = true, ["projectArn"] = true, nil }

function asserts.AssertDeleteProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectResult to be of type 'table'")
	if struct["stackId"] then asserts.AssertStackId(struct["stackId"]) end
	if struct["projectArn"] then asserts.AssertProjectArn(struct["projectArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProjectResult[k], "DeleteProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stackId [StackId] <p>The ID of the primary stack in AWS CloudFormation that will be deleted as part of deleting the project and its resources.</p>
-- * projectArn [ProjectArn] <p>The Amazon Resource Name (ARN) of the deleted project.</p>
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
		["stackId"] = args["stackId"],
		["projectArn"] = args["projectArn"],
	}
	asserts.AssertDeleteProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagProjectResult = { ["tags"] = true, nil }

function asserts.AssertTagProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagProjectResult to be of type 'table'")
	if struct["tags"] then asserts.AssertTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagProjectResult[k], "TagProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagProjectResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tags [Tags] <p>The tags for the project.</p>
-- @return TagProjectResult structure as a key-value pair table
function M.TagProjectResult(args)
	assert(args, "You must provide an argument table when creating TagProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tags"] = args["tags"],
	}
	asserts.AssertTagProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProjectResult = { nil }

function asserts.AssertUpdateProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectResult[k], "UpdateProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertUpdateProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProjectRequest = { ["id"] = true, nil }

function asserts.AssertDescribeProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProjectRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["id"] then asserts.AssertProjectId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProjectRequest[k], "DescribeProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * id [ProjectId] <p>The ID of the project.</p>
-- Required key: id
-- @return DescribeProjectRequest structure as a key-value pair table
function M.DescribeProjectRequest(args)
	assert(args, "You must provide an argument table when creating DescribeProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["id"] = args["id"],
	}
	asserts.AssertDescribeProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectSummary = { ["projectId"] = true, ["projectArn"] = true, nil }

function asserts.AssertProjectSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectSummary to be of type 'table'")
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["projectArn"] then asserts.AssertProjectArn(struct["projectArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectSummary[k], "ProjectSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectSummary
-- <p>Information about the metadata for a project.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectId [ProjectId] <p>The ID of the project.</p>
-- * projectArn [ProjectArn] <p>The Amazon Resource Name (ARN) of the project.</p>
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
		["projectArn"] = args["projectArn"],
	}
	asserts.AssertProjectSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForProjectRequest = { ["nextToken"] = true, ["id"] = true, ["maxResults"] = true, nil }

function asserts.AssertListTagsForProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForProjectRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["id"] then asserts.AssertProjectId(struct["id"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForProjectRequest[k], "ListTagsForProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>Reserved for future use.</p>
-- * id [ProjectId] <p>The ID of the project to get tags for.</p>
-- * maxResults [MaxResults] <p>Reserved for future use.</p>
-- Required key: id
-- @return ListTagsForProjectRequest structure as a key-value pair table
function M.ListTagsForProjectRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsForProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["id"] = args["id"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListTagsForProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagProjectResult = { nil }

function asserts.AssertUntagProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagProjectResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UntagProjectResult[k], "UntagProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagProjectResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagProjectResult structure as a key-value pair table
function M.UntagProjectResult(args)
	assert(args, "You must provide an argument table when creating UntagProjectResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUntagProjectResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourcesRequest = { ["projectId"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	if struct["projectId"] then asserts.AssertProjectId(struct["projectId"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourcesRequest[k], "ListResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectId [ProjectId] <p>The ID of the project.</p>
-- * nextToken [PaginationToken] <p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>
-- * maxResults [MaxResults] <p>The maximum amount of data that can be contained in a single set of results.</p>
-- Required key: projectId
-- @return ListResourcesRequest structure as a key-value pair table
function M.ListResourcesRequest(args)
	assert(args, "You must provide an argument table when creating ListResourcesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectId"] = args["projectId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListResourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Toolchain = { ["source"] = true, ["roleArn"] = true, ["stackParameters"] = true, nil }

function asserts.AssertToolchain(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Toolchain to be of type 'table'")
	assert(struct["source"], "Expected key source to exist in table")
	if struct["source"] then asserts.AssertToolchainSource(struct["source"]) end
	if struct["roleArn"] then asserts.AssertRoleArn(struct["roleArn"]) end
	if struct["stackParameters"] then asserts.AssertTemplateParameterMap(struct["stackParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.Toolchain[k], "Toolchain contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Toolchain
-- <p>The toolchain template file provided with the project request. AWS CodeStar uses the template to provision the toolchain stack in AWS CloudFormation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * source [ToolchainSource] <p>The Amazon S3 location where the toolchain template file provided with the project request is stored. AWS CodeStar retrieves the file during project creation.</p>
-- * roleArn [RoleArn] <p>The service role ARN for AWS CodeStar to use for the toolchain template during stack provisioning.</p>
-- * stackParameters [TemplateParameterMap] <p>The list of parameter overrides to be passed into the toolchain template during stack provisioning, if any.</p>
-- Required key: source
-- @return Toolchain structure as a key-value pair table
function M.Toolchain(args)
	assert(args, "You must provide an argument table when creating Toolchain")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["source"] = args["source"],
		["roleArn"] = args["roleArn"],
		["stackParameters"] = args["stackParameters"],
	}
	asserts.AssertToolchain(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserProfileRequest = { ["emailAddress"] = true, ["sshPublicKey"] = true, ["displayName"] = true, ["userArn"] = true, nil }

function asserts.AssertUpdateUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserProfileRequest to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["emailAddress"] then asserts.AssertEmail(struct["emailAddress"]) end
	if struct["sshPublicKey"] then asserts.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["displayName"] then asserts.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserProfileRequest[k], "UpdateUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * emailAddress [Email] <p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>
-- * sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>
-- * displayName [UserProfileDisplayName] <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
-- * userArn [UserArn] <p>The name that will be displayed as the friendly name for the user in AWS CodeStar.</p>
-- Required key: userArn
-- @return UpdateUserProfileRequest structure as a key-value pair table
function M.UpdateUserProfileRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["emailAddress"] = args["emailAddress"],
		["sshPublicKey"] = args["sshPublicKey"],
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertUpdateUserProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Location = { ["bucketName"] = true, ["bucketKey"] = true, nil }

function asserts.AssertS3Location(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Location to be of type 'table'")
	if struct["bucketName"] then asserts.AssertBucketName(struct["bucketName"]) end
	if struct["bucketKey"] then asserts.AssertBucketKey(struct["bucketKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Location[k], "S3Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Location
-- <p>The Amazon S3 location where the source code files provided with the project request are stored.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * bucketName [BucketName] <p>The Amazon S3 bucket name where the source code files provided with the project request are stored.</p>
-- * bucketKey [BucketKey] <p>The Amazon S3 object key where the source code files provided with the project request are stored.</p>
-- @return S3Location structure as a key-value pair table
function M.S3Location(args)
	assert(args, "You must provide an argument table when creating S3Location")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["bucketName"] = args["bucketName"],
		["bucketKey"] = args["bucketKey"],
	}
	asserts.AssertS3Location(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserProfileRequest = { ["emailAddress"] = true, ["sshPublicKey"] = true, ["displayName"] = true, ["userArn"] = true, nil }

function asserts.AssertCreateUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserProfileRequest to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	assert(struct["displayName"], "Expected key displayName to exist in table")
	assert(struct["emailAddress"], "Expected key emailAddress to exist in table")
	if struct["emailAddress"] then asserts.AssertEmail(struct["emailAddress"]) end
	if struct["sshPublicKey"] then asserts.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["displayName"] then asserts.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserProfileRequest[k], "CreateUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * emailAddress [Email] <p>The email address that will be displayed as part of the user's profile in AWS CodeStar.</p>
-- * sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>
-- * displayName [UserProfileDisplayName] <p>The name that will be displayed as the friendly name for the user in AWS CodeStar. </p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- Required key: userArn
-- Required key: displayName
-- Required key: emailAddress
-- @return CreateUserProfileRequest structure as a key-value pair table
function M.CreateUserProfileRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["emailAddress"] = args["emailAddress"],
		["sshPublicKey"] = args["sshPublicKey"],
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertCreateUserProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ToolchainSource = { ["s3"] = true, nil }

function asserts.AssertToolchainSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ToolchainSource to be of type 'table'")
	assert(struct["s3"], "Expected key s3 to exist in table")
	if struct["s3"] then asserts.AssertS3Location(struct["s3"]) end
	for k,_ in pairs(struct) do
		assert(keys.ToolchainSource[k], "ToolchainSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ToolchainSource
-- <p>The Amazon S3 location where the toolchain template file provided with the project request is stored. AWS CodeStar retrieves the file during project creation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * s3 [S3Location] <p>The Amazon S3 bucket where the toolchain template file provided with the project request is stored.</p>
-- Required key: s3
-- @return ToolchainSource structure as a key-value pair table
function M.ToolchainSource(args)
	assert(args, "You must provide an argument table when creating ToolchainSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["s3"] = args["s3"],
	}
	asserts.AssertToolchainSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagProjectRequest = { ["id"] = true, ["tags"] = true, nil }

function asserts.AssertUntagProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagProjectRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["id"] then asserts.AssertProjectId(struct["id"]) end
	if struct["tags"] then asserts.AssertTagKeys(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagProjectRequest[k], "UntagProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * id [ProjectId] <p>The ID of the project to remove tags from.</p>
-- * tags [TagKeys] <p>The tags to remove from the project.</p>
-- Required key: id
-- Required key: tags
-- @return UntagProjectRequest structure as a key-value pair table
function M.UntagProjectRequest(args)
	assert(args, "You must provide an argument table when creating UntagProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["id"] = args["id"],
		["tags"] = args["tags"],
	}
	asserts.AssertUntagProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertStackId(str)
	assert(str)
	assert(type(str) == "string", "Expected StackId to be of type 'string'")
end

--  
function M.StackId(str)
	asserts.AssertStackId(str)
	return str
end

function asserts.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
end

--  
function M.Role(str)
	asserts.AssertRole(str)
	return str
end

function asserts.AssertProjectArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectArn to be of type 'string'")
end

--  
function M.ProjectArn(str)
	asserts.AssertProjectArn(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertReason(str)
	assert(str)
	assert(type(str) == "string", "Expected Reason to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.Reason(str)
	asserts.AssertReason(str)
	return str
end

function asserts.AssertProjectDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.ProjectDescription(str)
	asserts.AssertProjectDescription(str)
	return str
end

function asserts.AssertProjectTemplateId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectTemplateId to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProjectTemplateId(str)
	asserts.AssertProjectTemplateId(str)
	return str
end

function asserts.AssertSshPublicKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SshPublicKey to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
end

--  
function M.SshPublicKey(str)
	asserts.AssertSshPublicKey(str)
	return str
end

function asserts.AssertRepositoryOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryOwner to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RepositoryOwner(str)
	asserts.AssertRepositoryOwner(str)
	return str
end

function asserts.AssertBucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.BucketName(str)
	asserts.AssertBucketName(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertState(str)
	assert(str)
	assert(type(str) == "string", "Expected State to be of type 'string'")
end

--  
function M.State(str)
	asserts.AssertState(str)
	return str
end

function asserts.AssertEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected Email to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.Email(str)
	asserts.AssertEmail(str)
	return str
end

function asserts.AssertUserArn(str)
	assert(str)
	assert(type(str) == "string", "Expected UserArn to be of type 'string'")
	assert(#str <= 95, "Expected string to be max 95 characters")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.UserArn(str)
	asserts.AssertUserArn(str)
	return str
end

function asserts.AssertRepositoryDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryDescription to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RepositoryDescription(str)
	asserts.AssertRepositoryDescription(str)
	return str
end

function asserts.AssertUserProfileDisplayName(str)
	assert(str)
	assert(type(str) == "string", "Expected UserProfileDisplayName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserProfileDisplayName(str)
	asserts.AssertUserProfileDisplayName(str)
	return str
end

function asserts.AssertProjectId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectId to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.ProjectId(str)
	asserts.AssertProjectId(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertClientRequestToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientRequestToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
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

function asserts.AssertTemplateParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateParameterValue to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TemplateParameterValue(str)
	asserts.AssertTemplateParameterValue(str)
	return str
end

function asserts.AssertProjectName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProjectName(str)
	asserts.AssertProjectName(str)
	return str
end

function asserts.AssertRepositoryType(str)
	assert(str)
	assert(type(str) == "string", "Expected RepositoryType to be of type 'string'")
end

--  
function M.RepositoryType(str)
	asserts.AssertRepositoryType(str)
	return str
end

function asserts.AssertBucketKey(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketKey to be of type 'string'")
end

--  
function M.BucketKey(str)
	asserts.AssertBucketKey(str)
	return str
end

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
	return str
end

function asserts.AssertGitHubPersonalToken(str)
	assert(str)
	assert(type(str) == "string", "Expected GitHubPersonalToken to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GitHubPersonalToken(str)
	asserts.AssertGitHubPersonalToken(str)
	return str
end

function asserts.AssertTemplateParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateParameterKey to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TemplateParameterKey(str)
	asserts.AssertTemplateParameterKey(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
	assert(#str >= 11, "Expected string to be min 11 characters")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
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

function asserts.AssertDeleteStack(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DeleteStack to be of type 'boolean'")
end

function M.DeleteStack(boolean)
	asserts.AssertDeleteStack(boolean)
	return boolean
end

function asserts.AssertRepositoryEnableIssues(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RepositoryEnableIssues to be of type 'boolean'")
end

function M.RepositoryEnableIssues(boolean)
	asserts.AssertRepositoryEnableIssues(boolean)
	return boolean
end

function asserts.AssertRemoteAccessAllowed(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RemoteAccessAllowed to be of type 'boolean'")
end

function M.RemoteAccessAllowed(boolean)
	asserts.AssertRemoteAccessAllowed(boolean)
	return boolean
end

function asserts.AssertRepositoryIsPrivate(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RepositoryIsPrivate to be of type 'boolean'")
end

function M.RepositoryIsPrivate(boolean)
	asserts.AssertRepositoryIsPrivate(boolean)
	return boolean
end

function asserts.AssertTemplateParameterMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TemplateParameterMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTemplateParameterKey(k)
		asserts.AssertTemplateParameterValue(v)
	end
end

function M.TemplateParameterMap(map)
	asserts.AssertTemplateParameterMap(map)
	return map
end

function asserts.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.Tags(map)
	asserts.AssertTags(map)
	return map
end

function asserts.AssertLastModifiedTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModifiedTimestamp to be of type 'string'")
end

function M.LastModifiedTimestamp(timestamp)
	asserts.AssertLastModifiedTimestamp(timestamp)
	return timestamp
end

function asserts.AssertCreatedTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedTimestamp to be of type 'string'")
end

function M.CreatedTimestamp(timestamp)
	asserts.AssertCreatedTimestamp(timestamp)
	return timestamp
end

function asserts.AssertTeamMemberResult(list)
	assert(list)
	assert(type(list) == "table", "Expected TeamMemberResult to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTeamMember(v)
	end
end

--  
-- List of TeamMember objects
function M.TeamMemberResult(list)
	asserts.AssertTeamMemberResult(list)
	return list
end

function asserts.AssertResourcesResult(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourcesResult to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResource(v)
	end
end

--  
-- List of Resource objects
function M.ResourcesResult(list)
	asserts.AssertResourcesResult(list)
	return list
end

function asserts.AssertUserProfilesList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserProfilesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserProfileSummary(v)
	end
end

--  
-- List of UserProfileSummary objects
function M.UserProfilesList(list)
	asserts.AssertUserProfilesList(list)
	return list
end

function asserts.AssertSourceCode(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceCode to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCode(v)
	end
end

--  
-- List of Code objects
function M.SourceCode(list)
	asserts.AssertSourceCode(list)
	return list
end

function asserts.AssertTagKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeys to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeys(list)
	asserts.AssertTagKeys(list)
	return list
end

function asserts.AssertProjectsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProjectsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProjectSummary(v)
	end
end

--  
-- List of ProjectSummary objects
function M.ProjectsList(list)
	asserts.AssertProjectsList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "codestar.amazonaws.com"
		end
	end
	local ss = { "codestar" }
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
--- Call AssociateTeamMember asynchronously, invoking a callback when done
-- @param AssociateTeamMemberRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateTeamMemberAsync(AssociateTeamMemberRequest, cb)
	assert(AssociateTeamMemberRequest, "You must provide a AssociateTeamMemberRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.AssociateTeamMember",
	}
	for header,value in pairs(AssociateTeamMemberRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateTeamMemberRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateTeamMember synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateTeamMemberRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateTeamMemberSync(AssociateTeamMemberRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateTeamMemberAsync(AssociateTeamMemberRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateTeamMember asynchronously, invoking a callback when done
-- @param DisassociateTeamMemberRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateTeamMemberAsync(DisassociateTeamMemberRequest, cb)
	assert(DisassociateTeamMemberRequest, "You must provide a DisassociateTeamMemberRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DisassociateTeamMember",
	}
	for header,value in pairs(DisassociateTeamMemberRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateTeamMemberRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateTeamMember synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateTeamMemberRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateTeamMemberSync(DisassociateTeamMemberRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateTeamMemberAsync(DisassociateTeamMemberRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagProject asynchronously, invoking a callback when done
-- @param UntagProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagProjectAsync(UntagProjectRequest, cb)
	assert(UntagProjectRequest, "You must provide a UntagProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.UntagProject",
	}
	for header,value in pairs(UntagProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagProjectSync(UntagProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagProjectAsync(UntagProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTeamMember asynchronously, invoking a callback when done
-- @param UpdateTeamMemberRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTeamMemberAsync(UpdateTeamMemberRequest, cb)
	assert(UpdateTeamMemberRequest, "You must provide a UpdateTeamMemberRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.UpdateTeamMember",
	}
	for header,value in pairs(UpdateTeamMemberRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTeamMemberRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTeamMember synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTeamMemberRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTeamMemberSync(UpdateTeamMemberRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTeamMemberAsync(UpdateTeamMemberRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForProject asynchronously, invoking a callback when done
-- @param ListTagsForProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForProjectAsync(ListTagsForProjectRequest, cb)
	assert(ListTagsForProjectRequest, "You must provide a ListTagsForProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListTagsForProject",
	}
	for header,value in pairs(ListTagsForProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForProjectSync(ListTagsForProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForProjectAsync(ListTagsForProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserProfile asynchronously, invoking a callback when done
-- @param CreateUserProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUserProfileAsync(CreateUserProfileRequest, cb)
	assert(CreateUserProfileRequest, "You must provide a CreateUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.CreateUserProfile",
	}
	for header,value in pairs(CreateUserProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateUserProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUserProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateUserProfileSync(CreateUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserProfileAsync(CreateUserProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserProfile asynchronously, invoking a callback when done
-- @param UpdateUserProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserProfileAsync(UpdateUserProfileRequest, cb)
	assert(UpdateUserProfileRequest, "You must provide a UpdateUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.UpdateUserProfile",
	}
	for header,value in pairs(UpdateUserProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateUserProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserProfileSync(UpdateUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserProfileAsync(UpdateUserProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUserProfiles asynchronously, invoking a callback when done
-- @param ListUserProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUserProfilesAsync(ListUserProfilesRequest, cb)
	assert(ListUserProfilesRequest, "You must provide a ListUserProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListUserProfiles",
	}
	for header,value in pairs(ListUserProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListUserProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUserProfiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUserProfilesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUserProfilesSync(ListUserProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUserProfilesAsync(ListUserProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResources asynchronously, invoking a callback when done
-- @param ListResourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListResourcesAsync(ListResourcesRequest, cb)
	assert(ListResourcesRequest, "You must provide a ListResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListResources",
	}
	for header,value in pairs(ListResourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListResourcesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListResourcesSync(ListResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResourcesAsync(ListResourcesRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.CreateProject",
	}
	for header,value in pairs(CreateProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateProjectRequest, headers, settings, cb)
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

--- Call TagProject asynchronously, invoking a callback when done
-- @param TagProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagProjectAsync(TagProjectRequest, cb)
	assert(TagProjectRequest, "You must provide a TagProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.TagProject",
	}
	for header,value in pairs(TagProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagProjectSync(TagProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagProjectAsync(TagProjectRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListProjects",
	}
	for header,value in pairs(ListProjectsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListProjectsRequest, headers, settings, cb)
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

--- Call ListTeamMembers asynchronously, invoking a callback when done
-- @param ListTeamMembersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTeamMembersAsync(ListTeamMembersRequest, cb)
	assert(ListTeamMembersRequest, "You must provide a ListTeamMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListTeamMembers",
	}
	for header,value in pairs(ListTeamMembersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTeamMembersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTeamMembers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTeamMembersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTeamMembersSync(ListTeamMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTeamMembersAsync(ListTeamMembersRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DeleteProject",
	}
	for header,value in pairs(DeleteProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteProjectRequest, headers, settings, cb)
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

--- Call DescribeProject asynchronously, invoking a callback when done
-- @param DescribeProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProjectAsync(DescribeProjectRequest, cb)
	assert(DescribeProjectRequest, "You must provide a DescribeProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DescribeProject",
	}
	for header,value in pairs(DescribeProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeProjectRequest, headers, settings, cb)
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

--- Call UpdateProject asynchronously, invoking a callback when done
-- @param UpdateProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateProjectAsync(UpdateProjectRequest, cb)
	assert(UpdateProjectRequest, "You must provide a UpdateProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.UpdateProject",
	}
	for header,value in pairs(UpdateProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateProjectRequest, headers, settings, cb)
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

--- Call DescribeUserProfile asynchronously, invoking a callback when done
-- @param DescribeUserProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserProfileAsync(DescribeUserProfileRequest, cb)
	assert(DescribeUserProfileRequest, "You must provide a DescribeUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DescribeUserProfile",
	}
	for header,value in pairs(DescribeUserProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeUserProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUserProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUserProfileSync(DescribeUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserProfileAsync(DescribeUserProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserProfile asynchronously, invoking a callback when done
-- @param DeleteUserProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserProfileAsync(DeleteUserProfileRequest, cb)
	assert(DeleteUserProfileRequest, "You must provide a DeleteUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DeleteUserProfile",
	}
	for header,value in pairs(DeleteUserProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUserProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserProfileSync(DeleteUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserProfileAsync(DeleteUserProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
