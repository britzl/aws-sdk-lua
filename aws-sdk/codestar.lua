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
-- @param _emailAddress [Email] <p>The email address that will be displayed as part of the user's profile in AWS CodeStar.</p>
-- @param _sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>
-- @param _displayName [UserProfileDisplayName] <p>The name that will be displayed as the friendly name for the user in AWS CodeStar. </p>
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- Required parameter: userArn
-- Required parameter: displayName
-- Required parameter: emailAddress
function M.CreateUserProfileRequest(_emailAddress, _sshPublicKey, _displayName, _userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserProfileRequest")
	local t = { 
		["emailAddress"] = _emailAddress,
		["sshPublicKey"] = _sshPublicKey,
		["displayName"] = _displayName,
		["userArn"] = _userArn,
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
function M.UserProfileNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserProfileNotFoundException")
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
-- @param _deleteStack [DeleteStack] <p>Whether to send a delete request for the primary stack in AWS CloudFormation originally used to generate the project and its resources. This option will delete all AWS resources for the project (except for any buckets in Amazon S3) as well as deleting the project itself. Recommended for most use cases.</p>
-- @param _id [ProjectId] <p>The ID of the project to be deleted in AWS CodeStar.</p>
-- @param _clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested project deletion. This token can be used to repeat the request. </p>
-- Required parameter: id
function M.DeleteProjectRequest(_deleteStack, _id, _clientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProjectRequest")
	local t = { 
		["deleteStack"] = _deleteStack,
		["id"] = _id,
		["clientRequestToken"] = _clientRequestToken,
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
function M.ConcurrentModificationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
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
function M.ValidationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
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
function M.ProjectNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectNotFoundException")
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
-- @param _projectRole [Role] <p>The role assigned to the user in the project. Project roles have different levels of access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with Teams</a> in the AWS CodeStar User Guide.</p>
-- @param _projectId [ProjectId] <p>The ID of the project.</p>
-- @param _remoteAccessAllowed [RemoteAccessAllowed] <p>Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile. Even if this is set to True, the user must associate a public key with their profile before the user can access resources.</p>
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user for whom you want to change team membership attributes.</p>
-- Required parameter: projectId
-- Required parameter: userArn
function M.UpdateTeamMemberRequest(_projectRole, _projectId, _remoteAccessAllowed, _userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTeamMemberRequest")
	local t = { 
		["projectRole"] = _projectRole,
		["projectId"] = _projectId,
		["remoteAccessAllowed"] = _remoteAccessAllowed,
		["userArn"] = _userArn,
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
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
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
-- @param _description [ProjectDescription] <p>The description of the project, if any.</p>
-- @param _id [ProjectId] <p>The ID of the project you want to update.</p>
-- @param _name [ProjectName] <p>The name of the project you want to update.</p>
-- Required parameter: id
function M.UpdateProjectRequest(_description, _id, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProjectRequest")
	local t = { 
		["description"] = _description,
		["id"] = _id,
		["name"] = _name,
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
-- @param _projectId [ProjectId] <p>The ID of the project for which you want to list team members.</p>
-- @param _nextToken [PaginationToken] <p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>
-- @param _maxResults [MaxResults] <p>The maximum number of team members you want returned in a response.</p>
-- Required parameter: projectId
function M.ListTeamMembersRequest(_projectId, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTeamMembersRequest")
	local t = { 
		["projectId"] = _projectId,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
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
function M.InvalidNextTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
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
-- @param _nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- @param _teamMembers [TeamMemberResult] <p>A list of team member objects for the project.</p>
-- Required parameter: teamMembers
function M.ListTeamMembersResult(_nextToken, _teamMembers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTeamMembersResult")
	local t = { 
		["nextToken"] = _nextToken,
		["teamMembers"] = _teamMembers,
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
-- @param _projectRole [Role] <p>The project role granted to the user.</p>
-- @param _remoteAccessAllowed [RemoteAccessAllowed] <p>Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile.</p>
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user whose team membership attributes were updated.</p>
function M.UpdateTeamMemberResult(_projectRole, _remoteAccessAllowed, _userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTeamMemberResult")
	local t = { 
		["projectRole"] = _projectRole,
		["remoteAccessAllowed"] = _remoteAccessAllowed,
		["userArn"] = _userArn,
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
function M.ProjectConfigurationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectConfigurationException")
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
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user to delete from AWS CodeStar.</p>
-- Required parameter: userArn
function M.DeleteUserProfileRequest(_userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserProfileRequest")
	local t = { 
		["userArn"] = _userArn,
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
-- @param _projectRole [Role] <p>The role assigned to the user in the project. Project roles have different levels of access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with Teams</a> in the AWS CodeStar User Guide. </p>
-- @param _remoteAccessAllowed [RemoteAccessAllowed] <p>Whether the user is allowed to remotely access project resources using an SSH public/private key pair.</p>
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- Required parameter: userArn
-- Required parameter: projectRole
function M.TeamMember(_projectRole, _remoteAccessAllowed, _userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TeamMember")
	local t = { 
		["projectRole"] = _projectRole,
		["remoteAccessAllowed"] = _remoteAccessAllowed,
		["userArn"] = _userArn,
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
-- @param _displayName [UserProfileDisplayName] <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- @param _sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.</p>
-- @param _createdTimestamp [CreatedTimestamp] <p>The date the user profile was created, in timestamp format.</p>
-- @param _emailAddress [Email] <p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>
-- @param _lastModifiedTimestamp [LastModifiedTimestamp] <p>The date the user profile was last modified, in timestamp format.</p>
-- Required parameter: userArn
function M.CreateUserProfileResult(_displayName, _userArn, _sshPublicKey, _createdTimestamp, _emailAddress, _lastModifiedTimestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserProfileResult")
	local t = { 
		["displayName"] = _displayName,
		["userArn"] = _userArn,
		["sshPublicKey"] = _sshPublicKey,
		["createdTimestamp"] = _createdTimestamp,
		["emailAddress"] = _emailAddress,
		["lastModifiedTimestamp"] = _lastModifiedTimestamp,
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
-- @param _nextToken [PaginationToken] <p>The continuation token to be used to return the next set of results, if the results cannot be returned in one response.</p>
-- @param _maxResults [MaxResults] <p>The maximum amount of data that can be contained in a single set of results.</p>
function M.ListProjectsRequest(_nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProjectsRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
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
function M.DisassociateTeamMemberResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateTeamMemberResult")
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
-- @param _nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- @param _projects [ProjectsList] <p>A list of projects.</p>
-- Required parameter: projects
function M.ListProjectsResult(_nextToken, _projects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProjectsResult")
	local t = { 
		["nextToken"] = _nextToken,
		["projects"] = _projects,
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
-- @param _nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- @param _resources [ResourcesResult] <p>An array of resources associated with the project. </p>
function M.ListResourcesResult(_nextToken, _resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourcesResult")
	local t = { 
		["nextToken"] = _nextToken,
		["resources"] = _resources,
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
-- @param _projectId [ProjectId] <p>The ID of the project.</p>
-- @param _nextToken [PaginationToken] <p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>
-- @param _maxResults [MaxResults] <p>he maximum amount of data that can be contained in a single set of results.</p>
-- Required parameter: projectId
function M.ListResourcesRequest(_projectId, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourcesRequest")
	local t = { 
		["projectId"] = _projectId,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
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
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user deleted from AWS CodeStar.</p>
-- Required parameter: userArn
function M.DeleteUserProfileResult(_userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserProfileResult")
	local t = { 
		["userArn"] = _userArn,
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
-- @param _id [ResourceId] <p>The Amazon Resource Name (ARN) of the resource.</p>
-- Required parameter: id
function M.Resource(_id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Resource")
	local t = { 
		["id"] = _id,
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
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user.</p>
-- Required parameter: userArn
function M.DescribeUserProfileRequest(_userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserProfileRequest")
	local t = { 
		["userArn"] = _userArn,
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
-- @param _stackId [StackId] <p>The ID of the primary stack in AWS CloudFormation that will be deleted as part of deleting the project and its resources.</p>
-- @param _projectArn [ProjectArn] <p>The Amazon Resource Name (ARN) of the deleted project.</p>
function M.DeleteProjectResult(_stackId, _projectArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProjectResult")
	local t = { 
		["stackId"] = _stackId,
		["projectArn"] = _projectArn,
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
-- @param _projectTemplateId [ProjectTemplateId] <p>Reserved for future use.</p>
-- @param _id [ProjectId] <p>Reserved for future use.</p>
-- @param _arn [ProjectArn] <p>Reserved for future use.</p>
-- @param _clientRequestToken [ClientRequestToken] <p>Reserved for future use.</p>
-- Required parameter: id
-- Required parameter: arn
function M.CreateProjectResult(_projectTemplateId, _id, _arn, _clientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProjectResult")
	local t = { 
		["projectTemplateId"] = _projectTemplateId,
		["id"] = _id,
		["arn"] = _arn,
		["clientRequestToken"] = _clientRequestToken,
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
-- @param _emailAddress [Email] <p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>
-- @param _sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>
-- @param _displayName [UserProfileDisplayName] <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
-- @param _userArn [UserArn] <p>The name that will be displayed as the friendly name for the user in AWS CodeStar.</p>
-- Required parameter: userArn
function M.UpdateUserProfileRequest(_emailAddress, _sshPublicKey, _displayName, _userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserProfileRequest")
	local t = { 
		["emailAddress"] = _emailAddress,
		["sshPublicKey"] = _sshPublicKey,
		["displayName"] = _displayName,
		["userArn"] = _userArn,
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
function M.ProjectAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectAlreadyExistsException")
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
function M.InvalidServiceRoleException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidServiceRoleException")
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
-- @param _stackId [StackId] <p>The ID of the primary stack in AWS CloudFormation used to generate resources for the project.</p>
-- @param _projectTemplateId [ProjectTemplateId] <p>The ID for the AWS CodeStar project template used to create the project.</p>
-- @param _description [ProjectDescription] <p>The description of the project, if any.</p>
-- @param _createdTimeStamp [CreatedTimestamp] <p>The date and time the project was created, in timestamp format.</p>
-- @param _clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested project creation. </p>
-- @param _id [ProjectId] <p>The ID of the project.</p>
-- @param _arn [ProjectArn] <p>The Amazon Resource Name (ARN) for the project.</p>
-- @param _name [ProjectName] <p>The display name for the project.</p>
function M.DescribeProjectResult(_stackId, _projectTemplateId, _description, _createdTimeStamp, _clientRequestToken, _id, _arn, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProjectResult")
	local t = { 
		["stackId"] = _stackId,
		["projectTemplateId"] = _projectTemplateId,
		["description"] = _description,
		["createdTimeStamp"] = _createdTimeStamp,
		["clientRequestToken"] = _clientRequestToken,
		["id"] = _id,
		["arn"] = _arn,
		["name"] = _name,
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
-- @param _nextToken [PaginationToken] <p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>
-- @param _maxResults [MaxResults] <p>The maximum number of results to return in a response.</p>
function M.ListUserProfilesRequest(_nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserProfilesRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
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
function M.UpdateProjectResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateProjectResult")
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
-- @param _emailAddress [Email] <p>The email address associated with the user.</p>
-- @param _sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>
-- @param _displayName [UserProfileDisplayName] <p>The display name of a user in AWS CodeStar. For example, this could be set to both first and last name ("Mary Major") or a single name ("Mary"). The display name is also used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the display name, the first character that appears after the space will be used as the second character in the user initial icon. The initial icon displays a maximum of two characters, so a display name with more than one space (for example "Mary Jane Major") would generate an initial icon using the first character and the first character after the space ("MJ", not "MM").</p>
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
function M.UserProfileSummary(_emailAddress, _sshPublicKey, _displayName, _userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserProfileSummary")
	local t = { 
		["emailAddress"] = _emailAddress,
		["sshPublicKey"] = _sshPublicKey,
		["displayName"] = _displayName,
		["userArn"] = _userArn,
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
-- @param _displayName [UserProfileDisplayName] <p>The display name shown for the user in AWS CodeStar projects. For example, this could be set to both first and last name ("Mary Major") or a single name ("Mary"). The display name is also used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the display name, the first character that appears after the space will be used as the second character in the user initial icon. The initial icon displays a maximum of two characters, so a display name with more than one space (for example "Mary Jane Major") would generate an initial icon using the first character and the first character after the space ("MJ", not "MM").</p>
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user.</p>
-- @param _sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user. This SSH public key is associated with the user profile, and can be used in conjunction with the associated private key for access to project resources, such as Amazon EC2 instances, if a project owner grants remote access to those resources.</p>
-- @param _createdTimestamp [CreatedTimestamp] <p>The date and time when the user profile was created in AWS CodeStar, in timestamp format.</p>
-- @param _emailAddress [Email] <p>The email address for the user. Optional.</p>
-- @param _lastModifiedTimestamp [LastModifiedTimestamp] <p>The date and time when the user profile was last modified, in timestamp format.</p>
-- Required parameter: userArn
-- Required parameter: createdTimestamp
-- Required parameter: lastModifiedTimestamp
function M.DescribeUserProfileResult(_displayName, _userArn, _sshPublicKey, _createdTimestamp, _emailAddress, _lastModifiedTimestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUserProfileResult")
	local t = { 
		["displayName"] = _displayName,
		["userArn"] = _userArn,
		["sshPublicKey"] = _sshPublicKey,
		["createdTimestamp"] = _createdTimestamp,
		["emailAddress"] = _emailAddress,
		["lastModifiedTimestamp"] = _lastModifiedTimestamp,
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
-- @param _projectRole [Role] <p>The AWS CodeStar project role that will apply to this user. This role determines what actions a user can take in an AWS CodeStar project.</p>
-- @param _projectId [ProjectId] <p>The ID of the project to which you will add the IAM user.</p>
-- @param _remoteAccessAllowed [RemoteAccessAllowed] <p>Whether the team member is allowed to use an SSH public/private key pair to remotely access project resources, for example Amazon EC2 instances.</p>
-- @param _clientRequestToken [ClientRequestToken] <p>A user- or system-generated token that identifies the entity that requested the team member association to the project. This token can be used to repeat the request. </p>
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) for the IAM user you want to add to the DevHub project.</p>
-- Required parameter: projectId
-- Required parameter: userArn
-- Required parameter: projectRole
function M.AssociateTeamMemberRequest(_projectRole, _projectId, _remoteAccessAllowed, _clientRequestToken, _userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateTeamMemberRequest")
	local t = { 
		["projectRole"] = _projectRole,
		["projectId"] = _projectId,
		["remoteAccessAllowed"] = _remoteAccessAllowed,
		["clientRequestToken"] = _clientRequestToken,
		["userArn"] = _userArn,
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
function M.ProjectCreationFailedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectCreationFailedException")
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
-- @param _id [ProjectId] <p>The ID of the project.</p>
-- Required parameter: id
function M.DescribeProjectRequest(_id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProjectRequest")
	local t = { 
		["id"] = _id,
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
function M.TeamMemberNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TeamMemberNotFoundException")
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
-- @param _nextToken [PaginationToken] <p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>
-- @param _userProfiles [UserProfilesList] <p>All the user profiles configured in AWS CodeStar for an AWS account.</p>
-- Required parameter: userProfiles
function M.ListUserProfilesResult(_nextToken, _userProfiles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserProfilesResult")
	local t = { 
		["nextToken"] = _nextToken,
		["userProfiles"] = _userProfiles,
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
-- @param _projectId [ProjectId] <p>The ID of the AWS CodeStar project from which you want to remove a team member.</p>
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the IAM user or group whom you want to remove from the project.</p>
-- Required parameter: projectId
-- Required parameter: userArn
function M.DisassociateTeamMemberRequest(_projectId, _userArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateTeamMemberRequest")
	local t = { 
		["projectId"] = _projectId,
		["userArn"] = _userArn,
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
function M.UserProfileAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserProfileAlreadyExistsException")
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
-- @param _projectId [ProjectId] <p>The ID of the project.</p>
-- @param _projectArn [ProjectArn] <p>The Amazon Resource Name (ARN) of the project.</p>
function M.ProjectSummary(_projectId, _projectArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProjectSummary")
	local t = { 
		["projectId"] = _projectId,
		["projectArn"] = _projectArn,
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
-- @param _clientRequestToken [ClientRequestToken] <p>The user- or system-generated token from the initial request that can be used to repeat the request. </p>
function M.AssociateTeamMemberResult(_clientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateTeamMemberResult")
	local t = { 
		["clientRequestToken"] = _clientRequestToken,
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
-- @param _displayName [UserProfileDisplayName] <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
-- @param _userArn [UserArn] <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
-- @param _sshPublicKey [SshPublicKey] <p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.</p>
-- @param _createdTimestamp [CreatedTimestamp] <p>The date the user profile was created, in timestamp format.</p>
-- @param _emailAddress [Email] <p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>
-- @param _lastModifiedTimestamp [LastModifiedTimestamp] <p>The date the user profile was last modified, in timestamp format.</p>
-- Required parameter: userArn
function M.UpdateUserProfileResult(_displayName, _userArn, _sshPublicKey, _createdTimestamp, _emailAddress, _lastModifiedTimestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserProfileResult")
	local t = { 
		["displayName"] = _displayName,
		["userArn"] = _userArn,
		["sshPublicKey"] = _sshPublicKey,
		["createdTimestamp"] = _createdTimestamp,
		["emailAddress"] = _emailAddress,
		["lastModifiedTimestamp"] = _lastModifiedTimestamp,
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
function M.TeamMemberAlreadyAssociatedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TeamMemberAlreadyAssociatedException")
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
-- @param _clientRequestToken [ClientRequestToken] <p>Reserved for future use.</p>
-- @param _description [ProjectDescription] <p>Reserved for future use.</p>
-- @param _name [ProjectName] <p>Reserved for future use.</p>
-- @param _id [ProjectId] <p>Reserved for future use.</p>
-- Required parameter: name
-- Required parameter: id
function M.CreateProjectRequest(_clientRequestToken, _description, _name, _id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProjectRequest")
	local t = { 
		["clientRequestToken"] = _clientRequestToken,
		["description"] = _description,
		["name"] = _name,
		["id"] = _id,
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
