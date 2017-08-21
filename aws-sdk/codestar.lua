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
	assert(args, "You must provdide an argument table when creating CreateUserProfileRequest")
	local t = { 
		["emailAddress"] = args["emailAddress"],
		["sshPublicKey"] = args["sshPublicKey"],
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertCreateUserProfileRequest(t)
	return t
end

keys.UserProfileNotFoundException = { nil }

function asserts.AssertUserProfileNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserProfileNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UserProfileNotFoundException[k], "UserProfileNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserProfileNotFoundException
-- <p>The user profile was not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UserProfileNotFoundException structure as a key-value pair table
function M.UserProfileNotFoundException(args)
	assert(args, "You must provdide an argument table when creating UserProfileNotFoundException")
	local t = { 
	}
	asserts.AssertUserProfileNotFoundException(t)
	return t
end

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
	assert(args, "You must provdide an argument table when creating DeleteProjectRequest")
	local t = { 
		["deleteStack"] = args["deleteStack"],
		["id"] = args["id"],
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertDeleteProjectRequest(t)
	return t
end

keys.ConcurrentModificationException = { nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>Another modification is being made. That modification must complete before you can make your change.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ConcurrentModificationException structure as a key-value pair table
function M.ConcurrentModificationException(args)
	assert(args, "You must provdide an argument table when creating ConcurrentModificationException")
	local t = { 
	}
	asserts.AssertConcurrentModificationException(t)
	return t
end

keys.ValidationException = { nil }

function asserts.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ValidationException[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>The specified input is either not valid, or it could not be validated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ValidationException structure as a key-value pair table
function M.ValidationException(args)
	assert(args, "You must provdide an argument table when creating ValidationException")
	local t = { 
	}
	asserts.AssertValidationException(t)
	return t
end

keys.ProjectNotFoundException = { nil }

function asserts.AssertProjectNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ProjectNotFoundException[k], "ProjectNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectNotFoundException
-- <p>The specified AWS CodeStar project was not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ProjectNotFoundException structure as a key-value pair table
function M.ProjectNotFoundException(args)
	assert(args, "You must provdide an argument table when creating ProjectNotFoundException")
	local t = { 
	}
	asserts.AssertProjectNotFoundException(t)
	return t
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
-- * projectRole [Role] <p>The role assigned to the user in the project. Project roles have different levels of access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with Teams</a> in the AWS CodeStar User Guide.</p>
-- * projectId [ProjectId] <p>The ID of the project.</p>
-- * remoteAccessAllowed [RemoteAccessAllowed] <p>Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile. Even if this is set to True, the user must associate a public key with their profile before the user can access resources.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user for whom you want to change team membership attributes.</p>
-- Required key: projectId
-- Required key: userArn
-- @return UpdateTeamMemberRequest structure as a key-value pair table
function M.UpdateTeamMemberRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateTeamMemberRequest")
	local t = { 
		["projectRole"] = args["projectRole"],
		["projectId"] = args["projectId"],
		["remoteAccessAllowed"] = args["remoteAccessAllowed"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertUpdateTeamMemberRequest(t)
	return t
end

keys.LimitExceededException = { nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>A resource limit has been exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
	}
	asserts.AssertLimitExceededException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateProjectRequest")
	local t = { 
		["description"] = args["description"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertUpdateProjectRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListTeamMembersRequest")
	local t = { 
		["projectId"] = args["projectId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListTeamMembersRequest(t)
	return t
end

keys.InvalidNextTokenException = { nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The next token is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidNextTokenException structure as a key-value pair table
function M.InvalidNextTokenException(args)
	assert(args, "You must provdide an argument table when creating InvalidNextTokenException")
	local t = { 
	}
	asserts.AssertInvalidNextTokenException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListTeamMembersResult")
	local t = { 
		["nextToken"] = args["nextToken"],
		["teamMembers"] = args["teamMembers"],
	}
	asserts.AssertListTeamMembersResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateTeamMemberResult")
	local t = { 
		["projectRole"] = args["projectRole"],
		["remoteAccessAllowed"] = args["remoteAccessAllowed"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertUpdateTeamMemberResult(t)
	return t
end

keys.ProjectConfigurationException = { nil }

function asserts.AssertProjectConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectConfigurationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ProjectConfigurationException[k], "ProjectConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectConfigurationException
-- <p>Project configuration information is required but not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ProjectConfigurationException structure as a key-value pair table
function M.ProjectConfigurationException(args)
	assert(args, "You must provdide an argument table when creating ProjectConfigurationException")
	local t = { 
	}
	asserts.AssertProjectConfigurationException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteUserProfileRequest")
	local t = { 
		["userArn"] = args["userArn"],
	}
	asserts.AssertDeleteUserProfileRequest(t)
	return t
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
-- * projectRole [Role] <p>The role assigned to the user in the project. Project roles have different levels of access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with Teams</a> in the AWS CodeStar User Guide. </p>
-- * remoteAccessAllowed [RemoteAccessAllowed] <p>Whether the user is allowed to remotely access project resources using an SSH public/private key pair.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- Required key: userArn
-- Required key: projectRole
-- @return TeamMember structure as a key-value pair table
function M.TeamMember(args)
	assert(args, "You must provdide an argument table when creating TeamMember")
	local t = { 
		["projectRole"] = args["projectRole"],
		["remoteAccessAllowed"] = args["remoteAccessAllowed"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertTeamMember(t)
	return t
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
	assert(args, "You must provdide an argument table when creating CreateUserProfileResult")
	local t = { 
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
		["sshPublicKey"] = args["sshPublicKey"],
		["createdTimestamp"] = args["createdTimestamp"],
		["emailAddress"] = args["emailAddress"],
		["lastModifiedTimestamp"] = args["lastModifiedTimestamp"],
	}
	asserts.AssertCreateUserProfileResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListProjectsRequest")
	local t = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListProjectsRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DisassociateTeamMemberResult")
	local t = { 
	}
	asserts.AssertDisassociateTeamMemberResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListProjectsResult")
	local t = { 
		["nextToken"] = args["nextToken"],
		["projects"] = args["projects"],
	}
	asserts.AssertListProjectsResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListResourcesResult")
	local t = { 
		["nextToken"] = args["nextToken"],
		["resources"] = args["resources"],
	}
	asserts.AssertListResourcesResult(t)
	return t
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
-- * maxResults [MaxResults] <p>he maximum amount of data that can be contained in a single set of results.</p>
-- Required key: projectId
-- @return ListResourcesRequest structure as a key-value pair table
function M.ListResourcesRequest(args)
	assert(args, "You must provdide an argument table when creating ListResourcesRequest")
	local t = { 
		["projectId"] = args["projectId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListResourcesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteUserProfileResult")
	local t = { 
		["userArn"] = args["userArn"],
	}
	asserts.AssertDeleteUserProfileResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Resource")
	local t = { 
		["id"] = args["id"],
	}
	asserts.AssertResource(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeUserProfileRequest")
	local t = { 
		["userArn"] = args["userArn"],
	}
	asserts.AssertDescribeUserProfileRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteProjectResult")
	local t = { 
		["stackId"] = args["stackId"],
		["projectArn"] = args["projectArn"],
	}
	asserts.AssertDeleteProjectResult(t)
	return t
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
-- * id [ProjectId] <p>Reserved for future use.</p>
-- * arn [ProjectArn] <p>Reserved for future use.</p>
-- * clientRequestToken [ClientRequestToken] <p>Reserved for future use.</p>
-- Required key: id
-- Required key: arn
-- @return CreateProjectResult structure as a key-value pair table
function M.CreateProjectResult(args)
	assert(args, "You must provdide an argument table when creating CreateProjectResult")
	local t = { 
		["projectTemplateId"] = args["projectTemplateId"],
		["id"] = args["id"],
		["arn"] = args["arn"],
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertCreateProjectResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateUserProfileRequest")
	local t = { 
		["emailAddress"] = args["emailAddress"],
		["sshPublicKey"] = args["sshPublicKey"],
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertUpdateUserProfileRequest(t)
	return t
end

keys.ProjectAlreadyExistsException = { nil }

function asserts.AssertProjectAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ProjectAlreadyExistsException[k], "ProjectAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectAlreadyExistsException
-- <p>An AWS CodeStar project with the same ID already exists in this region for the AWS account. AWS CodeStar project IDs must be unique within a region for the AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ProjectAlreadyExistsException structure as a key-value pair table
function M.ProjectAlreadyExistsException(args)
	assert(args, "You must provdide an argument table when creating ProjectAlreadyExistsException")
	local t = { 
	}
	asserts.AssertProjectAlreadyExistsException(t)
	return t
end

keys.InvalidServiceRoleException = { nil }

function asserts.AssertInvalidServiceRoleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidServiceRoleException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidServiceRoleException[k], "InvalidServiceRoleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidServiceRoleException
-- <p>The service role is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidServiceRoleException structure as a key-value pair table
function M.InvalidServiceRoleException(args)
	assert(args, "You must provdide an argument table when creating InvalidServiceRoleException")
	local t = { 
	}
	asserts.AssertInvalidServiceRoleException(t)
	return t
end

keys.DescribeProjectResult = { ["stackId"] = true, ["projectTemplateId"] = true, ["description"] = true, ["createdTimeStamp"] = true, ["clientRequestToken"] = true, ["id"] = true, ["arn"] = true, ["name"] = true, nil }

function asserts.AssertDescribeProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProjectResult to be of type 'table'")
	if struct["stackId"] then asserts.AssertStackId(struct["stackId"]) end
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
-- * projectTemplateId [ProjectTemplateId] <p>The ID for the AWS CodeStar project template used to create the project.</p>
-- * description [ProjectDescription] <p>The description of the project, if any.</p>
-- * createdTimeStamp [CreatedTimestamp] <p>The date and time the project was created, in timestamp format.</p>
-- * clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested project creation. </p>
-- * id [ProjectId] <p>The ID of the project.</p>
-- * arn [ProjectArn] <p>The Amazon Resource Name (ARN) for the project.</p>
-- * name [ProjectName] <p>The display name for the project.</p>
-- @return DescribeProjectResult structure as a key-value pair table
function M.DescribeProjectResult(args)
	assert(args, "You must provdide an argument table when creating DescribeProjectResult")
	local t = { 
		["stackId"] = args["stackId"],
		["projectTemplateId"] = args["projectTemplateId"],
		["description"] = args["description"],
		["createdTimeStamp"] = args["createdTimeStamp"],
		["clientRequestToken"] = args["clientRequestToken"],
		["id"] = args["id"],
		["arn"] = args["arn"],
		["name"] = args["name"],
	}
	asserts.AssertDescribeProjectResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUserProfilesRequest")
	local t = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListUserProfilesRequest(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateProjectResult")
	local t = { 
	}
	asserts.AssertUpdateProjectResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UserProfileSummary")
	local t = { 
		["emailAddress"] = args["emailAddress"],
		["sshPublicKey"] = args["sshPublicKey"],
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertUserProfileSummary(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeUserProfileResult")
	local t = { 
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
		["sshPublicKey"] = args["sshPublicKey"],
		["createdTimestamp"] = args["createdTimestamp"],
		["emailAddress"] = args["emailAddress"],
		["lastModifiedTimestamp"] = args["lastModifiedTimestamp"],
	}
	asserts.AssertDescribeUserProfileResult(t)
	return t
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
-- * clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested the team member association to the project. This token can be used to repeat the request. </p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) for the IAM user you want to add to the DevHub project.</p>
-- Required key: projectId
-- Required key: userArn
-- Required key: projectRole
-- @return AssociateTeamMemberRequest structure as a key-value pair table
function M.AssociateTeamMemberRequest(args)
	assert(args, "You must provdide an argument table when creating AssociateTeamMemberRequest")
	local t = { 
		["projectRole"] = args["projectRole"],
		["projectId"] = args["projectId"],
		["remoteAccessAllowed"] = args["remoteAccessAllowed"],
		["clientRequestToken"] = args["clientRequestToken"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertAssociateTeamMemberRequest(t)
	return t
end

keys.ProjectCreationFailedException = { nil }

function asserts.AssertProjectCreationFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectCreationFailedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ProjectCreationFailedException[k], "ProjectCreationFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectCreationFailedException
-- <p>The project creation request was valid, but a nonspecific exception or error occurred during project creation. The project could not be created in AWS CodeStar.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ProjectCreationFailedException structure as a key-value pair table
function M.ProjectCreationFailedException(args)
	assert(args, "You must provdide an argument table when creating ProjectCreationFailedException")
	local t = { 
	}
	asserts.AssertProjectCreationFailedException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeProjectRequest")
	local t = { 
		["id"] = args["id"],
	}
	asserts.AssertDescribeProjectRequest(t)
	return t
end

keys.TeamMemberNotFoundException = { nil }

function asserts.AssertTeamMemberNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TeamMemberNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TeamMemberNotFoundException[k], "TeamMemberNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TeamMemberNotFoundException
-- <p>The specified team member was not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TeamMemberNotFoundException structure as a key-value pair table
function M.TeamMemberNotFoundException(args)
	assert(args, "You must provdide an argument table when creating TeamMemberNotFoundException")
	local t = { 
	}
	asserts.AssertTeamMemberNotFoundException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListUserProfilesResult")
	local t = { 
		["nextToken"] = args["nextToken"],
		["userProfiles"] = args["userProfiles"],
	}
	asserts.AssertListUserProfilesResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DisassociateTeamMemberRequest")
	local t = { 
		["projectId"] = args["projectId"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertDisassociateTeamMemberRequest(t)
	return t
end

keys.UserProfileAlreadyExistsException = { nil }

function asserts.AssertUserProfileAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserProfileAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UserProfileAlreadyExistsException[k], "UserProfileAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserProfileAlreadyExistsException
-- <p>A user profile with that name already exists in this region for the AWS account. AWS CodeStar user profile names must be unique within a region for the AWS account. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UserProfileAlreadyExistsException structure as a key-value pair table
function M.UserProfileAlreadyExistsException(args)
	assert(args, "You must provdide an argument table when creating UserProfileAlreadyExistsException")
	local t = { 
	}
	asserts.AssertUserProfileAlreadyExistsException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ProjectSummary")
	local t = { 
		["projectId"] = args["projectId"],
		["projectArn"] = args["projectArn"],
	}
	asserts.AssertProjectSummary(t)
	return t
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
-- * clientRequestToken [ClientRequestToken] <p>The user- or system-generated token from the initial request that can be used to repeat the request. </p>
-- @return AssociateTeamMemberResult structure as a key-value pair table
function M.AssociateTeamMemberResult(args)
	assert(args, "You must provdide an argument table when creating AssociateTeamMemberResult")
	local t = { 
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertAssociateTeamMemberResult(t)
	return t
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
	assert(args, "You must provdide an argument table when creating UpdateUserProfileResult")
	local t = { 
		["displayName"] = args["displayName"],
		["userArn"] = args["userArn"],
		["sshPublicKey"] = args["sshPublicKey"],
		["createdTimestamp"] = args["createdTimestamp"],
		["emailAddress"] = args["emailAddress"],
		["lastModifiedTimestamp"] = args["lastModifiedTimestamp"],
	}
	asserts.AssertUpdateUserProfileResult(t)
	return t
end

keys.TeamMemberAlreadyAssociatedException = { nil }

function asserts.AssertTeamMemberAlreadyAssociatedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TeamMemberAlreadyAssociatedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TeamMemberAlreadyAssociatedException[k], "TeamMemberAlreadyAssociatedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TeamMemberAlreadyAssociatedException
-- <p>The team member is already associated with a role in this project.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TeamMemberAlreadyAssociatedException structure as a key-value pair table
function M.TeamMemberAlreadyAssociatedException(args)
	assert(args, "You must provdide an argument table when creating TeamMemberAlreadyAssociatedException")
	local t = { 
	}
	asserts.AssertTeamMemberAlreadyAssociatedException(t)
	return t
end

keys.CreateProjectRequest = { ["clientRequestToken"] = true, ["description"] = true, ["name"] = true, ["id"] = true, nil }

function asserts.AssertCreateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["description"] then asserts.AssertProjectDescription(struct["description"]) end
	if struct["name"] then asserts.AssertProjectName(struct["name"]) end
	if struct["id"] then asserts.AssertProjectId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectRequest[k], "CreateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientRequestToken [ClientRequestToken] <p>Reserved for future use.</p>
-- * description [ProjectDescription] <p>Reserved for future use.</p>
-- * name [ProjectName] <p>Reserved for future use.</p>
-- * id [ProjectId] <p>Reserved for future use.</p>
-- Required key: name
-- Required key: id
-- @return CreateProjectRequest structure as a key-value pair table
function M.CreateProjectRequest(args)
	assert(args, "You must provdide an argument table when creating CreateProjectRequest")
	local t = { 
		["clientRequestToken"] = args["clientRequestToken"],
		["description"] = args["description"],
		["name"] = args["name"],
		["id"] = args["id"],
	}
	asserts.AssertCreateProjectRequest(t)
	return t
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

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
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

function asserts.AssertProjectArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectArn to be of type 'string'")
end

--  
function M.ProjectArn(str)
	asserts.AssertProjectArn(str)
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

function asserts.AssertRemoteAccessAllowed(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RemoteAccessAllowed to be of type 'boolean'")
end

function M.RemoteAccessAllowed(boolean)
	asserts.AssertRemoteAccessAllowed(boolean)
	return boolean
end

function asserts.AssertDeleteStack(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DeleteStack to be of type 'boolean'")
end

function M.DeleteStack(boolean)
	asserts.AssertDeleteStack(boolean)
	return boolean
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
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call AssociateTeamMember asynchronously, invoking a callback when done
-- @param AssociateTeamMemberRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateTeamMemberAsync(AssociateTeamMemberRequest, cb)
	assert(AssociateTeamMemberRequest, "You must provide a AssociateTeamMemberRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.AssociateTeamMember",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AssociateTeamMemberSync(AssociateTeamMemberRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateTeamMemberAsync(AssociateTeamMemberRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateTeamMember asynchronously, invoking a callback when done
-- @param DisassociateTeamMemberRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateTeamMemberAsync(DisassociateTeamMemberRequest, cb)
	assert(DisassociateTeamMemberRequest, "You must provide a DisassociateTeamMemberRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DisassociateTeamMember",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DisassociateTeamMemberSync(DisassociateTeamMemberRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateTeamMemberAsync(DisassociateTeamMemberRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTeamMember asynchronously, invoking a callback when done
-- @param UpdateTeamMemberRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTeamMemberAsync(UpdateTeamMemberRequest, cb)
	assert(UpdateTeamMemberRequest, "You must provide a UpdateTeamMemberRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.UpdateTeamMember",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateTeamMemberSync(UpdateTeamMemberRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTeamMemberAsync(UpdateTeamMemberRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserProfile asynchronously, invoking a callback when done
-- @param CreateUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserProfileAsync(CreateUserProfileRequest, cb)
	assert(CreateUserProfileRequest, "You must provide a CreateUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.CreateUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateUserProfileSync(CreateUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserProfileAsync(CreateUserProfileRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserProfile asynchronously, invoking a callback when done
-- @param UpdateUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserProfileAsync(UpdateUserProfileRequest, cb)
	assert(UpdateUserProfileRequest, "You must provide a UpdateUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.UpdateUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateUserProfileSync(UpdateUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserProfileAsync(UpdateUserProfileRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUserProfiles asynchronously, invoking a callback when done
-- @param ListUserProfilesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUserProfilesAsync(ListUserProfilesRequest, cb)
	assert(ListUserProfilesRequest, "You must provide a ListUserProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListUserProfiles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListUserProfilesSync(ListUserProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUserProfilesAsync(ListUserProfilesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResources asynchronously, invoking a callback when done
-- @param ListResourcesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListResourcesAsync(ListResourcesRequest, cb)
	assert(ListResourcesRequest, "You must provide a ListResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListResourcesSync(ListResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResourcesAsync(ListResourcesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProject asynchronously, invoking a callback when done
-- @param CreateProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProjectAsync(CreateProjectRequest, cb)
	assert(CreateProjectRequest, "You must provide a CreateProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.CreateProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateProjectSync(CreateProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProjectAsync(CreateProjectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProjects asynchronously, invoking a callback when done
-- @param ListProjectsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListProjectsAsync(ListProjectsRequest, cb)
	assert(ListProjectsRequest, "You must provide a ListProjectsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListProjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListProjectsSync(ListProjectsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProjectsAsync(ListProjectsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTeamMembers asynchronously, invoking a callback when done
-- @param ListTeamMembersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTeamMembersAsync(ListTeamMembersRequest, cb)
	assert(ListTeamMembersRequest, "You must provide a ListTeamMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListTeamMembers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListTeamMembersSync(ListTeamMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTeamMembersAsync(ListTeamMembersRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProject asynchronously, invoking a callback when done
-- @param DeleteProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProjectAsync(DeleteProjectRequest, cb)
	assert(DeleteProjectRequest, "You must provide a DeleteProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DeleteProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteProjectSync(DeleteProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProjectAsync(DeleteProjectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProject asynchronously, invoking a callback when done
-- @param DescribeProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProjectAsync(DescribeProjectRequest, cb)
	assert(DescribeProjectRequest, "You must provide a DescribeProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DescribeProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeProjectSync(DescribeProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProjectAsync(DescribeProjectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProject asynchronously, invoking a callback when done
-- @param UpdateProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProjectAsync(UpdateProjectRequest, cb)
	assert(UpdateProjectRequest, "You must provide a UpdateProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.UpdateProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.UpdateProjectSync(UpdateProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProjectAsync(UpdateProjectRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserProfile asynchronously, invoking a callback when done
-- @param DescribeUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserProfileAsync(DescribeUserProfileRequest, cb)
	assert(DescribeUserProfileRequest, "You must provide a DescribeUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DescribeUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeUserProfileSync(DescribeUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserProfileAsync(DescribeUserProfileRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserProfile asynchronously, invoking a callback when done
-- @param DeleteUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserProfileAsync(DeleteUserProfileRequest, cb)
	assert(DeleteUserProfileRequest, "You must provide a DeleteUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DeleteUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteUserProfileSync(DeleteUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserProfileAsync(DeleteUserProfileRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
