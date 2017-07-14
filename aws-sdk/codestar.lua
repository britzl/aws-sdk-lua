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

local CreateUserProfileRequest_keys = { "emailAddress" = true, "sshPublicKey" = true, "displayName" = true, "userArn" = true, nil }

function M.AssertCreateUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserProfileRequest to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	assert(struct["displayName"], "Expected key displayName to exist in table")
	assert(struct["emailAddress"], "Expected key emailAddress to exist in table")
	if struct["emailAddress"] then M.AssertEmail(struct["emailAddress"]) end
	if struct["sshPublicKey"] then M.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["displayName"] then M.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserProfileRequest_keys[k], "CreateUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserProfileRequest
--  
-- @param emailAddress [Email] <p>The email address that will be displayed as part of the user's profile in AWS CodeStar.</p>
-- @param sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>
-- @param displayName [UserProfileDisplayName] <p>The name that will be displayed as the friendly name for the user in AWS CodeStar. </p>
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- Required parameter: userArn
-- Required parameter: displayName
-- Required parameter: emailAddress
function M.CreateUserProfileRequest(emailAddress, sshPublicKey, displayName, userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserProfileRequest")
	local t = { 
		["emailAddress"] = emailAddress,
		["sshPublicKey"] = sshPublicKey,
		["displayName"] = displayName,
		["userArn"] = userArn,
	}
	M.AssertCreateUserProfileRequest(t)
	return t
end

local UserProfileNotFoundException_keys = { nil }

function M.AssertUserProfileNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserProfileNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UserProfileNotFoundException_keys[k], "UserProfileNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserProfileNotFoundException
-- <p>The user profile was not found.</p>
function M.UserProfileNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserProfileNotFoundException")
	local t = { 
	}
	M.AssertUserProfileNotFoundException(t)
	return t
end

local DeleteProjectRequest_keys = { "deleteStack" = true, "id" = true, "clientRequestToken" = true, nil }

function M.AssertDeleteProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["deleteStack"] then M.AssertDeleteStack(struct["deleteStack"]) end
	if struct["id"] then M.AssertProjectId(struct["id"]) end
	if struct["clientRequestToken"] then M.AssertClientRequestToken(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteProjectRequest_keys[k], "DeleteProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectRequest
--  
-- @param deleteStack [DeleteStack] <p>Whether to send a delete request for the primary stack in AWS CloudFormation originally used to generate the project and its resources. This option will delete all AWS resources for the project (except for any buckets in Amazon S3) as well as deleting the project itself. Recommended for most use cases.</p>
-- @param id [ProjectId] <p>The ID of the project to be deleted in AWS CodeStar.</p>
-- @param clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested project deletion. This token can be used to repeat the request. </p>
-- Required parameter: id
function M.DeleteProjectRequest(deleteStack, id, clientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProjectRequest")
	local t = { 
		["deleteStack"] = deleteStack,
		["id"] = id,
		["clientRequestToken"] = clientRequestToken,
	}
	M.AssertDeleteProjectRequest(t)
	return t
end

local ConcurrentModificationException_keys = { nil }

function M.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ConcurrentModificationException_keys[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>Another modification is being made. That modification must complete before you can make your change.</p>
function M.ConcurrentModificationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
	}
	M.AssertConcurrentModificationException(t)
	return t
end

local ValidationException_keys = { nil }

function M.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ValidationException_keys[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>The specified input is either not valid, or it could not be validated.</p>
function M.ValidationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
	}
	M.AssertValidationException(t)
	return t
end

local ProjectNotFoundException_keys = { nil }

function M.AssertProjectNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ProjectNotFoundException_keys[k], "ProjectNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectNotFoundException
-- <p>The specified AWS CodeStar project was not found.</p>
function M.ProjectNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectNotFoundException")
	local t = { 
	}
	M.AssertProjectNotFoundException(t)
	return t
end

local UpdateTeamMemberRequest_keys = { "projectRole" = true, "projectId" = true, "remoteAccessAllowed" = true, "userArn" = true, nil }

function M.AssertUpdateTeamMemberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTeamMemberRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["projectRole"] then M.AssertRole(struct["projectRole"]) end
	if struct["projectId"] then M.AssertProjectId(struct["projectId"]) end
	if struct["remoteAccessAllowed"] then M.AssertRemoteAccessAllowed(struct["remoteAccessAllowed"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTeamMemberRequest_keys[k], "UpdateTeamMemberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTeamMemberRequest
--  
-- @param projectRole [Role] <p>The role assigned to the user in the project. Project roles have different levels of access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with Teams</a> in the AWS CodeStar User Guide.</p>
-- @param projectId [ProjectId] <p>The ID of the project.</p>
-- @param remoteAccessAllowed [RemoteAccessAllowed] <p>Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile. Even if this is set to True, the user must associate a public key with their profile before the user can access resources.</p>
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user for whom you want to change team membership attributes.</p>
-- Required parameter: projectId
-- Required parameter: userArn
function M.UpdateTeamMemberRequest(projectRole, projectId, remoteAccessAllowed, userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTeamMemberRequest")
	local t = { 
		["projectRole"] = projectRole,
		["projectId"] = projectId,
		["remoteAccessAllowed"] = remoteAccessAllowed,
		["userArn"] = userArn,
	}
	M.AssertUpdateTeamMemberRequest(t)
	return t
end

local LimitExceededException_keys = { nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>A resource limit has been exceeded.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local UpdateProjectRequest_keys = { "description" = true, "id" = true, "name" = true, nil }

function M.AssertUpdateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["description"] then M.AssertProjectDescription(struct["description"]) end
	if struct["id"] then M.AssertProjectId(struct["id"]) end
	if struct["name"] then M.AssertProjectName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateProjectRequest_keys[k], "UpdateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectRequest
--  
-- @param description [ProjectDescription] <p>The description of the project, if any.</p>
-- @param id [ProjectId] <p>The ID of the project you want to update.</p>
-- @param name [ProjectName] <p>The name of the project you want to update.</p>
-- Required parameter: id
function M.UpdateProjectRequest(description, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProjectRequest")
	local t = { 
		["description"] = description,
		["id"] = id,
		["name"] = name,
	}
	M.AssertUpdateProjectRequest(t)
	return t
end

local ListTeamMembersRequest_keys = { "projectId" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertListTeamMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTeamMembersRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	if struct["projectId"] then M.AssertProjectId(struct["projectId"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListTeamMembersRequest_keys[k], "ListTeamMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTeamMembersRequest
--  
-- @param projectId [ProjectId] <p>The ID of the project for which you want to list team members.</p>
-- @param nextToken [PaginationToken] <p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>
-- @param maxResults [MaxResults] <p>The maximum number of team members you want returned in a response.</p>
-- Required parameter: projectId
function M.ListTeamMembersRequest(projectId, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTeamMembersRequest")
	local t = { 
		["projectId"] = projectId,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListTeamMembersRequest(t)
	return t
end

local InvalidNextTokenException_keys = { nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The next token is not valid.</p>
function M.InvalidNextTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local ListTeamMembersResult_keys = { "nextToken" = true, "teamMembers" = true, nil }

function M.AssertListTeamMembersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTeamMembersResult to be of type 'table'")
	assert(struct["teamMembers"], "Expected key teamMembers to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["teamMembers"] then M.AssertTeamMemberResult(struct["teamMembers"]) end
	for k,_ in pairs(struct) do
		assert(ListTeamMembersResult_keys[k], "ListTeamMembersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTeamMembersResult
--  
-- @param nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- @param teamMembers [TeamMemberResult] <p>A list of team member objects for the project.</p>
-- Required parameter: teamMembers
function M.ListTeamMembersResult(nextToken, teamMembers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTeamMembersResult")
	local t = { 
		["nextToken"] = nextToken,
		["teamMembers"] = teamMembers,
	}
	M.AssertListTeamMembersResult(t)
	return t
end

local UpdateTeamMemberResult_keys = { "projectRole" = true, "remoteAccessAllowed" = true, "userArn" = true, nil }

function M.AssertUpdateTeamMemberResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTeamMemberResult to be of type 'table'")
	if struct["projectRole"] then M.AssertRole(struct["projectRole"]) end
	if struct["remoteAccessAllowed"] then M.AssertRemoteAccessAllowed(struct["remoteAccessAllowed"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTeamMemberResult_keys[k], "UpdateTeamMemberResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTeamMemberResult
--  
-- @param projectRole [Role] <p>The project role granted to the user.</p>
-- @param remoteAccessAllowed [RemoteAccessAllowed] <p>Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile.</p>
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user whose team membership attributes were updated.</p>
function M.UpdateTeamMemberResult(projectRole, remoteAccessAllowed, userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTeamMemberResult")
	local t = { 
		["projectRole"] = projectRole,
		["remoteAccessAllowed"] = remoteAccessAllowed,
		["userArn"] = userArn,
	}
	M.AssertUpdateTeamMemberResult(t)
	return t
end

local ProjectConfigurationException_keys = { nil }

function M.AssertProjectConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectConfigurationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ProjectConfigurationException_keys[k], "ProjectConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectConfigurationException
-- <p>Project configuration information is required but not specified.</p>
function M.ProjectConfigurationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectConfigurationException")
	local t = { 
	}
	M.AssertProjectConfigurationException(t)
	return t
end

local DeleteUserProfileRequest_keys = { "userArn" = true, nil }

function M.AssertDeleteUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserProfileRequest to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserProfileRequest_keys[k], "DeleteUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserProfileRequest
--  
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user to delete from AWS CodeStar.</p>
-- Required parameter: userArn
function M.DeleteUserProfileRequest(userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserProfileRequest")
	local t = { 
		["userArn"] = userArn,
	}
	M.AssertDeleteUserProfileRequest(t)
	return t
end

local TeamMember_keys = { "projectRole" = true, "remoteAccessAllowed" = true, "userArn" = true, nil }

function M.AssertTeamMember(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TeamMember to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	assert(struct["projectRole"], "Expected key projectRole to exist in table")
	if struct["projectRole"] then M.AssertRole(struct["projectRole"]) end
	if struct["remoteAccessAllowed"] then M.AssertRemoteAccessAllowed(struct["remoteAccessAllowed"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(TeamMember_keys[k], "TeamMember contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TeamMember
-- <p>Information about a team member in a project.</p>
-- @param projectRole [Role] <p>The role assigned to the user in the project. Project roles have different levels of access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with Teams</a> in the AWS CodeStar User Guide. </p>
-- @param remoteAccessAllowed [RemoteAccessAllowed] <p>Whether the user is allowed to remotely access project resources using an SSH public/private key pair.</p>
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- Required parameter: userArn
-- Required parameter: projectRole
function M.TeamMember(projectRole, remoteAccessAllowed, userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TeamMember")
	local t = { 
		["projectRole"] = projectRole,
		["remoteAccessAllowed"] = remoteAccessAllowed,
		["userArn"] = userArn,
	}
	M.AssertTeamMember(t)
	return t
end

local CreateUserProfileResult_keys = { "displayName" = true, "userArn" = true, "sshPublicKey" = true, "createdTimestamp" = true, "emailAddress" = true, "lastModifiedTimestamp" = true, nil }

function M.AssertCreateUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserProfileResult to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["displayName"] then M.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	if struct["sshPublicKey"] then M.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["createdTimestamp"] then M.AssertCreatedTimestamp(struct["createdTimestamp"]) end
	if struct["emailAddress"] then M.AssertEmail(struct["emailAddress"]) end
	if struct["lastModifiedTimestamp"] then M.AssertLastModifiedTimestamp(struct["lastModifiedTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserProfileResult_keys[k], "CreateUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserProfileResult
--  
-- @param displayName [UserProfileDisplayName] <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- @param sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.</p>
-- @param createdTimestamp [CreatedTimestamp] <p>The date the user profile was created, in timestamp format.</p>
-- @param emailAddress [Email] <p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>
-- @param lastModifiedTimestamp [LastModifiedTimestamp] <p>The date the user profile was last modified, in timestamp format.</p>
-- Required parameter: userArn
function M.CreateUserProfileResult(displayName, userArn, sshPublicKey, createdTimestamp, emailAddress, lastModifiedTimestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserProfileResult")
	local t = { 
		["displayName"] = displayName,
		["userArn"] = userArn,
		["sshPublicKey"] = sshPublicKey,
		["createdTimestamp"] = createdTimestamp,
		["emailAddress"] = emailAddress,
		["lastModifiedTimestamp"] = lastModifiedTimestamp,
	}
	M.AssertCreateUserProfileResult(t)
	return t
end

local ListProjectsRequest_keys = { "nextToken" = true, "maxResults" = true, nil }

function M.AssertListProjectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListProjectsRequest_keys[k], "ListProjectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsRequest
--  
-- @param nextToken [PaginationToken] <p>The continuation token to be used to return the next set of results, if the results cannot be returned in one response.</p>
-- @param maxResults [MaxResults] <p>The maximum amount of data that can be contained in a single set of results.</p>
function M.ListProjectsRequest(nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProjectsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListProjectsRequest(t)
	return t
end

local DisassociateTeamMemberResult_keys = { nil }

function M.AssertDisassociateTeamMemberResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateTeamMemberResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisassociateTeamMemberResult_keys[k], "DisassociateTeamMemberResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateTeamMemberResult
--  
function M.DisassociateTeamMemberResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateTeamMemberResult")
	local t = { 
	}
	M.AssertDisassociateTeamMemberResult(t)
	return t
end

local ListProjectsResult_keys = { "nextToken" = true, "projects" = true, nil }

function M.AssertListProjectsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsResult to be of type 'table'")
	assert(struct["projects"], "Expected key projects to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["projects"] then M.AssertProjectsList(struct["projects"]) end
	for k,_ in pairs(struct) do
		assert(ListProjectsResult_keys[k], "ListProjectsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsResult
--  
-- @param nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- @param projects [ProjectsList] <p>A list of projects.</p>
-- Required parameter: projects
function M.ListProjectsResult(nextToken, projects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProjectsResult")
	local t = { 
		["nextToken"] = nextToken,
		["projects"] = projects,
	}
	M.AssertListProjectsResult(t)
	return t
end

local ListResourcesResult_keys = { "nextToken" = true, "resources" = true, nil }

function M.AssertListResourcesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesResult to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["resources"] then M.AssertResourcesResult(struct["resources"]) end
	for k,_ in pairs(struct) do
		assert(ListResourcesResult_keys[k], "ListResourcesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesResult
--  
-- @param nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- @param resources [ResourcesResult] <p>An array of resources associated with the project. </p>
function M.ListResourcesResult(nextToken, resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourcesResult")
	local t = { 
		["nextToken"] = nextToken,
		["resources"] = resources,
	}
	M.AssertListResourcesResult(t)
	return t
end

local ListResourcesRequest_keys = { "projectId" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertListResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	if struct["projectId"] then M.AssertProjectId(struct["projectId"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListResourcesRequest_keys[k], "ListResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesRequest
--  
-- @param projectId [ProjectId] <p>The ID of the project.</p>
-- @param nextToken [PaginationToken] <p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>
-- @param maxResults [MaxResults] <p>he maximum amount of data that can be contained in a single set of results.</p>
-- Required parameter: projectId
function M.ListResourcesRequest(projectId, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourcesRequest")
	local t = { 
		["projectId"] = projectId,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListResourcesRequest(t)
	return t
end

local DeleteUserProfileResult_keys = { "userArn" = true, nil }

function M.AssertDeleteUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserProfileResult to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserProfileResult_keys[k], "DeleteUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserProfileResult
--  
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user deleted from AWS CodeStar.</p>
-- Required parameter: userArn
function M.DeleteUserProfileResult(userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserProfileResult")
	local t = { 
		["userArn"] = userArn,
	}
	M.AssertDeleteUserProfileResult(t)
	return t
end

local Resource_keys = { "id" = true, nil }

function M.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["id"] then M.AssertResourceId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(Resource_keys[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- <p>Information about a resource for a project.</p>
-- @param id [ResourceId] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- Required parameter: id
function M.Resource(id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Resource")
	local t = { 
		["id"] = id,
	}
	M.AssertResource(t)
	return t
end

local DescribeUserProfileRequest_keys = { "userArn" = true, nil }

function M.AssertDescribeUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserProfileRequest to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserProfileRequest_keys[k], "DescribeUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserProfileRequest
--  
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user.</p>
-- Required parameter: userArn
function M.DescribeUserProfileRequest(userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserProfileRequest")
	local t = { 
		["userArn"] = userArn,
	}
	M.AssertDescribeUserProfileRequest(t)
	return t
end

local DeleteProjectResult_keys = { "stackId" = true, "projectArn" = true, nil }

function M.AssertDeleteProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectResult to be of type 'table'")
	if struct["stackId"] then M.AssertStackId(struct["stackId"]) end
	if struct["projectArn"] then M.AssertProjectArn(struct["projectArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteProjectResult_keys[k], "DeleteProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectResult
--  
-- @param stackId [StackId] <p>The ID of the primary stack in AWS CloudFormation that will be deleted as part of deleting the project and its resources.</p>
-- @param projectArn [ProjectArn] <p>The Amazon Resource Name (ARN) of the deleted project.</p>
function M.DeleteProjectResult(stackId, projectArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProjectResult")
	local t = { 
		["stackId"] = stackId,
		["projectArn"] = projectArn,
	}
	M.AssertDeleteProjectResult(t)
	return t
end

local CreateProjectResult_keys = { "projectTemplateId" = true, "id" = true, "arn" = true, "clientRequestToken" = true, nil }

function M.AssertCreateProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectResult to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["arn"], "Expected key arn to exist in table")
	if struct["projectTemplateId"] then M.AssertProjectTemplateId(struct["projectTemplateId"]) end
	if struct["id"] then M.AssertProjectId(struct["id"]) end
	if struct["arn"] then M.AssertProjectArn(struct["arn"]) end
	if struct["clientRequestToken"] then M.AssertClientRequestToken(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(CreateProjectResult_keys[k], "CreateProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectResult
--  
-- @param projectTemplateId [ProjectTemplateId] <p>Reserved for future use.</p>
-- @param id [ProjectId] <p>Reserved for future use.</p>
-- @param arn [ProjectArn] <p>Reserved for future use.</p>
-- @param clientRequestToken [ClientRequestToken] <p>Reserved for future use.</p>
-- Required parameter: id
-- Required parameter: arn
function M.CreateProjectResult(projectTemplateId, id, arn, clientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProjectResult")
	local t = { 
		["projectTemplateId"] = projectTemplateId,
		["id"] = id,
		["arn"] = arn,
		["clientRequestToken"] = clientRequestToken,
	}
	M.AssertCreateProjectResult(t)
	return t
end

local UpdateUserProfileRequest_keys = { "emailAddress" = true, "sshPublicKey" = true, "displayName" = true, "userArn" = true, nil }

function M.AssertUpdateUserProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserProfileRequest to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["emailAddress"] then M.AssertEmail(struct["emailAddress"]) end
	if struct["sshPublicKey"] then M.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["displayName"] then M.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserProfileRequest_keys[k], "UpdateUserProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserProfileRequest
--  
-- @param emailAddress [Email] <p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>
-- @param sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>
-- @param displayName [UserProfileDisplayName] <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
-- @param userArn [UserArn] <p>The name that will be displayed as the friendly name for the user in AWS CodeStar.</p>
-- Required parameter: userArn
function M.UpdateUserProfileRequest(emailAddress, sshPublicKey, displayName, userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserProfileRequest")
	local t = { 
		["emailAddress"] = emailAddress,
		["sshPublicKey"] = sshPublicKey,
		["displayName"] = displayName,
		["userArn"] = userArn,
	}
	M.AssertUpdateUserProfileRequest(t)
	return t
end

local ProjectAlreadyExistsException_keys = { nil }

function M.AssertProjectAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ProjectAlreadyExistsException_keys[k], "ProjectAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectAlreadyExistsException
-- <p>An AWS CodeStar project with the same ID already exists in this region for the AWS account. AWS CodeStar project IDs must be unique within a region for the AWS account.</p>
function M.ProjectAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectAlreadyExistsException")
	local t = { 
	}
	M.AssertProjectAlreadyExistsException(t)
	return t
end

local InvalidServiceRoleException_keys = { nil }

function M.AssertInvalidServiceRoleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidServiceRoleException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidServiceRoleException_keys[k], "InvalidServiceRoleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidServiceRoleException
-- <p>The service role is not valid.</p>
function M.InvalidServiceRoleException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidServiceRoleException")
	local t = { 
	}
	M.AssertInvalidServiceRoleException(t)
	return t
end

local DescribeProjectResult_keys = { "stackId" = true, "projectTemplateId" = true, "description" = true, "createdTimeStamp" = true, "clientRequestToken" = true, "id" = true, "arn" = true, "name" = true, nil }

function M.AssertDescribeProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProjectResult to be of type 'table'")
	if struct["stackId"] then M.AssertStackId(struct["stackId"]) end
	if struct["projectTemplateId"] then M.AssertProjectTemplateId(struct["projectTemplateId"]) end
	if struct["description"] then M.AssertProjectDescription(struct["description"]) end
	if struct["createdTimeStamp"] then M.AssertCreatedTimestamp(struct["createdTimeStamp"]) end
	if struct["clientRequestToken"] then M.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["id"] then M.AssertProjectId(struct["id"]) end
	if struct["arn"] then M.AssertProjectArn(struct["arn"]) end
	if struct["name"] then M.AssertProjectName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProjectResult_keys[k], "DescribeProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProjectResult
--  
-- @param stackId [StackId] <p>The ID of the primary stack in AWS CloudFormation used to generate resources for the project.</p>
-- @param projectTemplateId [ProjectTemplateId] <p>The ID for the AWS CodeStar project template used to create the project.</p>
-- @param description [ProjectDescription] <p>The description of the project, if any.</p>
-- @param createdTimeStamp [CreatedTimestamp] <p>The date and time the project was created, in timestamp format.</p>
-- @param clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested project creation. </p>
-- @param id [ProjectId] <p>The ID of the project.</p>
-- @param arn [ProjectArn] <p>The Amazon Resource Name (ARN) for the project.</p>
-- @param name [ProjectName] <p>The display name for the project.</p>
function M.DescribeProjectResult(stackId, projectTemplateId, description, createdTimeStamp, clientRequestToken, id, arn, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProjectResult")
	local t = { 
		["stackId"] = stackId,
		["projectTemplateId"] = projectTemplateId,
		["description"] = description,
		["createdTimeStamp"] = createdTimeStamp,
		["clientRequestToken"] = clientRequestToken,
		["id"] = id,
		["arn"] = arn,
		["name"] = name,
	}
	M.AssertDescribeProjectResult(t)
	return t
end

local ListUserProfilesRequest_keys = { "nextToken" = true, "maxResults" = true, nil }

function M.AssertListUserProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserProfilesRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListUserProfilesRequest_keys[k], "ListUserProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserProfilesRequest
--  
-- @param nextToken [PaginationToken] <p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>
-- @param maxResults [MaxResults] <p>The maximum number of results to return in a response.</p>
function M.ListUserProfilesRequest(nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserProfilesRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListUserProfilesRequest(t)
	return t
end

local UpdateProjectResult_keys = { nil }

function M.AssertUpdateProjectResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateProjectResult_keys[k], "UpdateProjectResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectResult
--  
function M.UpdateProjectResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProjectResult")
	local t = { 
	}
	M.AssertUpdateProjectResult(t)
	return t
end

local UserProfileSummary_keys = { "emailAddress" = true, "sshPublicKey" = true, "displayName" = true, "userArn" = true, nil }

function M.AssertUserProfileSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserProfileSummary to be of type 'table'")
	if struct["emailAddress"] then M.AssertEmail(struct["emailAddress"]) end
	if struct["sshPublicKey"] then M.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["displayName"] then M.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(UserProfileSummary_keys[k], "UserProfileSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserProfileSummary
-- <p>Information about a user's profile in AWS CodeStar.</p>
-- @param emailAddress [Email] <p>The email address associated with the user.</p>
-- @param sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>
-- @param displayName [UserProfileDisplayName] <p>The display name of a user in AWS CodeStar. For example, this could be set to both first and last name ("Mary Major") or a single name ("Mary"). The display name is also used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the display name, the first character that appears after the space will be used as the second character in the user initial icon. The initial icon displays a maximum of two characters, so a display name with more than one space (for example "Mary Jane Major") would generate an initial icon using the first character and the first character after the space ("MJ", not "MM").</p>
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
function M.UserProfileSummary(emailAddress, sshPublicKey, displayName, userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserProfileSummary")
	local t = { 
		["emailAddress"] = emailAddress,
		["sshPublicKey"] = sshPublicKey,
		["displayName"] = displayName,
		["userArn"] = userArn,
	}
	M.AssertUserProfileSummary(t)
	return t
end

local DescribeUserProfileResult_keys = { "displayName" = true, "userArn" = true, "sshPublicKey" = true, "createdTimestamp" = true, "emailAddress" = true, "lastModifiedTimestamp" = true, nil }

function M.AssertDescribeUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserProfileResult to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	assert(struct["createdTimestamp"], "Expected key createdTimestamp to exist in table")
	assert(struct["lastModifiedTimestamp"], "Expected key lastModifiedTimestamp to exist in table")
	if struct["displayName"] then M.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	if struct["sshPublicKey"] then M.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["createdTimestamp"] then M.AssertCreatedTimestamp(struct["createdTimestamp"]) end
	if struct["emailAddress"] then M.AssertEmail(struct["emailAddress"]) end
	if struct["lastModifiedTimestamp"] then M.AssertLastModifiedTimestamp(struct["lastModifiedTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUserProfileResult_keys[k], "DescribeUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserProfileResult
--  
-- @param displayName [UserProfileDisplayName] <p>The display name shown for the user in AWS CodeStar projects. For example, this could be set to both first and last name ("Mary Major") or a single name ("Mary"). The display name is also used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the display name, the first character that appears after the space will be used as the second character in the user initial icon. The initial icon displays a maximum of two characters, so a display name with more than one space (for example "Mary Jane Major") would generate an initial icon using the first character and the first character after the space ("MJ", not "MM").</p>
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user.</p>
-- @param sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user. This SSH public key is associated with the user profile, and can be used in conjunction with the associated private key for access to project resources, such as Amazon EC2 instances, if a project owner grants remote access to those resources.</p>
-- @param createdTimestamp [CreatedTimestamp] <p>The date and time when the user profile was created in AWS CodeStar, in timestamp format.</p>
-- @param emailAddress [Email] <p>The email address for the user. Optional.</p>
-- @param lastModifiedTimestamp [LastModifiedTimestamp] <p>The date and time when the user profile was last modified, in timestamp format.</p>
-- Required parameter: userArn
-- Required parameter: createdTimestamp
-- Required parameter: lastModifiedTimestamp
function M.DescribeUserProfileResult(displayName, userArn, sshPublicKey, createdTimestamp, emailAddress, lastModifiedTimestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserProfileResult")
	local t = { 
		["displayName"] = displayName,
		["userArn"] = userArn,
		["sshPublicKey"] = sshPublicKey,
		["createdTimestamp"] = createdTimestamp,
		["emailAddress"] = emailAddress,
		["lastModifiedTimestamp"] = lastModifiedTimestamp,
	}
	M.AssertDescribeUserProfileResult(t)
	return t
end

local AssociateTeamMemberRequest_keys = { "projectRole" = true, "projectId" = true, "remoteAccessAllowed" = true, "clientRequestToken" = true, "userArn" = true, nil }

function M.AssertAssociateTeamMemberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateTeamMemberRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	assert(struct["projectRole"], "Expected key projectRole to exist in table")
	if struct["projectRole"] then M.AssertRole(struct["projectRole"]) end
	if struct["projectId"] then M.AssertProjectId(struct["projectId"]) end
	if struct["remoteAccessAllowed"] then M.AssertRemoteAccessAllowed(struct["remoteAccessAllowed"]) end
	if struct["clientRequestToken"] then M.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(AssociateTeamMemberRequest_keys[k], "AssociateTeamMemberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateTeamMemberRequest
--  
-- @param projectRole [Role] <p>The AWS CodeStar project role that will apply to this user. This role determines what actions a user can take in an AWS CodeStar project.</p>
-- @param projectId [ProjectId] <p>The ID of the project to which you will add the IAM user.</p>
-- @param remoteAccessAllowed [RemoteAccessAllowed] <p>Whether the team member is allowed to use an SSH public/private key pair to remotely access project resources, for example Amazon EC2 instances.</p>
-- @param clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested the team member association to the project. This token can be used to repeat the request. </p>
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) for the IAM user you want to add to the DevHub project.</p>
-- Required parameter: projectId
-- Required parameter: userArn
-- Required parameter: projectRole
function M.AssociateTeamMemberRequest(projectRole, projectId, remoteAccessAllowed, clientRequestToken, userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateTeamMemberRequest")
	local t = { 
		["projectRole"] = projectRole,
		["projectId"] = projectId,
		["remoteAccessAllowed"] = remoteAccessAllowed,
		["clientRequestToken"] = clientRequestToken,
		["userArn"] = userArn,
	}
	M.AssertAssociateTeamMemberRequest(t)
	return t
end

local ProjectCreationFailedException_keys = { nil }

function M.AssertProjectCreationFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectCreationFailedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ProjectCreationFailedException_keys[k], "ProjectCreationFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectCreationFailedException
-- <p>The project creation request was valid, but a nonspecific exception or error occurred during project creation. The project could not be created in AWS CodeStar.</p>
function M.ProjectCreationFailedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectCreationFailedException")
	local t = { 
	}
	M.AssertProjectCreationFailedException(t)
	return t
end

local DescribeProjectRequest_keys = { "id" = true, nil }

function M.AssertDescribeProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProjectRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["id"] then M.AssertProjectId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(DescribeProjectRequest_keys[k], "DescribeProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProjectRequest
--  
-- @param id [ProjectId] <p>The ID of the project.</p>
-- Required parameter: id
function M.DescribeProjectRequest(id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProjectRequest")
	local t = { 
		["id"] = id,
	}
	M.AssertDescribeProjectRequest(t)
	return t
end

local TeamMemberNotFoundException_keys = { nil }

function M.AssertTeamMemberNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TeamMemberNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TeamMemberNotFoundException_keys[k], "TeamMemberNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TeamMemberNotFoundException
-- <p>The specified team member was not found.</p>
function M.TeamMemberNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TeamMemberNotFoundException")
	local t = { 
	}
	M.AssertTeamMemberNotFoundException(t)
	return t
end

local ListUserProfilesResult_keys = { "nextToken" = true, "userProfiles" = true, nil }

function M.AssertListUserProfilesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserProfilesResult to be of type 'table'")
	assert(struct["userProfiles"], "Expected key userProfiles to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["userProfiles"] then M.AssertUserProfilesList(struct["userProfiles"]) end
	for k,_ in pairs(struct) do
		assert(ListUserProfilesResult_keys[k], "ListUserProfilesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserProfilesResult
--  
-- @param nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- @param userProfiles [UserProfilesList] <p>All the user profiles configured in AWS CodeStar for an AWS account.</p>
-- Required parameter: userProfiles
function M.ListUserProfilesResult(nextToken, userProfiles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserProfilesResult")
	local t = { 
		["nextToken"] = nextToken,
		["userProfiles"] = userProfiles,
	}
	M.AssertListUserProfilesResult(t)
	return t
end

local DisassociateTeamMemberRequest_keys = { "projectId" = true, "userArn" = true, nil }

function M.AssertDisassociateTeamMemberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateTeamMemberRequest to be of type 'table'")
	assert(struct["projectId"], "Expected key projectId to exist in table")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["projectId"] then M.AssertProjectId(struct["projectId"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateTeamMemberRequest_keys[k], "DisassociateTeamMemberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateTeamMemberRequest
--  
-- @param projectId [ProjectId] <p>The ID of the AWS CodeStar project from which you want to remove a team member.</p>
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the IAM user or group whom you want to remove from the project.</p>
-- Required parameter: projectId
-- Required parameter: userArn
function M.DisassociateTeamMemberRequest(projectId, userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateTeamMemberRequest")
	local t = { 
		["projectId"] = projectId,
		["userArn"] = userArn,
	}
	M.AssertDisassociateTeamMemberRequest(t)
	return t
end

local UserProfileAlreadyExistsException_keys = { nil }

function M.AssertUserProfileAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserProfileAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UserProfileAlreadyExistsException_keys[k], "UserProfileAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserProfileAlreadyExistsException
-- <p>A user profile with that name already exists in this region for the AWS account. AWS CodeStar user profile names must be unique within a region for the AWS account. </p>
function M.UserProfileAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserProfileAlreadyExistsException")
	local t = { 
	}
	M.AssertUserProfileAlreadyExistsException(t)
	return t
end

local ProjectSummary_keys = { "projectId" = true, "projectArn" = true, nil }

function M.AssertProjectSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectSummary to be of type 'table'")
	if struct["projectId"] then M.AssertProjectId(struct["projectId"]) end
	if struct["projectArn"] then M.AssertProjectArn(struct["projectArn"]) end
	for k,_ in pairs(struct) do
		assert(ProjectSummary_keys[k], "ProjectSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectSummary
-- <p>Information about the metadata for a project.</p>
-- @param projectId [ProjectId] <p>The ID of the project.</p>
-- @param projectArn [ProjectArn] <p>The Amazon Resource Name (ARN) of the project.</p>
function M.ProjectSummary(projectId, projectArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectSummary")
	local t = { 
		["projectId"] = projectId,
		["projectArn"] = projectArn,
	}
	M.AssertProjectSummary(t)
	return t
end

local AssociateTeamMemberResult_keys = { "clientRequestToken" = true, nil }

function M.AssertAssociateTeamMemberResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateTeamMemberResult to be of type 'table'")
	if struct["clientRequestToken"] then M.AssertClientRequestToken(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(AssociateTeamMemberResult_keys[k], "AssociateTeamMemberResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateTeamMemberResult
--  
-- @param clientRequestToken [ClientRequestToken] <p>The user- or system-generated token from the initial request that can be used to repeat the request. </p>
function M.AssociateTeamMemberResult(clientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateTeamMemberResult")
	local t = { 
		["clientRequestToken"] = clientRequestToken,
	}
	M.AssertAssociateTeamMemberResult(t)
	return t
end

local UpdateUserProfileResult_keys = { "displayName" = true, "userArn" = true, "sshPublicKey" = true, "createdTimestamp" = true, "emailAddress" = true, "lastModifiedTimestamp" = true, nil }

function M.AssertUpdateUserProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserProfileResult to be of type 'table'")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["displayName"] then M.AssertUserProfileDisplayName(struct["displayName"]) end
	if struct["userArn"] then M.AssertUserArn(struct["userArn"]) end
	if struct["sshPublicKey"] then M.AssertSshPublicKey(struct["sshPublicKey"]) end
	if struct["createdTimestamp"] then M.AssertCreatedTimestamp(struct["createdTimestamp"]) end
	if struct["emailAddress"] then M.AssertEmail(struct["emailAddress"]) end
	if struct["lastModifiedTimestamp"] then M.AssertLastModifiedTimestamp(struct["lastModifiedTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserProfileResult_keys[k], "UpdateUserProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserProfileResult
--  
-- @param displayName [UserProfileDisplayName] <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
-- @param userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- @param sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.</p>
-- @param createdTimestamp [CreatedTimestamp] <p>The date the user profile was created, in timestamp format.</p>
-- @param emailAddress [Email] <p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>
-- @param lastModifiedTimestamp [LastModifiedTimestamp] <p>The date the user profile was last modified, in timestamp format.</p>
-- Required parameter: userArn
function M.UpdateUserProfileResult(displayName, userArn, sshPublicKey, createdTimestamp, emailAddress, lastModifiedTimestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserProfileResult")
	local t = { 
		["displayName"] = displayName,
		["userArn"] = userArn,
		["sshPublicKey"] = sshPublicKey,
		["createdTimestamp"] = createdTimestamp,
		["emailAddress"] = emailAddress,
		["lastModifiedTimestamp"] = lastModifiedTimestamp,
	}
	M.AssertUpdateUserProfileResult(t)
	return t
end

local TeamMemberAlreadyAssociatedException_keys = { nil }

function M.AssertTeamMemberAlreadyAssociatedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TeamMemberAlreadyAssociatedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TeamMemberAlreadyAssociatedException_keys[k], "TeamMemberAlreadyAssociatedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TeamMemberAlreadyAssociatedException
-- <p>The team member is already associated with a role in this project.</p>
function M.TeamMemberAlreadyAssociatedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TeamMemberAlreadyAssociatedException")
	local t = { 
	}
	M.AssertTeamMemberAlreadyAssociatedException(t)
	return t
end

local CreateProjectRequest_keys = { "clientRequestToken" = true, "description" = true, "name" = true, "id" = true, nil }

function M.AssertCreateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["clientRequestToken"] then M.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["description"] then M.AssertProjectDescription(struct["description"]) end
	if struct["name"] then M.AssertProjectName(struct["name"]) end
	if struct["id"] then M.AssertProjectId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(CreateProjectRequest_keys[k], "CreateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectRequest
--  
-- @param clientRequestToken [ClientRequestToken] <p>Reserved for future use.</p>
-- @param description [ProjectDescription] <p>Reserved for future use.</p>
-- @param name [ProjectName] <p>Reserved for future use.</p>
-- @param id [ProjectId] <p>Reserved for future use.</p>
-- Required parameter: name
-- Required parameter: id
function M.CreateProjectRequest(clientRequestToken, description, name, id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProjectRequest")
	local t = { 
		["clientRequestToken"] = clientRequestToken,
		["description"] = description,
		["name"] = name,
		["id"] = id,
	}
	M.AssertCreateProjectRequest(t)
	return t
end

function M.AssertStackId(str)
	assert(str)
	assert(type(str) == "string", "Expected StackId to be of type 'string'")
	assert(str:match("^arn:aws[^:%s]*:cloudformation:[^:%s]+:[0-9]{12}:stack%/[^:%s]+%/[^:%s]+$"), "Expected string to match pattern '^arn:aws[^:%s]*:cloudformation:[^:%s]+:[0-9]{12}:stack%/[^:%s]+%/[^:%s]+$'")
end

--  
function M.StackId(str)
	M.AssertStackId(str)
	return str
end

function M.AssertUserArn(str)
	assert(str)
	assert(type(str) == "string", "Expected UserArn to be of type 'string'")
	assert(#str <= 95, "Expected string to be max 95 characters")
	assert(#str >= 32, "Expected string to be min 32 characters")
	assert(str:match("arn:aws:iam::%d{12}:user%/[%w-]+"), "Expected string to match pattern 'arn:aws:iam::%d{12}:user%/[%w-]+'")
end

--  
function M.UserArn(str)
	M.AssertUserArn(str)
	return str
end

function M.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[%w/+=]+$"), "Expected string to match pattern '^[%w/+=]+$'")
end

--  
function M.PaginationToken(str)
	M.AssertPaginationToken(str)
	return str
end

function M.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
	assert(str:match("^(Owner|Viewer|Contributor)$"), "Expected string to match pattern '^(Owner|Viewer|Contributor)$'")
end

--  
function M.Role(str)
	M.AssertRole(str)
	return str
end

function M.AssertEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected Email to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("^[%w-.+]+@[%w-.+]+$"), "Expected string to match pattern '^[%w-.+]+@[%w-.+]+$'")
end

--  
function M.Email(str)
	M.AssertEmail(str)
	return str
end

function M.AssertProjectArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectArn to be of type 'string'")
	assert(str:match("^arn:aws[^:%s]*:codestar:[^:%s]+:[0-9]{12}:project%/[a-z]([a-z0-9|-])+$"), "Expected string to match pattern '^arn:aws[^:%s]*:codestar:[^:%s]+:[0-9]{12}:project%/[a-z]([a-z0-9|-])+$'")
end

--  
function M.ProjectArn(str)
	M.AssertProjectArn(str)
	return str
end

function M.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
	assert(#str >= 11, "Expected string to be min 11 characters")
	assert(str:match("^arn%:aws%:%S.*%:.*"), "Expected string to match pattern '^arn%:aws%:%S.*%:.*'")
end

--  
function M.ResourceId(str)
	M.AssertResourceId(str)
	return str
end

function M.AssertProjectTemplateId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectTemplateId to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^arn:aws[^:%s]{0,5}:codestar:[^:%s]+::project-template%/[a-z0-9-]+$"), "Expected string to match pattern '^arn:aws[^:%s]{0,5}:codestar:[^:%s]+::project-template%/[a-z0-9-]+$'")
end

--  
function M.ProjectTemplateId(str)
	M.AssertProjectTemplateId(str)
	return str
end

function M.AssertUserProfileDisplayName(str)
	assert(str)
	assert(type(str) == "string", "Expected UserProfileDisplayName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^%S(.*%S)?$"), "Expected string to match pattern '^%S(.*%S)?$'")
end

--  
function M.UserProfileDisplayName(str)
	M.AssertUserProfileDisplayName(str)
	return str
end

function M.AssertSshPublicKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SshPublicKey to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(str:match("^[%t%r%n%u0020-%u00FF]*$"), "Expected string to match pattern '^[%t%r%n%u0020-%u00FF]*$'")
end

--  
function M.SshPublicKey(str)
	M.AssertSshPublicKey(str)
	return str
end

function M.AssertProjectDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(str:match("^$|^%S(.*%S)?$"), "Expected string to match pattern '^$|^%S(.*%S)?$'")
end

--  
function M.ProjectDescription(str)
	M.AssertProjectDescription(str)
	return str
end

function M.AssertProjectId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectId to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("^[a-z][a-z0-9-]+$"), "Expected string to match pattern '^[a-z][a-z0-9-]+$'")
end

--  
function M.ProjectId(str)
	M.AssertProjectId(str)
	return str
end

function M.AssertClientRequestToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientRequestToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[%w:/-]+$"), "Expected string to match pattern '^[%w:/-]+$'")
end

--  
function M.ClientRequestToken(str)
	M.AssertClientRequestToken(str)
	return str
end

function M.AssertProjectName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^%S(.*%S)?$"), "Expected string to match pattern '^%S(.*%S)?$'")
end

--  
function M.ProjectName(str)
	M.AssertProjectName(str)
	return str
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

function M.AssertRemoteAccessAllowed(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RemoteAccessAllowed to be of type 'boolean'")
end

function M.RemoteAccessAllowed(boolean)
	M.AssertRemoteAccessAllowed(boolean)
	return boolean
end

function M.AssertDeleteStack(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DeleteStack to be of type 'boolean'")
end

function M.DeleteStack(boolean)
	M.AssertDeleteStack(boolean)
	return boolean
end

function M.AssertLastModifiedTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModifiedTimestamp to be of type 'string'")
end

function M.LastModifiedTimestamp(timestamp)
	M.AssertLastModifiedTimestamp(timestamp)
	return timestamp
end

function M.AssertCreatedTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedTimestamp to be of type 'string'")
end

function M.CreatedTimestamp(timestamp)
	M.AssertCreatedTimestamp(timestamp)
	return timestamp
end

function M.AssertResourcesResult(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourcesResult to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResource(v)
	end
end

--  
-- List of Resource objects
function M.ResourcesResult(list)
	M.AssertResourcesResult(list)
	return list
end

function M.AssertTeamMemberResult(list)
	assert(list)
	assert(type(list) == "table", "Expected TeamMemberResult to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTeamMember(v)
	end
end

--  
-- List of TeamMember objects
function M.TeamMemberResult(list)
	M.AssertTeamMemberResult(list)
	return list
end

function M.AssertUserProfilesList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserProfilesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUserProfileSummary(v)
	end
end

--  
-- List of UserProfileSummary objects
function M.UserProfilesList(list)
	M.AssertUserProfilesList(list)
	return list
end

function M.AssertProjectsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProjectsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProjectSummary(v)
	end
end

--  
-- List of ProjectSummary objects
function M.ProjectsList(list)
	M.AssertProjectsList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- AssociateTeamMember
-- @param AssociateTeamMemberRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateTeamMemberAsync(AssociateTeamMemberRequest, cb)
	assert(AssociateTeamMemberRequest, "You must provide a AssociateTeamMemberRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.AssociateTeamMember",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AssociateTeamMemberRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateTeamMember
-- @param DisassociateTeamMemberRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateTeamMemberAsync(DisassociateTeamMemberRequest, cb)
	assert(DisassociateTeamMemberRequest, "You must provide a DisassociateTeamMemberRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DisassociateTeamMember",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisassociateTeamMemberRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateTeamMember
-- @param UpdateTeamMemberRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTeamMemberAsync(UpdateTeamMemberRequest, cb)
	assert(UpdateTeamMemberRequest, "You must provide a UpdateTeamMemberRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.UpdateTeamMember",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateTeamMemberRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUserProfile
-- @param CreateUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserProfileAsync(CreateUserProfileRequest, cb)
	assert(CreateUserProfileRequest, "You must provide a CreateUserProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.CreateUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateUserProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateUserProfile
-- @param UpdateUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserProfileAsync(UpdateUserProfileRequest, cb)
	assert(UpdateUserProfileRequest, "You must provide a UpdateUserProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.UpdateUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateUserProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListUserProfiles
-- @param ListUserProfilesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUserProfilesAsync(ListUserProfilesRequest, cb)
	assert(ListUserProfilesRequest, "You must provide a ListUserProfilesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListUserProfiles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListUserProfilesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListResources
-- @param ListResourcesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListResourcesAsync(ListResourcesRequest, cb)
	assert(ListResourcesRequest, "You must provide a ListResourcesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListResourcesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateProject
-- @param CreateProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProjectAsync(CreateProjectRequest, cb)
	assert(CreateProjectRequest, "You must provide a CreateProjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.CreateProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateProjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListProjects
-- @param ListProjectsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListProjectsAsync(ListProjectsRequest, cb)
	assert(ListProjectsRequest, "You must provide a ListProjectsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListProjects",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListProjectsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTeamMembers
-- @param ListTeamMembersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTeamMembersAsync(ListTeamMembersRequest, cb)
	assert(ListTeamMembersRequest, "You must provide a ListTeamMembersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.ListTeamMembers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTeamMembersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteProject
-- @param DeleteProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProjectAsync(DeleteProjectRequest, cb)
	assert(DeleteProjectRequest, "You must provide a DeleteProjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DeleteProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteProjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeProject
-- @param DescribeProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProjectAsync(DescribeProjectRequest, cb)
	assert(DescribeProjectRequest, "You must provide a DescribeProjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DescribeProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeProjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateProject
-- @param UpdateProjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateProjectAsync(UpdateProjectRequest, cb)
	assert(UpdateProjectRequest, "You must provide a UpdateProjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.UpdateProject",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateProjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeUserProfile
-- @param DescribeUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUserProfileAsync(DescribeUserProfileRequest, cb)
	assert(DescribeUserProfileRequest, "You must provide a DescribeUserProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DescribeUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeUserProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUserProfile
-- @param DeleteUserProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserProfileAsync(DeleteUserProfileRequest, cb)
	assert(DeleteUserProfileRequest, "You must provide a DeleteUserProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "CodeStar_20170419.DeleteUserProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteUserProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
