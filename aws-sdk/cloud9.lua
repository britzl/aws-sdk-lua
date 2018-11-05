--- GENERATED CODE - DO NOT MODIFY
-- AWS Cloud9 (cloud9-2017-09-23)

local M = {}

M.metadata = {
	api_version = "2017-09-23",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "cloud9",
	service_abbreviation = "",
	service_full_name = "AWS Cloud9",
	signature_version = "v4",
	target_prefix = "AWSCloud9WorkspaceManagementService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cloud9-2017-09-23",
}

local keys = {}
local asserts = {}

keys.LimitExceededException = { nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>A service limit was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BadRequestException = { nil }

function asserts.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BadRequestException[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- <p>The target request is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertBadRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEnvironmentResult = { nil }

function asserts.AssertUpdateEnvironmentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEnvironmentResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateEnvironmentResult[k], "UpdateEnvironmentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEnvironmentResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateEnvironmentResult structure as a key-value pair table
function M.UpdateEnvironmentResult(args)
	assert(args, "You must provide an argument table when creating UpdateEnvironmentResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateEnvironmentResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEnvironmentMembershipRequest = { ["environmentId"] = true, ["userArn"] = true, ["permissions"] = true, nil }

function asserts.AssertUpdateEnvironmentMembershipRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEnvironmentMembershipRequest to be of type 'table'")
	assert(struct["environmentId"], "Expected key environmentId to exist in table")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	assert(struct["permissions"], "Expected key permissions to exist in table")
	if struct["environmentId"] then asserts.AssertEnvironmentId(struct["environmentId"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	if struct["permissions"] then asserts.AssertMemberPermissions(struct["permissions"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEnvironmentMembershipRequest[k], "UpdateEnvironmentMembershipRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEnvironmentMembershipRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentId [EnvironmentId] <p>The ID of the environment for the environment member whose settings you want to change.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the environment member whose settings you want to change.</p>
-- * permissions [MemberPermissions] <p>The replacement type of environment member permissions you want to associate with this environment member. Available values include:</p> <ul> <li> <p> <code>read-only</code>: Has read-only access to the environment.</p> </li> <li> <p> <code>read-write</code>: Has read-write access to the environment.</p> </li> </ul>
-- Required key: environmentId
-- Required key: userArn
-- Required key: permissions
-- @return UpdateEnvironmentMembershipRequest structure as a key-value pair table
function M.UpdateEnvironmentMembershipRequest(args)
	assert(args, "You must provide an argument table when creating UpdateEnvironmentMembershipRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentId"] = args["environmentId"],
		["userArn"] = args["userArn"],
		["permissions"] = args["permissions"],
	}
	asserts.AssertUpdateEnvironmentMembershipRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Environment = { ["description"] = true, ["ownerArn"] = true, ["type"] = true, ["id"] = true, ["arn"] = true, ["name"] = true, nil }

function asserts.AssertEnvironment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Environment to be of type 'table'")
	if struct["description"] then asserts.AssertEnvironmentDescription(struct["description"]) end
	if struct["ownerArn"] then asserts.AssertString(struct["ownerArn"]) end
	if struct["type"] then asserts.AssertEnvironmentType(struct["type"]) end
	if struct["id"] then asserts.AssertEnvironmentId(struct["id"]) end
	if struct["arn"] then asserts.AssertString(struct["arn"]) end
	if struct["name"] then asserts.AssertEnvironmentName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Environment[k], "Environment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Environment
-- <p>Information about an AWS Cloud9 development environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [EnvironmentDescription] <p>The description for the environment.</p>
-- * ownerArn [String] <p>The Amazon Resource Name (ARN) of the environment owner.</p>
-- * type [EnvironmentType] <p>The type of environment. Valid values include the following:</p> <ul> <li> <p> <code>ec2</code>: An Amazon Elastic Compute Cloud (Amazon EC2) instance connects to the environment.</p> </li> <li> <p> <code>ssh</code>: Your own server connects to the environment.</p> </li> </ul>
-- * id [EnvironmentId] <p>The ID of the environment.</p>
-- * arn [String] <p>The Amazon Resource Name (ARN) of the environment.</p>
-- * name [EnvironmentName] <p>The name of the environment.</p>
-- @return Environment structure as a key-value pair table
function M.Environment(args)
	assert(args, "You must provide an argument table when creating Environment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["description"] = args["description"],
		["ownerArn"] = args["ownerArn"],
		["type"] = args["type"],
		["id"] = args["id"],
		["arn"] = args["arn"],
		["name"] = args["name"],
	}
	asserts.AssertEnvironment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalServerErrorException = { nil }

function asserts.AssertInternalServerErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerErrorException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InternalServerErrorException[k], "InternalServerErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerErrorException
-- <p>An internal server error occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InternalServerErrorException structure as a key-value pair table
function M.InternalServerErrorException(args)
	assert(args, "You must provide an argument table when creating InternalServerErrorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInternalServerErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentMember = { ["environmentId"] = true, ["lastAccess"] = true, ["userId"] = true, ["userArn"] = true, ["permissions"] = true, nil }

function asserts.AssertEnvironmentMember(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentMember to be of type 'table'")
	if struct["environmentId"] then asserts.AssertEnvironmentId(struct["environmentId"]) end
	if struct["lastAccess"] then asserts.AssertTimestamp(struct["lastAccess"]) end
	if struct["userId"] then asserts.AssertString(struct["userId"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	if struct["permissions"] then asserts.AssertPermissions(struct["permissions"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentMember[k], "EnvironmentMember contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentMember
-- <p>Information about an environment member for an AWS Cloud9 development environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentId [EnvironmentId] <p>The ID of the environment for the environment member.</p>
-- * lastAccess [Timestamp] <p>The time, expressed in epoch time format, when the environment member last opened the environment.</p>
-- * userId [String] <p>The user ID in AWS Identity and Access Management (AWS IAM) of the environment member.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the environment member.</p>
-- * permissions [Permissions] <p>The type of environment member permissions associated with this environment member. Available values include:</p> <ul> <li> <p> <code>owner</code>: Owns the environment.</p> </li> <li> <p> <code>read-only</code>: Has read-only access to the environment.</p> </li> <li> <p> <code>read-write</code>: Has read-write access to the environment.</p> </li> </ul>
-- @return EnvironmentMember structure as a key-value pair table
function M.EnvironmentMember(args)
	assert(args, "You must provide an argument table when creating EnvironmentMember")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentId"] = args["environmentId"],
		["lastAccess"] = args["lastAccess"],
		["userId"] = args["userId"],
		["userArn"] = args["userArn"],
		["permissions"] = args["permissions"],
	}
	asserts.AssertEnvironmentMember(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEnvironmentMembershipResult = { ["membership"] = true, nil }

function asserts.AssertCreateEnvironmentMembershipResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEnvironmentMembershipResult to be of type 'table'")
	if struct["membership"] then asserts.AssertEnvironmentMember(struct["membership"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEnvironmentMembershipResult[k], "CreateEnvironmentMembershipResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEnvironmentMembershipResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * membership [EnvironmentMember] <p>Information about the environment member that was added.</p>
-- @return CreateEnvironmentMembershipResult structure as a key-value pair table
function M.CreateEnvironmentMembershipResult(args)
	assert(args, "You must provide an argument table when creating CreateEnvironmentMembershipResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["membership"] = args["membership"],
	}
	asserts.AssertCreateEnvironmentMembershipResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEnvironmentEC2Result = { ["environmentId"] = true, nil }

function asserts.AssertCreateEnvironmentEC2Result(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEnvironmentEC2Result to be of type 'table'")
	if struct["environmentId"] then asserts.AssertEnvironmentId(struct["environmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEnvironmentEC2Result[k], "CreateEnvironmentEC2Result contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEnvironmentEC2Result
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentId [EnvironmentId] <p>The ID of the environment that was created.</p>
-- @return CreateEnvironmentEC2Result structure as a key-value pair table
function M.CreateEnvironmentEC2Result(args)
	assert(args, "You must provide an argument table when creating CreateEnvironmentEC2Result")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentId"] = args["environmentId"],
	}
	asserts.AssertCreateEnvironmentEC2Result(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEnvironmentRequest = { ["environmentId"] = true, ["name"] = true, ["description"] = true, nil }

function asserts.AssertUpdateEnvironmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEnvironmentRequest to be of type 'table'")
	assert(struct["environmentId"], "Expected key environmentId to exist in table")
	if struct["environmentId"] then asserts.AssertEnvironmentId(struct["environmentId"]) end
	if struct["name"] then asserts.AssertEnvironmentName(struct["name"]) end
	if struct["description"] then asserts.AssertEnvironmentDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEnvironmentRequest[k], "UpdateEnvironmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEnvironmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentId [EnvironmentId] <p>The ID of the environment to change settings.</p>
-- * name [EnvironmentName] <p>A replacement name for the environment.</p>
-- * description [EnvironmentDescription] <p>Any new or replacement description for the environment.</p>
-- Required key: environmentId
-- @return UpdateEnvironmentRequest structure as a key-value pair table
function M.UpdateEnvironmentRequest(args)
	assert(args, "You must provide an argument table when creating UpdateEnvironmentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentId"] = args["environmentId"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertUpdateEnvironmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEnvironmentMembershipRequest = { ["environmentId"] = true, ["userArn"] = true, ["permissions"] = true, nil }

function asserts.AssertCreateEnvironmentMembershipRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEnvironmentMembershipRequest to be of type 'table'")
	assert(struct["environmentId"], "Expected key environmentId to exist in table")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	assert(struct["permissions"], "Expected key permissions to exist in table")
	if struct["environmentId"] then asserts.AssertEnvironmentId(struct["environmentId"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	if struct["permissions"] then asserts.AssertMemberPermissions(struct["permissions"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEnvironmentMembershipRequest[k], "CreateEnvironmentMembershipRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEnvironmentMembershipRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentId [EnvironmentId] <p>The ID of the environment that contains the environment member you want to add.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the environment member you want to add.</p>
-- * permissions [MemberPermissions] <p>The type of environment member permissions you want to associate with this environment member. Available values include:</p> <ul> <li> <p> <code>read-only</code>: Has read-only access to the environment.</p> </li> <li> <p> <code>read-write</code>: Has read-write access to the environment.</p> </li> </ul>
-- Required key: environmentId
-- Required key: userArn
-- Required key: permissions
-- @return CreateEnvironmentMembershipRequest structure as a key-value pair table
function M.CreateEnvironmentMembershipRequest(args)
	assert(args, "You must provide an argument table when creating CreateEnvironmentMembershipRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentId"] = args["environmentId"],
		["userArn"] = args["userArn"],
		["permissions"] = args["permissions"],
	}
	asserts.AssertCreateEnvironmentMembershipRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEnvironmentsRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListEnvironmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEnvironmentsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEnvironmentsRequest[k], "ListEnvironmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEnvironmentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- * maxResults [MaxResults] <p>The maximum number of environments to get identifiers for.</p>
-- @return ListEnvironmentsRequest structure as a key-value pair table
function M.ListEnvironmentsRequest(args)
	assert(args, "You must provide an argument table when creating ListEnvironmentsRequest")
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
	asserts.AssertListEnvironmentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEnvironmentRequest = { ["environmentId"] = true, nil }

function asserts.AssertDeleteEnvironmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEnvironmentRequest to be of type 'table'")
	assert(struct["environmentId"], "Expected key environmentId to exist in table")
	if struct["environmentId"] then asserts.AssertEnvironmentId(struct["environmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEnvironmentRequest[k], "DeleteEnvironmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEnvironmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentId [EnvironmentId] <p>The ID of the environment to delete.</p>
-- Required key: environmentId
-- @return DeleteEnvironmentRequest structure as a key-value pair table
function M.DeleteEnvironmentRequest(args)
	assert(args, "You must provide an argument table when creating DeleteEnvironmentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentId"] = args["environmentId"],
	}
	asserts.AssertDeleteEnvironmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEnvironmentResult = { nil }

function asserts.AssertDeleteEnvironmentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEnvironmentResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteEnvironmentResult[k], "DeleteEnvironmentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEnvironmentResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteEnvironmentResult structure as a key-value pair table
function M.DeleteEnvironmentResult(args)
	assert(args, "You must provide an argument table when creating DeleteEnvironmentResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteEnvironmentResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEnvironmentsResult = { ["environmentIds"] = true, ["nextToken"] = true, nil }

function asserts.AssertListEnvironmentsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEnvironmentsResult to be of type 'table'")
	if struct["environmentIds"] then asserts.AssertEnvironmentIdList(struct["environmentIds"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEnvironmentsResult[k], "ListEnvironmentsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEnvironmentsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentIds [EnvironmentIdList] <p>The list of environment identifiers.</p>
-- * nextToken [String] <p>If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- @return ListEnvironmentsResult structure as a key-value pair table
function M.ListEnvironmentsResult(args)
	assert(args, "You must provide an argument table when creating ListEnvironmentsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentIds"] = args["environmentIds"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListEnvironmentsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyRequestsException = { nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p>Too many service requests were made over the given time period.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyRequestsException structure as a key-value pair table
function M.TooManyRequestsException(args)
	assert(args, "You must provide an argument table when creating TooManyRequestsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTooManyRequestsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEnvironmentMembershipResult = { ["membership"] = true, nil }

function asserts.AssertUpdateEnvironmentMembershipResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEnvironmentMembershipResult to be of type 'table'")
	if struct["membership"] then asserts.AssertEnvironmentMember(struct["membership"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEnvironmentMembershipResult[k], "UpdateEnvironmentMembershipResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEnvironmentMembershipResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * membership [EnvironmentMember] <p>Information about the environment member whose settings were changed.</p>
-- @return UpdateEnvironmentMembershipResult structure as a key-value pair table
function M.UpdateEnvironmentMembershipResult(args)
	assert(args, "You must provide an argument table when creating UpdateEnvironmentMembershipResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["membership"] = args["membership"],
	}
	asserts.AssertUpdateEnvironmentMembershipResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentMembershipsRequest = { ["environmentId"] = true, ["nextToken"] = true, ["userArn"] = true, ["maxResults"] = true, ["permissions"] = true, nil }

function asserts.AssertDescribeEnvironmentMembershipsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentMembershipsRequest to be of type 'table'")
	if struct["environmentId"] then asserts.AssertEnvironmentId(struct["environmentId"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	if struct["permissions"] then asserts.AssertPermissionsList(struct["permissions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentMembershipsRequest[k], "DescribeEnvironmentMembershipsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentMembershipsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentId [EnvironmentId] <p>The ID of the environment to get environment member information about.</p>
-- * nextToken [String] <p>During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of an individual environment member to get information about. If no value is specified, information about all environment members are returned.</p>
-- * maxResults [MaxResults] <p>The maximum number of environment members to get information about.</p>
-- * permissions [PermissionsList] <p>The type of environment member permissions to get information about. Available values include:</p> <ul> <li> <p> <code>owner</code>: Owns the environment.</p> </li> <li> <p> <code>read-only</code>: Has read-only access to the environment.</p> </li> <li> <p> <code>read-write</code>: Has read-write access to the environment.</p> </li> </ul> <p>If no value is specified, information about all environment members are returned.</p>
-- @return DescribeEnvironmentMembershipsRequest structure as a key-value pair table
function M.DescribeEnvironmentMembershipsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentMembershipsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentId"] = args["environmentId"],
		["nextToken"] = args["nextToken"],
		["userArn"] = args["userArn"],
		["maxResults"] = args["maxResults"],
		["permissions"] = args["permissions"],
	}
	asserts.AssertDescribeEnvironmentMembershipsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConflictException = { nil }

function asserts.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ConflictException[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
-- <p>A conflict occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ConflictException structure as a key-value pair table
function M.ConflictException(args)
	assert(args, "You must provide an argument table when creating ConflictException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertConflictException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentsResult = { ["environments"] = true, nil }

function asserts.AssertDescribeEnvironmentsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentsResult to be of type 'table'")
	if struct["environments"] then asserts.AssertEnvironmentList(struct["environments"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentsResult[k], "DescribeEnvironmentsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environments [EnvironmentList] <p>Information about the environments that are returned.</p>
-- @return DescribeEnvironmentsResult structure as a key-value pair table
function M.DescribeEnvironmentsResult(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environments"] = args["environments"],
	}
	asserts.AssertDescribeEnvironmentsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentStatusRequest = { ["environmentId"] = true, nil }

function asserts.AssertDescribeEnvironmentStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentStatusRequest to be of type 'table'")
	assert(struct["environmentId"], "Expected key environmentId to exist in table")
	if struct["environmentId"] then asserts.AssertEnvironmentId(struct["environmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentStatusRequest[k], "DescribeEnvironmentStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentId [EnvironmentId] <p>The ID of the environment to get status information about.</p>
-- Required key: environmentId
-- @return DescribeEnvironmentStatusRequest structure as a key-value pair table
function M.DescribeEnvironmentStatusRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentId"] = args["environmentId"],
	}
	asserts.AssertDescribeEnvironmentStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentStatusResult = { ["status"] = true, ["message"] = true, nil }

function asserts.AssertDescribeEnvironmentStatusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentStatusResult to be of type 'table'")
	if struct["status"] then asserts.AssertEnvironmentStatus(struct["status"]) end
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentStatusResult[k], "DescribeEnvironmentStatusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentStatusResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [EnvironmentStatus] <p>The status of the environment. Available values include:</p> <ul> <li> <p> <code>connecting</code>: The environment is connecting.</p> </li> <li> <p> <code>creating</code>: The environment is being created.</p> </li> <li> <p> <code>deleting</code>: The environment is being deleted.</p> </li> <li> <p> <code>error</code>: The environment is in an error state.</p> </li> <li> <p> <code>ready</code>: The environment is ready.</p> </li> <li> <p> <code>stopped</code>: The environment is stopped.</p> </li> <li> <p> <code>stopping</code>: The environment is stopping.</p> </li> </ul>
-- * message [String] <p>Any informational message about the status of the environment.</p>
-- @return DescribeEnvironmentStatusResult structure as a key-value pair table
function M.DescribeEnvironmentStatusResult(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentStatusResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["message"] = args["message"],
	}
	asserts.AssertDescribeEnvironmentStatusResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotFoundException = { nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>The target resource cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentsRequest = { ["environmentIds"] = true, nil }

function asserts.AssertDescribeEnvironmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentsRequest to be of type 'table'")
	assert(struct["environmentIds"], "Expected key environmentIds to exist in table")
	if struct["environmentIds"] then asserts.AssertBoundedEnvironmentIdList(struct["environmentIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentsRequest[k], "DescribeEnvironmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentIds [BoundedEnvironmentIdList] <p>The IDs of individual environments to get information about.</p>
-- Required key: environmentIds
-- @return DescribeEnvironmentsRequest structure as a key-value pair table
function M.DescribeEnvironmentsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentIds"] = args["environmentIds"],
	}
	asserts.AssertDescribeEnvironmentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEnvironmentMembershipRequest = { ["environmentId"] = true, ["userArn"] = true, nil }

function asserts.AssertDeleteEnvironmentMembershipRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEnvironmentMembershipRequest to be of type 'table'")
	assert(struct["environmentId"], "Expected key environmentId to exist in table")
	assert(struct["userArn"], "Expected key userArn to exist in table")
	if struct["environmentId"] then asserts.AssertEnvironmentId(struct["environmentId"]) end
	if struct["userArn"] then asserts.AssertUserArn(struct["userArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEnvironmentMembershipRequest[k], "DeleteEnvironmentMembershipRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEnvironmentMembershipRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environmentId [EnvironmentId] <p>The ID of the environment to delete the environment member from.</p>
-- * userArn [UserArn] <p>The Amazon Resource Name (ARN) of the environment member to delete from the environment.</p>
-- Required key: environmentId
-- Required key: userArn
-- @return DeleteEnvironmentMembershipRequest structure as a key-value pair table
function M.DeleteEnvironmentMembershipRequest(args)
	assert(args, "You must provide an argument table when creating DeleteEnvironmentMembershipRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environmentId"] = args["environmentId"],
		["userArn"] = args["userArn"],
	}
	asserts.AssertDeleteEnvironmentMembershipRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEnvironmentMembershipResult = { nil }

function asserts.AssertDeleteEnvironmentMembershipResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEnvironmentMembershipResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteEnvironmentMembershipResult[k], "DeleteEnvironmentMembershipResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEnvironmentMembershipResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteEnvironmentMembershipResult structure as a key-value pair table
function M.DeleteEnvironmentMembershipResult(args)
	assert(args, "You must provide an argument table when creating DeleteEnvironmentMembershipResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteEnvironmentMembershipResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEnvironmentEC2Request = { ["name"] = true, ["clientRequestToken"] = true, ["ownerArn"] = true, ["subnetId"] = true, ["automaticStopTimeMinutes"] = true, ["instanceType"] = true, ["description"] = true, nil }

function asserts.AssertCreateEnvironmentEC2Request(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEnvironmentEC2Request to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["instanceType"], "Expected key instanceType to exist in table")
	if struct["name"] then asserts.AssertEnvironmentName(struct["name"]) end
	if struct["clientRequestToken"] then asserts.AssertClientRequestToken(struct["clientRequestToken"]) end
	if struct["ownerArn"] then asserts.AssertUserArn(struct["ownerArn"]) end
	if struct["subnetId"] then asserts.AssertSubnetId(struct["subnetId"]) end
	if struct["automaticStopTimeMinutes"] then asserts.AssertAutomaticStopTimeMinutes(struct["automaticStopTimeMinutes"]) end
	if struct["instanceType"] then asserts.AssertInstanceType(struct["instanceType"]) end
	if struct["description"] then asserts.AssertEnvironmentDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEnvironmentEC2Request[k], "CreateEnvironmentEC2Request contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEnvironmentEC2Request
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [EnvironmentName] <p>The name of the environment to create.</p> <p>This name is visible to other AWS IAM users in the same AWS account.</p>
-- * clientRequestToken [ClientRequestToken] <p>A unique, case-sensitive string that helps AWS Cloud9 to ensure this operation completes no more than one time.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Client Tokens</a> in the <i>Amazon EC2 API Reference</i>.</p>
-- * ownerArn [UserArn] <p>The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any AWS IAM principal. If this value is not specified, the ARN defaults to this environment's creator.</p>
-- * subnetId [SubnetId] <p>The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.</p>
-- * automaticStopTimeMinutes [AutomaticStopTimeMinutes] <p>The number of minutes until the running instance is shut down after the environment has last been used.</p>
-- * instanceType [InstanceType] <p>The type of instance to connect to the environment (for example, <code>t2.micro</code>).</p>
-- * description [EnvironmentDescription] <p>The description of the environment to create.</p>
-- Required key: name
-- Required key: instanceType
-- @return CreateEnvironmentEC2Request structure as a key-value pair table
function M.CreateEnvironmentEC2Request(args)
	assert(args, "You must provide an argument table when creating CreateEnvironmentEC2Request")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["clientRequestToken"] = args["clientRequestToken"],
		["ownerArn"] = args["ownerArn"],
		["subnetId"] = args["subnetId"],
		["automaticStopTimeMinutes"] = args["automaticStopTimeMinutes"],
		["instanceType"] = args["instanceType"],
		["description"] = args["description"],
	}
	asserts.AssertCreateEnvironmentEC2Request(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEnvironmentMembershipsResult = { ["memberships"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeEnvironmentMembershipsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEnvironmentMembershipsResult to be of type 'table'")
	if struct["memberships"] then asserts.AssertEnvironmentMembersList(struct["memberships"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEnvironmentMembershipsResult[k], "DescribeEnvironmentMembershipsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEnvironmentMembershipsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * memberships [EnvironmentMembersList] <p>Information about the environment members for the environment.</p>
-- * nextToken [String] <p>If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>
-- @return DescribeEnvironmentMembershipsResult structure as a key-value pair table
function M.DescribeEnvironmentMembershipsResult(args)
	assert(args, "You must provide an argument table when creating DescribeEnvironmentMembershipsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["memberships"] = args["memberships"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeEnvironmentMembershipsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ForbiddenException = { nil }

function asserts.AssertForbiddenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForbiddenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ForbiddenException[k], "ForbiddenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForbiddenException
-- <p>An access permissions issue occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ForbiddenException structure as a key-value pair table
function M.ForbiddenException(args)
	assert(args, "You must provide an argument table when creating ForbiddenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertForbiddenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertEnvironmentName(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentName to be of type 'string'")
	assert(#str <= 60, "Expected string to be max 60 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EnvironmentName(str)
	asserts.AssertEnvironmentName(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertEnvironmentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentStatus to be of type 'string'")
end

--  
function M.EnvironmentStatus(str)
	asserts.AssertEnvironmentStatus(str)
	return str
end

function asserts.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

--  
function M.SubnetId(str)
	asserts.AssertSubnetId(str)
	return str
end

function asserts.AssertInstanceType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceType to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

--  
function M.InstanceType(str)
	asserts.AssertInstanceType(str)
	return str
end

function asserts.AssertPermissions(str)
	assert(str)
	assert(type(str) == "string", "Expected Permissions to be of type 'string'")
end

--  
function M.Permissions(str)
	asserts.AssertPermissions(str)
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

function asserts.AssertEnvironmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentType to be of type 'string'")
end

--  
function M.EnvironmentType(str)
	asserts.AssertEnvironmentType(str)
	return str
end

function asserts.AssertUserArn(str)
	assert(str)
	assert(type(str) == "string", "Expected UserArn to be of type 'string'")
end

--  
function M.UserArn(str)
	asserts.AssertUserArn(str)
	return str
end

function asserts.AssertEnvironmentId(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentId to be of type 'string'")
end

--  
function M.EnvironmentId(str)
	asserts.AssertEnvironmentId(str)
	return str
end

function asserts.AssertEnvironmentDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentDescription to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
end

--  
function M.EnvironmentDescription(str)
	asserts.AssertEnvironmentDescription(str)
	return str
end

function asserts.AssertMemberPermissions(str)
	assert(str)
	assert(type(str) == "string", "Expected MemberPermissions to be of type 'string'")
end

--  
function M.MemberPermissions(str)
	asserts.AssertMemberPermissions(str)
	return str
end

function asserts.AssertAutomaticStopTimeMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AutomaticStopTimeMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20160, "Expected integer to be max 20160")
end

function M.AutomaticStopTimeMinutes(integer)
	asserts.AssertAutomaticStopTimeMinutes(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 25, "Expected integer to be max 25")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertEnvironmentMembersList(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentMembersList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentMember(v)
	end
end

--  
-- List of EnvironmentMember objects
function M.EnvironmentMembersList(list)
	asserts.AssertEnvironmentMembersList(list)
	return list
end

function asserts.AssertPermissionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected PermissionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPermissions(v)
	end
end

--  
-- List of Permissions objects
function M.PermissionsList(list)
	asserts.AssertPermissionsList(list)
	return list
end

function asserts.AssertBoundedEnvironmentIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected BoundedEnvironmentIdList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentId(v)
	end
end

--  
-- List of EnvironmentId objects
function M.BoundedEnvironmentIdList(list)
	asserts.AssertBoundedEnvironmentIdList(list)
	return list
end

function asserts.AssertEnvironmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironment(v)
	end
end

--  
-- List of Environment objects
function M.EnvironmentList(list)
	asserts.AssertEnvironmentList(list)
	return list
end

function asserts.AssertEnvironmentIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnvironmentId(v)
	end
end

--  
-- List of EnvironmentId objects
function M.EnvironmentIdList(list)
	asserts.AssertEnvironmentIdList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "cloud9.amazonaws.com"
		end
	end
	local ss = { "cloud9" }
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
--- Call UpdateEnvironment asynchronously, invoking a callback when done
-- @param UpdateEnvironmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEnvironmentAsync(UpdateEnvironmentRequest, cb)
	assert(UpdateEnvironmentRequest, "You must provide a UpdateEnvironmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCloud9WorkspaceManagementService.UpdateEnvironment",
	}
	for header,value in pairs(UpdateEnvironmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateEnvironmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEnvironment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEnvironmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEnvironmentSync(UpdateEnvironmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEnvironmentAsync(UpdateEnvironmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEnvironmentMembership asynchronously, invoking a callback when done
-- @param CreateEnvironmentMembershipRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateEnvironmentMembershipAsync(CreateEnvironmentMembershipRequest, cb)
	assert(CreateEnvironmentMembershipRequest, "You must provide a CreateEnvironmentMembershipRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCloud9WorkspaceManagementService.CreateEnvironmentMembership",
	}
	for header,value in pairs(CreateEnvironmentMembershipRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateEnvironmentMembershipRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEnvironmentMembership synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEnvironmentMembershipRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateEnvironmentMembershipSync(CreateEnvironmentMembershipRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEnvironmentMembershipAsync(CreateEnvironmentMembershipRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEnvironments asynchronously, invoking a callback when done
-- @param DescribeEnvironmentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEnvironmentsAsync(DescribeEnvironmentsRequest, cb)
	assert(DescribeEnvironmentsRequest, "You must provide a DescribeEnvironmentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCloud9WorkspaceManagementService.DescribeEnvironments",
	}
	for header,value in pairs(DescribeEnvironmentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEnvironmentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEnvironments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEnvironmentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEnvironmentsSync(DescribeEnvironmentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEnvironmentsAsync(DescribeEnvironmentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEnvironmentMembership asynchronously, invoking a callback when done
-- @param DeleteEnvironmentMembershipRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEnvironmentMembershipAsync(DeleteEnvironmentMembershipRequest, cb)
	assert(DeleteEnvironmentMembershipRequest, "You must provide a DeleteEnvironmentMembershipRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCloud9WorkspaceManagementService.DeleteEnvironmentMembership",
	}
	for header,value in pairs(DeleteEnvironmentMembershipRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEnvironmentMembershipRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEnvironmentMembership synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEnvironmentMembershipRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEnvironmentMembershipSync(DeleteEnvironmentMembershipRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEnvironmentMembershipAsync(DeleteEnvironmentMembershipRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEnvironmentMembership asynchronously, invoking a callback when done
-- @param UpdateEnvironmentMembershipRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEnvironmentMembershipAsync(UpdateEnvironmentMembershipRequest, cb)
	assert(UpdateEnvironmentMembershipRequest, "You must provide a UpdateEnvironmentMembershipRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCloud9WorkspaceManagementService.UpdateEnvironmentMembership",
	}
	for header,value in pairs(UpdateEnvironmentMembershipRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateEnvironmentMembershipRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEnvironmentMembership synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEnvironmentMembershipRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEnvironmentMembershipSync(UpdateEnvironmentMembershipRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEnvironmentMembershipAsync(UpdateEnvironmentMembershipRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEnvironmentStatus asynchronously, invoking a callback when done
-- @param DescribeEnvironmentStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEnvironmentStatusAsync(DescribeEnvironmentStatusRequest, cb)
	assert(DescribeEnvironmentStatusRequest, "You must provide a DescribeEnvironmentStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCloud9WorkspaceManagementService.DescribeEnvironmentStatus",
	}
	for header,value in pairs(DescribeEnvironmentStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEnvironmentStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEnvironmentStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEnvironmentStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEnvironmentStatusSync(DescribeEnvironmentStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEnvironmentStatusAsync(DescribeEnvironmentStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListEnvironments asynchronously, invoking a callback when done
-- @param ListEnvironmentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListEnvironmentsAsync(ListEnvironmentsRequest, cb)
	assert(ListEnvironmentsRequest, "You must provide a ListEnvironmentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCloud9WorkspaceManagementService.ListEnvironments",
	}
	for header,value in pairs(ListEnvironmentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListEnvironmentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListEnvironments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListEnvironmentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListEnvironmentsSync(ListEnvironmentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEnvironmentsAsync(ListEnvironmentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEnvironmentMemberships asynchronously, invoking a callback when done
-- @param DescribeEnvironmentMembershipsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEnvironmentMembershipsAsync(DescribeEnvironmentMembershipsRequest, cb)
	assert(DescribeEnvironmentMembershipsRequest, "You must provide a DescribeEnvironmentMembershipsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCloud9WorkspaceManagementService.DescribeEnvironmentMemberships",
	}
	for header,value in pairs(DescribeEnvironmentMembershipsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEnvironmentMembershipsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEnvironmentMemberships synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEnvironmentMembershipsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEnvironmentMembershipsSync(DescribeEnvironmentMembershipsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEnvironmentMembershipsAsync(DescribeEnvironmentMembershipsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEnvironment asynchronously, invoking a callback when done
-- @param DeleteEnvironmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEnvironmentAsync(DeleteEnvironmentRequest, cb)
	assert(DeleteEnvironmentRequest, "You must provide a DeleteEnvironmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCloud9WorkspaceManagementService.DeleteEnvironment",
	}
	for header,value in pairs(DeleteEnvironmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEnvironmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEnvironment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEnvironmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEnvironmentSync(DeleteEnvironmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEnvironmentAsync(DeleteEnvironmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEnvironmentEC2 asynchronously, invoking a callback when done
-- @param CreateEnvironmentEC2Request
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateEnvironmentEC2Async(CreateEnvironmentEC2Request, cb)
	assert(CreateEnvironmentEC2Request, "You must provide a CreateEnvironmentEC2Request")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCloud9WorkspaceManagementService.CreateEnvironmentEC2",
	}
	for header,value in pairs(CreateEnvironmentEC2Request.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateEnvironmentEC2Request, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEnvironmentEC2 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEnvironmentEC2Request
-- @return response
-- @return error_type
-- @return error_message
function M.CreateEnvironmentEC2Sync(CreateEnvironmentEC2Request, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEnvironmentEC2Async(CreateEnvironmentEC2Request, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
