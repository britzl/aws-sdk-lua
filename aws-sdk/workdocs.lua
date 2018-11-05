--- GENERATED CODE - DO NOT MODIFY
-- Amazon WorkDocs (workdocs-2016-05-01)

local M = {}

M.metadata = {
	api_version = "2016-05-01",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "workdocs",
	service_abbreviation = "",
	service_full_name = "Amazon WorkDocs",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "workdocs-2016-05-01",
}

local keys = {}
local asserts = {}

keys.ResourceMetadata = { ["Name"] = true, ["Owner"] = true, ["VersionId"] = true, ["ParentId"] = true, ["OriginalName"] = true, ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertResourceMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceMetadata to be of type 'table'")
	if struct["Name"] then asserts.AssertResourceNameType(struct["Name"]) end
	if struct["Owner"] then asserts.AssertUserMetadata(struct["Owner"]) end
	if struct["VersionId"] then asserts.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["ParentId"] then asserts.AssertResourceIdType(struct["ParentId"]) end
	if struct["OriginalName"] then asserts.AssertResourceNameType(struct["OriginalName"]) end
	if struct["Type"] then asserts.AssertResourceType(struct["Type"]) end
	if struct["Id"] then asserts.AssertResourceIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceMetadata[k], "ResourceMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceMetadata
-- <p>Describes the metadata of a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceNameType] <p>The name of the resource.</p>
-- * Owner [UserMetadata] <p>The owner of the resource.</p>
-- * VersionId [DocumentVersionIdType] <p>The version ID of the resource. This is an optional field and is filled for action on document version.</p>
-- * ParentId [ResourceIdType] <p>The parent ID of the resource before a rename operation.</p>
-- * OriginalName [ResourceNameType] <p>The original name of the resource before a rename operation.</p>
-- * Type [ResourceType] <p>The type of resource.</p>
-- * Id [ResourceIdType] <p>The ID of the resource.</p>
-- @return ResourceMetadata structure as a key-value pair table
function M.ResourceMetadata(args)
	assert(args, "You must provide an argument table when creating ResourceMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Owner"] = args["Owner"],
		["VersionId"] = args["VersionId"],
		["ParentId"] = args["ParentId"],
		["OriginalName"] = args["OriginalName"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertResourceMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceUnavailableException = { ["Message"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>One or more of the dependencies is unavailable.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return ServiceUnavailableException structure as a key-value pair table
function M.ServiceUnavailableException(args)
	assert(args, "You must provide an argument table when creating ServiceUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertServiceUnavailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCurrentUserRequest = { ["AuthenticationToken"] = true, nil }

function asserts.AssertGetCurrentUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCurrentUserRequest to be of type 'table'")
	assert(struct["AuthenticationToken"], "Expected key AuthenticationToken to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCurrentUserRequest[k], "GetCurrentUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCurrentUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- Required key: AuthenticationToken
-- @return GetCurrentUserRequest structure as a key-value pair table
function M.GetCurrentUserRequest(args)
	assert(args, "You must provide an argument table when creating GetCurrentUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
	}
	asserts.AssertGetCurrentUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveAllResourcePermissionsRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, nil }

function asserts.AssertRemoveAllResourcePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAllResourcePermissionsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveAllResourcePermissionsRequest[k], "RemoveAllResourcePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAllResourcePermissionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- Required key: ResourceId
-- @return RemoveAllResourcePermissionsRequest structure as a key-value pair table
function M.RemoveAllResourcePermissionsRequest(args)
	assert(args, "You must provide an argument table when creating RemoveAllResourcePermissionsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ResourceId}"] = args["ResourceId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertRemoveAllResourcePermissionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeResourcePermissionsRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["Marker"] = true, ["Limit"] = true, ["PrincipalId"] = true, nil }

function asserts.AssertDescribeResourcePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourcePermissionsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	if struct["PrincipalId"] then asserts.AssertIdType(struct["PrincipalId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourcePermissionsRequest[k], "DescribeResourcePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourcePermissionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- * Marker [PageMarkerType] <p>The marker for the next set of results. (You received this marker from a previous call)</p>
-- * Limit [LimitType] <p>The maximum number of items to return with this call.</p>
-- * PrincipalId [IdType] <p>The ID of the principal to filter permissions by.</p>
-- Required key: ResourceId
-- @return DescribeResourcePermissionsRequest structure as a key-value pair table
function M.DescribeResourcePermissionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeResourcePermissionsRequest")
    local query_args = { 
        ["marker"] = args["Marker"],
        ["limit"] = args["Limit"],
        ["principalId"] = args["PrincipalId"],
    }
    local uri_args = { 
        ["{ResourceId}"] = args["ResourceId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["ResourceId"] = args["ResourceId"],
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
		["PrincipalId"] = args["PrincipalId"],
	}
	asserts.AssertDescribeResourcePermissionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLabelsResponse = { nil }

function asserts.AssertCreateLabelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLabelsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateLabelsResponse[k], "CreateLabelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLabelsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateLabelsResponse structure as a key-value pair table
function M.CreateLabelsResponse(args)
	assert(args, "You must provide an argument table when creating CreateLabelsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateLabelsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRootFoldersResponse = { ["Folders"] = true, ["Marker"] = true, nil }

function asserts.AssertDescribeRootFoldersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRootFoldersResponse to be of type 'table'")
	if struct["Folders"] then asserts.AssertFolderMetadataList(struct["Folders"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRootFoldersResponse[k], "DescribeRootFoldersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRootFoldersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Folders [FolderMetadataList] <p>The user's special folders.</p>
-- * Marker [PageMarkerType] <p>The marker for the next set of results.</p>
-- @return DescribeRootFoldersResponse structure as a key-value pair table
function M.DescribeRootFoldersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeRootFoldersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Folders"] = args["Folders"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertDescribeRootFoldersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDocumentVersionResponse = { ["CustomMetadata"] = true, ["Metadata"] = true, nil }

function asserts.AssertGetDocumentVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentVersionResponse to be of type 'table'")
	if struct["CustomMetadata"] then asserts.AssertCustomMetadataMap(struct["CustomMetadata"]) end
	if struct["Metadata"] then asserts.AssertDocumentVersionMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentVersionResponse[k], "GetDocumentVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CustomMetadata [CustomMetadataMap] <p>The custom metadata on the document version.</p>
-- * Metadata [DocumentVersionMetadata] <p>The version metadata.</p>
-- @return GetDocumentVersionResponse structure as a key-value pair table
function M.GetDocumentVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetDocumentVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CustomMetadata"] = args["CustomMetadata"],
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertGetDocumentVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProhibitedStateException = { ["Message"] = true, nil }

function asserts.AssertProhibitedStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProhibitedStateException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProhibitedStateException[k], "ProhibitedStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProhibitedStateException
-- <p>The specified document version is not in the INITIALIZED state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return ProhibitedStateException structure as a key-value pair table
function M.ProhibitedStateException(args)
	assert(args, "You must provide an argument table when creating ProhibitedStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertProhibitedStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateDocumentVersionUploadRequest = { ["ContentType"] = true, ["Name"] = true, ["ParentFolderId"] = true, ["ContentCreatedTimestamp"] = true, ["DocumentSizeInBytes"] = true, ["ContentModifiedTimestamp"] = true, ["AuthenticationToken"] = true, ["Id"] = true, nil }

function asserts.AssertInitiateDocumentVersionUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateDocumentVersionUploadRequest to be of type 'table'")
	assert(struct["ParentFolderId"], "Expected key ParentFolderId to exist in table")
	if struct["ContentType"] then asserts.AssertDocumentContentType(struct["ContentType"]) end
	if struct["Name"] then asserts.AssertResourceNameType(struct["Name"]) end
	if struct["ParentFolderId"] then asserts.AssertResourceIdType(struct["ParentFolderId"]) end
	if struct["ContentCreatedTimestamp"] then asserts.AssertTimestampType(struct["ContentCreatedTimestamp"]) end
	if struct["DocumentSizeInBytes"] then asserts.AssertSizeType(struct["DocumentSizeInBytes"]) end
	if struct["ContentModifiedTimestamp"] then asserts.AssertTimestampType(struct["ContentModifiedTimestamp"]) end
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Id"] then asserts.AssertResourceIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateDocumentVersionUploadRequest[k], "InitiateDocumentVersionUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateDocumentVersionUploadRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentType [DocumentContentType] <p>The content type of the document.</p>
-- * Name [ResourceNameType] <p>The name of the document.</p>
-- * ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- * ContentCreatedTimestamp [TimestampType] <p>The timestamp when the content of the document was originally created.</p>
-- * DocumentSizeInBytes [SizeType] <p>The size of the document, in bytes.</p>
-- * ContentModifiedTimestamp [TimestampType] <p>The timestamp when the content of the document was modified.</p>
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * Id [ResourceIdType] <p>The ID of the document.</p>
-- Required key: ParentFolderId
-- @return InitiateDocumentVersionUploadRequest structure as a key-value pair table
function M.InitiateDocumentVersionUploadRequest(args)
	assert(args, "You must provide an argument table when creating InitiateDocumentVersionUploadRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["ContentType"] = args["ContentType"],
		["Name"] = args["Name"],
		["ParentFolderId"] = args["ParentFolderId"],
		["ContentCreatedTimestamp"] = args["ContentCreatedTimestamp"],
		["DocumentSizeInBytes"] = args["DocumentSizeInBytes"],
		["ContentModifiedTimestamp"] = args["ContentModifiedTimestamp"],
		["AuthenticationToken"] = args["AuthenticationToken"],
		["Id"] = args["Id"],
	}
	asserts.AssertInitiateDocumentVersionUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeFolderContentsResponse = { ["Folders"] = true, ["Marker"] = true, ["Documents"] = true, nil }

function asserts.AssertDescribeFolderContentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFolderContentsResponse to be of type 'table'")
	if struct["Folders"] then asserts.AssertFolderMetadataList(struct["Folders"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Documents"] then asserts.AssertDocumentMetadataList(struct["Documents"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFolderContentsResponse[k], "DescribeFolderContentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFolderContentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Folders [FolderMetadataList] <p>The subfolders in the specified folder.</p>
-- * Marker [PageMarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- * Documents [DocumentMetadataList] <p>The documents in the specified folder.</p>
-- @return DescribeFolderContentsResponse structure as a key-value pair table
function M.DescribeFolderContentsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeFolderContentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Folders"] = args["Folders"],
		["Marker"] = args["Marker"],
		["Documents"] = args["Documents"],
	}
	asserts.AssertDescribeFolderContentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserMetadata = { ["Username"] = true, ["EmailAddress"] = true, ["GivenName"] = true, ["Surname"] = true, ["Id"] = true, nil }

function asserts.AssertUserMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserMetadata to be of type 'table'")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["EmailAddress"] then asserts.AssertEmailAddressType(struct["EmailAddress"]) end
	if struct["GivenName"] then asserts.AssertUserAttributeValueType(struct["GivenName"]) end
	if struct["Surname"] then asserts.AssertUserAttributeValueType(struct["Surname"]) end
	if struct["Id"] then asserts.AssertIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserMetadata[k], "UserMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserMetadata
-- <p>Describes the metadata of the user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The name of the user.</p>
-- * EmailAddress [EmailAddressType] <p>The email address of the user.</p>
-- * GivenName [UserAttributeValueType] <p>The given name of the user before a rename operation.</p>
-- * Surname [UserAttributeValueType] <p>The surname of the user.</p>
-- * Id [IdType] <p>The ID of the user.</p>
-- @return UserMetadata structure as a key-value pair table
function M.UserMetadata(args)
	assert(args, "You must provide an argument table when creating UserMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["EmailAddress"] = args["EmailAddress"],
		["GivenName"] = args["GivenName"],
		["Surname"] = args["Surname"],
		["Id"] = args["Id"],
	}
	asserts.AssertUserMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFolderContentsRequest = { ["AuthenticationToken"] = true, ["FolderId"] = true, nil }

function asserts.AssertDeleteFolderContentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFolderContentsRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["FolderId"] then asserts.AssertResourceIdType(struct["FolderId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFolderContentsRequest[k], "DeleteFolderContentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFolderContentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * FolderId [ResourceIdType] <p>The ID of the folder.</p>
-- Required key: FolderId
-- @return DeleteFolderContentsRequest structure as a key-value pair table
function M.DeleteFolderContentsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFolderContentsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FolderId}"] = args["FolderId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["FolderId"] = args["FolderId"],
	}
	asserts.AssertDeleteFolderContentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivateUserResponse = { ["User"] = true, nil }

function asserts.AssertActivateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivateUserResponse to be of type 'table'")
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivateUserResponse[k], "ActivateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivateUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [User] <p>The user information.</p>
-- @return ActivateUserResponse structure as a key-value pair table
function M.ActivateUserResponse(args)
	assert(args, "You must provide an argument table when creating ActivateUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["User"] = args["User"],
	}
	asserts.AssertActivateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyLabelsException = { ["Message"] = true, nil }

function asserts.AssertTooManyLabelsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyLabelsException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyLabelsException[k], "TooManyLabelsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyLabelsException
-- <p>The limit has been reached on the number of labels for the specified resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return TooManyLabelsException structure as a key-value pair table
function M.TooManyLabelsException(args)
	assert(args, "You must provide an argument table when creating TooManyLabelsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertTooManyLabelsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SharePrincipal = { ["Role"] = true, ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertSharePrincipal(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SharePrincipal to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	if struct["Role"] then asserts.AssertRoleType(struct["Role"]) end
	if struct["Type"] then asserts.AssertPrincipalType(struct["Type"]) end
	if struct["Id"] then asserts.AssertIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.SharePrincipal[k], "SharePrincipal contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SharePrincipal
-- <p>Describes the recipient type and ID, if available.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Role [RoleType] <p>The role of the recipient.</p>
-- * Type [PrincipalType] <p>The type of the recipient.</p>
-- * Id [IdType] <p>The ID of the recipient.</p>
-- Required key: Id
-- Required key: Type
-- Required key: Role
-- @return SharePrincipal structure as a key-value pair table
function M.SharePrincipal(args)
	assert(args, "You must provide an argument table when creating SharePrincipal")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Role"] = args["Role"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertSharePrincipal(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCustomMetadataRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["VersionId"] = true, ["DeleteAll"] = true, ["Keys"] = true, nil }

function asserts.AssertDeleteCustomMetadataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCustomMetadataRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["VersionId"] then asserts.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["DeleteAll"] then asserts.AssertBooleanType(struct["DeleteAll"]) end
	if struct["Keys"] then asserts.AssertCustomMetadataKeyList(struct["Keys"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCustomMetadataRequest[k], "DeleteCustomMetadataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCustomMetadataRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * ResourceId [ResourceIdType] <p>The ID of the resource, either a document or folder.</p>
-- * VersionId [DocumentVersionIdType] <p>The ID of the version, if the custom metadata is being deleted from a document version.</p>
-- * DeleteAll [BooleanType] <p>Flag to indicate removal of all custom metadata properties from the specified resource.</p>
-- * Keys [CustomMetadataKeyList] <p>List of properties to remove.</p>
-- Required key: ResourceId
-- @return DeleteCustomMetadataRequest structure as a key-value pair table
function M.DeleteCustomMetadataRequest(args)
	assert(args, "You must provide an argument table when creating DeleteCustomMetadataRequest")
    local query_args = { 
        ["versionId"] = args["VersionId"],
        ["deleteAll"] = args["DeleteAll"],
        ["keys"] = args["Keys"],
    }
    local uri_args = { 
        ["{ResourceId}"] = args["ResourceId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["ResourceId"] = args["ResourceId"],
		["VersionId"] = args["VersionId"],
		["DeleteAll"] = args["DeleteAll"],
		["Keys"] = args["Keys"],
	}
	asserts.AssertDeleteCustomMetadataRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLabelsRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["Labels"] = true, nil }

function asserts.AssertCreateLabelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLabelsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Labels"], "Expected key Labels to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Labels"] then asserts.AssertSharedLabels(struct["Labels"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLabelsRequest[k], "CreateLabelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLabelsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- * Labels [SharedLabels] <p>List of labels to add to the resource.</p>
-- Required key: ResourceId
-- Required key: Labels
-- @return CreateLabelsRequest structure as a key-value pair table
function M.CreateLabelsRequest(args)
	assert(args, "You must provide an argument table when creating CreateLabelsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ResourceId}"] = args["ResourceId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["ResourceId"] = args["ResourceId"],
		["Labels"] = args["Labels"],
	}
	asserts.AssertCreateLabelsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteNotificationSubscriptionRequest = { ["OrganizationId"] = true, ["SubscriptionId"] = true, nil }

function asserts.AssertDeleteNotificationSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotificationSubscriptionRequest to be of type 'table'")
	assert(struct["SubscriptionId"], "Expected key SubscriptionId to exist in table")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	if struct["OrganizationId"] then asserts.AssertIdType(struct["OrganizationId"]) end
	if struct["SubscriptionId"] then asserts.AssertIdType(struct["SubscriptionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteNotificationSubscriptionRequest[k], "DeleteNotificationSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotificationSubscriptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [IdType] <p>The ID of the organization.</p>
-- * SubscriptionId [IdType] <p>The ID of the subscription.</p>
-- Required key: SubscriptionId
-- Required key: OrganizationId
-- @return DeleteNotificationSubscriptionRequest structure as a key-value pair table
function M.DeleteNotificationSubscriptionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteNotificationSubscriptionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{OrganizationId}"] = args["OrganizationId"],
        ["{SubscriptionId}"] = args["SubscriptionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["SubscriptionId"] = args["SubscriptionId"],
	}
	asserts.AssertDeleteNotificationSubscriptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateNotificationSubscriptionRequest = { ["OrganizationId"] = true, ["SubscriptionType"] = true, ["Endpoint"] = true, ["Protocol"] = true, nil }

function asserts.AssertCreateNotificationSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotificationSubscriptionRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["Endpoint"], "Expected key Endpoint to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	assert(struct["SubscriptionType"], "Expected key SubscriptionType to exist in table")
	if struct["OrganizationId"] then asserts.AssertIdType(struct["OrganizationId"]) end
	if struct["SubscriptionType"] then asserts.AssertSubscriptionType(struct["SubscriptionType"]) end
	if struct["Endpoint"] then asserts.AssertSubscriptionEndPointType(struct["Endpoint"]) end
	if struct["Protocol"] then asserts.AssertSubscriptionProtocolType(struct["Protocol"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNotificationSubscriptionRequest[k], "CreateNotificationSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotificationSubscriptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [IdType] <p>The ID of the organization.</p>
-- * SubscriptionType [SubscriptionType] <p>The notification type.</p>
-- * Endpoint [SubscriptionEndPointType] <p>The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint is a URL that begins with "https://".</p>
-- * Protocol [SubscriptionProtocolType] <p>The protocol to use. The supported value is https, which delivers JSON-encoded messages using HTTPS POST.</p>
-- Required key: OrganizationId
-- Required key: Endpoint
-- Required key: Protocol
-- Required key: SubscriptionType
-- @return CreateNotificationSubscriptionRequest structure as a key-value pair table
function M.CreateNotificationSubscriptionRequest(args)
	assert(args, "You must provide an argument table when creating CreateNotificationSubscriptionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{OrganizationId}"] = args["OrganizationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["SubscriptionType"] = args["SubscriptionType"],
		["Endpoint"] = args["Endpoint"],
		["Protocol"] = args["Protocol"],
	}
	asserts.AssertCreateNotificationSubscriptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DocumentVersionMetadata = { ["Status"] = true, ["ContentType"] = true, ["Name"] = true, ["ModifiedTimestamp"] = true, ["Thumbnail"] = true, ["CreatedTimestamp"] = true, ["Source"] = true, ["CreatorId"] = true, ["ContentCreatedTimestamp"] = true, ["ContentModifiedTimestamp"] = true, ["Signature"] = true, ["Id"] = true, ["Size"] = true, nil }

function asserts.AssertDocumentVersionMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentVersionMetadata to be of type 'table'")
	if struct["Status"] then asserts.AssertDocumentStatusType(struct["Status"]) end
	if struct["ContentType"] then asserts.AssertDocumentContentType(struct["ContentType"]) end
	if struct["Name"] then asserts.AssertResourceNameType(struct["Name"]) end
	if struct["ModifiedTimestamp"] then asserts.AssertTimestampType(struct["ModifiedTimestamp"]) end
	if struct["Thumbnail"] then asserts.AssertDocumentThumbnailUrlMap(struct["Thumbnail"]) end
	if struct["CreatedTimestamp"] then asserts.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["Source"] then asserts.AssertDocumentSourceUrlMap(struct["Source"]) end
	if struct["CreatorId"] then asserts.AssertIdType(struct["CreatorId"]) end
	if struct["ContentCreatedTimestamp"] then asserts.AssertTimestampType(struct["ContentCreatedTimestamp"]) end
	if struct["ContentModifiedTimestamp"] then asserts.AssertTimestampType(struct["ContentModifiedTimestamp"]) end
	if struct["Signature"] then asserts.AssertHashType(struct["Signature"]) end
	if struct["Id"] then asserts.AssertDocumentVersionIdType(struct["Id"]) end
	if struct["Size"] then asserts.AssertSizeType(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentVersionMetadata[k], "DocumentVersionMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentVersionMetadata
-- <p>Describes a version of a document.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [DocumentStatusType] <p>The status of the document.</p>
-- * ContentType [DocumentContentType] <p>The content type of the document.</p>
-- * Name [ResourceNameType] <p>The name of the version.</p>
-- * ModifiedTimestamp [TimestampType] <p>The timestamp when the document was last uploaded.</p>
-- * Thumbnail [DocumentThumbnailUrlMap] <p>The thumbnail of the document.</p>
-- * CreatedTimestamp [TimestampType] <p>The timestamp when the document was first uploaded.</p>
-- * Source [DocumentSourceUrlMap] <p>The source of the document.</p>
-- * CreatorId [IdType] <p>The ID of the creator.</p>
-- * ContentCreatedTimestamp [TimestampType] <p>The timestamp when the content of the document was originally created.</p>
-- * ContentModifiedTimestamp [TimestampType] <p>The timestamp when the content of the document was modified.</p>
-- * Signature [HashType] <p>The signature of the document.</p>
-- * Id [DocumentVersionIdType] <p>The ID of the version.</p>
-- * Size [SizeType] <p>The size of the document, in bytes.</p>
-- @return DocumentVersionMetadata structure as a key-value pair table
function M.DocumentVersionMetadata(args)
	assert(args, "You must provide an argument table when creating DocumentVersionMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ContentType"] = args["ContentType"],
		["Name"] = args["Name"],
		["ModifiedTimestamp"] = args["ModifiedTimestamp"],
		["Thumbnail"] = args["Thumbnail"],
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["Source"] = args["Source"],
		["CreatorId"] = args["CreatorId"],
		["ContentCreatedTimestamp"] = args["ContentCreatedTimestamp"],
		["ContentModifiedTimestamp"] = args["ContentModifiedTimestamp"],
		["Signature"] = args["Signature"],
		["Id"] = args["Id"],
		["Size"] = args["Size"],
	}
	asserts.AssertDocumentVersionMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitiateDocumentVersionUploadResponse = { ["UploadMetadata"] = true, ["Metadata"] = true, nil }

function asserts.AssertInitiateDocumentVersionUploadResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateDocumentVersionUploadResponse to be of type 'table'")
	if struct["UploadMetadata"] then asserts.AssertUploadMetadata(struct["UploadMetadata"]) end
	if struct["Metadata"] then asserts.AssertDocumentMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitiateDocumentVersionUploadResponse[k], "InitiateDocumentVersionUploadResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateDocumentVersionUploadResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UploadMetadata [UploadMetadata] <p>The upload metadata.</p>
-- * Metadata [DocumentMetadata] <p>The document metadata.</p>
-- @return InitiateDocumentVersionUploadResponse structure as a key-value pair table
function M.InitiateDocumentVersionUploadResponse(args)
	assert(args, "You must provide an argument table when creating InitiateDocumentVersionUploadResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UploadMetadata"] = args["UploadMetadata"],
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertInitiateDocumentVersionUploadResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserRequest = { ["AuthenticationToken"] = true, ["UserId"] = true, nil }

function asserts.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["UserId"] then asserts.AssertIdType(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserRequest[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * UserId [IdType] <p>The ID of the user.</p>
-- Required key: UserId
-- @return DeleteUserRequest structure as a key-value pair table
function M.DeleteUserRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertDeleteUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLabelsRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["Labels"] = true, ["DeleteAll"] = true, nil }

function asserts.AssertDeleteLabelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLabelsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Labels"] then asserts.AssertSharedLabels(struct["Labels"]) end
	if struct["DeleteAll"] then asserts.AssertBooleanType(struct["DeleteAll"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLabelsRequest[k], "DeleteLabelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLabelsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- * Labels [SharedLabels] <p>List of labels to delete from the resource.</p>
-- * DeleteAll [BooleanType] <p>Flag to request removal of all labels from the specified resource.</p>
-- Required key: ResourceId
-- @return DeleteLabelsRequest structure as a key-value pair table
function M.DeleteLabelsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLabelsRequest")
    local query_args = { 
        ["labels"] = args["Labels"],
        ["deleteAll"] = args["DeleteAll"],
    }
    local uri_args = { 
        ["{ResourceId}"] = args["ResourceId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["ResourceId"] = args["ResourceId"],
		["Labels"] = args["Labels"],
		["DeleteAll"] = args["DeleteAll"],
	}
	asserts.AssertDeleteLabelsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserResponse = { ["User"] = true, nil }

function asserts.AssertUpdateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserResponse to be of type 'table'")
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserResponse[k], "UpdateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [User] <p>The user information.</p>
-- @return UpdateUserResponse structure as a key-value pair table
function M.UpdateUserResponse(args)
	assert(args, "You must provide an argument table when creating UpdateUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["User"] = args["User"],
	}
	asserts.AssertUpdateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDocumentPathRequest = { ["AuthenticationToken"] = true, ["Fields"] = true, ["Marker"] = true, ["Limit"] = true, ["DocumentId"] = true, nil }

function asserts.AssertGetDocumentPathRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentPathRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Fields"] then asserts.AssertFieldNamesType(struct["Fields"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	if struct["DocumentId"] then asserts.AssertIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentPathRequest[k], "GetDocumentPathRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentPathRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * Fields [FieldNamesType] <p>A comma-separated list of values. Specify <code>NAME</code> to include the names of the parent folders.</p>
-- * Marker [PageMarkerType] <p>This value is not supported.</p>
-- * Limit [LimitType] <p>The maximum number of levels in the hierarchy to return.</p>
-- * DocumentId [IdType] <p>The ID of the document.</p>
-- Required key: DocumentId
-- @return GetDocumentPathRequest structure as a key-value pair table
function M.GetDocumentPathRequest(args)
	assert(args, "You must provide an argument table when creating GetDocumentPathRequest")
    local query_args = { 
        ["fields"] = args["Fields"],
        ["marker"] = args["Marker"],
        ["limit"] = args["Limit"],
    }
    local uri_args = { 
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["Fields"] = args["Fields"],
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
		["DocumentId"] = args["DocumentId"],
	}
	asserts.AssertGetDocumentPathRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnauthorizedResourceAccessException = { ["Message"] = true, nil }

function asserts.AssertUnauthorizedResourceAccessException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedResourceAccessException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedResourceAccessException[k], "UnauthorizedResourceAccessException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedResourceAccessException
-- <p>The caller does not have access to perform the action on the resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return UnauthorizedResourceAccessException structure as a key-value pair table
function M.UnauthorizedResourceAccessException(args)
	assert(args, "You must provide an argument table when creating UnauthorizedResourceAccessException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertUnauthorizedResourceAccessException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConcurrentModificationException = { ["Message"] = true, nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>The resource hierarchy is changing.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return ConcurrentModificationException structure as a key-value pair table
function M.ConcurrentModificationException(args)
	assert(args, "You must provide an argument table when creating ConcurrentModificationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertConcurrentModificationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivateUserRequest = { ["AuthenticationToken"] = true, ["UserId"] = true, nil }

function asserts.AssertActivateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivateUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["UserId"] then asserts.AssertIdType(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivateUserRequest[k], "ActivateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * UserId [IdType] <p>The ID of the user.</p>
-- Required key: UserId
-- @return ActivateUserRequest structure as a key-value pair table
function M.ActivateUserRequest(args)
	assert(args, "You must provide an argument table when creating ActivateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertActivateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeActivitiesRequest = { ["OrganizationId"] = true, ["UserId"] = true, ["Marker"] = true, ["Limit"] = true, ["StartTime"] = true, ["AuthenticationToken"] = true, ["EndTime"] = true, nil }

function asserts.AssertDescribeActivitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivitiesRequest to be of type 'table'")
	if struct["OrganizationId"] then asserts.AssertIdType(struct["OrganizationId"]) end
	if struct["UserId"] then asserts.AssertIdType(struct["UserId"]) end
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	if struct["StartTime"] then asserts.AssertTimestampType(struct["StartTime"]) end
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["EndTime"] then asserts.AssertTimestampType(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeActivitiesRequest[k], "DescribeActivitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivitiesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [IdType] <p>The ID of the organization. This is a mandatory parameter when using administrative API (SigV4) requests.</p>
-- * UserId [IdType] <p>The ID of the user who performed the action. The response includes activities pertaining to this user. This is an optional parameter and is only applicable for administrative API (SigV4) requests.</p>
-- * Marker [MarkerType] <p>The marker for the next set of results.</p>
-- * Limit [LimitType] <p>The maximum number of items to return.</p>
-- * StartTime [TimestampType] <p>The timestamp that determines the starting time of the activities. The response includes the activities performed after the specified timestamp.</p>
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * EndTime [TimestampType] <p>The timestamp that determines the end time of the activities. The response includes the activities performed before the specified timestamp.</p>
-- @return DescribeActivitiesRequest structure as a key-value pair table
function M.DescribeActivitiesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeActivitiesRequest")
    local query_args = { 
        ["organizationId"] = args["OrganizationId"],
        ["userId"] = args["UserId"],
        ["marker"] = args["Marker"],
        ["limit"] = args["Limit"],
        ["startTime"] = args["StartTime"],
        ["endTime"] = args["EndTime"],
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["UserId"] = args["UserId"],
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
		["StartTime"] = args["StartTime"],
		["AuthenticationToken"] = args["AuthenticationToken"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertDescribeActivitiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeNotificationSubscriptionsResponse = { ["Marker"] = true, ["Subscriptions"] = true, nil }

function asserts.AssertDescribeNotificationSubscriptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationSubscriptionsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Subscriptions"] then asserts.AssertSubscriptionList(struct["Subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNotificationSubscriptionsResponse[k], "DescribeNotificationSubscriptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationSubscriptionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- * Subscriptions [SubscriptionList] <p>The subscriptions.</p>
-- @return DescribeNotificationSubscriptionsResponse structure as a key-value pair table
function M.DescribeNotificationSubscriptionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeNotificationSubscriptionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Subscriptions"] = args["Subscriptions"],
	}
	asserts.AssertDescribeNotificationSubscriptionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCommentRequest = { ["Text"] = true, ["ParentId"] = true, ["Visibility"] = true, ["NotifyCollaborators"] = true, ["VersionId"] = true, ["ThreadId"] = true, ["AuthenticationToken"] = true, ["DocumentId"] = true, nil }

function asserts.AssertCreateCommentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCommentRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	assert(struct["Text"], "Expected key Text to exist in table")
	if struct["Text"] then asserts.AssertCommentTextType(struct["Text"]) end
	if struct["ParentId"] then asserts.AssertCommentIdType(struct["ParentId"]) end
	if struct["Visibility"] then asserts.AssertCommentVisibilityType(struct["Visibility"]) end
	if struct["NotifyCollaborators"] then asserts.AssertBooleanType(struct["NotifyCollaborators"]) end
	if struct["VersionId"] then asserts.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["ThreadId"] then asserts.AssertCommentIdType(struct["ThreadId"]) end
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["DocumentId"] then asserts.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCommentRequest[k], "CreateCommentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCommentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Text [CommentTextType] <p>The text of the comment.</p>
-- * ParentId [CommentIdType] <p>The ID of the parent comment.</p>
-- * Visibility [CommentVisibilityType] <p>The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors.</p>
-- * NotifyCollaborators [BooleanType] <p>Set this parameter to TRUE to send an email out to the document collaborators after the comment is created.</p>
-- * VersionId [DocumentVersionIdType] <p>The ID of the document version.</p>
-- * ThreadId [CommentIdType] <p>The ID of the root comment in the thread.</p>
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required key: DocumentId
-- Required key: VersionId
-- Required key: Text
-- @return CreateCommentRequest structure as a key-value pair table
function M.CreateCommentRequest(args)
	assert(args, "You must provide an argument table when creating CreateCommentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{VersionId}"] = args["VersionId"],
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["Text"] = args["Text"],
		["ParentId"] = args["ParentId"],
		["Visibility"] = args["Visibility"],
		["NotifyCollaborators"] = args["NotifyCollaborators"],
		["VersionId"] = args["VersionId"],
		["ThreadId"] = args["ThreadId"],
		["AuthenticationToken"] = args["AuthenticationToken"],
		["DocumentId"] = args["DocumentId"],
	}
	asserts.AssertCreateCommentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFolderRequest = { ["AuthenticationToken"] = true, ["Name"] = true, ["ParentFolderId"] = true, nil }

function asserts.AssertCreateFolderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFolderRequest to be of type 'table'")
	assert(struct["ParentFolderId"], "Expected key ParentFolderId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Name"] then asserts.AssertResourceNameType(struct["Name"]) end
	if struct["ParentFolderId"] then asserts.AssertResourceIdType(struct["ParentFolderId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFolderRequest[k], "CreateFolderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFolderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * Name [ResourceNameType] <p>The name of the new folder.</p>
-- * ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- Required key: ParentFolderId
-- @return CreateFolderRequest structure as a key-value pair table
function M.CreateFolderRequest(args)
	assert(args, "You must provide an argument table when creating CreateFolderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["Name"] = args["Name"],
		["ParentFolderId"] = args["ParentFolderId"],
	}
	asserts.AssertCreateFolderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserResponse = { ["User"] = true, nil }

function asserts.AssertCreateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserResponse to be of type 'table'")
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserResponse[k], "CreateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [User] <p>The user information.</p>
-- @return CreateUserResponse structure as a key-value pair table
function M.CreateUserResponse(args)
	assert(args, "You must provide an argument table when creating CreateUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["User"] = args["User"],
	}
	asserts.AssertCreateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCommentsResponse = { ["Marker"] = true, ["Comments"] = true, nil }

function asserts.AssertDescribeCommentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommentsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["Comments"] then asserts.AssertCommentList(struct["Comments"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCommentsResponse[k], "DescribeCommentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [MarkerType] <p>The marker for the next set of results. This marker was received from a previous call.</p>
-- * Comments [CommentList] <p>The list of comments for the specified document version.</p>
-- @return DescribeCommentsResponse structure as a key-value pair table
function M.DescribeCommentsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeCommentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Comments"] = args["Comments"],
	}
	asserts.AssertDescribeCommentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeGroupsResponse = { ["Marker"] = true, ["Groups"] = true, nil }

function asserts.AssertDescribeGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGroupsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["Groups"] then asserts.AssertGroupMetadataList(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGroupsResponse[k], "DescribeGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [MarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- * Groups [GroupMetadataList] <p>The list of groups.</p>
-- @return DescribeGroupsResponse structure as a key-value pair table
function M.DescribeGroupsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertDescribeGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFolderRequest = { ["AuthenticationToken"] = true, ["FolderId"] = true, nil }

function asserts.AssertDeleteFolderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFolderRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["FolderId"] then asserts.AssertResourceIdType(struct["FolderId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFolderRequest[k], "DeleteFolderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFolderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * FolderId [ResourceIdType] <p>The ID of the folder.</p>
-- Required key: FolderId
-- @return DeleteFolderRequest structure as a key-value pair table
function M.DeleteFolderRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFolderRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FolderId}"] = args["FolderId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["FolderId"] = args["FolderId"],
	}
	asserts.AssertDeleteFolderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DocumentLockedForCommentsException = { ["Message"] = true, nil }

function asserts.AssertDocumentLockedForCommentsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentLockedForCommentsException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentLockedForCommentsException[k], "DocumentLockedForCommentsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentLockedForCommentsException
-- <p>This exception is thrown when the document is locked for comments and user tries to create or delete a comment on that document.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return DocumentLockedForCommentsException structure as a key-value pair table
function M.DocumentLockedForCommentsException(args)
	assert(args, "You must provide an argument table when creating DocumentLockedForCommentsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDocumentLockedForCommentsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDocumentRequest = { ["AuthenticationToken"] = true, ["ResourceState"] = true, ["Name"] = true, ["DocumentId"] = true, ["ParentFolderId"] = true, nil }

function asserts.AssertUpdateDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceState"] then asserts.AssertResourceStateType(struct["ResourceState"]) end
	if struct["Name"] then asserts.AssertResourceNameType(struct["Name"]) end
	if struct["DocumentId"] then asserts.AssertResourceIdType(struct["DocumentId"]) end
	if struct["ParentFolderId"] then asserts.AssertResourceIdType(struct["ParentFolderId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDocumentRequest[k], "UpdateDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * ResourceState [ResourceStateType] <p>The resource state of the document. Only ACTIVE and RECYCLED are supported.</p>
-- * Name [ResourceNameType] <p>The name of the document.</p>
-- * DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- * ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- Required key: DocumentId
-- @return UpdateDocumentRequest structure as a key-value pair table
function M.UpdateDocumentRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDocumentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["ResourceState"] = args["ResourceState"],
		["Name"] = args["Name"],
		["DocumentId"] = args["DocumentId"],
		["ParentFolderId"] = args["ParentFolderId"],
	}
	asserts.AssertUpdateDocumentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeResourcePermissionsResponse = { ["Marker"] = true, ["Principals"] = true, nil }

function asserts.AssertDescribeResourcePermissionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourcePermissionsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Principals"] then asserts.AssertPrincipalList(struct["Principals"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourcePermissionsResponse[k], "DescribeResourcePermissionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourcePermissionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- * Principals [PrincipalList] <p>The principals.</p>
-- @return DescribeResourcePermissionsResponse structure as a key-value pair table
function M.DescribeResourcePermissionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeResourcePermissionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Principals"] = args["Principals"],
	}
	asserts.AssertDescribeResourcePermissionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDocumentVersionRequest = { ["AuthenticationToken"] = true, ["Fields"] = true, ["VersionId"] = true, ["IncludeCustomMetadata"] = true, ["DocumentId"] = true, nil }

function asserts.AssertGetDocumentVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentVersionRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Fields"] then asserts.AssertFieldNamesType(struct["Fields"]) end
	if struct["VersionId"] then asserts.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["IncludeCustomMetadata"] then asserts.AssertBooleanType(struct["IncludeCustomMetadata"]) end
	if struct["DocumentId"] then asserts.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentVersionRequest[k], "GetDocumentVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * Fields [FieldNamesType] <p>A comma-separated list of values. Specify "SOURCE" to include a URL for the source document.</p>
-- * VersionId [DocumentVersionIdType] <p>The version ID of the document.</p>
-- * IncludeCustomMetadata [BooleanType] <p>Set this to TRUE to include custom metadata in the response.</p>
-- * DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required key: DocumentId
-- Required key: VersionId
-- @return GetDocumentVersionRequest structure as a key-value pair table
function M.GetDocumentVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetDocumentVersionRequest")
    local query_args = { 
        ["fields"] = args["Fields"],
        ["includeCustomMetadata"] = args["IncludeCustomMetadata"],
    }
    local uri_args = { 
        ["{VersionId}"] = args["VersionId"],
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["Fields"] = args["Fields"],
		["VersionId"] = args["VersionId"],
		["IncludeCustomMetadata"] = args["IncludeCustomMetadata"],
		["DocumentId"] = args["DocumentId"],
	}
	asserts.AssertGetDocumentVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeactivatingLastSystemUserException = { nil }

function asserts.AssertDeactivatingLastSystemUserException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeactivatingLastSystemUserException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeactivatingLastSystemUserException[k], "DeactivatingLastSystemUserException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeactivatingLastSystemUserException
-- <p>The last user in the organization is being deactivated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeactivatingLastSystemUserException structure as a key-value pair table
function M.DeactivatingLastSystemUserException(args)
	assert(args, "You must provide an argument table when creating DeactivatingLastSystemUserException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeactivatingLastSystemUserException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ShareResult = { ["Status"] = true, ["StatusMessage"] = true, ["Role"] = true, ["ShareId"] = true, ["PrincipalId"] = true, nil }

function asserts.AssertShareResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShareResult to be of type 'table'")
	if struct["Status"] then asserts.AssertShareStatusType(struct["Status"]) end
	if struct["StatusMessage"] then asserts.AssertMessageType(struct["StatusMessage"]) end
	if struct["Role"] then asserts.AssertRoleType(struct["Role"]) end
	if struct["ShareId"] then asserts.AssertResourceIdType(struct["ShareId"]) end
	if struct["PrincipalId"] then asserts.AssertIdType(struct["PrincipalId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShareResult[k], "ShareResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShareResult
-- <p>Describes the share results of a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ShareStatusType] <p>The status.</p>
-- * StatusMessage [MessageType] <p>The status message.</p>
-- * Role [RoleType] <p>The role.</p>
-- * ShareId [ResourceIdType] <p>The ID of the resource that was shared.</p>
-- * PrincipalId [IdType] <p>The ID of the principal.</p>
-- @return ShareResult structure as a key-value pair table
function M.ShareResult(args)
	assert(args, "You must provide an argument table when creating ShareResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["StatusMessage"] = args["StatusMessage"],
		["Role"] = args["Role"],
		["ShareId"] = args["ShareId"],
		["PrincipalId"] = args["PrincipalId"],
	}
	asserts.AssertShareResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDocumentResponse = { ["CustomMetadata"] = true, ["Metadata"] = true, nil }

function asserts.AssertGetDocumentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentResponse to be of type 'table'")
	if struct["CustomMetadata"] then asserts.AssertCustomMetadataMap(struct["CustomMetadata"]) end
	if struct["Metadata"] then asserts.AssertDocumentMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentResponse[k], "GetDocumentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CustomMetadata [CustomMetadataMap] <p>The custom metadata on the document.</p>
-- * Metadata [DocumentMetadata] <p>The metadata details of the document.</p>
-- @return GetDocumentResponse structure as a key-value pair table
function M.GetDocumentResponse(args)
	assert(args, "You must provide an argument table when creating GetDocumentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CustomMetadata"] = args["CustomMetadata"],
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertGetDocumentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFolderPathRequest = { ["AuthenticationToken"] = true, ["Fields"] = true, ["FolderId"] = true, ["Limit"] = true, ["Marker"] = true, nil }

function asserts.AssertGetFolderPathRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFolderPathRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Fields"] then asserts.AssertFieldNamesType(struct["Fields"]) end
	if struct["FolderId"] then asserts.AssertIdType(struct["FolderId"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFolderPathRequest[k], "GetFolderPathRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFolderPathRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * Fields [FieldNamesType] <p>A comma-separated list of values. Specify "NAME" to include the names of the parent folders.</p>
-- * FolderId [IdType] <p>The ID of the folder.</p>
-- * Limit [LimitType] <p>The maximum number of levels in the hierarchy to return.</p>
-- * Marker [PageMarkerType] <p>This value is not supported.</p>
-- Required key: FolderId
-- @return GetFolderPathRequest structure as a key-value pair table
function M.GetFolderPathRequest(args)
	assert(args, "You must provide an argument table when creating GetFolderPathRequest")
    local query_args = { 
        ["fields"] = args["Fields"],
        ["limit"] = args["Limit"],
        ["marker"] = args["Marker"],
    }
    local uri_args = { 
        ["{FolderId}"] = args["FolderId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["Fields"] = args["Fields"],
		["FolderId"] = args["FolderId"],
		["Limit"] = args["Limit"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertGetFolderPathRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddResourcePermissionsResponse = { ["ShareResults"] = true, nil }

function asserts.AssertAddResourcePermissionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddResourcePermissionsResponse to be of type 'table'")
	if struct["ShareResults"] then asserts.AssertShareResultsList(struct["ShareResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddResourcePermissionsResponse[k], "AddResourcePermissionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddResourcePermissionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShareResults [ShareResultsList] <p>The share results.</p>
-- @return AddResourcePermissionsResponse structure as a key-value pair table
function M.AddResourcePermissionsResponse(args)
	assert(args, "You must provide an argument table when creating AddResourcePermissionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShareResults"] = args["ShareResults"],
	}
	asserts.AssertAddResourcePermissionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFolderResponse = { ["CustomMetadata"] = true, ["Metadata"] = true, nil }

function asserts.AssertGetFolderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFolderResponse to be of type 'table'")
	if struct["CustomMetadata"] then asserts.AssertCustomMetadataMap(struct["CustomMetadata"]) end
	if struct["Metadata"] then asserts.AssertFolderMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFolderResponse[k], "GetFolderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFolderResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CustomMetadata [CustomMetadataMap] <p>The custom metadata on the folder.</p>
-- * Metadata [FolderMetadata] <p>The metadata of the folder.</p>
-- @return GetFolderResponse structure as a key-value pair table
function M.GetFolderResponse(args)
	assert(args, "You must provide an argument table when creating GetFolderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CustomMetadata"] = args["CustomMetadata"],
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertGetFolderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Subscription = { ["SubscriptionId"] = true, ["EndPoint"] = true, ["Protocol"] = true, nil }

function asserts.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	if struct["SubscriptionId"] then asserts.AssertIdType(struct["SubscriptionId"]) end
	if struct["EndPoint"] then asserts.AssertSubscriptionEndPointType(struct["EndPoint"]) end
	if struct["Protocol"] then asserts.AssertSubscriptionProtocolType(struct["Protocol"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subscription[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- <p>Describes a subscription.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionId [IdType] <p>The ID of the subscription.</p>
-- * EndPoint [SubscriptionEndPointType] <p>The endpoint of the subscription.</p>
-- * Protocol [SubscriptionProtocolType] <p>The protocol of the subscription.</p>
-- @return Subscription structure as a key-value pair table
function M.Subscription(args)
	assert(args, "You must provide an argument table when creating Subscription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionId"] = args["SubscriptionId"],
		["EndPoint"] = args["EndPoint"],
		["Protocol"] = args["Protocol"],
	}
	asserts.AssertSubscription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LimitExceededException = { ["Message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The maximum of 100,000 folders under the parent folder has been exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
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
		["Message"] = args["Message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotificationOptions = { ["EmailMessage"] = true, ["SendEmail"] = true, nil }

function asserts.AssertNotificationOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationOptions to be of type 'table'")
	if struct["EmailMessage"] then asserts.AssertMessageType(struct["EmailMessage"]) end
	if struct["SendEmail"] then asserts.AssertBooleanType(struct["SendEmail"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationOptions[k], "NotificationOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationOptions
-- <p>Set of options which defines notification preferences of given action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailMessage [MessageType] <p>Text value to be included in the email body.</p>
-- * SendEmail [BooleanType] <p>Boolean value to indicate an email notification should be sent to the receipients.</p>
-- @return NotificationOptions structure as a key-value pair table
function M.NotificationOptions(args)
	assert(args, "You must provide an argument table when creating NotificationOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmailMessage"] = args["EmailMessage"],
		["SendEmail"] = args["SendEmail"],
	}
	asserts.AssertNotificationOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourcePathComponent = { ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertResourcePathComponent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourcePathComponent to be of type 'table'")
	if struct["Id"] then asserts.AssertIdType(struct["Id"]) end
	if struct["Name"] then asserts.AssertResourceNameType(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourcePathComponent[k], "ResourcePathComponent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourcePathComponent
-- <p>Describes the resource path.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [IdType] <p>The ID of the resource path.</p>
-- * Name [ResourceNameType] <p>The name of the resource path.</p>
-- @return ResourcePathComponent structure as a key-value pair table
function M.ResourcePathComponent(args)
	assert(args, "You must provide an argument table when creating ResourcePathComponent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertResourcePathComponent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeactivateUserRequest = { ["AuthenticationToken"] = true, ["UserId"] = true, nil }

function asserts.AssertDeactivateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeactivateUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["UserId"] then asserts.AssertIdType(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeactivateUserRequest[k], "DeactivateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeactivateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * UserId [IdType] <p>The ID of the user.</p>
-- Required key: UserId
-- @return DeactivateUserRequest structure as a key-value pair table
function M.DeactivateUserRequest(args)
	assert(args, "You must provide an argument table when creating DeactivateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertDeactivateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFolderResponse = { ["Metadata"] = true, nil }

function asserts.AssertCreateFolderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFolderResponse to be of type 'table'")
	if struct["Metadata"] then asserts.AssertFolderMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFolderResponse[k], "CreateFolderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFolderResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metadata [FolderMetadata] <p>The metadata of the folder.</p>
-- @return CreateFolderResponse structure as a key-value pair table
function M.CreateFolderResponse(args)
	assert(args, "You must provide an argument table when creating CreateFolderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertCreateFolderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnauthorizedOperationException = { nil }

function asserts.AssertUnauthorizedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedOperationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedOperationException[k], "UnauthorizedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedOperationException
-- <p>The operation is not permitted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UnauthorizedOperationException structure as a key-value pair table
function M.UnauthorizedOperationException(args)
	assert(args, "You must provide an argument table when creating UnauthorizedOperationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUnauthorizedOperationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUsersRequest = { ["Sort"] = true, ["OrganizationId"] = true, ["Fields"] = true, ["UserIds"] = true, ["Marker"] = true, ["Limit"] = true, ["AuthenticationToken"] = true, ["Query"] = true, ["Include"] = true, ["Order"] = true, nil }

function asserts.AssertDescribeUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUsersRequest to be of type 'table'")
	if struct["Sort"] then asserts.AssertUserSortType(struct["Sort"]) end
	if struct["OrganizationId"] then asserts.AssertIdType(struct["OrganizationId"]) end
	if struct["Fields"] then asserts.AssertFieldNamesType(struct["Fields"]) end
	if struct["UserIds"] then asserts.AssertUserIdsType(struct["UserIds"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Query"] then asserts.AssertSearchQueryType(struct["Query"]) end
	if struct["Include"] then asserts.AssertUserFilterType(struct["Include"]) end
	if struct["Order"] then asserts.AssertOrderType(struct["Order"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUsersRequest[k], "DescribeUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUsersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Sort [UserSortType] <p>The sorting criteria.</p>
-- * OrganizationId [IdType] <p>The ID of the organization.</p>
-- * Fields [FieldNamesType] <p>A comma-separated list of values. Specify "STORAGE_METADATA" to include the user storage quota and utilization information.</p>
-- * UserIds [UserIdsType] <p>The IDs of the users.</p>
-- * Marker [PageMarkerType] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * Limit [LimitType] <p>The maximum number of items to return.</p>
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * Query [SearchQueryType] <p>A query to filter users by user name.</p>
-- * Include [UserFilterType] <p>The state of the users. Specify "ALL" to include inactive users.</p>
-- * Order [OrderType] <p>The order for the results.</p>
-- @return DescribeUsersRequest structure as a key-value pair table
function M.DescribeUsersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUsersRequest")
    local query_args = { 
        ["sort"] = args["Sort"],
        ["organizationId"] = args["OrganizationId"],
        ["fields"] = args["Fields"],
        ["userIds"] = args["UserIds"],
        ["marker"] = args["Marker"],
        ["limit"] = args["Limit"],
        ["query"] = args["Query"],
        ["include"] = args["Include"],
        ["order"] = args["Order"],
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["Sort"] = args["Sort"],
		["OrganizationId"] = args["OrganizationId"],
		["Fields"] = args["Fields"],
		["UserIds"] = args["UserIds"],
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
		["AuthenticationToken"] = args["AuthenticationToken"],
		["Query"] = args["Query"],
		["Include"] = args["Include"],
		["Order"] = args["Order"],
	}
	asserts.AssertDescribeUsersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveResourcePermissionRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["PrincipalType"] = true, ["PrincipalId"] = true, nil }

function asserts.AssertRemoveResourcePermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveResourcePermissionRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["PrincipalId"], "Expected key PrincipalId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["PrincipalType"] then asserts.AssertPrincipalType(struct["PrincipalType"]) end
	if struct["PrincipalId"] then asserts.AssertIdType(struct["PrincipalId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveResourcePermissionRequest[k], "RemoveResourcePermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveResourcePermissionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- * PrincipalType [PrincipalType] <p>The principal type of the resource.</p>
-- * PrincipalId [IdType] <p>The principal ID of the resource.</p>
-- Required key: ResourceId
-- Required key: PrincipalId
-- @return RemoveResourcePermissionRequest structure as a key-value pair table
function M.RemoveResourcePermissionRequest(args)
	assert(args, "You must provide an argument table when creating RemoveResourcePermissionRequest")
    local query_args = { 
        ["type"] = args["PrincipalType"],
    }
    local uri_args = { 
        ["{ResourceId}"] = args["ResourceId"],
        ["{PrincipalId}"] = args["PrincipalId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["ResourceId"] = args["ResourceId"],
		["PrincipalType"] = args["PrincipalType"],
		["PrincipalId"] = args["PrincipalId"],
	}
	asserts.AssertRemoveResourcePermissionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourcePath = { ["Components"] = true, nil }

function asserts.AssertResourcePath(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourcePath to be of type 'table'")
	if struct["Components"] then asserts.AssertResourcePathComponentList(struct["Components"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourcePath[k], "ResourcePath contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourcePath
-- <p>Describes the path information of a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Components [ResourcePathComponentList] <p>The components of the resource path.</p>
-- @return ResourcePath structure as a key-value pair table
function M.ResourcePath(args)
	assert(args, "You must provide an argument table when creating ResourcePath")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Components"] = args["Components"],
	}
	asserts.AssertResourcePath(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IllegalUserStateException = { ["Message"] = true, nil }

function asserts.AssertIllegalUserStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IllegalUserStateException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IllegalUserStateException[k], "IllegalUserStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IllegalUserStateException
-- <p>The user is undergoing transfer of ownership.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return IllegalUserStateException structure as a key-value pair table
function M.IllegalUserStateException(args)
	assert(args, "You must provide an argument table when creating IllegalUserStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertIllegalUserStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeFolderContentsRequest = { ["Sort"] = true, ["Include"] = true, ["Marker"] = true, ["Limit"] = true, ["AuthenticationToken"] = true, ["FolderId"] = true, ["Type"] = true, ["Order"] = true, nil }

function asserts.AssertDescribeFolderContentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFolderContentsRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["Sort"] then asserts.AssertResourceSortType(struct["Sort"]) end
	if struct["Include"] then asserts.AssertFieldNamesType(struct["Include"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["FolderId"] then asserts.AssertResourceIdType(struct["FolderId"]) end
	if struct["Type"] then asserts.AssertFolderContentType(struct["Type"]) end
	if struct["Order"] then asserts.AssertOrderType(struct["Order"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFolderContentsRequest[k], "DescribeFolderContentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFolderContentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Sort [ResourceSortType] <p>The sorting criteria.</p>
-- * Include [FieldNamesType] <p>The contents to include. Specify "INITIALIZED" to include initialized documents.</p>
-- * Marker [PageMarkerType] <p>The marker for the next set of results. This marker was received from a previous call.</p>
-- * Limit [LimitType] <p>The maximum number of items to return with this call.</p>
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * FolderId [ResourceIdType] <p>The ID of the folder.</p>
-- * Type [FolderContentType] <p>The type of items.</p>
-- * Order [OrderType] <p>The order for the contents of the folder.</p>
-- Required key: FolderId
-- @return DescribeFolderContentsRequest structure as a key-value pair table
function M.DescribeFolderContentsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeFolderContentsRequest")
    local query_args = { 
        ["sort"] = args["Sort"],
        ["include"] = args["Include"],
        ["marker"] = args["Marker"],
        ["limit"] = args["Limit"],
        ["type"] = args["Type"],
        ["order"] = args["Order"],
    }
    local uri_args = { 
        ["{FolderId}"] = args["FolderId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["Sort"] = args["Sort"],
		["Include"] = args["Include"],
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
		["AuthenticationToken"] = args["AuthenticationToken"],
		["FolderId"] = args["FolderId"],
		["Type"] = args["Type"],
		["Order"] = args["Order"],
	}
	asserts.AssertDescribeFolderContentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceAlreadyCheckedOutException = { ["Message"] = true, nil }

function asserts.AssertResourceAlreadyCheckedOutException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyCheckedOutException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyCheckedOutException[k], "ResourceAlreadyCheckedOutException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyCheckedOutException
-- <p>The resource is already checked out.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return ResourceAlreadyCheckedOutException structure as a key-value pair table
function M.ResourceAlreadyCheckedOutException(args)
	assert(args, "You must provide an argument table when creating ResourceAlreadyCheckedOutException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceAlreadyCheckedOutException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDocumentPathResponse = { ["Path"] = true, nil }

function asserts.AssertGetDocumentPathResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentPathResponse to be of type 'table'")
	if struct["Path"] then asserts.AssertResourcePath(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentPathResponse[k], "GetDocumentPathResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentPathResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [ResourcePath] <p>The path information.</p>
-- @return GetDocumentPathResponse structure as a key-value pair table
function M.GetDocumentPathResponse(args)
	assert(args, "You must provide an argument table when creating GetDocumentPathResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
	}
	asserts.AssertGetDocumentPathResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserRequest = { ["TimeZoneId"] = true, ["Surname"] = true, ["Locale"] = true, ["GrantPoweruserPrivileges"] = true, ["UserId"] = true, ["StorageRule"] = true, ["AuthenticationToken"] = true, ["GivenName"] = true, ["Type"] = true, nil }

function asserts.AssertUpdateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["TimeZoneId"] then asserts.AssertTimeZoneIdType(struct["TimeZoneId"]) end
	if struct["Surname"] then asserts.AssertUserAttributeValueType(struct["Surname"]) end
	if struct["Locale"] then asserts.AssertLocaleType(struct["Locale"]) end
	if struct["GrantPoweruserPrivileges"] then asserts.AssertBooleanEnumType(struct["GrantPoweruserPrivileges"]) end
	if struct["UserId"] then asserts.AssertIdType(struct["UserId"]) end
	if struct["StorageRule"] then asserts.AssertStorageRuleType(struct["StorageRule"]) end
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["GivenName"] then asserts.AssertUserAttributeValueType(struct["GivenName"]) end
	if struct["Type"] then asserts.AssertUserType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserRequest[k], "UpdateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimeZoneId [TimeZoneIdType] <p>The time zone ID of the user.</p>
-- * Surname [UserAttributeValueType] <p>The surname of the user.</p>
-- * Locale [LocaleType] <p>The locale of the user.</p>
-- * GrantPoweruserPrivileges [BooleanEnumType] <p>Boolean value to determine whether the user is granted Poweruser privileges.</p>
-- * UserId [IdType] <p>The ID of the user.</p>
-- * StorageRule [StorageRuleType] <p>The amount of storage for the user.</p>
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * GivenName [UserAttributeValueType] <p>The given name of the user.</p>
-- * Type [UserType] <p>The type of the user.</p>
-- Required key: UserId
-- @return UpdateUserRequest structure as a key-value pair table
function M.UpdateUserRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["TimeZoneId"] = args["TimeZoneId"],
		["Surname"] = args["Surname"],
		["Locale"] = args["Locale"],
		["GrantPoweruserPrivileges"] = args["GrantPoweruserPrivileges"],
		["UserId"] = args["UserId"],
		["StorageRule"] = args["StorageRule"],
		["AuthenticationToken"] = args["AuthenticationToken"],
		["GivenName"] = args["GivenName"],
		["Type"] = args["Type"],
	}
	asserts.AssertUpdateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddResourcePermissionsRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["NotificationOptions"] = true, ["Principals"] = true, nil }

function asserts.AssertAddResourcePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddResourcePermissionsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Principals"], "Expected key Principals to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["NotificationOptions"] then asserts.AssertNotificationOptions(struct["NotificationOptions"]) end
	if struct["Principals"] then asserts.AssertSharePrincipalList(struct["Principals"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddResourcePermissionsRequest[k], "AddResourcePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddResourcePermissionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- * NotificationOptions [NotificationOptions] <p>The notification options.</p>
-- * Principals [SharePrincipalList] <p>The users, groups, or organization being granted permission.</p>
-- Required key: ResourceId
-- Required key: Principals
-- @return AddResourcePermissionsRequest structure as a key-value pair table
function M.AddResourcePermissionsRequest(args)
	assert(args, "You must provide an argument table when creating AddResourcePermissionsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ResourceId}"] = args["ResourceId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["ResourceId"] = args["ResourceId"],
		["NotificationOptions"] = args["NotificationOptions"],
		["Principals"] = args["Principals"],
	}
	asserts.AssertAddResourcePermissionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Participants = { ["Users"] = true, ["Groups"] = true, nil }

function asserts.AssertParticipants(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Participants to be of type 'table'")
	if struct["Users"] then asserts.AssertUserMetadataList(struct["Users"]) end
	if struct["Groups"] then asserts.AssertGroupMetadataList(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.Participants[k], "Participants contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Participants
-- <p>Describes the users or user groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Users [UserMetadataList] <p>The list of users.</p>
-- * Groups [GroupMetadataList] <p>The list of user groups.</p>
-- @return Participants structure as a key-value pair table
function M.Participants(args)
	assert(args, "You must provide an argument table when creating Participants")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Users"] = args["Users"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertParticipants(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeActivitiesResponse = { ["UserActivities"] = true, ["Marker"] = true, nil }

function asserts.AssertDescribeActivitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivitiesResponse to be of type 'table'")
	if struct["UserActivities"] then asserts.AssertUserActivities(struct["UserActivities"]) end
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeActivitiesResponse[k], "DescribeActivitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivitiesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserActivities [UserActivities] <p>The list of activities for the specified user and time period.</p>
-- * Marker [MarkerType] <p>The marker for the next set of results.</p>
-- @return DescribeActivitiesResponse structure as a key-value pair table
function M.DescribeActivitiesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeActivitiesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserActivities"] = args["UserActivities"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertDescribeActivitiesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserStorageMetadata = { ["StorageRule"] = true, ["StorageUtilizedInBytes"] = true, nil }

function asserts.AssertUserStorageMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserStorageMetadata to be of type 'table'")
	if struct["StorageRule"] then asserts.AssertStorageRuleType(struct["StorageRule"]) end
	if struct["StorageUtilizedInBytes"] then asserts.AssertSizeType(struct["StorageUtilizedInBytes"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserStorageMetadata[k], "UserStorageMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserStorageMetadata
-- <p>Describes the storage for a user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StorageRule [StorageRuleType] <p>The storage for a user.</p>
-- * StorageUtilizedInBytes [SizeType] <p>The amount of storage used, in bytes.</p>
-- @return UserStorageMetadata structure as a key-value pair table
function M.UserStorageMetadata(args)
	assert(args, "You must provide an argument table when creating UserStorageMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StorageRule"] = args["StorageRule"],
		["StorageUtilizedInBytes"] = args["StorageUtilizedInBytes"],
	}
	asserts.AssertUserStorageMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FolderMetadata = { ["Name"] = true, ["LatestVersionSize"] = true, ["Labels"] = true, ["ModifiedTimestamp"] = true, ["Id"] = true, ["CreatedTimestamp"] = true, ["ResourceState"] = true, ["CreatorId"] = true, ["Signature"] = true, ["ParentFolderId"] = true, ["Size"] = true, nil }

function asserts.AssertFolderMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FolderMetadata to be of type 'table'")
	if struct["Name"] then asserts.AssertResourceNameType(struct["Name"]) end
	if struct["LatestVersionSize"] then asserts.AssertSizeType(struct["LatestVersionSize"]) end
	if struct["Labels"] then asserts.AssertSharedLabels(struct["Labels"]) end
	if struct["ModifiedTimestamp"] then asserts.AssertTimestampType(struct["ModifiedTimestamp"]) end
	if struct["Id"] then asserts.AssertResourceIdType(struct["Id"]) end
	if struct["CreatedTimestamp"] then asserts.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["ResourceState"] then asserts.AssertResourceStateType(struct["ResourceState"]) end
	if struct["CreatorId"] then asserts.AssertIdType(struct["CreatorId"]) end
	if struct["Signature"] then asserts.AssertHashType(struct["Signature"]) end
	if struct["ParentFolderId"] then asserts.AssertResourceIdType(struct["ParentFolderId"]) end
	if struct["Size"] then asserts.AssertSizeType(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.FolderMetadata[k], "FolderMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FolderMetadata
-- <p>Describes a folder.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceNameType] <p>The name of the folder.</p>
-- * LatestVersionSize [SizeType] <p>The size of the latest version of the folder metadata.</p>
-- * Labels [SharedLabels] <p>List of labels on the folder.</p>
-- * ModifiedTimestamp [TimestampType] <p>The time when the folder was updated.</p>
-- * Id [ResourceIdType] <p>The ID of the folder.</p>
-- * CreatedTimestamp [TimestampType] <p>The time when the folder was created.</p>
-- * ResourceState [ResourceStateType] <p>The resource state of the folder.</p>
-- * CreatorId [IdType] <p>The ID of the creator.</p>
-- * Signature [HashType] <p>The unique identifier created from the subfolders and documents of the folder.</p>
-- * ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- * Size [SizeType] <p>The size of the folder metadata.</p>
-- @return FolderMetadata structure as a key-value pair table
function M.FolderMetadata(args)
	assert(args, "You must provide an argument table when creating FolderMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["LatestVersionSize"] = args["LatestVersionSize"],
		["Labels"] = args["Labels"],
		["ModifiedTimestamp"] = args["ModifiedTimestamp"],
		["Id"] = args["Id"],
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["ResourceState"] = args["ResourceState"],
		["CreatorId"] = args["CreatorId"],
		["Signature"] = args["Signature"],
		["ParentFolderId"] = args["ParentFolderId"],
		["Size"] = args["Size"],
	}
	asserts.AssertFolderMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GroupMetadata = { ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertGroupMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupMetadata to be of type 'table'")
	if struct["Id"] then asserts.AssertIdType(struct["Id"]) end
	if struct["Name"] then asserts.AssertGroupNameType(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupMetadata[k], "GroupMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupMetadata
-- <p>Describes the metadata of a user group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [IdType] <p>The ID of the user group.</p>
-- * Name [GroupNameType] <p>The name of the group.</p>
-- @return GroupMetadata structure as a key-value pair table
function M.GroupMetadata(args)
	assert(args, "You must provide an argument table when creating GroupMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertGroupMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UploadMetadata = { ["SignedHeaders"] = true, ["UploadUrl"] = true, nil }

function asserts.AssertUploadMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadMetadata to be of type 'table'")
	if struct["SignedHeaders"] then asserts.AssertSignedHeaderMap(struct["SignedHeaders"]) end
	if struct["UploadUrl"] then asserts.AssertUrlType(struct["UploadUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadMetadata[k], "UploadMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadMetadata
-- <p>Describes the upload.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SignedHeaders [SignedHeaderMap] <p>The signed headers.</p>
-- * UploadUrl [UrlType] <p>The URL of the upload.</p>
-- @return UploadMetadata structure as a key-value pair table
function M.UploadMetadata(args)
	assert(args, "You must provide an argument table when creating UploadMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SignedHeaders"] = args["SignedHeaders"],
		["UploadUrl"] = args["UploadUrl"],
	}
	asserts.AssertUploadMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomMetadataLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertCustomMetadataLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomMetadataLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomMetadataLimitExceededException[k], "CustomMetadataLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomMetadataLimitExceededException
-- <p>The limit has been reached on the number of custom properties for the specified resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return CustomMetadataLimitExceededException structure as a key-value pair table
function M.CustomMetadataLimitExceededException(args)
	assert(args, "You must provide an argument table when creating CustomMetadataLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertCustomMetadataLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.User = { ["Username"] = true, ["Status"] = true, ["Surname"] = true, ["OrganizationId"] = true, ["Storage"] = true, ["RecycleBinFolderId"] = true, ["TimeZoneId"] = true, ["ModifiedTimestamp"] = true, ["CreatedTimestamp"] = true, ["Locale"] = true, ["EmailAddress"] = true, ["RootFolderId"] = true, ["GivenName"] = true, ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected User to be of type 'table'")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["Status"] then asserts.AssertUserStatusType(struct["Status"]) end
	if struct["Surname"] then asserts.AssertUserAttributeValueType(struct["Surname"]) end
	if struct["OrganizationId"] then asserts.AssertIdType(struct["OrganizationId"]) end
	if struct["Storage"] then asserts.AssertUserStorageMetadata(struct["Storage"]) end
	if struct["RecycleBinFolderId"] then asserts.AssertResourceIdType(struct["RecycleBinFolderId"]) end
	if struct["TimeZoneId"] then asserts.AssertTimeZoneIdType(struct["TimeZoneId"]) end
	if struct["ModifiedTimestamp"] then asserts.AssertTimestampType(struct["ModifiedTimestamp"]) end
	if struct["CreatedTimestamp"] then asserts.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["Locale"] then asserts.AssertLocaleType(struct["Locale"]) end
	if struct["EmailAddress"] then asserts.AssertEmailAddressType(struct["EmailAddress"]) end
	if struct["RootFolderId"] then asserts.AssertResourceIdType(struct["RootFolderId"]) end
	if struct["GivenName"] then asserts.AssertUserAttributeValueType(struct["GivenName"]) end
	if struct["Type"] then asserts.AssertUserType(struct["Type"]) end
	if struct["Id"] then asserts.AssertIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.User[k], "User contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type User
-- <p>Describes a user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The login name of the user.</p>
-- * Status [UserStatusType] <p>The status of the user.</p>
-- * Surname [UserAttributeValueType] <p>The surname of the user.</p>
-- * OrganizationId [IdType] <p>The ID of the organization.</p>
-- * Storage [UserStorageMetadata] <p>The storage for the user.</p>
-- * RecycleBinFolderId [ResourceIdType] <p>The ID of the recycle bin folder.</p>
-- * TimeZoneId [TimeZoneIdType] <p>The time zone ID of the user.</p>
-- * ModifiedTimestamp [TimestampType] <p>The time when the user was modified.</p>
-- * CreatedTimestamp [TimestampType] <p>The time when the user was created.</p>
-- * Locale [LocaleType] <p>The locale of the user.</p>
-- * EmailAddress [EmailAddressType] <p>The email address of the user.</p>
-- * RootFolderId [ResourceIdType] <p>The ID of the root folder.</p>
-- * GivenName [UserAttributeValueType] <p>The given name of the user.</p>
-- * Type [UserType] <p>The type of user.</p>
-- * Id [IdType] <p>The ID of the user.</p>
-- @return User structure as a key-value pair table
function M.User(args)
	assert(args, "You must provide an argument table when creating User")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["Status"] = args["Status"],
		["Surname"] = args["Surname"],
		["OrganizationId"] = args["OrganizationId"],
		["Storage"] = args["Storage"],
		["RecycleBinFolderId"] = args["RecycleBinFolderId"],
		["TimeZoneId"] = args["TimeZoneId"],
		["ModifiedTimestamp"] = args["ModifiedTimestamp"],
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["Locale"] = args["Locale"],
		["EmailAddress"] = args["EmailAddress"],
		["RootFolderId"] = args["RootFolderId"],
		["GivenName"] = args["GivenName"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertUser(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidOperationException = { ["Message"] = true, nil }

function asserts.AssertInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOperationException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidOperationException[k], "InvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOperationException
-- <p>The operation is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return InvalidOperationException structure as a key-value pair table
function M.InvalidOperationException(args)
	assert(args, "You must provide an argument table when creating InvalidOperationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidOperationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCustomMetadataResponse = { nil }

function asserts.AssertCreateCustomMetadataResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCustomMetadataResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateCustomMetadataResponse[k], "CreateCustomMetadataResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCustomMetadataResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateCustomMetadataResponse structure as a key-value pair table
function M.CreateCustomMetadataResponse(args)
	assert(args, "You must provide an argument table when creating CreateCustomMetadataResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateCustomMetadataResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CommentMetadata = { ["Contributor"] = true, ["CommentId"] = true, ["CreatedTimestamp"] = true, ["RecipientId"] = true, ["CommentStatus"] = true, nil }

function asserts.AssertCommentMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommentMetadata to be of type 'table'")
	if struct["Contributor"] then asserts.AssertUser(struct["Contributor"]) end
	if struct["CommentId"] then asserts.AssertCommentIdType(struct["CommentId"]) end
	if struct["CreatedTimestamp"] then asserts.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["RecipientId"] then asserts.AssertIdType(struct["RecipientId"]) end
	if struct["CommentStatus"] then asserts.AssertCommentStatusType(struct["CommentStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.CommentMetadata[k], "CommentMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommentMetadata
-- <p>Describes the metadata of a comment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Contributor [User] <p>The user who made the comment.</p>
-- * CommentId [CommentIdType] <p>The ID of the comment.</p>
-- * CreatedTimestamp [TimestampType] <p>The timestamp that the comment was created.</p>
-- * RecipientId [IdType] <p>The ID of the user being replied to.</p>
-- * CommentStatus [CommentStatusType] <p>The status of the comment.</p>
-- @return CommentMetadata structure as a key-value pair table
function M.CommentMetadata(args)
	assert(args, "You must provide an argument table when creating CommentMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Contributor"] = args["Contributor"],
		["CommentId"] = args["CommentId"],
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["RecipientId"] = args["RecipientId"],
		["CommentStatus"] = args["CommentStatus"],
	}
	asserts.AssertCommentMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLabelsResponse = { nil }

function asserts.AssertDeleteLabelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLabelsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteLabelsResponse[k], "DeleteLabelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLabelsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteLabelsResponse structure as a key-value pair table
function M.DeleteLabelsResponse(args)
	assert(args, "You must provide an argument table when creating DeleteLabelsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteLabelsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCommentRequest = { ["AuthenticationToken"] = true, ["CommentId"] = true, ["VersionId"] = true, ["DocumentId"] = true, nil }

function asserts.AssertDeleteCommentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCommentRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	assert(struct["CommentId"], "Expected key CommentId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["CommentId"] then asserts.AssertCommentIdType(struct["CommentId"]) end
	if struct["VersionId"] then asserts.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["DocumentId"] then asserts.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCommentRequest[k], "DeleteCommentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCommentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * CommentId [CommentIdType] <p>The ID of the comment.</p>
-- * VersionId [DocumentVersionIdType] <p>The ID of the document version.</p>
-- * DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required key: DocumentId
-- Required key: VersionId
-- Required key: CommentId
-- @return DeleteCommentRequest structure as a key-value pair table
function M.DeleteCommentRequest(args)
	assert(args, "You must provide an argument table when creating DeleteCommentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{CommentId}"] = args["CommentId"],
        ["{VersionId}"] = args["VersionId"],
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["CommentId"] = args["CommentId"],
		["VersionId"] = args["VersionId"],
		["DocumentId"] = args["DocumentId"],
	}
	asserts.AssertDeleteCommentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDocumentRequest = { ["AuthenticationToken"] = true, ["DocumentId"] = true, nil }

function asserts.AssertDeleteDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDocumentRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["DocumentId"] then asserts.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDocumentRequest[k], "DeleteDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDocumentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required key: DocumentId
-- @return DeleteDocumentRequest structure as a key-value pair table
function M.DeleteDocumentRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDocumentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["DocumentId"] = args["DocumentId"],
	}
	asserts.AssertDeleteDocumentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidPasswordException = { ["Message"] = true, nil }

function asserts.AssertInvalidPasswordException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPasswordException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidPasswordException[k], "InvalidPasswordException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPasswordException
-- <p>The password is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return InvalidPasswordException structure as a key-value pair table
function M.InvalidPasswordException(args)
	assert(args, "You must provide an argument table when creating InvalidPasswordException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidPasswordException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCommentsRequest = { ["AuthenticationToken"] = true, ["Marker"] = true, ["VersionId"] = true, ["Limit"] = true, ["DocumentId"] = true, nil }

function asserts.AssertDescribeCommentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommentsRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["VersionId"] then asserts.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	if struct["DocumentId"] then asserts.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCommentsRequest[k], "DescribeCommentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * Marker [MarkerType] <p>The marker for the next set of results. This marker was received from a previous call.</p>
-- * VersionId [DocumentVersionIdType] <p>The ID of the document version.</p>
-- * Limit [LimitType] <p>The maximum number of items to return.</p>
-- * DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required key: DocumentId
-- Required key: VersionId
-- @return DescribeCommentsRequest structure as a key-value pair table
function M.DescribeCommentsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeCommentsRequest")
    local query_args = { 
        ["marker"] = args["Marker"],
        ["limit"] = args["Limit"],
    }
    local uri_args = { 
        ["{VersionId}"] = args["VersionId"],
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["Marker"] = args["Marker"],
		["VersionId"] = args["VersionId"],
		["Limit"] = args["Limit"],
		["DocumentId"] = args["DocumentId"],
	}
	asserts.AssertDescribeCommentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUsersResponse = { ["Marker"] = true, ["TotalNumberOfUsers"] = true, ["Users"] = true, nil }

function asserts.AssertDescribeUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUsersResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["TotalNumberOfUsers"] then asserts.AssertSizeType(struct["TotalNumberOfUsers"]) end
	if struct["Users"] then asserts.AssertOrganizationUserList(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUsersResponse[k], "DescribeUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUsersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- * TotalNumberOfUsers [SizeType] <p>The total number of users included in the results.</p>
-- * Users [OrganizationUserList] <p>The users.</p>
-- @return DescribeUsersResponse structure as a key-value pair table
function M.DescribeUsersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeUsersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TotalNumberOfUsers"] = args["TotalNumberOfUsers"],
		["Users"] = args["Users"],
	}
	asserts.AssertDescribeUsersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserRequest = { ["Username"] = true, ["TimeZoneId"] = true, ["Password"] = true, ["Surname"] = true, ["OrganizationId"] = true, ["EmailAddress"] = true, ["StorageRule"] = true, ["AuthenticationToken"] = true, ["GivenName"] = true, nil }

function asserts.AssertCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserRequest to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["GivenName"], "Expected key GivenName to exist in table")
	assert(struct["Surname"], "Expected key Surname to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then asserts.AssertUsernameType(struct["Username"]) end
	if struct["TimeZoneId"] then asserts.AssertTimeZoneIdType(struct["TimeZoneId"]) end
	if struct["Password"] then asserts.AssertPasswordType(struct["Password"]) end
	if struct["Surname"] then asserts.AssertUserAttributeValueType(struct["Surname"]) end
	if struct["OrganizationId"] then asserts.AssertIdType(struct["OrganizationId"]) end
	if struct["EmailAddress"] then asserts.AssertEmailAddressType(struct["EmailAddress"]) end
	if struct["StorageRule"] then asserts.AssertStorageRuleType(struct["StorageRule"]) end
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["GivenName"] then asserts.AssertUserAttributeValueType(struct["GivenName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserRequest[k], "CreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [UsernameType] <p>The login name of the user.</p>
-- * TimeZoneId [TimeZoneIdType] <p>The time zone ID of the user.</p>
-- * Password [PasswordType] <p>The password of the user.</p>
-- * Surname [UserAttributeValueType] <p>The surname of the user.</p>
-- * OrganizationId [IdType] <p>The ID of the organization.</p>
-- * EmailAddress [EmailAddressType] <p>The email address of the user.</p>
-- * StorageRule [StorageRuleType] <p>The amount of storage for the user.</p>
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * GivenName [UserAttributeValueType] <p>The given name of the user.</p>
-- Required key: Username
-- Required key: GivenName
-- Required key: Surname
-- Required key: Password
-- @return CreateUserRequest structure as a key-value pair table
function M.CreateUserRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["Username"] = args["Username"],
		["TimeZoneId"] = args["TimeZoneId"],
		["Password"] = args["Password"],
		["Surname"] = args["Surname"],
		["OrganizationId"] = args["OrganizationId"],
		["EmailAddress"] = args["EmailAddress"],
		["StorageRule"] = args["StorageRule"],
		["AuthenticationToken"] = args["AuthenticationToken"],
		["GivenName"] = args["GivenName"],
	}
	asserts.AssertCreateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCommentResponse = { ["Comment"] = true, nil }

function asserts.AssertCreateCommentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCommentResponse to be of type 'table'")
	if struct["Comment"] then asserts.AssertComment(struct["Comment"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCommentResponse[k], "CreateCommentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCommentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [Comment] <p>The comment that has been created.</p>
-- @return CreateCommentResponse structure as a key-value pair table
function M.CreateCommentResponse(args)
	assert(args, "You must provide an argument table when creating CreateCommentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Comment"] = args["Comment"],
	}
	asserts.AssertCreateCommentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCustomMetadataRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["VersionId"] = true, ["CustomMetadata"] = true, nil }

function asserts.AssertCreateCustomMetadataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCustomMetadataRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["CustomMetadata"], "Expected key CustomMetadata to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["VersionId"] then asserts.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["CustomMetadata"] then asserts.AssertCustomMetadataMap(struct["CustomMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCustomMetadataRequest[k], "CreateCustomMetadataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCustomMetadataRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- * VersionId [DocumentVersionIdType] <p>The ID of the version, if the custom metadata is being added to a document version.</p>
-- * CustomMetadata [CustomMetadataMap] <p>Custom metadata in the form of name-value pairs.</p>
-- Required key: ResourceId
-- Required key: CustomMetadata
-- @return CreateCustomMetadataRequest structure as a key-value pair table
function M.CreateCustomMetadataRequest(args)
	assert(args, "You must provide an argument table when creating CreateCustomMetadataRequest")
    local query_args = { 
        ["versionid"] = args["VersionId"],
    }
    local uri_args = { 
        ["{ResourceId}"] = args["ResourceId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["ResourceId"] = args["ResourceId"],
		["VersionId"] = args["VersionId"],
		["CustomMetadata"] = args["CustomMetadata"],
	}
	asserts.AssertCreateCustomMetadataRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFolderRequest = { ["AuthenticationToken"] = true, ["IncludeCustomMetadata"] = true, ["FolderId"] = true, nil }

function asserts.AssertGetFolderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFolderRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["IncludeCustomMetadata"] then asserts.AssertBooleanType(struct["IncludeCustomMetadata"]) end
	if struct["FolderId"] then asserts.AssertResourceIdType(struct["FolderId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFolderRequest[k], "GetFolderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFolderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * IncludeCustomMetadata [BooleanType] <p>Set to TRUE to include custom metadata in the response.</p>
-- * FolderId [ResourceIdType] <p>The ID of the folder.</p>
-- Required key: FolderId
-- @return GetFolderRequest structure as a key-value pair table
function M.GetFolderRequest(args)
	assert(args, "You must provide an argument table when creating GetFolderRequest")
    local query_args = { 
        ["includeCustomMetadata"] = args["IncludeCustomMetadata"],
    }
    local uri_args = { 
        ["{FolderId}"] = args["FolderId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["IncludeCustomMetadata"] = args["IncludeCustomMetadata"],
		["FolderId"] = args["FolderId"],
	}
	asserts.AssertGetFolderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateNotificationSubscriptionResponse = { ["Subscription"] = true, nil }

function asserts.AssertCreateNotificationSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotificationSubscriptionResponse to be of type 'table'")
	if struct["Subscription"] then asserts.AssertSubscription(struct["Subscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNotificationSubscriptionResponse[k], "CreateNotificationSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotificationSubscriptionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subscription [Subscription] <p>The subscription.</p>
-- @return CreateNotificationSubscriptionResponse structure as a key-value pair table
function M.CreateNotificationSubscriptionResponse(args)
	assert(args, "You must provide an argument table when creating CreateNotificationSubscriptionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subscription"] = args["Subscription"],
	}
	asserts.AssertCreateNotificationSubscriptionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeNotificationSubscriptionsRequest = { ["OrganizationId"] = true, ["Marker"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeNotificationSubscriptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationSubscriptionsRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	if struct["OrganizationId"] then asserts.AssertIdType(struct["OrganizationId"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNotificationSubscriptionsRequest[k], "DescribeNotificationSubscriptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationSubscriptionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [IdType] <p>The ID of the organization.</p>
-- * Marker [PageMarkerType] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * Limit [LimitType] <p>The maximum number of items to return with this call.</p>
-- Required key: OrganizationId
-- @return DescribeNotificationSubscriptionsRequest structure as a key-value pair table
function M.DescribeNotificationSubscriptionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeNotificationSubscriptionsRequest")
    local query_args = { 
        ["marker"] = args["Marker"],
        ["limit"] = args["Limit"],
    }
    local uri_args = { 
        ["{OrganizationId}"] = args["OrganizationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertDescribeNotificationSubscriptionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertStorageLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageLimitExceededException[k], "StorageLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageLimitExceededException
-- <p>The storage limit has been exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return StorageLimitExceededException structure as a key-value pair table
function M.StorageLimitExceededException(args)
	assert(args, "You must provide an argument table when creating StorageLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertStorageLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManySubscriptionsException = { ["Message"] = true, nil }

function asserts.AssertTooManySubscriptionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManySubscriptionsException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManySubscriptionsException[k], "TooManySubscriptionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManySubscriptionsException
-- <p>You've reached the limit on the number of subscriptions for the WorkDocs instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return TooManySubscriptionsException structure as a key-value pair table
function M.TooManySubscriptionsException(args)
	assert(args, "You must provide an argument table when creating TooManySubscriptionsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertTooManySubscriptionsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDocumentVersionRequest = { ["AuthenticationToken"] = true, ["VersionId"] = true, ["DocumentId"] = true, ["VersionStatus"] = true, nil }

function asserts.AssertUpdateDocumentVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentVersionRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["VersionId"] then asserts.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["DocumentId"] then asserts.AssertResourceIdType(struct["DocumentId"]) end
	if struct["VersionStatus"] then asserts.AssertDocumentVersionStatus(struct["VersionStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDocumentVersionRequest[k], "UpdateDocumentVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * VersionId [DocumentVersionIdType] <p>The version ID of the document.</p>
-- * DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- * VersionStatus [DocumentVersionStatus] <p>The status of the version.</p>
-- Required key: DocumentId
-- Required key: VersionId
-- @return UpdateDocumentVersionRequest structure as a key-value pair table
function M.UpdateDocumentVersionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDocumentVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{VersionId}"] = args["VersionId"],
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["VersionId"] = args["VersionId"],
		["DocumentId"] = args["DocumentId"],
		["VersionStatus"] = args["VersionStatus"],
	}
	asserts.AssertUpdateDocumentVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EntityNotExistsException = { ["Message"] = true, ["EntityIds"] = true, nil }

function asserts.AssertEntityNotExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityNotExistsException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	if struct["EntityIds"] then asserts.AssertEntityIdList(struct["EntityIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityNotExistsException[k], "EntityNotExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityNotExistsException
-- <p>The resource does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- * EntityIds [EntityIdList] 
-- @return EntityNotExistsException structure as a key-value pair table
function M.EntityNotExistsException(args)
	assert(args, "You must provide an argument table when creating EntityNotExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["EntityIds"] = args["EntityIds"],
	}
	asserts.AssertEntityNotExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AbortDocumentVersionUploadRequest = { ["AuthenticationToken"] = true, ["VersionId"] = true, ["DocumentId"] = true, nil }

function asserts.AssertAbortDocumentVersionUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortDocumentVersionUploadRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["VersionId"] then asserts.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["DocumentId"] then asserts.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AbortDocumentVersionUploadRequest[k], "AbortDocumentVersionUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortDocumentVersionUploadRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * VersionId [DocumentVersionIdType] <p>The ID of the version.</p>
-- * DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required key: DocumentId
-- Required key: VersionId
-- @return AbortDocumentVersionUploadRequest structure as a key-value pair table
function M.AbortDocumentVersionUploadRequest(args)
	assert(args, "You must provide an argument table when creating AbortDocumentVersionUploadRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{VersionId}"] = args["VersionId"],
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["VersionId"] = args["VersionId"],
		["DocumentId"] = args["DocumentId"],
	}
	asserts.AssertAbortDocumentVersionUploadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeGroupsRequest = { ["AuthenticationToken"] = true, ["OrganizationId"] = true, ["SearchQuery"] = true, ["Limit"] = true, ["Marker"] = true, nil }

function asserts.AssertDescribeGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGroupsRequest to be of type 'table'")
	assert(struct["SearchQuery"], "Expected key SearchQuery to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["OrganizationId"] then asserts.AssertIdType(struct["OrganizationId"]) end
	if struct["SearchQuery"] then asserts.AssertSearchQueryType(struct["SearchQuery"]) end
	if struct["Limit"] then asserts.AssertPositiveIntegerType(struct["Limit"]) end
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGroupsRequest[k], "DescribeGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * OrganizationId [IdType] <p>The ID of the organization.</p>
-- * SearchQuery [SearchQueryType] <p>A query to describe groups by group name.</p>
-- * Limit [PositiveIntegerType] <p>The maximum number of items to return with this call.</p>
-- * Marker [MarkerType] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- Required key: SearchQuery
-- @return DescribeGroupsRequest structure as a key-value pair table
function M.DescribeGroupsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeGroupsRequest")
    local query_args = { 
        ["organizationId"] = args["OrganizationId"],
        ["searchQuery"] = args["SearchQuery"],
        ["limit"] = args["Limit"],
        ["marker"] = args["Marker"],
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["OrganizationId"] = args["OrganizationId"],
		["SearchQuery"] = args["SearchQuery"],
		["Limit"] = args["Limit"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertDescribeGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFolderRequest = { ["AuthenticationToken"] = true, ["FolderId"] = true, ["Name"] = true, ["ResourceState"] = true, ["ParentFolderId"] = true, nil }

function asserts.AssertUpdateFolderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFolderRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["FolderId"] then asserts.AssertResourceIdType(struct["FolderId"]) end
	if struct["Name"] then asserts.AssertResourceNameType(struct["Name"]) end
	if struct["ResourceState"] then asserts.AssertResourceStateType(struct["ResourceState"]) end
	if struct["ParentFolderId"] then asserts.AssertResourceIdType(struct["ParentFolderId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFolderRequest[k], "UpdateFolderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFolderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * FolderId [ResourceIdType] <p>The ID of the folder.</p>
-- * Name [ResourceNameType] <p>The name of the folder.</p>
-- * ResourceState [ResourceStateType] <p>The resource state of the folder. Only ACTIVE and RECYCLED are accepted values from the API.</p>
-- * ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- Required key: FolderId
-- @return UpdateFolderRequest structure as a key-value pair table
function M.UpdateFolderRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFolderRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FolderId}"] = args["FolderId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["FolderId"] = args["FolderId"],
		["Name"] = args["Name"],
		["ResourceState"] = args["ResourceState"],
		["ParentFolderId"] = args["ParentFolderId"],
	}
	asserts.AssertUpdateFolderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRootFoldersRequest = { ["AuthenticationToken"] = true, ["Marker"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeRootFoldersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRootFoldersRequest to be of type 'table'")
	assert(struct["AuthenticationToken"], "Expected key AuthenticationToken to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRootFoldersRequest[k], "DescribeRootFoldersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRootFoldersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * Marker [PageMarkerType] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * Limit [LimitType] <p>The maximum number of items to return.</p>
-- Required key: AuthenticationToken
-- @return DescribeRootFoldersRequest structure as a key-value pair table
function M.DescribeRootFoldersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeRootFoldersRequest")
    local query_args = { 
        ["marker"] = args["Marker"],
        ["limit"] = args["Limit"],
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertDescribeRootFoldersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDocumentRequest = { ["AuthenticationToken"] = true, ["IncludeCustomMetadata"] = true, ["DocumentId"] = true, nil }

function asserts.AssertGetDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["IncludeCustomMetadata"] then asserts.AssertBooleanType(struct["IncludeCustomMetadata"]) end
	if struct["DocumentId"] then asserts.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentRequest[k], "GetDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * IncludeCustomMetadata [BooleanType] <p>Set this to <code>TRUE</code> to include custom metadata in the response.</p>
-- * DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required key: DocumentId
-- @return GetDocumentRequest structure as a key-value pair table
function M.GetDocumentRequest(args)
	assert(args, "You must provide an argument table when creating GetDocumentRequest")
    local query_args = { 
        ["includeCustomMetadata"] = args["IncludeCustomMetadata"],
    }
    local uri_args = { 
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["AuthenticationToken"] = args["AuthenticationToken"],
		["IncludeCustomMetadata"] = args["IncludeCustomMetadata"],
		["DocumentId"] = args["DocumentId"],
	}
	asserts.AssertGetDocumentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DraftUploadOutOfSyncException = { ["Message"] = true, nil }

function asserts.AssertDraftUploadOutOfSyncException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DraftUploadOutOfSyncException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DraftUploadOutOfSyncException[k], "DraftUploadOutOfSyncException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DraftUploadOutOfSyncException
-- <p>This exception is thrown when a valid checkout ID is not presented on document version upload calls for a document that has been checked out from Web client.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return DraftUploadOutOfSyncException structure as a key-value pair table
function M.DraftUploadOutOfSyncException(args)
	assert(args, "You must provide an argument table when creating DraftUploadOutOfSyncException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDraftUploadOutOfSyncException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PermissionInfo = { ["Type"] = true, ["Role"] = true, nil }

function asserts.AssertPermissionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PermissionInfo to be of type 'table'")
	if struct["Type"] then asserts.AssertRolePermissionType(struct["Type"]) end
	if struct["Role"] then asserts.AssertRoleType(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(keys.PermissionInfo[k], "PermissionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PermissionInfo
-- <p>Describes the permissions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [RolePermissionType] <p>The type of permissions.</p>
-- * Role [RoleType] <p>The role of the user.</p>
-- @return PermissionInfo structure as a key-value pair table
function M.PermissionInfo(args)
	assert(args, "You must provide an argument table when creating PermissionInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Role"] = args["Role"],
	}
	asserts.AssertPermissionInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageLimitWillExceedException = { ["Message"] = true, nil }

function asserts.AssertStorageLimitWillExceedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageLimitWillExceedException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageLimitWillExceedException[k], "StorageLimitWillExceedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageLimitWillExceedException
-- <p>The storage limit will be exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return StorageLimitWillExceedException structure as a key-value pair table
function M.StorageLimitWillExceedException(args)
	assert(args, "You must provide an argument table when creating StorageLimitWillExceedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertStorageLimitWillExceedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDocumentVersionsResponse = { ["DocumentVersions"] = true, ["Marker"] = true, nil }

function asserts.AssertDescribeDocumentVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentVersionsResponse to be of type 'table'")
	if struct["DocumentVersions"] then asserts.AssertDocumentVersionMetadataList(struct["DocumentVersions"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDocumentVersionsResponse[k], "DescribeDocumentVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentVersionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DocumentVersions [DocumentVersionMetadataList] <p>The document versions.</p>
-- * Marker [PageMarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- @return DescribeDocumentVersionsResponse structure as a key-value pair table
function M.DescribeDocumentVersionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDocumentVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DocumentVersions"] = args["DocumentVersions"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertDescribeDocumentVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFolderPathResponse = { ["Path"] = true, nil }

function asserts.AssertGetFolderPathResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFolderPathResponse to be of type 'table'")
	if struct["Path"] then asserts.AssertResourcePath(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFolderPathResponse[k], "GetFolderPathResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFolderPathResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [ResourcePath] <p>The path information.</p>
-- @return GetFolderPathResponse structure as a key-value pair table
function M.GetFolderPathResponse(args)
	assert(args, "You must provide an argument table when creating GetFolderPathResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
	}
	asserts.AssertGetFolderPathResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageRuleType = { ["StorageType"] = true, ["StorageAllocatedInBytes"] = true, nil }

function asserts.AssertStorageRuleType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageRuleType to be of type 'table'")
	if struct["StorageType"] then asserts.AssertStorageType(struct["StorageType"]) end
	if struct["StorageAllocatedInBytes"] then asserts.AssertPositiveSizeType(struct["StorageAllocatedInBytes"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageRuleType[k], "StorageRuleType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageRuleType
-- <p>Describes the storage for a user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StorageType [StorageType] <p>The type of storage.</p>
-- * StorageAllocatedInBytes [PositiveSizeType] <p>The amount of storage allocated, in bytes.</p>
-- @return StorageRuleType structure as a key-value pair table
function M.StorageRuleType(args)
	assert(args, "You must provide an argument table when creating StorageRuleType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StorageType"] = args["StorageType"],
		["StorageAllocatedInBytes"] = args["StorageAllocatedInBytes"],
	}
	asserts.AssertStorageRuleType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Activity = { ["Initiator"] = true, ["OriginalParent"] = true, ["OrganizationId"] = true, ["TimeStamp"] = true, ["ResourceMetadata"] = true, ["Participants"] = true, ["Type"] = true, ["CommentMetadata"] = true, nil }

function asserts.AssertActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Activity to be of type 'table'")
	if struct["Initiator"] then asserts.AssertUserMetadata(struct["Initiator"]) end
	if struct["OriginalParent"] then asserts.AssertResourceMetadata(struct["OriginalParent"]) end
	if struct["OrganizationId"] then asserts.AssertIdType(struct["OrganizationId"]) end
	if struct["TimeStamp"] then asserts.AssertTimestampType(struct["TimeStamp"]) end
	if struct["ResourceMetadata"] then asserts.AssertResourceMetadata(struct["ResourceMetadata"]) end
	if struct["Participants"] then asserts.AssertParticipants(struct["Participants"]) end
	if struct["Type"] then asserts.AssertActivityType(struct["Type"]) end
	if struct["CommentMetadata"] then asserts.AssertCommentMetadata(struct["CommentMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.Activity[k], "Activity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Activity
-- <p>Describes the activity information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Initiator [UserMetadata] <p>The user who performed the action.</p>
-- * OriginalParent [ResourceMetadata] <p>The original parent of the resource. This is an optional field and is filled for move activities.</p>
-- * OrganizationId [IdType] <p>The ID of the organization.</p>
-- * TimeStamp [TimestampType] <p>The timestamp when the action was performed.</p>
-- * ResourceMetadata [ResourceMetadata] <p>The metadata of the resource involved in the user action.</p>
-- * Participants [Participants] <p>The list of users or groups impacted by this action. This is an optional field and is filled for the following sharing activities: DOCUMENT_SHARED, DOCUMENT_SHARED, DOCUMENT_UNSHARED, FOLDER_SHARED, FOLDER_UNSHARED.</p>
-- * Type [ActivityType] <p>The activity type.</p>
-- * CommentMetadata [CommentMetadata] <p>Metadata of the commenting activity. This is an optional field and is filled for commenting activities.</p>
-- @return Activity structure as a key-value pair table
function M.Activity(args)
	assert(args, "You must provide an argument table when creating Activity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Initiator"] = args["Initiator"],
		["OriginalParent"] = args["OriginalParent"],
		["OrganizationId"] = args["OrganizationId"],
		["TimeStamp"] = args["TimeStamp"],
		["ResourceMetadata"] = args["ResourceMetadata"],
		["Participants"] = args["Participants"],
		["Type"] = args["Type"],
		["CommentMetadata"] = args["CommentMetadata"],
	}
	asserts.AssertActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DocumentMetadata = { ["ResourceState"] = true, ["Labels"] = true, ["ModifiedTimestamp"] = true, ["ParentFolderId"] = true, ["CreatedTimestamp"] = true, ["LatestVersionMetadata"] = true, ["CreatorId"] = true, ["Id"] = true, nil }

function asserts.AssertDocumentMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentMetadata to be of type 'table'")
	if struct["ResourceState"] then asserts.AssertResourceStateType(struct["ResourceState"]) end
	if struct["Labels"] then asserts.AssertSharedLabels(struct["Labels"]) end
	if struct["ModifiedTimestamp"] then asserts.AssertTimestampType(struct["ModifiedTimestamp"]) end
	if struct["ParentFolderId"] then asserts.AssertResourceIdType(struct["ParentFolderId"]) end
	if struct["CreatedTimestamp"] then asserts.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["LatestVersionMetadata"] then asserts.AssertDocumentVersionMetadata(struct["LatestVersionMetadata"]) end
	if struct["CreatorId"] then asserts.AssertIdType(struct["CreatorId"]) end
	if struct["Id"] then asserts.AssertResourceIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentMetadata[k], "DocumentMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentMetadata
-- <p>Describes the document.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceState [ResourceStateType] <p>The resource state.</p>
-- * Labels [SharedLabels] <p>List of labels on the document.</p>
-- * ModifiedTimestamp [TimestampType] <p>The time when the document was updated.</p>
-- * ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- * CreatedTimestamp [TimestampType] <p>The time when the document was created.</p>
-- * LatestVersionMetadata [DocumentVersionMetadata] <p>The latest version of the document.</p>
-- * CreatorId [IdType] <p>The ID of the creator.</p>
-- * Id [ResourceIdType] <p>The ID of the document.</p>
-- @return DocumentMetadata structure as a key-value pair table
function M.DocumentMetadata(args)
	assert(args, "You must provide an argument table when creating DocumentMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceState"] = args["ResourceState"],
		["Labels"] = args["Labels"],
		["ModifiedTimestamp"] = args["ModifiedTimestamp"],
		["ParentFolderId"] = args["ParentFolderId"],
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["LatestVersionMetadata"] = args["LatestVersionMetadata"],
		["CreatorId"] = args["CreatorId"],
		["Id"] = args["Id"],
	}
	asserts.AssertDocumentMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidArgumentException = { ["Message"] = true, nil }

function asserts.AssertInvalidArgumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgumentException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArgumentException[k], "InvalidArgumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgumentException
-- <p>The pagination marker or limit fields are not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return InvalidArgumentException structure as a key-value pair table
function M.InvalidArgumentException(args)
	assert(args, "You must provide an argument table when creating InvalidArgumentException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidArgumentException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCustomMetadataResponse = { nil }

function asserts.AssertDeleteCustomMetadataResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCustomMetadataResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteCustomMetadataResponse[k], "DeleteCustomMetadataResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCustomMetadataResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteCustomMetadataResponse structure as a key-value pair table
function M.DeleteCustomMetadataResponse(args)
	assert(args, "You must provide an argument table when creating DeleteCustomMetadataResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteCustomMetadataResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDocumentVersionsRequest = { ["Fields"] = true, ["Marker"] = true, ["Limit"] = true, ["AuthenticationToken"] = true, ["Include"] = true, ["DocumentId"] = true, nil }

function asserts.AssertDescribeDocumentVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentVersionsRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	if struct["Fields"] then asserts.AssertFieldNamesType(struct["Fields"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Include"] then asserts.AssertFieldNamesType(struct["Include"]) end
	if struct["DocumentId"] then asserts.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDocumentVersionsRequest[k], "DescribeDocumentVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Fields [FieldNamesType] <p>Specify "SOURCE" to include initialized versions and a URL for the source document.</p>
-- * Marker [PageMarkerType] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- * Limit [LimitType] <p>The maximum number of versions to return with this call.</p>
-- * AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- * Include [FieldNamesType] <p>A comma-separated list of values. Specify "INITIALIZED" to include incomplete versions.</p>
-- * DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required key: DocumentId
-- @return DescribeDocumentVersionsRequest structure as a key-value pair table
function M.DescribeDocumentVersionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDocumentVersionsRequest")
    local query_args = { 
        ["fields"] = args["Fields"],
        ["marker"] = args["Marker"],
        ["limit"] = args["Limit"],
        ["include"] = args["Include"],
    }
    local uri_args = { 
        ["{DocumentId}"] = args["DocumentId"],
    }
    local header_args = { 
        ["Authentication"] = args["AuthenticationToken"],
    }
	local all_args = { 
		["Fields"] = args["Fields"],
		["Marker"] = args["Marker"],
		["Limit"] = args["Limit"],
		["AuthenticationToken"] = args["AuthenticationToken"],
		["Include"] = args["Include"],
		["DocumentId"] = args["DocumentId"],
	}
	asserts.AssertDescribeDocumentVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCurrentUserResponse = { ["User"] = true, nil }

function asserts.AssertGetCurrentUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCurrentUserResponse to be of type 'table'")
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCurrentUserResponse[k], "GetCurrentUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCurrentUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [User] <p>Metadata of the user.</p>
-- @return GetCurrentUserResponse structure as a key-value pair table
function M.GetCurrentUserResponse(args)
	assert(args, "You must provide an argument table when creating GetCurrentUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["User"] = args["User"],
	}
	asserts.AssertGetCurrentUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EntityAlreadyExistsException = { ["Message"] = true, nil }

function asserts.AssertEntityAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityAlreadyExistsException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityAlreadyExistsException[k], "EntityAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityAlreadyExistsException
-- <p>The resource already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return EntityAlreadyExistsException structure as a key-value pair table
function M.EntityAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating EntityAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertEntityAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Comment = { ["Status"] = true, ["Text"] = true, ["ParentId"] = true, ["RecipientId"] = true, ["Visibility"] = true, ["CreatedTimestamp"] = true, ["ThreadId"] = true, ["Contributor"] = true, ["CommentId"] = true, nil }

function asserts.AssertComment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Comment to be of type 'table'")
	assert(struct["CommentId"], "Expected key CommentId to exist in table")
	if struct["Status"] then asserts.AssertCommentStatusType(struct["Status"]) end
	if struct["Text"] then asserts.AssertCommentTextType(struct["Text"]) end
	if struct["ParentId"] then asserts.AssertCommentIdType(struct["ParentId"]) end
	if struct["RecipientId"] then asserts.AssertIdType(struct["RecipientId"]) end
	if struct["Visibility"] then asserts.AssertCommentVisibilityType(struct["Visibility"]) end
	if struct["CreatedTimestamp"] then asserts.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["ThreadId"] then asserts.AssertCommentIdType(struct["ThreadId"]) end
	if struct["Contributor"] then asserts.AssertUser(struct["Contributor"]) end
	if struct["CommentId"] then asserts.AssertCommentIdType(struct["CommentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Comment[k], "Comment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Comment
-- <p>Describes a comment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [CommentStatusType] <p>The status of the comment.</p>
-- * Text [CommentTextType] <p>The text of the comment.</p>
-- * ParentId [CommentIdType] <p>The ID of the parent comment.</p>
-- * RecipientId [IdType] <p>If the comment is a reply to another user's comment, this field contains the user ID of the user being replied to.</p>
-- * Visibility [CommentVisibilityType] <p>The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors.</p>
-- * CreatedTimestamp [TimestampType] <p>The time that the comment was created.</p>
-- * ThreadId [CommentIdType] <p>The ID of the root comment in the thread.</p>
-- * Contributor [User] <p>The details of the user who made the comment.</p>
-- * CommentId [CommentIdType] <p>The ID of the comment.</p>
-- Required key: CommentId
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
		["Status"] = args["Status"],
		["Text"] = args["Text"],
		["ParentId"] = args["ParentId"],
		["RecipientId"] = args["RecipientId"],
		["Visibility"] = args["Visibility"],
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["ThreadId"] = args["ThreadId"],
		["Contributor"] = args["Contributor"],
		["CommentId"] = args["CommentId"],
	}
	asserts.AssertComment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailedDependencyException = { ["Message"] = true, nil }

function asserts.AssertFailedDependencyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedDependencyException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailedDependencyException[k], "FailedDependencyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedDependencyException
-- <p>The AWS Directory Service cannot reach an on-premises instance. Or a dependency under the control of the organization is failing, such as a connected Active Directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessageType] 
-- @return FailedDependencyException structure as a key-value pair table
function M.FailedDependencyException(args)
	assert(args, "You must provide an argument table when creating FailedDependencyException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertFailedDependencyException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Principal = { ["Type"] = true, ["Id"] = true, ["Roles"] = true, nil }

function asserts.AssertPrincipal(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Principal to be of type 'table'")
	if struct["Type"] then asserts.AssertPrincipalType(struct["Type"]) end
	if struct["Id"] then asserts.AssertIdType(struct["Id"]) end
	if struct["Roles"] then asserts.AssertPermissionInfoList(struct["Roles"]) end
	for k,_ in pairs(struct) do
		assert(keys.Principal[k], "Principal contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Principal
-- <p>Describes a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [PrincipalType] <p>The type of resource.</p>
-- * Id [IdType] <p>The ID of the resource.</p>
-- * Roles [PermissionInfoList] <p>The permission information for the resource.</p>
-- @return Principal structure as a key-value pair table
function M.Principal(args)
	assert(args, "You must provide an argument table when creating Principal")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Roles"] = args["Roles"],
	}
	asserts.AssertPrincipal(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertUserFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserFilterType to be of type 'string'")
end

--  
function M.UserFilterType(str)
	asserts.AssertUserFilterType(str)
	return str
end

function asserts.AssertLocaleType(str)
	assert(str)
	assert(type(str) == "string", "Expected LocaleType to be of type 'string'")
end

--  
function M.LocaleType(str)
	asserts.AssertLocaleType(str)
	return str
end

function asserts.AssertPageMarkerType(str)
	assert(str)
	assert(type(str) == "string", "Expected PageMarkerType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PageMarkerType(str)
	asserts.AssertPageMarkerType(str)
	return str
end

function asserts.AssertUserType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserType to be of type 'string'")
end

--  
function M.UserType(str)
	asserts.AssertUserType(str)
	return str
end

function asserts.AssertActivityType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivityType to be of type 'string'")
end

--  
function M.ActivityType(str)
	asserts.AssertActivityType(str)
	return str
end

function asserts.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.MessageType(str)
	asserts.AssertMessageType(str)
	return str
end

function asserts.AssertResourceNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceNameType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceNameType(str)
	asserts.AssertResourceNameType(str)
	return str
end

function asserts.AssertEmailAddressType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailAddressType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EmailAddressType(str)
	asserts.AssertEmailAddressType(str)
	return str
end

function asserts.AssertCustomMetadataValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomMetadataValueType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CustomMetadataValueType(str)
	asserts.AssertCustomMetadataValueType(str)
	return str
end

function asserts.AssertHeaderNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HeaderNameType(str)
	asserts.AssertHeaderNameType(str)
	return str
end

function asserts.AssertAuthenticationHeaderType(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticationHeaderType to be of type 'string'")
	assert(#str <= 8199, "Expected string to be max 8199 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AuthenticationHeaderType(str)
	asserts.AssertAuthenticationHeaderType(str)
	return str
end

function asserts.AssertResourceStateType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceStateType to be of type 'string'")
end

--  
function M.ResourceStateType(str)
	asserts.AssertResourceStateType(str)
	return str
end

function asserts.AssertTimeZoneIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeZoneIdType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TimeZoneIdType(str)
	asserts.AssertTimeZoneIdType(str)
	return str
end

function asserts.AssertUsernameType(str)
	assert(str)
	assert(type(str) == "string", "Expected UsernameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UsernameType(str)
	asserts.AssertUsernameType(str)
	return str
end

function asserts.AssertDocumentStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentStatusType to be of type 'string'")
end

--  
function M.DocumentStatusType(str)
	asserts.AssertDocumentStatusType(str)
	return str
end

function asserts.AssertCommentIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected CommentIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CommentIdType(str)
	asserts.AssertCommentIdType(str)
	return str
end

function asserts.AssertSubscriptionEndPointType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionEndPointType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SubscriptionEndPointType(str)
	asserts.AssertSubscriptionEndPointType(str)
	return str
end

function asserts.AssertPasswordType(str)
	assert(str)
	assert(type(str) == "string", "Expected PasswordType to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.PasswordType(str)
	asserts.AssertPasswordType(str)
	return str
end

function asserts.AssertDocumentVersionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentVersionStatus to be of type 'string'")
end

--  
function M.DocumentVersionStatus(str)
	asserts.AssertDocumentVersionStatus(str)
	return str
end

function asserts.AssertBooleanEnumType(str)
	assert(str)
	assert(type(str) == "string", "Expected BooleanEnumType to be of type 'string'")
end

--  
function M.BooleanEnumType(str)
	asserts.AssertBooleanEnumType(str)
	return str
end

function asserts.AssertCustomMetadataKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomMetadataKeyType to be of type 'string'")
	assert(#str <= 56, "Expected string to be max 56 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CustomMetadataKeyType(str)
	asserts.AssertCustomMetadataKeyType(str)
	return str
end

function asserts.AssertRolePermissionType(str)
	assert(str)
	assert(type(str) == "string", "Expected RolePermissionType to be of type 'string'")
end

--  
function M.RolePermissionType(str)
	asserts.AssertRolePermissionType(str)
	return str
end

function asserts.AssertCommentVisibilityType(str)
	assert(str)
	assert(type(str) == "string", "Expected CommentVisibilityType to be of type 'string'")
end

--  
function M.CommentVisibilityType(str)
	asserts.AssertCommentVisibilityType(str)
	return str
end

function asserts.AssertRoleType(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleType to be of type 'string'")
end

--  
function M.RoleType(str)
	asserts.AssertRoleType(str)
	return str
end

function asserts.AssertStorageType(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageType to be of type 'string'")
end

--  
function M.StorageType(str)
	asserts.AssertStorageType(str)
	return str
end

function asserts.AssertDocumentVersionIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentVersionIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DocumentVersionIdType(str)
	asserts.AssertDocumentVersionIdType(str)
	return str
end

function asserts.AssertCommentStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected CommentStatusType to be of type 'string'")
end

--  
function M.CommentStatusType(str)
	asserts.AssertCommentStatusType(str)
	return str
end

function asserts.AssertUrlType(str)
	assert(str)
	assert(type(str) == "string", "Expected UrlType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UrlType(str)
	asserts.AssertUrlType(str)
	return str
end

function asserts.AssertSharedLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected SharedLabel to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SharedLabel(str)
	asserts.AssertSharedLabel(str)
	return str
end

function asserts.AssertResourceSortType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceSortType to be of type 'string'")
end

--  
function M.ResourceSortType(str)
	asserts.AssertResourceSortType(str)
	return str
end

function asserts.AssertShareStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected ShareStatusType to be of type 'string'")
end

--  
function M.ShareStatusType(str)
	asserts.AssertShareStatusType(str)
	return str
end

function asserts.AssertFieldNamesType(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldNamesType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FieldNamesType(str)
	asserts.AssertFieldNamesType(str)
	return str
end

function asserts.AssertDocumentSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentSourceType to be of type 'string'")
end

--  
function M.DocumentSourceType(str)
	asserts.AssertDocumentSourceType(str)
	return str
end

function asserts.AssertUserIdsType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserIdsType to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserIdsType(str)
	asserts.AssertUserIdsType(str)
	return str
end

function asserts.AssertIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected IdType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdType(str)
	asserts.AssertIdType(str)
	return str
end

function asserts.AssertSubscriptionProtocolType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionProtocolType to be of type 'string'")
end

--  
function M.SubscriptionProtocolType(str)
	asserts.AssertSubscriptionProtocolType(str)
	return str
end

function asserts.AssertSubscriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionType to be of type 'string'")
end

--  
function M.SubscriptionType(str)
	asserts.AssertSubscriptionType(str)
	return str
end

function asserts.AssertErrorMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessageType to be of type 'string'")
end

--  
function M.ErrorMessageType(str)
	asserts.AssertErrorMessageType(str)
	return str
end

function asserts.AssertMarkerType(str)
	assert(str)
	assert(type(str) == "string", "Expected MarkerType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MarkerType(str)
	asserts.AssertMarkerType(str)
	return str
end

function asserts.AssertResourceIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceIdType(str)
	asserts.AssertResourceIdType(str)
	return str
end

function asserts.AssertUserStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserStatusType to be of type 'string'")
end

--  
function M.UserStatusType(str)
	asserts.AssertUserStatusType(str)
	return str
end

function asserts.AssertUserAttributeValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserAttributeValueType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserAttributeValueType(str)
	asserts.AssertUserAttributeValueType(str)
	return str
end

function asserts.AssertOrderType(str)
	assert(str)
	assert(type(str) == "string", "Expected OrderType to be of type 'string'")
end

--  
function M.OrderType(str)
	asserts.AssertOrderType(str)
	return str
end

function asserts.AssertHeaderValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderValueType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HeaderValueType(str)
	asserts.AssertHeaderValueType(str)
	return str
end

function asserts.AssertUserSortType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserSortType to be of type 'string'")
end

--  
function M.UserSortType(str)
	asserts.AssertUserSortType(str)
	return str
end

function asserts.AssertGroupNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupNameType to be of type 'string'")
end

--  
function M.GroupNameType(str)
	asserts.AssertGroupNameType(str)
	return str
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertPrincipalType(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalType to be of type 'string'")
end

--  
function M.PrincipalType(str)
	asserts.AssertPrincipalType(str)
	return str
end

function asserts.AssertSearchQueryType(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchQueryType to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SearchQueryType(str)
	asserts.AssertSearchQueryType(str)
	return str
end

function asserts.AssertDocumentThumbnailType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentThumbnailType to be of type 'string'")
end

--  
function M.DocumentThumbnailType(str)
	asserts.AssertDocumentThumbnailType(str)
	return str
end

function asserts.AssertCommentTextType(str)
	assert(str)
	assert(type(str) == "string", "Expected CommentTextType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CommentTextType(str)
	asserts.AssertCommentTextType(str)
	return str
end

function asserts.AssertDocumentContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentContentType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DocumentContentType(str)
	asserts.AssertDocumentContentType(str)
	return str
end

function asserts.AssertHashType(str)
	assert(str)
	assert(type(str) == "string", "Expected HashType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.HashType(str)
	asserts.AssertHashType(str)
	return str
end

function asserts.AssertFolderContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected FolderContentType to be of type 'string'")
end

--  
function M.FolderContentType(str)
	asserts.AssertFolderContentType(str)
	return str
end

function asserts.AssertSizeType(long)
	assert(long)
	assert(type(long) == "number", "Expected SizeType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.SizeType(long)
	asserts.AssertSizeType(long)
	return long
end

function asserts.AssertPositiveSizeType(long)
	assert(long)
	assert(type(long) == "number", "Expected PositiveSizeType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PositiveSizeType(long)
	asserts.AssertPositiveSizeType(long)
	return long
end

function asserts.AssertLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 999, "Expected integer to be max 999")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.LimitType(integer)
	asserts.AssertLimitType(integer)
	return integer
end

function asserts.AssertPositiveIntegerType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PositiveIntegerType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PositiveIntegerType(integer)
	asserts.AssertPositiveIntegerType(integer)
	return integer
end

function asserts.AssertBooleanType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanType to be of type 'boolean'")
end

function M.BooleanType(boolean)
	asserts.AssertBooleanType(boolean)
	return boolean
end

function asserts.AssertDocumentThumbnailUrlMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DocumentThumbnailUrlMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDocumentThumbnailType(k)
		asserts.AssertUrlType(v)
	end
end

function M.DocumentThumbnailUrlMap(map)
	asserts.AssertDocumentThumbnailUrlMap(map)
	return map
end

function asserts.AssertCustomMetadataMap(map)
	assert(map)
	assert(type(map) == "table", "Expected CustomMetadataMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertCustomMetadataKeyType(k)
		asserts.AssertCustomMetadataValueType(v)
	end
end

function M.CustomMetadataMap(map)
	asserts.AssertCustomMetadataMap(map)
	return map
end

function asserts.AssertDocumentSourceUrlMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DocumentSourceUrlMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDocumentSourceType(k)
		asserts.AssertUrlType(v)
	end
end

function M.DocumentSourceUrlMap(map)
	asserts.AssertDocumentSourceUrlMap(map)
	return map
end

function asserts.AssertSignedHeaderMap(map)
	assert(map)
	assert(type(map) == "table", "Expected SignedHeaderMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertHeaderNameType(k)
		asserts.AssertHeaderValueType(v)
	end
end

function M.SignedHeaderMap(map)
	asserts.AssertSignedHeaderMap(map)
	return map
end

function asserts.AssertTimestampType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimestampType to be of type 'string'")
end

function M.TimestampType(timestamp)
	asserts.AssertTimestampType(timestamp)
	return timestamp
end

function asserts.AssertDocumentMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDocumentMetadata(v)
	end
end

--  
-- List of DocumentMetadata objects
function M.DocumentMetadataList(list)
	asserts.AssertDocumentMetadataList(list)
	return list
end

function asserts.AssertPrincipalList(list)
	assert(list)
	assert(type(list) == "table", "Expected PrincipalList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPrincipal(v)
	end
end

--  
-- List of Principal objects
function M.PrincipalList(list)
	asserts.AssertPrincipalList(list)
	return list
end

function asserts.AssertGroupMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected GroupMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroupMetadata(v)
	end
end

--  
-- List of GroupMetadata objects
function M.GroupMetadataList(list)
	asserts.AssertGroupMetadataList(list)
	return list
end

function asserts.AssertSharePrincipalList(list)
	assert(list)
	assert(type(list) == "table", "Expected SharePrincipalList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSharePrincipal(v)
	end
end

--  
-- List of SharePrincipal objects
function M.SharePrincipalList(list)
	asserts.AssertSharePrincipalList(list)
	return list
end

function asserts.AssertShareResultsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ShareResultsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertShareResult(v)
	end
end

--  
-- List of ShareResult objects
function M.ShareResultsList(list)
	asserts.AssertShareResultsList(list)
	return list
end

function asserts.AssertCommentList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertComment(v)
	end
end

--  
-- List of Comment objects
function M.CommentList(list)
	asserts.AssertCommentList(list)
	return list
end

function asserts.AssertUserMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserMetadata(v)
	end
end

--  
-- List of UserMetadata objects
function M.UserMetadataList(list)
	asserts.AssertUserMetadataList(list)
	return list
end

function asserts.AssertEntityIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected EntityIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIdType(v)
	end
end

--  
-- List of IdType objects
function M.EntityIdList(list)
	asserts.AssertEntityIdList(list)
	return list
end

function asserts.AssertSharedLabels(list)
	assert(list)
	assert(type(list) == "table", "Expected SharedLabels to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertSharedLabel(v)
	end
end

--  
-- List of SharedLabel objects
function M.SharedLabels(list)
	asserts.AssertSharedLabels(list)
	return list
end

function asserts.AssertFolderMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected FolderMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFolderMetadata(v)
	end
end

--  
-- List of FolderMetadata objects
function M.FolderMetadataList(list)
	asserts.AssertFolderMetadataList(list)
	return list
end

function asserts.AssertOrganizationUserList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrganizationUserList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUser(v)
	end
end

--  
-- List of User objects
function M.OrganizationUserList(list)
	asserts.AssertOrganizationUserList(list)
	return list
end

function asserts.AssertResourcePathComponentList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourcePathComponentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourcePathComponent(v)
	end
end

--  
-- List of ResourcePathComponent objects
function M.ResourcePathComponentList(list)
	asserts.AssertResourcePathComponentList(list)
	return list
end

function asserts.AssertDocumentVersionMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentVersionMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDocumentVersionMetadata(v)
	end
end

--  
-- List of DocumentVersionMetadata objects
function M.DocumentVersionMetadataList(list)
	asserts.AssertDocumentVersionMetadataList(list)
	return list
end

function asserts.AssertSubscriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubscriptionList to be of type ''table")
	assert(#list <= 256, "Expected list to be contain 256 elements")
	for _,v in ipairs(list) do
		asserts.AssertSubscription(v)
	end
end

--  
-- List of Subscription objects
function M.SubscriptionList(list)
	asserts.AssertSubscriptionList(list)
	return list
end

function asserts.AssertCustomMetadataKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomMetadataKeyList to be of type ''table")
	assert(#list <= 8, "Expected list to be contain 8 elements")
	for _,v in ipairs(list) do
		asserts.AssertCustomMetadataKeyType(v)
	end
end

--  
-- List of CustomMetadataKeyType objects
function M.CustomMetadataKeyList(list)
	asserts.AssertCustomMetadataKeyList(list)
	return list
end

function asserts.AssertPermissionInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected PermissionInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPermissionInfo(v)
	end
end

--  
-- List of PermissionInfo objects
function M.PermissionInfoList(list)
	asserts.AssertPermissionInfoList(list)
	return list
end

function asserts.AssertUserActivities(list)
	assert(list)
	assert(type(list) == "table", "Expected UserActivities to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActivity(v)
	end
end

--  
-- List of Activity objects
function M.UserActivities(list)
	asserts.AssertUserActivities(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "workdocs.amazonaws.com"
		end
	end
	local ss = { "workdocs" }
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
--- Call DeactivateUser asynchronously, invoking a callback when done
-- @param DeactivateUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeactivateUserAsync(DeactivateUserRequest, cb)
	assert(DeactivateUserRequest, "You must provide a DeactivateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeactivateUser",
	}
	for header,value in pairs(DeactivateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/users/{UserId}/activation", DeactivateUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeactivateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeactivateUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeactivateUserSync(DeactivateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeactivateUserAsync(DeactivateUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRootFolders asynchronously, invoking a callback when done
-- @param DescribeRootFoldersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRootFoldersAsync(DescribeRootFoldersRequest, cb)
	assert(DescribeRootFoldersRequest, "You must provide a DescribeRootFoldersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeRootFolders",
	}
	for header,value in pairs(DescribeRootFoldersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/me/root", DescribeRootFoldersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRootFolders synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRootFoldersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeRootFoldersSync(DescribeRootFoldersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRootFoldersAsync(DescribeRootFoldersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddResourcePermissions asynchronously, invoking a callback when done
-- @param AddResourcePermissionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddResourcePermissionsAsync(AddResourcePermissionsRequest, cb)
	assert(AddResourcePermissionsRequest, "You must provide a AddResourcePermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddResourcePermissions",
	}
	for header,value in pairs(AddResourcePermissionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/api/v1/resources/{ResourceId}/permissions", AddResourcePermissionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddResourcePermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddResourcePermissionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AddResourcePermissionsSync(AddResourcePermissionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddResourcePermissionsAsync(AddResourcePermissionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFolder asynchronously, invoking a callback when done
-- @param DeleteFolderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFolderAsync(DeleteFolderRequest, cb)
	assert(DeleteFolderRequest, "You must provide a DeleteFolderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFolder",
	}
	for header,value in pairs(DeleteFolderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/folders/{FolderId}", DeleteFolderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFolder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFolderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFolderSync(DeleteFolderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFolderAsync(DeleteFolderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUsers asynchronously, invoking a callback when done
-- @param DescribeUsersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUsersAsync(DescribeUsersRequest, cb)
	assert(DescribeUsersRequest, "You must provide a DescribeUsersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeUsers",
	}
	for header,value in pairs(DescribeUsersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/users", DescribeUsersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUsers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUsersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUsersSync(DescribeUsersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUsersAsync(DescribeUsersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDocumentVersion asynchronously, invoking a callback when done
-- @param UpdateDocumentVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDocumentVersionAsync(UpdateDocumentVersionRequest, cb)
	assert(UpdateDocumentVersionRequest, "You must provide a UpdateDocumentVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDocumentVersion",
	}
	for header,value in pairs(UpdateDocumentVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}/versions/{VersionId}", UpdateDocumentVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDocumentVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDocumentVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDocumentVersionSync(UpdateDocumentVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDocumentVersionAsync(UpdateDocumentVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCustomMetadata asynchronously, invoking a callback when done
-- @param DeleteCustomMetadataRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCustomMetadataAsync(DeleteCustomMetadataRequest, cb)
	assert(DeleteCustomMetadataRequest, "You must provide a DeleteCustomMetadataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCustomMetadata",
	}
	for header,value in pairs(DeleteCustomMetadataRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/resources/{ResourceId}/customMetadata", DeleteCustomMetadataRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCustomMetadata synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCustomMetadataRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCustomMetadataSync(DeleteCustomMetadataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCustomMetadataAsync(DeleteCustomMetadataRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLabels asynchronously, invoking a callback when done
-- @param CreateLabelsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLabelsAsync(CreateLabelsRequest, cb)
	assert(CreateLabelsRequest, "You must provide a CreateLabelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLabels",
	}
	for header,value in pairs(CreateLabelsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/api/v1/resources/{ResourceId}/labels", CreateLabelsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLabels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLabelsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLabelsSync(CreateLabelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLabelsAsync(CreateLabelsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InitiateDocumentVersionUpload asynchronously, invoking a callback when done
-- @param InitiateDocumentVersionUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InitiateDocumentVersionUploadAsync(InitiateDocumentVersionUploadRequest, cb)
	assert(InitiateDocumentVersionUploadRequest, "You must provide a InitiateDocumentVersionUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".InitiateDocumentVersionUpload",
	}
	for header,value in pairs(InitiateDocumentVersionUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents", InitiateDocumentVersionUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InitiateDocumentVersionUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InitiateDocumentVersionUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InitiateDocumentVersionUploadSync(InitiateDocumentVersionUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitiateDocumentVersionUploadAsync(InitiateDocumentVersionUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCustomMetadata asynchronously, invoking a callback when done
-- @param CreateCustomMetadataRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCustomMetadataAsync(CreateCustomMetadataRequest, cb)
	assert(CreateCustomMetadataRequest, "You must provide a CreateCustomMetadataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCustomMetadata",
	}
	for header,value in pairs(CreateCustomMetadataRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/api/v1/resources/{ResourceId}/customMetadata", CreateCustomMetadataRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCustomMetadata synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCustomMetadataRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCustomMetadataSync(CreateCustomMetadataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCustomMetadataAsync(CreateCustomMetadataRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocument asynchronously, invoking a callback when done
-- @param GetDocumentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDocumentAsync(GetDocumentRequest, cb)
	assert(GetDocumentRequest, "You must provide a GetDocumentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocument",
	}
	for header,value in pairs(GetDocumentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}", GetDocumentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDocumentSync(GetDocumentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentAsync(GetDocumentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentPath asynchronously, invoking a callback when done
-- @param GetDocumentPathRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDocumentPathAsync(GetDocumentPathRequest, cb)
	assert(GetDocumentPathRequest, "You must provide a GetDocumentPathRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocumentPath",
	}
	for header,value in pairs(GetDocumentPathRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}/path", GetDocumentPathRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDocumentPath synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentPathRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDocumentPathSync(GetDocumentPathRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentPathAsync(GetDocumentPathRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveAllResourcePermissions asynchronously, invoking a callback when done
-- @param RemoveAllResourcePermissionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveAllResourcePermissionsAsync(RemoveAllResourcePermissionsRequest, cb)
	assert(RemoveAllResourcePermissionsRequest, "You must provide a RemoveAllResourcePermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveAllResourcePermissions",
	}
	for header,value in pairs(RemoveAllResourcePermissionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/resources/{ResourceId}/permissions", RemoveAllResourcePermissionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveAllResourcePermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveAllResourcePermissionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveAllResourcePermissionsSync(RemoveAllResourcePermissionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveAllResourcePermissionsAsync(RemoveAllResourcePermissionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUser asynchronously, invoking a callback when done
-- @param UpdateUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserAsync(UpdateUserRequest, cb)
	assert(UpdateUserRequest, "You must provide a UpdateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUser",
	}
	for header,value in pairs(UpdateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
	if request_handler then
		request_handler(settings.uri, "/api/v1/users/{UserId}", UpdateUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserSync(UpdateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserAsync(UpdateUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCurrentUser asynchronously, invoking a callback when done
-- @param GetCurrentUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCurrentUserAsync(GetCurrentUserRequest, cb)
	assert(GetCurrentUserRequest, "You must provide a GetCurrentUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCurrentUser",
	}
	for header,value in pairs(GetCurrentUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/me", GetCurrentUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCurrentUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCurrentUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCurrentUserSync(GetCurrentUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCurrentUserAsync(GetCurrentUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFolder asynchronously, invoking a callback when done
-- @param UpdateFolderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateFolderAsync(UpdateFolderRequest, cb)
	assert(UpdateFolderRequest, "You must provide a UpdateFolderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFolder",
	}
	for header,value in pairs(UpdateFolderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
	if request_handler then
		request_handler(settings.uri, "/api/v1/folders/{FolderId}", UpdateFolderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFolder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFolderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateFolderSync(UpdateFolderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFolderAsync(UpdateFolderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteComment asynchronously, invoking a callback when done
-- @param DeleteCommentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCommentAsync(DeleteCommentRequest, cb)
	assert(DeleteCommentRequest, "You must provide a DeleteCommentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteComment",
	}
	for header,value in pairs(DeleteCommentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", DeleteCommentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteComment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCommentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCommentSync(DeleteCommentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCommentAsync(DeleteCommentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUser asynchronously, invoking a callback when done
-- @param CreateUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUserAsync(CreateUserRequest, cb)
	assert(CreateUserRequest, "You must provide a CreateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateUser",
	}
	for header,value in pairs(CreateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/api/v1/users", CreateUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateUserSync(CreateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserAsync(CreateUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFolderContents asynchronously, invoking a callback when done
-- @param DeleteFolderContentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFolderContentsAsync(DeleteFolderContentsRequest, cb)
	assert(DeleteFolderContentsRequest, "You must provide a DeleteFolderContentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFolderContents",
	}
	for header,value in pairs(DeleteFolderContentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/folders/{FolderId}/contents", DeleteFolderContentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFolderContents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFolderContentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFolderContentsSync(DeleteFolderContentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFolderContentsAsync(DeleteFolderContentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNotificationSubscription asynchronously, invoking a callback when done
-- @param DeleteNotificationSubscriptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteNotificationSubscriptionAsync(DeleteNotificationSubscriptionRequest, cb)
	assert(DeleteNotificationSubscriptionRequest, "You must provide a DeleteNotificationSubscriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteNotificationSubscription",
	}
	for header,value in pairs(DeleteNotificationSubscriptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", DeleteNotificationSubscriptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteNotificationSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNotificationSubscriptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteNotificationSubscriptionSync(DeleteNotificationSubscriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNotificationSubscriptionAsync(DeleteNotificationSubscriptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AbortDocumentVersionUpload asynchronously, invoking a callback when done
-- @param AbortDocumentVersionUploadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AbortDocumentVersionUploadAsync(AbortDocumentVersionUploadRequest, cb)
	assert(AbortDocumentVersionUploadRequest, "You must provide a AbortDocumentVersionUploadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AbortDocumentVersionUpload",
	}
	for header,value in pairs(AbortDocumentVersionUploadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}/versions/{VersionId}", AbortDocumentVersionUploadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AbortDocumentVersionUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AbortDocumentVersionUploadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AbortDocumentVersionUploadSync(AbortDocumentVersionUploadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AbortDocumentVersionUploadAsync(AbortDocumentVersionUploadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeNotificationSubscriptions asynchronously, invoking a callback when done
-- @param DescribeNotificationSubscriptionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeNotificationSubscriptionsAsync(DescribeNotificationSubscriptionsRequest, cb)
	assert(DescribeNotificationSubscriptionsRequest, "You must provide a DescribeNotificationSubscriptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeNotificationSubscriptions",
	}
	for header,value in pairs(DescribeNotificationSubscriptionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/organizations/{OrganizationId}/subscriptions", DescribeNotificationSubscriptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeNotificationSubscriptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeNotificationSubscriptionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeNotificationSubscriptionsSync(DescribeNotificationSubscriptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeNotificationSubscriptionsAsync(DescribeNotificationSubscriptionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateComment asynchronously, invoking a callback when done
-- @param CreateCommentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCommentAsync(CreateCommentRequest, cb)
	assert(CreateCommentRequest, "You must provide a CreateCommentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateComment",
	}
	for header,value in pairs(CreateCommentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", CreateCommentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateComment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCommentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCommentSync(CreateCommentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCommentAsync(CreateCommentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentVersion asynchronously, invoking a callback when done
-- @param GetDocumentVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDocumentVersionAsync(GetDocumentVersionRequest, cb)
	assert(GetDocumentVersionRequest, "You must provide a GetDocumentVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocumentVersion",
	}
	for header,value in pairs(GetDocumentVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}/versions/{VersionId}", GetDocumentVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDocumentVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDocumentVersionSync(GetDocumentVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentVersionAsync(GetDocumentVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFolderPath asynchronously, invoking a callback when done
-- @param GetFolderPathRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFolderPathAsync(GetFolderPathRequest, cb)
	assert(GetFolderPathRequest, "You must provide a GetFolderPathRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFolderPath",
	}
	for header,value in pairs(GetFolderPathRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/folders/{FolderId}/path", GetFolderPathRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFolderPath synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFolderPathRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFolderPathSync(GetFolderPathRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFolderPathAsync(GetFolderPathRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFolderContents asynchronously, invoking a callback when done
-- @param DescribeFolderContentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeFolderContentsAsync(DescribeFolderContentsRequest, cb)
	assert(DescribeFolderContentsRequest, "You must provide a DescribeFolderContentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeFolderContents",
	}
	for header,value in pairs(DescribeFolderContentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/folders/{FolderId}/contents", DescribeFolderContentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeFolderContents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeFolderContentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeFolderContentsSync(DescribeFolderContentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFolderContentsAsync(DescribeFolderContentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFolder asynchronously, invoking a callback when done
-- @param CreateFolderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateFolderAsync(CreateFolderRequest, cb)
	assert(CreateFolderRequest, "You must provide a CreateFolderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateFolder",
	}
	for header,value in pairs(CreateFolderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/api/v1/folders", CreateFolderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFolder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFolderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateFolderSync(CreateFolderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFolderAsync(CreateFolderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeGroups asynchronously, invoking a callback when done
-- @param DescribeGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeGroupsAsync(DescribeGroupsRequest, cb)
	assert(DescribeGroupsRequest, "You must provide a DescribeGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeGroups",
	}
	for header,value in pairs(DescribeGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/groups", DescribeGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeGroupsSync(DescribeGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeGroupsAsync(DescribeGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeResourcePermissions asynchronously, invoking a callback when done
-- @param DescribeResourcePermissionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeResourcePermissionsAsync(DescribeResourcePermissionsRequest, cb)
	assert(DescribeResourcePermissionsRequest, "You must provide a DescribeResourcePermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeResourcePermissions",
	}
	for header,value in pairs(DescribeResourcePermissionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/resources/{ResourceId}/permissions", DescribeResourcePermissionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeResourcePermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeResourcePermissionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeResourcePermissionsSync(DescribeResourcePermissionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeResourcePermissionsAsync(DescribeResourcePermissionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateNotificationSubscription asynchronously, invoking a callback when done
-- @param CreateNotificationSubscriptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateNotificationSubscriptionAsync(CreateNotificationSubscriptionRequest, cb)
	assert(CreateNotificationSubscriptionRequest, "You must provide a CreateNotificationSubscriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateNotificationSubscription",
	}
	for header,value in pairs(CreateNotificationSubscriptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/api/v1/organizations/{OrganizationId}/subscriptions", CreateNotificationSubscriptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateNotificationSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateNotificationSubscriptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateNotificationSubscriptionSync(CreateNotificationSubscriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateNotificationSubscriptionAsync(CreateNotificationSubscriptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDocument asynchronously, invoking a callback when done
-- @param UpdateDocumentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDocumentAsync(UpdateDocumentRequest, cb)
	assert(UpdateDocumentRequest, "You must provide a UpdateDocumentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDocument",
	}
	for header,value in pairs(UpdateDocumentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}", UpdateDocumentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDocumentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDocumentSync(UpdateDocumentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDocumentAsync(UpdateDocumentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeComments asynchronously, invoking a callback when done
-- @param DescribeCommentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCommentsAsync(DescribeCommentsRequest, cb)
	assert(DescribeCommentsRequest, "You must provide a DescribeCommentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeComments",
	}
	for header,value in pairs(DescribeCommentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", DescribeCommentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeComments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCommentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCommentsSync(DescribeCommentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCommentsAsync(DescribeCommentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUser asynchronously, invoking a callback when done
-- @param DeleteUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserAsync(DeleteUserRequest, cb)
	assert(DeleteUserRequest, "You must provide a DeleteUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUser",
	}
	for header,value in pairs(DeleteUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/users/{UserId}", DeleteUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserSync(DeleteUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserAsync(DeleteUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDocument asynchronously, invoking a callback when done
-- @param DeleteDocumentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDocumentAsync(DeleteDocumentRequest, cb)
	assert(DeleteDocumentRequest, "You must provide a DeleteDocumentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDocument",
	}
	for header,value in pairs(DeleteDocumentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}", DeleteDocumentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDocumentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDocumentSync(DeleteDocumentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDocumentAsync(DeleteDocumentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeActivities asynchronously, invoking a callback when done
-- @param DescribeActivitiesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeActivitiesAsync(DescribeActivitiesRequest, cb)
	assert(DescribeActivitiesRequest, "You must provide a DescribeActivitiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeActivities",
	}
	for header,value in pairs(DescribeActivitiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/activities", DescribeActivitiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeActivities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeActivitiesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeActivitiesSync(DescribeActivitiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeActivitiesAsync(DescribeActivitiesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ActivateUser asynchronously, invoking a callback when done
-- @param ActivateUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ActivateUserAsync(ActivateUserRequest, cb)
	assert(ActivateUserRequest, "You must provide a ActivateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ActivateUser",
	}
	for header,value in pairs(ActivateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/api/v1/users/{UserId}/activation", ActivateUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ActivateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ActivateUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ActivateUserSync(ActivateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ActivateUserAsync(ActivateUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFolder asynchronously, invoking a callback when done
-- @param GetFolderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFolderAsync(GetFolderRequest, cb)
	assert(GetFolderRequest, "You must provide a GetFolderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFolder",
	}
	for header,value in pairs(GetFolderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/folders/{FolderId}", GetFolderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFolder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFolderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFolderSync(GetFolderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFolderAsync(GetFolderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveResourcePermission asynchronously, invoking a callback when done
-- @param RemoveResourcePermissionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveResourcePermissionAsync(RemoveResourcePermissionRequest, cb)
	assert(RemoveResourcePermissionRequest, "You must provide a RemoveResourcePermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveResourcePermission",
	}
	for header,value in pairs(RemoveResourcePermissionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", RemoveResourcePermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveResourcePermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveResourcePermissionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveResourcePermissionSync(RemoveResourcePermissionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveResourcePermissionAsync(RemoveResourcePermissionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLabels asynchronously, invoking a callback when done
-- @param DeleteLabelsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLabelsAsync(DeleteLabelsRequest, cb)
	assert(DeleteLabelsRequest, "You must provide a DeleteLabelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLabels",
	}
	for header,value in pairs(DeleteLabelsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/api/v1/resources/{ResourceId}/labels", DeleteLabelsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLabels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLabelsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLabelsSync(DeleteLabelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLabelsAsync(DeleteLabelsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDocumentVersions asynchronously, invoking a callback when done
-- @param DescribeDocumentVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDocumentVersionsAsync(DescribeDocumentVersionsRequest, cb)
	assert(DescribeDocumentVersionsRequest, "You must provide a DescribeDocumentVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDocumentVersions",
	}
	for header,value in pairs(DescribeDocumentVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/api/v1/documents/{DocumentId}/versions", DescribeDocumentVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDocumentVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDocumentVersionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDocumentVersionsSync(DescribeDocumentVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDocumentVersionsAsync(DescribeDocumentVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
