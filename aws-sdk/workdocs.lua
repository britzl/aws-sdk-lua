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

local ResourceMetadata_keys = { "Name" = true, "Owner" = true, "VersionId" = true, "ParentId" = true, "OriginalName" = true, "Type" = true, "Id" = true, nil }

function M.AssertResourceMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceMetadata to be of type 'table'")
	if struct["Name"] then M.AssertResourceNameType(struct["Name"]) end
	if struct["Owner"] then M.AssertUserMetadata(struct["Owner"]) end
	if struct["VersionId"] then M.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["ParentId"] then M.AssertResourceIdType(struct["ParentId"]) end
	if struct["OriginalName"] then M.AssertResourceNameType(struct["OriginalName"]) end
	if struct["Type"] then M.AssertResourceType(struct["Type"]) end
	if struct["Id"] then M.AssertResourceIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(ResourceMetadata_keys[k], "ResourceMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceMetadata
-- &lt;p&gt;Describes the metadata of a resource.&lt;/p&gt;
-- @param Name [ResourceNameType] &lt;p&gt;The name of the resource.&lt;/p&gt;
-- @param Owner [UserMetadata] &lt;p&gt;The owner of the resource.&lt;/p&gt;
-- @param VersionId [DocumentVersionIdType] &lt;p&gt;The version ID of the resource. This is an optional field and is filled for action on document version.&lt;/p&gt;
-- @param ParentId [ResourceIdType] &lt;p&gt;The parent ID of the resource before a rename operation.&lt;/p&gt;
-- @param OriginalName [ResourceNameType] &lt;p&gt;The original name of the resource prior to a rename operation.&lt;/p&gt;
-- @param Type [ResourceType] &lt;p&gt;The type of resource.&lt;/p&gt;
-- @param Id [ResourceIdType] &lt;p&gt;The ID of the resource.&lt;/p&gt;
function M.ResourceMetadata(Name, Owner, VersionId, ParentId, OriginalName, Type, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceMetadata")
	local t = { 
		["Name"] = Name,
		["Owner"] = Owner,
		["VersionId"] = VersionId,
		["ParentId"] = ParentId,
		["OriginalName"] = OriginalName,
		["Type"] = Type,
		["Id"] = Id,
	}
	M.AssertResourceMetadata(t)
	return t
end

local ServiceUnavailableException_keys = { "Message" = true, nil }

function M.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ServiceUnavailableException_keys[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- &lt;p&gt;One or more of the dependencies is unavailable.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;One or more of the dependencies is unavailable.&lt;/p&gt;
function M.ServiceUnavailableException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertServiceUnavailableException(t)
	return t
end

local GetCurrentUserRequest_keys = { "AuthenticationToken" = true, nil }

function M.AssertGetCurrentUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCurrentUserRequest to be of type 'table'")
	assert(struct["AuthenticationToken"], "Expected key AuthenticationToken to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	for k,_ in pairs(struct) do
		assert(GetCurrentUserRequest_keys[k], "GetCurrentUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCurrentUserRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token.&lt;/p&gt;
-- Required parameter: AuthenticationToken
function M.GetCurrentUserRequest(AuthenticationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCurrentUserRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
	}
	M.AssertGetCurrentUserRequest(t)
	return t
end

local RemoveAllResourcePermissionsRequest_keys = { "AuthenticationToken" = true, "ResourceId" = true, nil }

function M.AssertRemoveAllResourcePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAllResourcePermissionsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then M.AssertResourceIdType(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(RemoveAllResourcePermissionsRequest_keys[k], "RemoveAllResourcePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAllResourcePermissionsRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param ResourceId [ResourceIdType] &lt;p&gt;The ID of the resource.&lt;/p&gt;
-- Required parameter: ResourceId
function M.RemoveAllResourcePermissionsRequest(AuthenticationToken, ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveAllResourcePermissionsRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["ResourceId"] = ResourceId,
	}
	M.AssertRemoveAllResourcePermissionsRequest(t)
	return t
end

local DescribeResourcePermissionsRequest_keys = { "AuthenticationToken" = true, "ResourceId" = true, "Marker" = true, "Limit" = true, nil }

function M.AssertDescribeResourcePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourcePermissionsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then M.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeResourcePermissionsRequest_keys[k], "DescribeResourcePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourcePermissionsRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param ResourceId [ResourceIdType] &lt;p&gt;The ID of the resource.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call)&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;The maximum number of items to return with this call.&lt;/p&gt;
-- Required parameter: ResourceId
function M.DescribeResourcePermissionsRequest(AuthenticationToken, ResourceId, Marker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeResourcePermissionsRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["ResourceId"] = ResourceId,
		["Marker"] = Marker,
		["Limit"] = Limit,
	}
	M.AssertDescribeResourcePermissionsRequest(t)
	return t
end

local CreateLabelsResponse_keys = { nil }

function M.AssertCreateLabelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLabelsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateLabelsResponse_keys[k], "CreateLabelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLabelsResponse
--  
function M.CreateLabelsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLabelsResponse")
	local t = { 
	}
	M.AssertCreateLabelsResponse(t)
	return t
end

local DescribeRootFoldersResponse_keys = { "Folders" = true, "Marker" = true, nil }

function M.AssertDescribeRootFoldersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRootFoldersResponse to be of type 'table'")
	if struct["Folders"] then M.AssertFolderMetadataList(struct["Folders"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRootFoldersResponse_keys[k], "DescribeRootFoldersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRootFoldersResponse
--  
-- @param Folders [FolderMetadataList] &lt;p&gt;The user's special folders.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;The marker for the next set of results.&lt;/p&gt;
function M.DescribeRootFoldersResponse(Folders, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRootFoldersResponse")
	local t = { 
		["Folders"] = Folders,
		["Marker"] = Marker,
	}
	M.AssertDescribeRootFoldersResponse(t)
	return t
end

local GetDocumentVersionResponse_keys = { "CustomMetadata" = true, "Metadata" = true, nil }

function M.AssertGetDocumentVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentVersionResponse to be of type 'table'")
	if struct["CustomMetadata"] then M.AssertCustomMetadataMap(struct["CustomMetadata"]) end
	if struct["Metadata"] then M.AssertDocumentVersionMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentVersionResponse_keys[k], "GetDocumentVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentVersionResponse
--  
-- @param CustomMetadata [CustomMetadataMap] &lt;p&gt;The custom metadata on the document version.&lt;/p&gt;
-- @param Metadata [DocumentVersionMetadata] &lt;p&gt;The version metadata.&lt;/p&gt;
function M.GetDocumentVersionResponse(CustomMetadata, Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentVersionResponse")
	local t = { 
		["CustomMetadata"] = CustomMetadata,
		["Metadata"] = Metadata,
	}
	M.AssertGetDocumentVersionResponse(t)
	return t
end

local ProhibitedStateException_keys = { "Message" = true, nil }

function M.AssertProhibitedStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProhibitedStateException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ProhibitedStateException_keys[k], "ProhibitedStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProhibitedStateException
-- &lt;p&gt;The specified document version is not in the INITIALIZED state.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The specified document version is not in the INITIALIZED state.&lt;/p&gt;
function M.ProhibitedStateException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProhibitedStateException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertProhibitedStateException(t)
	return t
end

local InitiateDocumentVersionUploadRequest_keys = { "ContentType" = true, "Name" = true, "ParentFolderId" = true, "ContentCreatedTimestamp" = true, "DocumentSizeInBytes" = true, "ContentModifiedTimestamp" = true, "AuthenticationToken" = true, "Id" = true, nil }

function M.AssertInitiateDocumentVersionUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateDocumentVersionUploadRequest to be of type 'table'")
	assert(struct["ParentFolderId"], "Expected key ParentFolderId to exist in table")
	if struct["ContentType"] then M.AssertDocumentContentType(struct["ContentType"]) end
	if struct["Name"] then M.AssertResourceNameType(struct["Name"]) end
	if struct["ParentFolderId"] then M.AssertResourceIdType(struct["ParentFolderId"]) end
	if struct["ContentCreatedTimestamp"] then M.AssertTimestampType(struct["ContentCreatedTimestamp"]) end
	if struct["DocumentSizeInBytes"] then M.AssertSizeType(struct["DocumentSizeInBytes"]) end
	if struct["ContentModifiedTimestamp"] then M.AssertTimestampType(struct["ContentModifiedTimestamp"]) end
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Id"] then M.AssertResourceIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(InitiateDocumentVersionUploadRequest_keys[k], "InitiateDocumentVersionUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateDocumentVersionUploadRequest
--  
-- @param ContentType [DocumentContentType] &lt;p&gt;The content type of the document.&lt;/p&gt;
-- @param Name [ResourceNameType] &lt;p&gt;The name of the document.&lt;/p&gt;
-- @param ParentFolderId [ResourceIdType] &lt;p&gt;The ID of the parent folder.&lt;/p&gt;
-- @param ContentCreatedTimestamp [TimestampType] &lt;p&gt;The time stamp when the content of the document was originally created.&lt;/p&gt;
-- @param DocumentSizeInBytes [SizeType] &lt;p&gt;The size of the document, in bytes.&lt;/p&gt;
-- @param ContentModifiedTimestamp [TimestampType] &lt;p&gt;The time stamp when the content of the document was modified.&lt;/p&gt;
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param Id [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- Required parameter: ParentFolderId
function M.InitiateDocumentVersionUploadRequest(ContentType, Name, ParentFolderId, ContentCreatedTimestamp, DocumentSizeInBytes, ContentModifiedTimestamp, AuthenticationToken, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateDocumentVersionUploadRequest")
	local t = { 
		["ContentType"] = ContentType,
		["Name"] = Name,
		["ParentFolderId"] = ParentFolderId,
		["ContentCreatedTimestamp"] = ContentCreatedTimestamp,
		["DocumentSizeInBytes"] = DocumentSizeInBytes,
		["ContentModifiedTimestamp"] = ContentModifiedTimestamp,
		["AuthenticationToken"] = AuthenticationToken,
		["Id"] = Id,
	}
	M.AssertInitiateDocumentVersionUploadRequest(t)
	return t
end

local DescribeFolderContentsResponse_keys = { "Folders" = true, "Marker" = true, "Documents" = true, nil }

function M.AssertDescribeFolderContentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFolderContentsResponse to be of type 'table'")
	if struct["Folders"] then M.AssertFolderMetadataList(struct["Folders"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["Documents"] then M.AssertDocumentMetadataList(struct["Documents"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFolderContentsResponse_keys[k], "DescribeFolderContentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFolderContentsResponse
--  
-- @param Folders [FolderMetadataList] &lt;p&gt;The subfolders in the specified folder.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
-- @param Documents [DocumentMetadataList] &lt;p&gt;The documents in the specified folder.&lt;/p&gt;
function M.DescribeFolderContentsResponse(Folders, Marker, Documents, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFolderContentsResponse")
	local t = { 
		["Folders"] = Folders,
		["Marker"] = Marker,
		["Documents"] = Documents,
	}
	M.AssertDescribeFolderContentsResponse(t)
	return t
end

local UserMetadata_keys = { "Username" = true, "EmailAddress" = true, "GivenName" = true, "Surname" = true, "Id" = true, nil }

function M.AssertUserMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserMetadata to be of type 'table'")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["EmailAddress"] then M.AssertEmailAddressType(struct["EmailAddress"]) end
	if struct["GivenName"] then M.AssertUserAttributeValueType(struct["GivenName"]) end
	if struct["Surname"] then M.AssertUserAttributeValueType(struct["Surname"]) end
	if struct["Id"] then M.AssertIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(UserMetadata_keys[k], "UserMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserMetadata
-- &lt;p&gt;Describes the metadata of the user.&lt;/p&gt;
-- @param Username [UsernameType] &lt;p&gt;The username of the user.&lt;/p&gt;
-- @param EmailAddress [EmailAddressType] &lt;p&gt;The email address of the user.&lt;/p&gt;
-- @param GivenName [UserAttributeValueType] &lt;p&gt;The given name of the user before a rename operation.&lt;/p&gt;
-- @param Surname [UserAttributeValueType] &lt;p&gt;The surname of the user.&lt;/p&gt;
-- @param Id [IdType] &lt;p&gt;The ID of the user.&lt;/p&gt;
function M.UserMetadata(Username, EmailAddress, GivenName, Surname, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserMetadata")
	local t = { 
		["Username"] = Username,
		["EmailAddress"] = EmailAddress,
		["GivenName"] = GivenName,
		["Surname"] = Surname,
		["Id"] = Id,
	}
	M.AssertUserMetadata(t)
	return t
end

local DeleteFolderContentsRequest_keys = { "AuthenticationToken" = true, "FolderId" = true, nil }

function M.AssertDeleteFolderContentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFolderContentsRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["FolderId"] then M.AssertResourceIdType(struct["FolderId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFolderContentsRequest_keys[k], "DeleteFolderContentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFolderContentsRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param FolderId [ResourceIdType] &lt;p&gt;The ID of the folder.&lt;/p&gt;
-- Required parameter: FolderId
function M.DeleteFolderContentsRequest(AuthenticationToken, FolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFolderContentsRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["FolderId"] = FolderId,
	}
	M.AssertDeleteFolderContentsRequest(t)
	return t
end

local ActivateUserResponse_keys = { "User" = true, nil }

function M.AssertActivateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivateUserResponse to be of type 'table'")
	if struct["User"] then M.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(ActivateUserResponse_keys[k], "ActivateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivateUserResponse
--  
-- @param User [User] &lt;p&gt;The user information.&lt;/p&gt;
function M.ActivateUserResponse(User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivateUserResponse")
	local t = { 
		["User"] = User,
	}
	M.AssertActivateUserResponse(t)
	return t
end

local TooManyLabelsException_keys = { "Message" = true, nil }

function M.AssertTooManyLabelsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyLabelsException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyLabelsException_keys[k], "TooManyLabelsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyLabelsException
-- &lt;p&gt;The limit has been reached on the number of labels for the specified resource.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The limit has been reached on the number of labels for the specified resource.&lt;/p&gt;
function M.TooManyLabelsException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyLabelsException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyLabelsException(t)
	return t
end

local SharePrincipal_keys = { "Role" = true, "Type" = true, "Id" = true, nil }

function M.AssertSharePrincipal(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SharePrincipal to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	if struct["Role"] then M.AssertRoleType(struct["Role"]) end
	if struct["Type"] then M.AssertPrincipalType(struct["Type"]) end
	if struct["Id"] then M.AssertIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(SharePrincipal_keys[k], "SharePrincipal contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SharePrincipal
-- &lt;p&gt;Describes the recipient type and ID, if available.&lt;/p&gt;
-- @param Role [RoleType] &lt;p&gt;The role of the recipient.&lt;/p&gt;
-- @param Type [PrincipalType] &lt;p&gt;The type of the recipient.&lt;/p&gt;
-- @param Id [IdType] &lt;p&gt;The ID of the recipient.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Type
-- Required parameter: Role
function M.SharePrincipal(Role, Type, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SharePrincipal")
	local t = { 
		["Role"] = Role,
		["Type"] = Type,
		["Id"] = Id,
	}
	M.AssertSharePrincipal(t)
	return t
end

local DeleteCustomMetadataRequest_keys = { "AuthenticationToken" = true, "ResourceId" = true, "VersionId" = true, "DeleteAll" = true, "Keys" = true, nil }

function M.AssertDeleteCustomMetadataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCustomMetadataRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then M.AssertResourceIdType(struct["ResourceId"]) end
	if struct["VersionId"] then M.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["DeleteAll"] then M.AssertBooleanType(struct["DeleteAll"]) end
	if struct["Keys"] then M.AssertCustomMetadataKeyList(struct["Keys"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCustomMetadataRequest_keys[k], "DeleteCustomMetadataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCustomMetadataRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param ResourceId [ResourceIdType] &lt;p&gt;The ID of the resource, either a document or folder.&lt;/p&gt;
-- @param VersionId [DocumentVersionIdType] &lt;p&gt;The ID of the version, if the custom metadata is being deleted from a document version.&lt;/p&gt;
-- @param DeleteAll [BooleanType] &lt;p&gt;Flag to indicate removal of all custom metadata properties from the specified resource.&lt;/p&gt;
-- @param Keys [CustomMetadataKeyList] &lt;p&gt;List of properties to remove.&lt;/p&gt;
-- Required parameter: ResourceId
function M.DeleteCustomMetadataRequest(AuthenticationToken, ResourceId, VersionId, DeleteAll, Keys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCustomMetadataRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["ResourceId"] = ResourceId,
		["VersionId"] = VersionId,
		["DeleteAll"] = DeleteAll,
		["Keys"] = Keys,
	}
	M.AssertDeleteCustomMetadataRequest(t)
	return t
end

local CreateLabelsRequest_keys = { "AuthenticationToken" = true, "ResourceId" = true, "Labels" = true, nil }

function M.AssertCreateLabelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLabelsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Labels"], "Expected key Labels to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then M.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Labels"] then M.AssertLabels(struct["Labels"]) end
	for k,_ in pairs(struct) do
		assert(CreateLabelsRequest_keys[k], "CreateLabelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLabelsRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param ResourceId [ResourceIdType] &lt;p&gt;The ID of the resource.&lt;/p&gt;
-- @param Labels [Labels] &lt;p&gt;List of labels to add to the resource.&lt;/p&gt;
-- Required parameter: ResourceId
-- Required parameter: Labels
function M.CreateLabelsRequest(AuthenticationToken, ResourceId, Labels, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLabelsRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["ResourceId"] = ResourceId,
		["Labels"] = Labels,
	}
	M.AssertCreateLabelsRequest(t)
	return t
end

local DeleteNotificationSubscriptionRequest_keys = { "OrganizationId" = true, "SubscriptionId" = true, nil }

function M.AssertDeleteNotificationSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotificationSubscriptionRequest to be of type 'table'")
	assert(struct["SubscriptionId"], "Expected key SubscriptionId to exist in table")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	if struct["OrganizationId"] then M.AssertIdType(struct["OrganizationId"]) end
	if struct["SubscriptionId"] then M.AssertIdType(struct["SubscriptionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteNotificationSubscriptionRequest_keys[k], "DeleteNotificationSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotificationSubscriptionRequest
--  
-- @param OrganizationId [IdType] &lt;p&gt;The ID of the organization.&lt;/p&gt;
-- @param SubscriptionId [IdType] &lt;p&gt;The ID of the subscription.&lt;/p&gt;
-- Required parameter: SubscriptionId
-- Required parameter: OrganizationId
function M.DeleteNotificationSubscriptionRequest(OrganizationId, SubscriptionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNotificationSubscriptionRequest")
	local t = { 
		["OrganizationId"] = OrganizationId,
		["SubscriptionId"] = SubscriptionId,
	}
	M.AssertDeleteNotificationSubscriptionRequest(t)
	return t
end

local CreateNotificationSubscriptionRequest_keys = { "OrganizationId" = true, "SubscriptionType" = true, "Endpoint" = true, "Protocol" = true, nil }

function M.AssertCreateNotificationSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotificationSubscriptionRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["Endpoint"], "Expected key Endpoint to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	assert(struct["SubscriptionType"], "Expected key SubscriptionType to exist in table")
	if struct["OrganizationId"] then M.AssertIdType(struct["OrganizationId"]) end
	if struct["SubscriptionType"] then M.AssertSubscriptionType(struct["SubscriptionType"]) end
	if struct["Endpoint"] then M.AssertSubscriptionEndPointType(struct["Endpoint"]) end
	if struct["Protocol"] then M.AssertSubscriptionProtocolType(struct["Protocol"]) end
	for k,_ in pairs(struct) do
		assert(CreateNotificationSubscriptionRequest_keys[k], "CreateNotificationSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotificationSubscriptionRequest
--  
-- @param OrganizationId [IdType] &lt;p&gt;The ID of the organization.&lt;/p&gt;
-- @param SubscriptionType [SubscriptionType] &lt;p&gt;The notification type.&lt;/p&gt;
-- @param Endpoint [SubscriptionEndPointType] &lt;p&gt;The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint is a URL that begins with &quot;https://&quot;.&lt;/p&gt;
-- @param Protocol [SubscriptionProtocolType] &lt;p&gt;The protocol to use. The supported value is https, which delivers JSON-encoded messasges using HTTPS POST.&lt;/p&gt;
-- Required parameter: OrganizationId
-- Required parameter: Endpoint
-- Required parameter: Protocol
-- Required parameter: SubscriptionType
function M.CreateNotificationSubscriptionRequest(OrganizationId, SubscriptionType, Endpoint, Protocol, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNotificationSubscriptionRequest")
	local t = { 
		["OrganizationId"] = OrganizationId,
		["SubscriptionType"] = SubscriptionType,
		["Endpoint"] = Endpoint,
		["Protocol"] = Protocol,
	}
	M.AssertCreateNotificationSubscriptionRequest(t)
	return t
end

local DocumentVersionMetadata_keys = { "Status" = true, "ContentType" = true, "Name" = true, "ModifiedTimestamp" = true, "Thumbnail" = true, "CreatedTimestamp" = true, "Source" = true, "CreatorId" = true, "ContentCreatedTimestamp" = true, "ContentModifiedTimestamp" = true, "Signature" = true, "Id" = true, "Size" = true, nil }

function M.AssertDocumentVersionMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentVersionMetadata to be of type 'table'")
	if struct["Status"] then M.AssertDocumentStatusType(struct["Status"]) end
	if struct["ContentType"] then M.AssertDocumentContentType(struct["ContentType"]) end
	if struct["Name"] then M.AssertResourceNameType(struct["Name"]) end
	if struct["ModifiedTimestamp"] then M.AssertTimestampType(struct["ModifiedTimestamp"]) end
	if struct["Thumbnail"] then M.AssertDocumentThumbnailUrlMap(struct["Thumbnail"]) end
	if struct["CreatedTimestamp"] then M.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["Source"] then M.AssertDocumentSourceUrlMap(struct["Source"]) end
	if struct["CreatorId"] then M.AssertIdType(struct["CreatorId"]) end
	if struct["ContentCreatedTimestamp"] then M.AssertTimestampType(struct["ContentCreatedTimestamp"]) end
	if struct["ContentModifiedTimestamp"] then M.AssertTimestampType(struct["ContentModifiedTimestamp"]) end
	if struct["Signature"] then M.AssertHashType(struct["Signature"]) end
	if struct["Id"] then M.AssertDocumentVersionIdType(struct["Id"]) end
	if struct["Size"] then M.AssertSizeType(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(DocumentVersionMetadata_keys[k], "DocumentVersionMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentVersionMetadata
-- &lt;p&gt;Describes a version of a document.&lt;/p&gt;
-- @param Status [DocumentStatusType] &lt;p&gt;The status of the document.&lt;/p&gt;
-- @param ContentType [DocumentContentType] &lt;p&gt;The content type of the document.&lt;/p&gt;
-- @param Name [ResourceNameType] &lt;p&gt;The name of the version.&lt;/p&gt;
-- @param ModifiedTimestamp [TimestampType] &lt;p&gt;The time stamp when the document was last uploaded.&lt;/p&gt;
-- @param Thumbnail [DocumentThumbnailUrlMap] &lt;p&gt;The thumbnail of the document.&lt;/p&gt;
-- @param CreatedTimestamp [TimestampType] &lt;p&gt;The time stamp when the document was first uploaded.&lt;/p&gt;
-- @param Source [DocumentSourceUrlMap] &lt;p&gt;The source of the document.&lt;/p&gt;
-- @param CreatorId [IdType] &lt;p&gt;The ID of the creator.&lt;/p&gt;
-- @param ContentCreatedTimestamp [TimestampType] &lt;p&gt;The time stamp when the content of the document was originally created.&lt;/p&gt;
-- @param ContentModifiedTimestamp [TimestampType] &lt;p&gt;The time stamp when the content of the document was modified.&lt;/p&gt;
-- @param Signature [HashType] &lt;p&gt;The signature of the document.&lt;/p&gt;
-- @param Id [DocumentVersionIdType] &lt;p&gt;The ID of the version.&lt;/p&gt;
-- @param Size [SizeType] &lt;p&gt;The size of the document, in bytes.&lt;/p&gt;
function M.DocumentVersionMetadata(Status, ContentType, Name, ModifiedTimestamp, Thumbnail, CreatedTimestamp, Source, CreatorId, ContentCreatedTimestamp, ContentModifiedTimestamp, Signature, Id, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentVersionMetadata")
	local t = { 
		["Status"] = Status,
		["ContentType"] = ContentType,
		["Name"] = Name,
		["ModifiedTimestamp"] = ModifiedTimestamp,
		["Thumbnail"] = Thumbnail,
		["CreatedTimestamp"] = CreatedTimestamp,
		["Source"] = Source,
		["CreatorId"] = CreatorId,
		["ContentCreatedTimestamp"] = ContentCreatedTimestamp,
		["ContentModifiedTimestamp"] = ContentModifiedTimestamp,
		["Signature"] = Signature,
		["Id"] = Id,
		["Size"] = Size,
	}
	M.AssertDocumentVersionMetadata(t)
	return t
end

local InitiateDocumentVersionUploadResponse_keys = { "UploadMetadata" = true, "Metadata" = true, nil }

function M.AssertInitiateDocumentVersionUploadResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitiateDocumentVersionUploadResponse to be of type 'table'")
	if struct["UploadMetadata"] then M.AssertUploadMetadata(struct["UploadMetadata"]) end
	if struct["Metadata"] then M.AssertDocumentMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(InitiateDocumentVersionUploadResponse_keys[k], "InitiateDocumentVersionUploadResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitiateDocumentVersionUploadResponse
--  
-- @param UploadMetadata [UploadMetadata] &lt;p&gt;The upload metadata.&lt;/p&gt;
-- @param Metadata [DocumentMetadata] &lt;p&gt;The document metadata.&lt;/p&gt;
function M.InitiateDocumentVersionUploadResponse(UploadMetadata, Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateDocumentVersionUploadResponse")
	local t = { 
		["UploadMetadata"] = UploadMetadata,
		["Metadata"] = Metadata,
	}
	M.AssertInitiateDocumentVersionUploadResponse(t)
	return t
end

local DeleteUserRequest_keys = { "AuthenticationToken" = true, "UserId" = true, nil }

function M.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["UserId"] then M.AssertIdType(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserRequest_keys[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param UserId [IdType] &lt;p&gt;The ID of the user.&lt;/p&gt;
-- Required parameter: UserId
function M.DeleteUserRequest(AuthenticationToken, UserId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["UserId"] = UserId,
	}
	M.AssertDeleteUserRequest(t)
	return t
end

local DeleteLabelsRequest_keys = { "AuthenticationToken" = true, "ResourceId" = true, "Labels" = true, "DeleteAll" = true, nil }

function M.AssertDeleteLabelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLabelsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then M.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Labels"] then M.AssertLabels(struct["Labels"]) end
	if struct["DeleteAll"] then M.AssertBooleanType(struct["DeleteAll"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLabelsRequest_keys[k], "DeleteLabelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLabelsRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param ResourceId [ResourceIdType] &lt;p&gt;The ID of the resource.&lt;/p&gt;
-- @param Labels [Labels] &lt;p&gt;List of labels to delete from the resource.&lt;/p&gt;
-- @param DeleteAll [BooleanType] &lt;p&gt;Flag to request removal of all labels from the specified resource.&lt;/p&gt;
-- Required parameter: ResourceId
function M.DeleteLabelsRequest(AuthenticationToken, ResourceId, Labels, DeleteAll, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLabelsRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["ResourceId"] = ResourceId,
		["Labels"] = Labels,
		["DeleteAll"] = DeleteAll,
	}
	M.AssertDeleteLabelsRequest(t)
	return t
end

local UpdateUserResponse_keys = { "User" = true, nil }

function M.AssertUpdateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserResponse to be of type 'table'")
	if struct["User"] then M.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserResponse_keys[k], "UpdateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserResponse
--  
-- @param User [User] &lt;p&gt;The user information.&lt;/p&gt;
function M.UpdateUserResponse(User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserResponse")
	local t = { 
		["User"] = User,
	}
	M.AssertUpdateUserResponse(t)
	return t
end

local GetDocumentPathRequest_keys = { "AuthenticationToken" = true, "Fields" = true, "Marker" = true, "Limit" = true, "DocumentId" = true, nil }

function M.AssertGetDocumentPathRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentPathRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Fields"] then M.AssertFieldNamesType(struct["Fields"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	if struct["DocumentId"] then M.AssertIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentPathRequest_keys[k], "GetDocumentPathRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentPathRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param Fields [FieldNamesType] &lt;p&gt;A comma-separated list of values. Specify &lt;code&gt;NAME&lt;/code&gt; to include the names of the parent folders.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;This value is not supported.&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;The maximum number of levels in the hierarchy to return.&lt;/p&gt;
-- @param DocumentId [IdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- Required parameter: DocumentId
function M.GetDocumentPathRequest(AuthenticationToken, Fields, Marker, Limit, DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentPathRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["Fields"] = Fields,
		["Marker"] = Marker,
		["Limit"] = Limit,
		["DocumentId"] = DocumentId,
	}
	M.AssertGetDocumentPathRequest(t)
	return t
end

local UnauthorizedResourceAccessException_keys = { "Message" = true, nil }

function M.AssertUnauthorizedResourceAccessException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedResourceAccessException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(UnauthorizedResourceAccessException_keys[k], "UnauthorizedResourceAccessException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedResourceAccessException
-- &lt;p&gt;The caller does not have access to perform the action on the resource.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The caller does not have access to perform the action on the resource.&lt;/p&gt;
function M.UnauthorizedResourceAccessException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedResourceAccessException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertUnauthorizedResourceAccessException(t)
	return t
end

local ConcurrentModificationException_keys = { "Message" = true, nil }

function M.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ConcurrentModificationException_keys[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- &lt;p&gt;The resource hierarchy is changing.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The resource hierarchy is changing.&lt;/p&gt;
function M.ConcurrentModificationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertConcurrentModificationException(t)
	return t
end

local ActivateUserRequest_keys = { "AuthenticationToken" = true, "UserId" = true, nil }

function M.AssertActivateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivateUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["UserId"] then M.AssertIdType(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(ActivateUserRequest_keys[k], "ActivateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivateUserRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param UserId [IdType] &lt;p&gt;The ID of the user.&lt;/p&gt;
-- Required parameter: UserId
function M.ActivateUserRequest(AuthenticationToken, UserId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivateUserRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["UserId"] = UserId,
	}
	M.AssertActivateUserRequest(t)
	return t
end

local DescribeActivitiesRequest_keys = { "OrganizationId" = true, "UserId" = true, "Marker" = true, "Limit" = true, "StartTime" = true, "AuthenticationToken" = true, "EndTime" = true, nil }

function M.AssertDescribeActivitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivitiesRequest to be of type 'table'")
	if struct["OrganizationId"] then M.AssertIdType(struct["OrganizationId"]) end
	if struct["UserId"] then M.AssertIdType(struct["UserId"]) end
	if struct["Marker"] then M.AssertMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	if struct["StartTime"] then M.AssertTimestampType(struct["StartTime"]) end
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["EndTime"] then M.AssertTimestampType(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(DescribeActivitiesRequest_keys[k], "DescribeActivitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivitiesRequest
--  
-- @param OrganizationId [IdType] &lt;p&gt;The ID of the organization. This is a mandatory parameter when using administrative API (SigV4) requests.&lt;/p&gt;
-- @param UserId [IdType] &lt;p&gt;The ID of the user who performed the action. The response includes activities pertaining to this user. This is an optional parameter and is only applicable for administrative API (SigV4) requests.&lt;/p&gt;
-- @param Marker [MarkerType] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;The maximum number of items to return.&lt;/p&gt;
-- @param StartTime [TimestampType] &lt;p&gt;The timestamp that determines the starting time of the activities; the response includes the activities performed after the specified timestamp.&lt;/p&gt;
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param EndTime [TimestampType] &lt;p&gt;The timestamp that determines the end time of the activities; the response includes the activities performed before the specified timestamp.&lt;/p&gt;
function M.DescribeActivitiesRequest(OrganizationId, UserId, Marker, Limit, StartTime, AuthenticationToken, EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivitiesRequest")
	local t = { 
		["OrganizationId"] = OrganizationId,
		["UserId"] = UserId,
		["Marker"] = Marker,
		["Limit"] = Limit,
		["StartTime"] = StartTime,
		["AuthenticationToken"] = AuthenticationToken,
		["EndTime"] = EndTime,
	}
	M.AssertDescribeActivitiesRequest(t)
	return t
end

local DescribeNotificationSubscriptionsResponse_keys = { "Marker" = true, "Subscriptions" = true, nil }

function M.AssertDescribeNotificationSubscriptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationSubscriptionsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["Subscriptions"] then M.AssertSubscriptionList(struct["Subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(DescribeNotificationSubscriptionsResponse_keys[k], "DescribeNotificationSubscriptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationSubscriptionsResponse
--  
-- @param Marker [PageMarkerType] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
-- @param Subscriptions [SubscriptionList] &lt;p&gt;The subscriptions.&lt;/p&gt;
function M.DescribeNotificationSubscriptionsResponse(Marker, Subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNotificationSubscriptionsResponse")
	local t = { 
		["Marker"] = Marker,
		["Subscriptions"] = Subscriptions,
	}
	M.AssertDescribeNotificationSubscriptionsResponse(t)
	return t
end

local CreateCommentRequest_keys = { "Text" = true, "ParentId" = true, "Visibility" = true, "NotifyCollaborators" = true, "VersionId" = true, "ThreadId" = true, "AuthenticationToken" = true, "DocumentId" = true, nil }

function M.AssertCreateCommentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCommentRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	assert(struct["Text"], "Expected key Text to exist in table")
	if struct["Text"] then M.AssertCommentTextType(struct["Text"]) end
	if struct["ParentId"] then M.AssertCommentIdType(struct["ParentId"]) end
	if struct["Visibility"] then M.AssertCommentVisibilityType(struct["Visibility"]) end
	if struct["NotifyCollaborators"] then M.AssertBooleanType(struct["NotifyCollaborators"]) end
	if struct["VersionId"] then M.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["ThreadId"] then M.AssertCommentIdType(struct["ThreadId"]) end
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["DocumentId"] then M.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(CreateCommentRequest_keys[k], "CreateCommentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCommentRequest
--  
-- @param Text [CommentTextType] &lt;p&gt;The text of the comment.&lt;/p&gt;
-- @param ParentId [CommentIdType] &lt;p&gt;The ID of the parent comment.&lt;/p&gt;
-- @param Visibility [CommentVisibilityType] &lt;p&gt;The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors.&lt;/p&gt;
-- @param NotifyCollaborators [BooleanType] &lt;p&gt;Set this parameter to TRUE to send an email out to the document collaborators after the comment is created.&lt;/p&gt;
-- @param VersionId [DocumentVersionIdType] &lt;p&gt;The ID of the document version.&lt;/p&gt;
-- @param ThreadId [CommentIdType] &lt;p&gt;The ID of the root comment in the thread.&lt;/p&gt;
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param DocumentId [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- Required parameter: DocumentId
-- Required parameter: VersionId
-- Required parameter: Text
function M.CreateCommentRequest(Text, ParentId, Visibility, NotifyCollaborators, VersionId, ThreadId, AuthenticationToken, DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCommentRequest")
	local t = { 
		["Text"] = Text,
		["ParentId"] = ParentId,
		["Visibility"] = Visibility,
		["NotifyCollaborators"] = NotifyCollaborators,
		["VersionId"] = VersionId,
		["ThreadId"] = ThreadId,
		["AuthenticationToken"] = AuthenticationToken,
		["DocumentId"] = DocumentId,
	}
	M.AssertCreateCommentRequest(t)
	return t
end

local CreateFolderRequest_keys = { "AuthenticationToken" = true, "Name" = true, "ParentFolderId" = true, nil }

function M.AssertCreateFolderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFolderRequest to be of type 'table'")
	assert(struct["ParentFolderId"], "Expected key ParentFolderId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Name"] then M.AssertResourceNameType(struct["Name"]) end
	if struct["ParentFolderId"] then M.AssertResourceIdType(struct["ParentFolderId"]) end
	for k,_ in pairs(struct) do
		assert(CreateFolderRequest_keys[k], "CreateFolderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFolderRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param Name [ResourceNameType] &lt;p&gt;The name of the new folder.&lt;/p&gt;
-- @param ParentFolderId [ResourceIdType] &lt;p&gt;The ID of the parent folder.&lt;/p&gt;
-- Required parameter: ParentFolderId
function M.CreateFolderRequest(AuthenticationToken, Name, ParentFolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFolderRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["Name"] = Name,
		["ParentFolderId"] = ParentFolderId,
	}
	M.AssertCreateFolderRequest(t)
	return t
end

local CreateUserResponse_keys = { "User" = true, nil }

function M.AssertCreateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserResponse to be of type 'table'")
	if struct["User"] then M.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserResponse_keys[k], "CreateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserResponse
--  
-- @param User [User] &lt;p&gt;The user information.&lt;/p&gt;
function M.CreateUserResponse(User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserResponse")
	local t = { 
		["User"] = User,
	}
	M.AssertCreateUserResponse(t)
	return t
end

local DescribeCommentsResponse_keys = { "Marker" = true, "Comments" = true, nil }

function M.AssertDescribeCommentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommentsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertMarkerType(struct["Marker"]) end
	if struct["Comments"] then M.AssertCommentList(struct["Comments"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCommentsResponse_keys[k], "DescribeCommentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommentsResponse
--  
-- @param Marker [MarkerType] &lt;p&gt;The marker for the next set of results. This marker was received from a previous call.&lt;/p&gt;
-- @param Comments [CommentList] &lt;p&gt;The list of comments for the specified document version.&lt;/p&gt;
function M.DescribeCommentsResponse(Marker, Comments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommentsResponse")
	local t = { 
		["Marker"] = Marker,
		["Comments"] = Comments,
	}
	M.AssertDescribeCommentsResponse(t)
	return t
end

local GetFolderPathResponse_keys = { "Path" = true, nil }

function M.AssertGetFolderPathResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFolderPathResponse to be of type 'table'")
	if struct["Path"] then M.AssertResourcePath(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(GetFolderPathResponse_keys[k], "GetFolderPathResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFolderPathResponse
--  
-- @param Path [ResourcePath] &lt;p&gt;The path information.&lt;/p&gt;
function M.GetFolderPathResponse(Path, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFolderPathResponse")
	local t = { 
		["Path"] = Path,
	}
	M.AssertGetFolderPathResponse(t)
	return t
end

local DeleteFolderRequest_keys = { "AuthenticationToken" = true, "FolderId" = true, nil }

function M.AssertDeleteFolderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFolderRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["FolderId"] then M.AssertResourceIdType(struct["FolderId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFolderRequest_keys[k], "DeleteFolderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFolderRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param FolderId [ResourceIdType] &lt;p&gt;The ID of the folder.&lt;/p&gt;
-- Required parameter: FolderId
function M.DeleteFolderRequest(AuthenticationToken, FolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFolderRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["FolderId"] = FolderId,
	}
	M.AssertDeleteFolderRequest(t)
	return t
end

local DocumentMetadata_keys = { "ResourceState" = true, "Labels" = true, "ModifiedTimestamp" = true, "ParentFolderId" = true, "CreatedTimestamp" = true, "LatestVersionMetadata" = true, "CreatorId" = true, "Id" = true, nil }

function M.AssertDocumentMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentMetadata to be of type 'table'")
	if struct["ResourceState"] then M.AssertResourceStateType(struct["ResourceState"]) end
	if struct["Labels"] then M.AssertLabels(struct["Labels"]) end
	if struct["ModifiedTimestamp"] then M.AssertTimestampType(struct["ModifiedTimestamp"]) end
	if struct["ParentFolderId"] then M.AssertResourceIdType(struct["ParentFolderId"]) end
	if struct["CreatedTimestamp"] then M.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["LatestVersionMetadata"] then M.AssertDocumentVersionMetadata(struct["LatestVersionMetadata"]) end
	if struct["CreatorId"] then M.AssertIdType(struct["CreatorId"]) end
	if struct["Id"] then M.AssertResourceIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DocumentMetadata_keys[k], "DocumentMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentMetadata
-- &lt;p&gt;Describes the document.&lt;/p&gt;
-- @param ResourceState [ResourceStateType] &lt;p&gt;The resource state.&lt;/p&gt;
-- @param Labels [Labels] &lt;p&gt;List of labels on the document.&lt;/p&gt;
-- @param ModifiedTimestamp [TimestampType] &lt;p&gt;The time when the document was updated.&lt;/p&gt;
-- @param ParentFolderId [ResourceIdType] &lt;p&gt;The ID of the parent folder.&lt;/p&gt;
-- @param CreatedTimestamp [TimestampType] &lt;p&gt;The time when the document was created.&lt;/p&gt;
-- @param LatestVersionMetadata [DocumentVersionMetadata] &lt;p&gt;The latest version of the document.&lt;/p&gt;
-- @param CreatorId [IdType] &lt;p&gt;The ID of the creator.&lt;/p&gt;
-- @param Id [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
function M.DocumentMetadata(ResourceState, Labels, ModifiedTimestamp, ParentFolderId, CreatedTimestamp, LatestVersionMetadata, CreatorId, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentMetadata")
	local t = { 
		["ResourceState"] = ResourceState,
		["Labels"] = Labels,
		["ModifiedTimestamp"] = ModifiedTimestamp,
		["ParentFolderId"] = ParentFolderId,
		["CreatedTimestamp"] = CreatedTimestamp,
		["LatestVersionMetadata"] = LatestVersionMetadata,
		["CreatorId"] = CreatorId,
		["Id"] = Id,
	}
	M.AssertDocumentMetadata(t)
	return t
end

local DocumentLockedForCommentsException_keys = { "Message" = true, nil }

function M.AssertDocumentLockedForCommentsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentLockedForCommentsException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DocumentLockedForCommentsException_keys[k], "DocumentLockedForCommentsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentLockedForCommentsException
-- &lt;p&gt;This exception is thrown when the document is locked for comments and user tries to create or delete a comment on that document.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;This exception is thrown when the document is locked for comments and user tries to create or delete a comment on that document.&lt;/p&gt;
function M.DocumentLockedForCommentsException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentLockedForCommentsException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDocumentLockedForCommentsException(t)
	return t
end

local UpdateDocumentRequest_keys = { "AuthenticationToken" = true, "ResourceState" = true, "Name" = true, "DocumentId" = true, "ParentFolderId" = true, nil }

function M.AssertUpdateDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceState"] then M.AssertResourceStateType(struct["ResourceState"]) end
	if struct["Name"] then M.AssertResourceNameType(struct["Name"]) end
	if struct["DocumentId"] then M.AssertResourceIdType(struct["DocumentId"]) end
	if struct["ParentFolderId"] then M.AssertResourceIdType(struct["ParentFolderId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDocumentRequest_keys[k], "UpdateDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param ResourceState [ResourceStateType] &lt;p&gt;The resource state of the document. Note that only ACTIVE and RECYCLED are supported.&lt;/p&gt;
-- @param Name [ResourceNameType] &lt;p&gt;The name of the document.&lt;/p&gt;
-- @param DocumentId [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- @param ParentFolderId [ResourceIdType] &lt;p&gt;The ID of the parent folder.&lt;/p&gt;
-- Required parameter: DocumentId
function M.UpdateDocumentRequest(AuthenticationToken, ResourceState, Name, DocumentId, ParentFolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDocumentRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["ResourceState"] = ResourceState,
		["Name"] = Name,
		["DocumentId"] = DocumentId,
		["ParentFolderId"] = ParentFolderId,
	}
	M.AssertUpdateDocumentRequest(t)
	return t
end

local DescribeResourcePermissionsResponse_keys = { "Marker" = true, "Principals" = true, nil }

function M.AssertDescribeResourcePermissionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourcePermissionsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["Principals"] then M.AssertPrincipalList(struct["Principals"]) end
	for k,_ in pairs(struct) do
		assert(DescribeResourcePermissionsResponse_keys[k], "DescribeResourcePermissionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourcePermissionsResponse
--  
-- @param Marker [PageMarkerType] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
-- @param Principals [PrincipalList] &lt;p&gt;The principals.&lt;/p&gt;
function M.DescribeResourcePermissionsResponse(Marker, Principals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeResourcePermissionsResponse")
	local t = { 
		["Marker"] = Marker,
		["Principals"] = Principals,
	}
	M.AssertDescribeResourcePermissionsResponse(t)
	return t
end

local GetDocumentVersionRequest_keys = { "AuthenticationToken" = true, "Fields" = true, "VersionId" = true, "IncludeCustomMetadata" = true, "DocumentId" = true, nil }

function M.AssertGetDocumentVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentVersionRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Fields"] then M.AssertFieldNamesType(struct["Fields"]) end
	if struct["VersionId"] then M.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["IncludeCustomMetadata"] then M.AssertBooleanType(struct["IncludeCustomMetadata"]) end
	if struct["DocumentId"] then M.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentVersionRequest_keys[k], "GetDocumentVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentVersionRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param Fields [FieldNamesType] &lt;p&gt;A comma-separated list of values. Specify &quot;SOURCE&quot; to include a URL for the source document.&lt;/p&gt;
-- @param VersionId [DocumentVersionIdType] &lt;p&gt;The version ID of the document.&lt;/p&gt;
-- @param IncludeCustomMetadata [BooleanType] &lt;p&gt;Set this to TRUE to include custom metadata in the response.&lt;/p&gt;
-- @param DocumentId [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- Required parameter: DocumentId
-- Required parameter: VersionId
function M.GetDocumentVersionRequest(AuthenticationToken, Fields, VersionId, IncludeCustomMetadata, DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentVersionRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["Fields"] = Fields,
		["VersionId"] = VersionId,
		["IncludeCustomMetadata"] = IncludeCustomMetadata,
		["DocumentId"] = DocumentId,
	}
	M.AssertGetDocumentVersionRequest(t)
	return t
end

local DeactivatingLastSystemUserException_keys = { nil }

function M.AssertDeactivatingLastSystemUserException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeactivatingLastSystemUserException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeactivatingLastSystemUserException_keys[k], "DeactivatingLastSystemUserException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeactivatingLastSystemUserException
-- &lt;p&gt;The last user in the organization is being deactivated.&lt;/p&gt;
function M.DeactivatingLastSystemUserException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeactivatingLastSystemUserException")
	local t = { 
	}
	M.AssertDeactivatingLastSystemUserException(t)
	return t
end

local ShareResult_keys = { "Status" = true, "StatusMessage" = true, "Role" = true, "ShareId" = true, "PrincipalId" = true, nil }

function M.AssertShareResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShareResult to be of type 'table'")
	if struct["Status"] then M.AssertShareStatusType(struct["Status"]) end
	if struct["StatusMessage"] then M.AssertMessageType(struct["StatusMessage"]) end
	if struct["Role"] then M.AssertRoleType(struct["Role"]) end
	if struct["ShareId"] then M.AssertResourceIdType(struct["ShareId"]) end
	if struct["PrincipalId"] then M.AssertIdType(struct["PrincipalId"]) end
	for k,_ in pairs(struct) do
		assert(ShareResult_keys[k], "ShareResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShareResult
-- &lt;p&gt;Describes the share results of a resource.&lt;/p&gt;
-- @param Status [ShareStatusType] &lt;p&gt;The status.&lt;/p&gt;
-- @param StatusMessage [MessageType] &lt;p&gt;The status message.&lt;/p&gt;
-- @param Role [RoleType] &lt;p&gt;The role.&lt;/p&gt;
-- @param ShareId [ResourceIdType] &lt;p&gt;The ID of the resource that was shared.&lt;/p&gt;
-- @param PrincipalId [IdType] &lt;p&gt;The ID of the principal.&lt;/p&gt;
function M.ShareResult(Status, StatusMessage, Role, ShareId, PrincipalId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShareResult")
	local t = { 
		["Status"] = Status,
		["StatusMessage"] = StatusMessage,
		["Role"] = Role,
		["ShareId"] = ShareId,
		["PrincipalId"] = PrincipalId,
	}
	M.AssertShareResult(t)
	return t
end

local GetDocumentResponse_keys = { "CustomMetadata" = true, "Metadata" = true, nil }

function M.AssertGetDocumentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentResponse to be of type 'table'")
	if struct["CustomMetadata"] then M.AssertCustomMetadataMap(struct["CustomMetadata"]) end
	if struct["Metadata"] then M.AssertDocumentMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentResponse_keys[k], "GetDocumentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentResponse
--  
-- @param CustomMetadata [CustomMetadataMap] &lt;p&gt;The custom metadata on the document.&lt;/p&gt;
-- @param Metadata [DocumentMetadata] &lt;p&gt;The metadata details of the document.&lt;/p&gt;
function M.GetDocumentResponse(CustomMetadata, Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentResponse")
	local t = { 
		["CustomMetadata"] = CustomMetadata,
		["Metadata"] = Metadata,
	}
	M.AssertGetDocumentResponse(t)
	return t
end

local GetFolderPathRequest_keys = { "AuthenticationToken" = true, "Fields" = true, "FolderId" = true, "Limit" = true, "Marker" = true, nil }

function M.AssertGetFolderPathRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFolderPathRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Fields"] then M.AssertFieldNamesType(struct["Fields"]) end
	if struct["FolderId"] then M.AssertIdType(struct["FolderId"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(GetFolderPathRequest_keys[k], "GetFolderPathRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFolderPathRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param Fields [FieldNamesType] &lt;p&gt;A comma-separated list of values. Specify &quot;NAME&quot; to include the names of the parent folders.&lt;/p&gt;
-- @param FolderId [IdType] &lt;p&gt;The ID of the folder.&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;The maximum number of levels in the hierarchy to return.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;This value is not supported.&lt;/p&gt;
-- Required parameter: FolderId
function M.GetFolderPathRequest(AuthenticationToken, Fields, FolderId, Limit, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFolderPathRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["Fields"] = Fields,
		["FolderId"] = FolderId,
		["Limit"] = Limit,
		["Marker"] = Marker,
	}
	M.AssertGetFolderPathRequest(t)
	return t
end

local AddResourcePermissionsResponse_keys = { "ShareResults" = true, nil }

function M.AssertAddResourcePermissionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddResourcePermissionsResponse to be of type 'table'")
	if struct["ShareResults"] then M.AssertShareResultsList(struct["ShareResults"]) end
	for k,_ in pairs(struct) do
		assert(AddResourcePermissionsResponse_keys[k], "AddResourcePermissionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddResourcePermissionsResponse
--  
-- @param ShareResults [ShareResultsList] &lt;p&gt;The share results.&lt;/p&gt;
function M.AddResourcePermissionsResponse(ShareResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddResourcePermissionsResponse")
	local t = { 
		["ShareResults"] = ShareResults,
	}
	M.AssertAddResourcePermissionsResponse(t)
	return t
end

local GetFolderResponse_keys = { "CustomMetadata" = true, "Metadata" = true, nil }

function M.AssertGetFolderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFolderResponse to be of type 'table'")
	if struct["CustomMetadata"] then M.AssertCustomMetadataMap(struct["CustomMetadata"]) end
	if struct["Metadata"] then M.AssertFolderMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(GetFolderResponse_keys[k], "GetFolderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFolderResponse
--  
-- @param CustomMetadata [CustomMetadataMap] &lt;p&gt;The custom metadata on the folder.&lt;/p&gt;
-- @param Metadata [FolderMetadata] &lt;p&gt;The metadata of the folder.&lt;/p&gt;
function M.GetFolderResponse(CustomMetadata, Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFolderResponse")
	local t = { 
		["CustomMetadata"] = CustomMetadata,
		["Metadata"] = Metadata,
	}
	M.AssertGetFolderResponse(t)
	return t
end

local Subscription_keys = { "SubscriptionId" = true, "EndPoint" = true, "Protocol" = true, nil }

function M.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	if struct["SubscriptionId"] then M.AssertIdType(struct["SubscriptionId"]) end
	if struct["EndPoint"] then M.AssertSubscriptionEndPointType(struct["EndPoint"]) end
	if struct["Protocol"] then M.AssertSubscriptionProtocolType(struct["Protocol"]) end
	for k,_ in pairs(struct) do
		assert(Subscription_keys[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- &lt;p&gt;Describes a subscription.&lt;/p&gt;
-- @param SubscriptionId [IdType] &lt;p&gt;The ID of the subscription.&lt;/p&gt;
-- @param EndPoint [SubscriptionEndPointType] &lt;p&gt;The endpoint of the subscription.&lt;/p&gt;
-- @param Protocol [SubscriptionProtocolType] &lt;p&gt;The protocol of the subscription.&lt;/p&gt;
function M.Subscription(SubscriptionId, EndPoint, Protocol, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscription")
	local t = { 
		["SubscriptionId"] = SubscriptionId,
		["EndPoint"] = EndPoint,
		["Protocol"] = Protocol,
	}
	M.AssertSubscription(t)
	return t
end

local LimitExceededException_keys = { "Message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- &lt;p&gt;The maximum of 100,000 folders under the parent folder has been exceeded.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The maximum of 100,000 folders under the parent folder has been exceeded.&lt;/p&gt;
function M.LimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local ResourcePathComponent_keys = { "Id" = true, "Name" = true, nil }

function M.AssertResourcePathComponent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourcePathComponent to be of type 'table'")
	if struct["Id"] then M.AssertIdType(struct["Id"]) end
	if struct["Name"] then M.AssertResourceNameType(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ResourcePathComponent_keys[k], "ResourcePathComponent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourcePathComponent
-- &lt;p&gt;Describes the resource path.&lt;/p&gt;
-- @param Id [IdType] &lt;p&gt;The ID of the resource path.&lt;/p&gt;
-- @param Name [ResourceNameType] &lt;p&gt;The name of the resource path.&lt;/p&gt;
function M.ResourcePathComponent(Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourcePathComponent")
	local t = { 
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertResourcePathComponent(t)
	return t
end

local DeactivateUserRequest_keys = { "AuthenticationToken" = true, "UserId" = true, nil }

function M.AssertDeactivateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeactivateUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["UserId"] then M.AssertIdType(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(DeactivateUserRequest_keys[k], "DeactivateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeactivateUserRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param UserId [IdType] &lt;p&gt;The ID of the user.&lt;/p&gt;
-- Required parameter: UserId
function M.DeactivateUserRequest(AuthenticationToken, UserId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeactivateUserRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["UserId"] = UserId,
	}
	M.AssertDeactivateUserRequest(t)
	return t
end

local CreateFolderResponse_keys = { "Metadata" = true, nil }

function M.AssertCreateFolderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFolderResponse to be of type 'table'")
	if struct["Metadata"] then M.AssertFolderMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(CreateFolderResponse_keys[k], "CreateFolderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFolderResponse
--  
-- @param Metadata [FolderMetadata] &lt;p&gt;The metadata of the folder.&lt;/p&gt;
function M.CreateFolderResponse(Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFolderResponse")
	local t = { 
		["Metadata"] = Metadata,
	}
	M.AssertCreateFolderResponse(t)
	return t
end

local UnauthorizedOperationException_keys = { nil }

function M.AssertUnauthorizedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedOperationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnauthorizedOperationException_keys[k], "UnauthorizedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedOperationException
-- &lt;p&gt;The operation is not permitted.&lt;/p&gt;
function M.UnauthorizedOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedOperationException")
	local t = { 
	}
	M.AssertUnauthorizedOperationException(t)
	return t
end

local DescribeUsersRequest_keys = { "Sort" = true, "OrganizationId" = true, "Fields" = true, "UserIds" = true, "Marker" = true, "Limit" = true, "AuthenticationToken" = true, "Query" = true, "Include" = true, "Order" = true, nil }

function M.AssertDescribeUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUsersRequest to be of type 'table'")
	if struct["Sort"] then M.AssertUserSortType(struct["Sort"]) end
	if struct["OrganizationId"] then M.AssertIdType(struct["OrganizationId"]) end
	if struct["Fields"] then M.AssertFieldNamesType(struct["Fields"]) end
	if struct["UserIds"] then M.AssertUserIdsType(struct["UserIds"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Query"] then M.AssertSearchQueryType(struct["Query"]) end
	if struct["Include"] then M.AssertUserFilterType(struct["Include"]) end
	if struct["Order"] then M.AssertOrderType(struct["Order"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUsersRequest_keys[k], "DescribeUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUsersRequest
--  
-- @param Sort [UserSortType] &lt;p&gt;The sorting criteria.&lt;/p&gt;
-- @param OrganizationId [IdType] &lt;p&gt;The ID of the organization.&lt;/p&gt;
-- @param Fields [FieldNamesType] &lt;p&gt;A comma-separated list of values. Specify &quot;STORAGE_METADATA&quot; to include the user storage quota and utilization information.&lt;/p&gt;
-- @param UserIds [UserIdsType] &lt;p&gt;The IDs of the users.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;The maximum number of items to return.&lt;/p&gt;
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param Query [SearchQueryType] &lt;p&gt;A query to filter users by user name.&lt;/p&gt;
-- @param Include [UserFilterType] &lt;p&gt;The state of the users. Specify &quot;ALL&quot; to include inactive users.&lt;/p&gt;
-- @param Order [OrderType] &lt;p&gt;The order for the results.&lt;/p&gt;
function M.DescribeUsersRequest(Sort, OrganizationId, Fields, UserIds, Marker, Limit, AuthenticationToken, Query, Include, Order, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUsersRequest")
	local t = { 
		["Sort"] = Sort,
		["OrganizationId"] = OrganizationId,
		["Fields"] = Fields,
		["UserIds"] = UserIds,
		["Marker"] = Marker,
		["Limit"] = Limit,
		["AuthenticationToken"] = AuthenticationToken,
		["Query"] = Query,
		["Include"] = Include,
		["Order"] = Order,
	}
	M.AssertDescribeUsersRequest(t)
	return t
end

local RemoveResourcePermissionRequest_keys = { "AuthenticationToken" = true, "ResourceId" = true, "PrincipalType" = true, "PrincipalId" = true, nil }

function M.AssertRemoveResourcePermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveResourcePermissionRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["PrincipalId"], "Expected key PrincipalId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then M.AssertResourceIdType(struct["ResourceId"]) end
	if struct["PrincipalType"] then M.AssertPrincipalType(struct["PrincipalType"]) end
	if struct["PrincipalId"] then M.AssertIdType(struct["PrincipalId"]) end
	for k,_ in pairs(struct) do
		assert(RemoveResourcePermissionRequest_keys[k], "RemoveResourcePermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveResourcePermissionRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param ResourceId [ResourceIdType] &lt;p&gt;The ID of the resource.&lt;/p&gt;
-- @param PrincipalType [PrincipalType] &lt;p&gt;The principal type of the resource.&lt;/p&gt;
-- @param PrincipalId [IdType] &lt;p&gt;The principal ID of the resource.&lt;/p&gt;
-- Required parameter: ResourceId
-- Required parameter: PrincipalId
function M.RemoveResourcePermissionRequest(AuthenticationToken, ResourceId, PrincipalType, PrincipalId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveResourcePermissionRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["ResourceId"] = ResourceId,
		["PrincipalType"] = PrincipalType,
		["PrincipalId"] = PrincipalId,
	}
	M.AssertRemoveResourcePermissionRequest(t)
	return t
end

local ResourcePath_keys = { "Components" = true, nil }

function M.AssertResourcePath(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourcePath to be of type 'table'")
	if struct["Components"] then M.AssertResourcePathComponentList(struct["Components"]) end
	for k,_ in pairs(struct) do
		assert(ResourcePath_keys[k], "ResourcePath contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourcePath
-- &lt;p&gt;Describes the path information of a resource.&lt;/p&gt;
-- @param Components [ResourcePathComponentList] &lt;p&gt;The components of the resource path.&lt;/p&gt;
function M.ResourcePath(Components, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourcePath")
	local t = { 
		["Components"] = Components,
	}
	M.AssertResourcePath(t)
	return t
end

local IllegalUserStateException_keys = { "Message" = true, nil }

function M.AssertIllegalUserStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IllegalUserStateException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(IllegalUserStateException_keys[k], "IllegalUserStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IllegalUserStateException
-- &lt;p&gt;The user is undergoing transfer of ownership.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The user is undergoing transfer of ownership.&lt;/p&gt;
function M.IllegalUserStateException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IllegalUserStateException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertIllegalUserStateException(t)
	return t
end

local DescribeFolderContentsRequest_keys = { "Sort" = true, "Include" = true, "Marker" = true, "Limit" = true, "AuthenticationToken" = true, "FolderId" = true, "Type" = true, "Order" = true, nil }

function M.AssertDescribeFolderContentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFolderContentsRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["Sort"] then M.AssertResourceSortType(struct["Sort"]) end
	if struct["Include"] then M.AssertFieldNamesType(struct["Include"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["FolderId"] then M.AssertResourceIdType(struct["FolderId"]) end
	if struct["Type"] then M.AssertFolderContentType(struct["Type"]) end
	if struct["Order"] then M.AssertOrderType(struct["Order"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFolderContentsRequest_keys[k], "DescribeFolderContentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFolderContentsRequest
--  
-- @param Sort [ResourceSortType] &lt;p&gt;The sorting criteria.&lt;/p&gt;
-- @param Include [FieldNamesType] &lt;p&gt;The contents to include. Specify &quot;INITIALIZED&quot; to include initialized documents.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;The marker for the next set of results. This marker was received from a previous call.&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;The maximum number of items to return with this call.&lt;/p&gt;
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param FolderId [ResourceIdType] &lt;p&gt;The ID of the folder.&lt;/p&gt;
-- @param Type [FolderContentType] &lt;p&gt;The type of items.&lt;/p&gt;
-- @param Order [OrderType] &lt;p&gt;The order for the contents of the folder.&lt;/p&gt;
-- Required parameter: FolderId
function M.DescribeFolderContentsRequest(Sort, Include, Marker, Limit, AuthenticationToken, FolderId, Type, Order, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFolderContentsRequest")
	local t = { 
		["Sort"] = Sort,
		["Include"] = Include,
		["Marker"] = Marker,
		["Limit"] = Limit,
		["AuthenticationToken"] = AuthenticationToken,
		["FolderId"] = FolderId,
		["Type"] = Type,
		["Order"] = Order,
	}
	M.AssertDescribeFolderContentsRequest(t)
	return t
end

local ResourceAlreadyCheckedOutException_keys = { "Message" = true, nil }

function M.AssertResourceAlreadyCheckedOutException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyCheckedOutException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceAlreadyCheckedOutException_keys[k], "ResourceAlreadyCheckedOutException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyCheckedOutException
-- &lt;p&gt;The resource is already checked out.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The resource is already checked out.&lt;/p&gt;
function M.ResourceAlreadyCheckedOutException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyCheckedOutException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertResourceAlreadyCheckedOutException(t)
	return t
end

local GetDocumentPathResponse_keys = { "Path" = true, nil }

function M.AssertGetDocumentPathResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentPathResponse to be of type 'table'")
	if struct["Path"] then M.AssertResourcePath(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentPathResponse_keys[k], "GetDocumentPathResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentPathResponse
--  
-- @param Path [ResourcePath] &lt;p&gt;The path information.&lt;/p&gt;
function M.GetDocumentPathResponse(Path, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentPathResponse")
	local t = { 
		["Path"] = Path,
	}
	M.AssertGetDocumentPathResponse(t)
	return t
end

local UpdateUserRequest_keys = { "TimeZoneId" = true, "Surname" = true, "Locale" = true, "UserId" = true, "StorageRule" = true, "AuthenticationToken" = true, "GivenName" = true, "Type" = true, nil }

function M.AssertUpdateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["TimeZoneId"] then M.AssertTimeZoneIdType(struct["TimeZoneId"]) end
	if struct["Surname"] then M.AssertUserAttributeValueType(struct["Surname"]) end
	if struct["Locale"] then M.AssertLocaleType(struct["Locale"]) end
	if struct["UserId"] then M.AssertIdType(struct["UserId"]) end
	if struct["StorageRule"] then M.AssertStorageRuleType(struct["StorageRule"]) end
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["GivenName"] then M.AssertUserAttributeValueType(struct["GivenName"]) end
	if struct["Type"] then M.AssertUserType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserRequest_keys[k], "UpdateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserRequest
--  
-- @param TimeZoneId [TimeZoneIdType] &lt;p&gt;The time zone ID of the user.&lt;/p&gt;
-- @param Surname [UserAttributeValueType] &lt;p&gt;The surname of the user.&lt;/p&gt;
-- @param Locale [LocaleType] &lt;p&gt;The locale of the user.&lt;/p&gt;
-- @param UserId [IdType] &lt;p&gt;The ID of the user.&lt;/p&gt;
-- @param StorageRule [StorageRuleType] &lt;p&gt;The amount of storage for the user.&lt;/p&gt;
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param GivenName [UserAttributeValueType] &lt;p&gt;The given name of the user.&lt;/p&gt;
-- @param Type [UserType] &lt;p&gt;The type of the user.&lt;/p&gt;
-- Required parameter: UserId
function M.UpdateUserRequest(TimeZoneId, Surname, Locale, UserId, StorageRule, AuthenticationToken, GivenName, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserRequest")
	local t = { 
		["TimeZoneId"] = TimeZoneId,
		["Surname"] = Surname,
		["Locale"] = Locale,
		["UserId"] = UserId,
		["StorageRule"] = StorageRule,
		["AuthenticationToken"] = AuthenticationToken,
		["GivenName"] = GivenName,
		["Type"] = Type,
	}
	M.AssertUpdateUserRequest(t)
	return t
end

local AddResourcePermissionsRequest_keys = { "AuthenticationToken" = true, "ResourceId" = true, "Principals" = true, nil }

function M.AssertAddResourcePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddResourcePermissionsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Principals"], "Expected key Principals to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then M.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Principals"] then M.AssertSharePrincipalList(struct["Principals"]) end
	for k,_ in pairs(struct) do
		assert(AddResourcePermissionsRequest_keys[k], "AddResourcePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddResourcePermissionsRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param ResourceId [ResourceIdType] &lt;p&gt;The ID of the resource.&lt;/p&gt;
-- @param Principals [SharePrincipalList] &lt;p&gt;The users, groups, or organization being granted permission.&lt;/p&gt;
-- Required parameter: ResourceId
-- Required parameter: Principals
function M.AddResourcePermissionsRequest(AuthenticationToken, ResourceId, Principals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddResourcePermissionsRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["ResourceId"] = ResourceId,
		["Principals"] = Principals,
	}
	M.AssertAddResourcePermissionsRequest(t)
	return t
end

local Participants_keys = { "Users" = true, "Groups" = true, nil }

function M.AssertParticipants(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Participants to be of type 'table'")
	if struct["Users"] then M.AssertUserMetadataList(struct["Users"]) end
	if struct["Groups"] then M.AssertGroupMetadataList(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(Participants_keys[k], "Participants contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Participants
-- &lt;p&gt;Describes the users and/or user groups.&lt;/p&gt;
-- @param Users [UserMetadataList] &lt;p&gt;The list of users.&lt;/p&gt;
-- @param Groups [GroupMetadataList] &lt;p&gt;The list of user groups.&lt;/p&gt;
function M.Participants(Users, Groups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Participants")
	local t = { 
		["Users"] = Users,
		["Groups"] = Groups,
	}
	M.AssertParticipants(t)
	return t
end

local DescribeActivitiesResponse_keys = { "UserActivities" = true, "Marker" = true, nil }

function M.AssertDescribeActivitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivitiesResponse to be of type 'table'")
	if struct["UserActivities"] then M.AssertUserActivities(struct["UserActivities"]) end
	if struct["Marker"] then M.AssertMarkerType(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(DescribeActivitiesResponse_keys[k], "DescribeActivitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivitiesResponse
--  
-- @param UserActivities [UserActivities] &lt;p&gt;The list of activities for the specified user and time period.&lt;/p&gt;
-- @param Marker [MarkerType] &lt;p&gt;The marker for the next set of results.&lt;/p&gt;
function M.DescribeActivitiesResponse(UserActivities, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivitiesResponse")
	local t = { 
		["UserActivities"] = UserActivities,
		["Marker"] = Marker,
	}
	M.AssertDescribeActivitiesResponse(t)
	return t
end

local UserStorageMetadata_keys = { "StorageRule" = true, "StorageUtilizedInBytes" = true, nil }

function M.AssertUserStorageMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserStorageMetadata to be of type 'table'")
	if struct["StorageRule"] then M.AssertStorageRuleType(struct["StorageRule"]) end
	if struct["StorageUtilizedInBytes"] then M.AssertSizeType(struct["StorageUtilizedInBytes"]) end
	for k,_ in pairs(struct) do
		assert(UserStorageMetadata_keys[k], "UserStorageMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserStorageMetadata
-- &lt;p&gt;Describes the storage for a user.&lt;/p&gt;
-- @param StorageRule [StorageRuleType] &lt;p&gt;The storage for a user.&lt;/p&gt;
-- @param StorageUtilizedInBytes [SizeType] &lt;p&gt;The amount of storage utilized, in bytes.&lt;/p&gt;
function M.UserStorageMetadata(StorageRule, StorageUtilizedInBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserStorageMetadata")
	local t = { 
		["StorageRule"] = StorageRule,
		["StorageUtilizedInBytes"] = StorageUtilizedInBytes,
	}
	M.AssertUserStorageMetadata(t)
	return t
end

local FolderMetadata_keys = { "Name" = true, "LatestVersionSize" = true, "Labels" = true, "ModifiedTimestamp" = true, "Id" = true, "CreatedTimestamp" = true, "ResourceState" = true, "CreatorId" = true, "Signature" = true, "ParentFolderId" = true, "Size" = true, nil }

function M.AssertFolderMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FolderMetadata to be of type 'table'")
	if struct["Name"] then M.AssertResourceNameType(struct["Name"]) end
	if struct["LatestVersionSize"] then M.AssertSizeType(struct["LatestVersionSize"]) end
	if struct["Labels"] then M.AssertLabels(struct["Labels"]) end
	if struct["ModifiedTimestamp"] then M.AssertTimestampType(struct["ModifiedTimestamp"]) end
	if struct["Id"] then M.AssertResourceIdType(struct["Id"]) end
	if struct["CreatedTimestamp"] then M.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["ResourceState"] then M.AssertResourceStateType(struct["ResourceState"]) end
	if struct["CreatorId"] then M.AssertIdType(struct["CreatorId"]) end
	if struct["Signature"] then M.AssertHashType(struct["Signature"]) end
	if struct["ParentFolderId"] then M.AssertResourceIdType(struct["ParentFolderId"]) end
	if struct["Size"] then M.AssertSizeType(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(FolderMetadata_keys[k], "FolderMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FolderMetadata
-- &lt;p&gt;Describes a folder.&lt;/p&gt;
-- @param Name [ResourceNameType] &lt;p&gt;The name of the folder.&lt;/p&gt;
-- @param LatestVersionSize [SizeType] &lt;p&gt;The size of the latest version of the folder metadata.&lt;/p&gt;
-- @param Labels [Labels] &lt;p&gt;List of labels on the folder.&lt;/p&gt;
-- @param ModifiedTimestamp [TimestampType] &lt;p&gt;The time when the folder was updated.&lt;/p&gt;
-- @param Id [ResourceIdType] &lt;p&gt;The ID of the folder.&lt;/p&gt;
-- @param CreatedTimestamp [TimestampType] &lt;p&gt;The time when the folder was created.&lt;/p&gt;
-- @param ResourceState [ResourceStateType] &lt;p&gt;The resource state of the folder.&lt;/p&gt;
-- @param CreatorId [IdType] &lt;p&gt;The ID of the creator.&lt;/p&gt;
-- @param Signature [HashType] &lt;p&gt;The unique identifier created from the subfolders and documents of the folder.&lt;/p&gt;
-- @param ParentFolderId [ResourceIdType] &lt;p&gt;The ID of the parent folder.&lt;/p&gt;
-- @param Size [SizeType] &lt;p&gt;The size of the folder metadata.&lt;/p&gt;
function M.FolderMetadata(Name, LatestVersionSize, Labels, ModifiedTimestamp, Id, CreatedTimestamp, ResourceState, CreatorId, Signature, ParentFolderId, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FolderMetadata")
	local t = { 
		["Name"] = Name,
		["LatestVersionSize"] = LatestVersionSize,
		["Labels"] = Labels,
		["ModifiedTimestamp"] = ModifiedTimestamp,
		["Id"] = Id,
		["CreatedTimestamp"] = CreatedTimestamp,
		["ResourceState"] = ResourceState,
		["CreatorId"] = CreatorId,
		["Signature"] = Signature,
		["ParentFolderId"] = ParentFolderId,
		["Size"] = Size,
	}
	M.AssertFolderMetadata(t)
	return t
end

local GroupMetadata_keys = { "Id" = true, "Name" = true, nil }

function M.AssertGroupMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupMetadata to be of type 'table'")
	if struct["Id"] then M.AssertIdType(struct["Id"]) end
	if struct["Name"] then M.AssertGroupNameType(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(GroupMetadata_keys[k], "GroupMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupMetadata
-- &lt;p&gt;Describes the metadata of a user group.&lt;/p&gt;
-- @param Id [IdType] &lt;p&gt;The ID of the user group.&lt;/p&gt;
-- @param Name [GroupNameType] &lt;p&gt;The name of the group.&lt;/p&gt;
function M.GroupMetadata(Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupMetadata")
	local t = { 
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertGroupMetadata(t)
	return t
end

local UploadMetadata_keys = { "SignedHeaders" = true, "UploadUrl" = true, nil }

function M.AssertUploadMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadMetadata to be of type 'table'")
	if struct["SignedHeaders"] then M.AssertSignedHeaderMap(struct["SignedHeaders"]) end
	if struct["UploadUrl"] then M.AssertUrlType(struct["UploadUrl"]) end
	for k,_ in pairs(struct) do
		assert(UploadMetadata_keys[k], "UploadMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadMetadata
-- &lt;p&gt;Describes the upload.&lt;/p&gt;
-- @param SignedHeaders [SignedHeaderMap] &lt;p&gt;The signed headers.&lt;/p&gt;
-- @param UploadUrl [UrlType] &lt;p&gt;The URL of the upload.&lt;/p&gt;
function M.UploadMetadata(SignedHeaders, UploadUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadMetadata")
	local t = { 
		["SignedHeaders"] = SignedHeaders,
		["UploadUrl"] = UploadUrl,
	}
	M.AssertUploadMetadata(t)
	return t
end

local CustomMetadataLimitExceededException_keys = { "Message" = true, nil }

function M.AssertCustomMetadataLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomMetadataLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(CustomMetadataLimitExceededException_keys[k], "CustomMetadataLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomMetadataLimitExceededException
-- &lt;p&gt;The limit has been reached on the number of custom properties for the specified resource.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The limit has been reached on the number of custom properties for the specified resource.&lt;/p&gt;
function M.CustomMetadataLimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomMetadataLimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertCustomMetadataLimitExceededException(t)
	return t
end

local User_keys = { "Username" = true, "Status" = true, "Surname" = true, "OrganizationId" = true, "Storage" = true, "RecycleBinFolderId" = true, "TimeZoneId" = true, "ModifiedTimestamp" = true, "CreatedTimestamp" = true, "Locale" = true, "EmailAddress" = true, "RootFolderId" = true, "GivenName" = true, "Type" = true, "Id" = true, nil }

function M.AssertUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected User to be of type 'table'")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["Status"] then M.AssertUserStatusType(struct["Status"]) end
	if struct["Surname"] then M.AssertUserAttributeValueType(struct["Surname"]) end
	if struct["OrganizationId"] then M.AssertIdType(struct["OrganizationId"]) end
	if struct["Storage"] then M.AssertUserStorageMetadata(struct["Storage"]) end
	if struct["RecycleBinFolderId"] then M.AssertResourceIdType(struct["RecycleBinFolderId"]) end
	if struct["TimeZoneId"] then M.AssertTimeZoneIdType(struct["TimeZoneId"]) end
	if struct["ModifiedTimestamp"] then M.AssertTimestampType(struct["ModifiedTimestamp"]) end
	if struct["CreatedTimestamp"] then M.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["Locale"] then M.AssertLocaleType(struct["Locale"]) end
	if struct["EmailAddress"] then M.AssertEmailAddressType(struct["EmailAddress"]) end
	if struct["RootFolderId"] then M.AssertResourceIdType(struct["RootFolderId"]) end
	if struct["GivenName"] then M.AssertUserAttributeValueType(struct["GivenName"]) end
	if struct["Type"] then M.AssertUserType(struct["Type"]) end
	if struct["Id"] then M.AssertIdType(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(User_keys[k], "User contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type User
-- &lt;p&gt;Describes a user.&lt;/p&gt;
-- @param Username [UsernameType] &lt;p&gt;The login name of the user.&lt;/p&gt;
-- @param Status [UserStatusType] &lt;p&gt;The status of the user.&lt;/p&gt;
-- @param Surname [UserAttributeValueType] &lt;p&gt;The surname of the user.&lt;/p&gt;
-- @param OrganizationId [IdType] &lt;p&gt;The ID of the organization.&lt;/p&gt;
-- @param Storage [UserStorageMetadata] &lt;p&gt;The storage for the user.&lt;/p&gt;
-- @param RecycleBinFolderId [ResourceIdType] &lt;p&gt;The ID of the recycle bin folder.&lt;/p&gt;
-- @param TimeZoneId [TimeZoneIdType] &lt;p&gt;The time zone ID of the user.&lt;/p&gt;
-- @param ModifiedTimestamp [TimestampType] &lt;p&gt;The time when the user was modified.&lt;/p&gt;
-- @param CreatedTimestamp [TimestampType] &lt;p&gt;The time when the user was created.&lt;/p&gt;
-- @param Locale [LocaleType] &lt;p&gt;The locale of the user.&lt;/p&gt;
-- @param EmailAddress [EmailAddressType] &lt;p&gt;The email address of the user.&lt;/p&gt;
-- @param RootFolderId [ResourceIdType] &lt;p&gt;The ID of the root folder.&lt;/p&gt;
-- @param GivenName [UserAttributeValueType] &lt;p&gt;The given name of the user.&lt;/p&gt;
-- @param Type [UserType] &lt;p&gt;The type of user.&lt;/p&gt;
-- @param Id [IdType] &lt;p&gt;The ID of the user.&lt;/p&gt;
function M.User(Username, Status, Surname, OrganizationId, Storage, RecycleBinFolderId, TimeZoneId, ModifiedTimestamp, CreatedTimestamp, Locale, EmailAddress, RootFolderId, GivenName, Type, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating User")
	local t = { 
		["Username"] = Username,
		["Status"] = Status,
		["Surname"] = Surname,
		["OrganizationId"] = OrganizationId,
		["Storage"] = Storage,
		["RecycleBinFolderId"] = RecycleBinFolderId,
		["TimeZoneId"] = TimeZoneId,
		["ModifiedTimestamp"] = ModifiedTimestamp,
		["CreatedTimestamp"] = CreatedTimestamp,
		["Locale"] = Locale,
		["EmailAddress"] = EmailAddress,
		["RootFolderId"] = RootFolderId,
		["GivenName"] = GivenName,
		["Type"] = Type,
		["Id"] = Id,
	}
	M.AssertUser(t)
	return t
end

local InvalidOperationException_keys = { "Message" = true, nil }

function M.AssertInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOperationException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidOperationException_keys[k], "InvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOperationException
-- &lt;p&gt;The operation is invalid.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The operation is invalid.&lt;/p&gt;
function M.InvalidOperationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOperationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidOperationException(t)
	return t
end

local CreateCustomMetadataResponse_keys = { nil }

function M.AssertCreateCustomMetadataResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCustomMetadataResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateCustomMetadataResponse_keys[k], "CreateCustomMetadataResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCustomMetadataResponse
--  
function M.CreateCustomMetadataResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCustomMetadataResponse")
	local t = { 
	}
	M.AssertCreateCustomMetadataResponse(t)
	return t
end

local CommentMetadata_keys = { "Contributor" = true, "CommentId" = true, "CreatedTimestamp" = true, "RecipientId" = true, "CommentStatus" = true, nil }

function M.AssertCommentMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommentMetadata to be of type 'table'")
	if struct["Contributor"] then M.AssertUser(struct["Contributor"]) end
	if struct["CommentId"] then M.AssertCommentIdType(struct["CommentId"]) end
	if struct["CreatedTimestamp"] then M.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["RecipientId"] then M.AssertIdType(struct["RecipientId"]) end
	if struct["CommentStatus"] then M.AssertCommentStatusType(struct["CommentStatus"]) end
	for k,_ in pairs(struct) do
		assert(CommentMetadata_keys[k], "CommentMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommentMetadata
-- &lt;p&gt;Describes the metadata of a comment.&lt;/p&gt;
-- @param Contributor [User] &lt;p&gt;The user who made the comment.&lt;/p&gt;
-- @param CommentId [CommentIdType] &lt;p&gt;The ID of the comment.&lt;/p&gt;
-- @param CreatedTimestamp [TimestampType] &lt;p&gt;Describes the metadata of a comment.&lt;/p&gt;
-- @param RecipientId [IdType] &lt;p&gt;The ID of the user being replied to.&lt;/p&gt;
-- @param CommentStatus [CommentStatusType] &lt;p&gt;Describes the metadata of a comment.&lt;/p&gt;
function M.CommentMetadata(Contributor, CommentId, CreatedTimestamp, RecipientId, CommentStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CommentMetadata")
	local t = { 
		["Contributor"] = Contributor,
		["CommentId"] = CommentId,
		["CreatedTimestamp"] = CreatedTimestamp,
		["RecipientId"] = RecipientId,
		["CommentStatus"] = CommentStatus,
	}
	M.AssertCommentMetadata(t)
	return t
end

local DeleteLabelsResponse_keys = { nil }

function M.AssertDeleteLabelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLabelsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteLabelsResponse_keys[k], "DeleteLabelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLabelsResponse
--  
function M.DeleteLabelsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLabelsResponse")
	local t = { 
	}
	M.AssertDeleteLabelsResponse(t)
	return t
end

local DeleteCommentRequest_keys = { "AuthenticationToken" = true, "CommentId" = true, "VersionId" = true, "DocumentId" = true, nil }

function M.AssertDeleteCommentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCommentRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	assert(struct["CommentId"], "Expected key CommentId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["CommentId"] then M.AssertCommentIdType(struct["CommentId"]) end
	if struct["VersionId"] then M.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["DocumentId"] then M.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCommentRequest_keys[k], "DeleteCommentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCommentRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param CommentId [CommentIdType] &lt;p&gt;The ID of the comment.&lt;/p&gt;
-- @param VersionId [DocumentVersionIdType] &lt;p&gt;The ID of the document version.&lt;/p&gt;
-- @param DocumentId [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- Required parameter: DocumentId
-- Required parameter: VersionId
-- Required parameter: CommentId
function M.DeleteCommentRequest(AuthenticationToken, CommentId, VersionId, DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCommentRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["CommentId"] = CommentId,
		["VersionId"] = VersionId,
		["DocumentId"] = DocumentId,
	}
	M.AssertDeleteCommentRequest(t)
	return t
end

local DeleteDocumentRequest_keys = { "AuthenticationToken" = true, "DocumentId" = true, nil }

function M.AssertDeleteDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDocumentRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["DocumentId"] then M.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDocumentRequest_keys[k], "DeleteDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDocumentRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param DocumentId [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- Required parameter: DocumentId
function M.DeleteDocumentRequest(AuthenticationToken, DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDocumentRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["DocumentId"] = DocumentId,
	}
	M.AssertDeleteDocumentRequest(t)
	return t
end

local DescribeCommentsRequest_keys = { "AuthenticationToken" = true, "Marker" = true, "VersionId" = true, "Limit" = true, "DocumentId" = true, nil }

function M.AssertDescribeCommentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCommentsRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Marker"] then M.AssertMarkerType(struct["Marker"]) end
	if struct["VersionId"] then M.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	if struct["DocumentId"] then M.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCommentsRequest_keys[k], "DescribeCommentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCommentsRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param Marker [MarkerType] &lt;p&gt;The marker for the next set of results. This marker was received from a previous call.&lt;/p&gt;
-- @param VersionId [DocumentVersionIdType] &lt;p&gt;The ID of the document version.&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;The maximum number of items to return.&lt;/p&gt;
-- @param DocumentId [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- Required parameter: DocumentId
-- Required parameter: VersionId
function M.DescribeCommentsRequest(AuthenticationToken, Marker, VersionId, Limit, DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommentsRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["Marker"] = Marker,
		["VersionId"] = VersionId,
		["Limit"] = Limit,
		["DocumentId"] = DocumentId,
	}
	M.AssertDescribeCommentsRequest(t)
	return t
end

local DescribeUsersResponse_keys = { "Marker" = true, "TotalNumberOfUsers" = true, "Users" = true, nil }

function M.AssertDescribeUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUsersResponse to be of type 'table'")
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["TotalNumberOfUsers"] then M.AssertSizeType(struct["TotalNumberOfUsers"]) end
	if struct["Users"] then M.AssertOrganizationUserList(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(DescribeUsersResponse_keys[k], "DescribeUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUsersResponse
--  
-- @param Marker [PageMarkerType] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
-- @param TotalNumberOfUsers [SizeType] &lt;p&gt;The total number of users included in the results.&lt;/p&gt;
-- @param Users [OrganizationUserList] &lt;p&gt;The users.&lt;/p&gt;
function M.DescribeUsersResponse(Marker, TotalNumberOfUsers, Users, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUsersResponse")
	local t = { 
		["Marker"] = Marker,
		["TotalNumberOfUsers"] = TotalNumberOfUsers,
		["Users"] = Users,
	}
	M.AssertDescribeUsersResponse(t)
	return t
end

local CreateUserRequest_keys = { "Username" = true, "TimeZoneId" = true, "Password" = true, "Surname" = true, "OrganizationId" = true, "EmailAddress" = true, "StorageRule" = true, "AuthenticationToken" = true, "GivenName" = true, nil }

function M.AssertCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserRequest to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["GivenName"], "Expected key GivenName to exist in table")
	assert(struct["Surname"], "Expected key Surname to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["Username"] then M.AssertUsernameType(struct["Username"]) end
	if struct["TimeZoneId"] then M.AssertTimeZoneIdType(struct["TimeZoneId"]) end
	if struct["Password"] then M.AssertPasswordType(struct["Password"]) end
	if struct["Surname"] then M.AssertUserAttributeValueType(struct["Surname"]) end
	if struct["OrganizationId"] then M.AssertIdType(struct["OrganizationId"]) end
	if struct["EmailAddress"] then M.AssertEmailAddressType(struct["EmailAddress"]) end
	if struct["StorageRule"] then M.AssertStorageRuleType(struct["StorageRule"]) end
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["GivenName"] then M.AssertUserAttributeValueType(struct["GivenName"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserRequest_keys[k], "CreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserRequest
--  
-- @param Username [UsernameType] &lt;p&gt;The login name of the user.&lt;/p&gt;
-- @param TimeZoneId [TimeZoneIdType] &lt;p&gt;The time zone ID of the user.&lt;/p&gt;
-- @param Password [PasswordType] &lt;p&gt;The password of the user.&lt;/p&gt;
-- @param Surname [UserAttributeValueType] &lt;p&gt;The surname of the user.&lt;/p&gt;
-- @param OrganizationId [IdType] &lt;p&gt;The ID of the organization.&lt;/p&gt;
-- @param EmailAddress [EmailAddressType] &lt;p&gt;The email address of the user.&lt;/p&gt;
-- @param StorageRule [StorageRuleType] &lt;p&gt;The amount of storage for the user.&lt;/p&gt;
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param GivenName [UserAttributeValueType] &lt;p&gt;The given name of the user.&lt;/p&gt;
-- Required parameter: Username
-- Required parameter: GivenName
-- Required parameter: Surname
-- Required parameter: Password
function M.CreateUserRequest(Username, TimeZoneId, Password, Surname, OrganizationId, EmailAddress, StorageRule, AuthenticationToken, GivenName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserRequest")
	local t = { 
		["Username"] = Username,
		["TimeZoneId"] = TimeZoneId,
		["Password"] = Password,
		["Surname"] = Surname,
		["OrganizationId"] = OrganizationId,
		["EmailAddress"] = EmailAddress,
		["StorageRule"] = StorageRule,
		["AuthenticationToken"] = AuthenticationToken,
		["GivenName"] = GivenName,
	}
	M.AssertCreateUserRequest(t)
	return t
end

local CreateCommentResponse_keys = { "Comment" = true, nil }

function M.AssertCreateCommentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCommentResponse to be of type 'table'")
	if struct["Comment"] then M.AssertComment(struct["Comment"]) end
	for k,_ in pairs(struct) do
		assert(CreateCommentResponse_keys[k], "CreateCommentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCommentResponse
--  
-- @param Comment [Comment] &lt;p&gt;The comment that has been created.&lt;/p&gt;
function M.CreateCommentResponse(Comment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCommentResponse")
	local t = { 
		["Comment"] = Comment,
	}
	M.AssertCreateCommentResponse(t)
	return t
end

local CreateCustomMetadataRequest_keys = { "AuthenticationToken" = true, "ResourceId" = true, "VersionId" = true, "CustomMetadata" = true, nil }

function M.AssertCreateCustomMetadataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCustomMetadataRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["CustomMetadata"], "Expected key CustomMetadata to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then M.AssertResourceIdType(struct["ResourceId"]) end
	if struct["VersionId"] then M.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["CustomMetadata"] then M.AssertCustomMetadataMap(struct["CustomMetadata"]) end
	for k,_ in pairs(struct) do
		assert(CreateCustomMetadataRequest_keys[k], "CreateCustomMetadataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCustomMetadataRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param ResourceId [ResourceIdType] &lt;p&gt;The ID of the resource.&lt;/p&gt;
-- @param VersionId [DocumentVersionIdType] &lt;p&gt;The ID of the version, if the custom metadata is being added to a document version.&lt;/p&gt;
-- @param CustomMetadata [CustomMetadataMap] &lt;p&gt;Custom metadata in the form of name-value pairs.&lt;/p&gt;
-- Required parameter: ResourceId
-- Required parameter: CustomMetadata
function M.CreateCustomMetadataRequest(AuthenticationToken, ResourceId, VersionId, CustomMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCustomMetadataRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["ResourceId"] = ResourceId,
		["VersionId"] = VersionId,
		["CustomMetadata"] = CustomMetadata,
	}
	M.AssertCreateCustomMetadataRequest(t)
	return t
end

local GetFolderRequest_keys = { "AuthenticationToken" = true, "IncludeCustomMetadata" = true, "FolderId" = true, nil }

function M.AssertGetFolderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFolderRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["IncludeCustomMetadata"] then M.AssertBooleanType(struct["IncludeCustomMetadata"]) end
	if struct["FolderId"] then M.AssertResourceIdType(struct["FolderId"]) end
	for k,_ in pairs(struct) do
		assert(GetFolderRequest_keys[k], "GetFolderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFolderRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param IncludeCustomMetadata [BooleanType] &lt;p&gt;Set to TRUE to include custom metadata in the response.&lt;/p&gt;
-- @param FolderId [ResourceIdType] &lt;p&gt;The ID of the folder.&lt;/p&gt;
-- Required parameter: FolderId
function M.GetFolderRequest(AuthenticationToken, IncludeCustomMetadata, FolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFolderRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["IncludeCustomMetadata"] = IncludeCustomMetadata,
		["FolderId"] = FolderId,
	}
	M.AssertGetFolderRequest(t)
	return t
end

local CreateNotificationSubscriptionResponse_keys = { "Subscription" = true, nil }

function M.AssertCreateNotificationSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotificationSubscriptionResponse to be of type 'table'")
	if struct["Subscription"] then M.AssertSubscription(struct["Subscription"]) end
	for k,_ in pairs(struct) do
		assert(CreateNotificationSubscriptionResponse_keys[k], "CreateNotificationSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotificationSubscriptionResponse
--  
-- @param Subscription [Subscription] &lt;p&gt;The subscription.&lt;/p&gt;
function M.CreateNotificationSubscriptionResponse(Subscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNotificationSubscriptionResponse")
	local t = { 
		["Subscription"] = Subscription,
	}
	M.AssertCreateNotificationSubscriptionResponse(t)
	return t
end

local DescribeNotificationSubscriptionsRequest_keys = { "OrganizationId" = true, "Marker" = true, "Limit" = true, nil }

function M.AssertDescribeNotificationSubscriptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationSubscriptionsRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	if struct["OrganizationId"] then M.AssertIdType(struct["OrganizationId"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeNotificationSubscriptionsRequest_keys[k], "DescribeNotificationSubscriptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationSubscriptionsRequest
--  
-- @param OrganizationId [IdType] &lt;p&gt;The ID of the organization.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;The maximum number of items to return with this call.&lt;/p&gt;
-- Required parameter: OrganizationId
function M.DescribeNotificationSubscriptionsRequest(OrganizationId, Marker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNotificationSubscriptionsRequest")
	local t = { 
		["OrganizationId"] = OrganizationId,
		["Marker"] = Marker,
		["Limit"] = Limit,
	}
	M.AssertDescribeNotificationSubscriptionsRequest(t)
	return t
end

local StorageLimitExceededException_keys = { "Message" = true, nil }

function M.AssertStorageLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(StorageLimitExceededException_keys[k], "StorageLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageLimitExceededException
-- &lt;p&gt;The storage limit has been exceeded.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The storage limit has been exceeded.&lt;/p&gt;
function M.StorageLimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageLimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertStorageLimitExceededException(t)
	return t
end

local TooManySubscriptionsException_keys = { "Message" = true, nil }

function M.AssertTooManySubscriptionsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManySubscriptionsException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManySubscriptionsException_keys[k], "TooManySubscriptionsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManySubscriptionsException
-- &lt;p&gt;You've reached the limit on the number of subscriptions for the WorkDocs instance.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;You've reached the limit on the number of subscriptions for the WorkDocs instance.&lt;/p&gt;
function M.TooManySubscriptionsException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManySubscriptionsException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManySubscriptionsException(t)
	return t
end

local UpdateDocumentVersionRequest_keys = { "AuthenticationToken" = true, "VersionId" = true, "DocumentId" = true, "VersionStatus" = true, nil }

function M.AssertUpdateDocumentVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentVersionRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["VersionId"] then M.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["DocumentId"] then M.AssertResourceIdType(struct["DocumentId"]) end
	if struct["VersionStatus"] then M.AssertDocumentVersionStatus(struct["VersionStatus"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDocumentVersionRequest_keys[k], "UpdateDocumentVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentVersionRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param VersionId [DocumentVersionIdType] &lt;p&gt;The version ID of the document.&lt;/p&gt;
-- @param DocumentId [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- @param VersionStatus [DocumentVersionStatus] &lt;p&gt;The status of the version.&lt;/p&gt;
-- Required parameter: DocumentId
-- Required parameter: VersionId
function M.UpdateDocumentVersionRequest(AuthenticationToken, VersionId, DocumentId, VersionStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDocumentVersionRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["VersionId"] = VersionId,
		["DocumentId"] = DocumentId,
		["VersionStatus"] = VersionStatus,
	}
	M.AssertUpdateDocumentVersionRequest(t)
	return t
end

local EntityNotExistsException_keys = { "Message" = true, "EntityIds" = true, nil }

function M.AssertEntityNotExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityNotExistsException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	if struct["EntityIds"] then M.AssertEntityIdList(struct["EntityIds"]) end
	for k,_ in pairs(struct) do
		assert(EntityNotExistsException_keys[k], "EntityNotExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityNotExistsException
-- &lt;p&gt;The resource does not exist.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The resource does not exist.&lt;/p&gt;
-- @param EntityIds [EntityIdList] &lt;p&gt;The resource does not exist.&lt;/p&gt;
function M.EntityNotExistsException(Message, EntityIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityNotExistsException")
	local t = { 
		["Message"] = Message,
		["EntityIds"] = EntityIds,
	}
	M.AssertEntityNotExistsException(t)
	return t
end

local AbortDocumentVersionUploadRequest_keys = { "AuthenticationToken" = true, "VersionId" = true, "DocumentId" = true, nil }

function M.AssertAbortDocumentVersionUploadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AbortDocumentVersionUploadRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["VersionId"] then M.AssertDocumentVersionIdType(struct["VersionId"]) end
	if struct["DocumentId"] then M.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(AbortDocumentVersionUploadRequest_keys[k], "AbortDocumentVersionUploadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AbortDocumentVersionUploadRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param VersionId [DocumentVersionIdType] &lt;p&gt;The ID of the version.&lt;/p&gt;
-- @param DocumentId [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- Required parameter: DocumentId
-- Required parameter: VersionId
function M.AbortDocumentVersionUploadRequest(AuthenticationToken, VersionId, DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AbortDocumentVersionUploadRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["VersionId"] = VersionId,
		["DocumentId"] = DocumentId,
	}
	M.AssertAbortDocumentVersionUploadRequest(t)
	return t
end

local PermissionInfo_keys = { "Type" = true, "Role" = true, nil }

function M.AssertPermissionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PermissionInfo to be of type 'table'")
	if struct["Type"] then M.AssertRolePermissionType(struct["Type"]) end
	if struct["Role"] then M.AssertRoleType(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(PermissionInfo_keys[k], "PermissionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PermissionInfo
-- &lt;p&gt;Describes the permissions.&lt;/p&gt;
-- @param Type [RolePermissionType] &lt;p&gt;The type of permissions.&lt;/p&gt;
-- @param Role [RoleType] &lt;p&gt;The role of the user.&lt;/p&gt;
function M.PermissionInfo(Type, Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PermissionInfo")
	local t = { 
		["Type"] = Type,
		["Role"] = Role,
	}
	M.AssertPermissionInfo(t)
	return t
end

local UpdateFolderRequest_keys = { "AuthenticationToken" = true, "FolderId" = true, "Name" = true, "ResourceState" = true, "ParentFolderId" = true, nil }

function M.AssertUpdateFolderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFolderRequest to be of type 'table'")
	assert(struct["FolderId"], "Expected key FolderId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["FolderId"] then M.AssertResourceIdType(struct["FolderId"]) end
	if struct["Name"] then M.AssertResourceNameType(struct["Name"]) end
	if struct["ResourceState"] then M.AssertResourceStateType(struct["ResourceState"]) end
	if struct["ParentFolderId"] then M.AssertResourceIdType(struct["ParentFolderId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFolderRequest_keys[k], "UpdateFolderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFolderRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param FolderId [ResourceIdType] &lt;p&gt;The ID of the folder.&lt;/p&gt;
-- @param Name [ResourceNameType] &lt;p&gt;The name of the folder.&lt;/p&gt;
-- @param ResourceState [ResourceStateType] &lt;p&gt;The resource state of the folder. Note that only ACTIVE and RECYCLED are accepted values from the API.&lt;/p&gt;
-- @param ParentFolderId [ResourceIdType] &lt;p&gt;The ID of the parent folder.&lt;/p&gt;
-- Required parameter: FolderId
function M.UpdateFolderRequest(AuthenticationToken, FolderId, Name, ResourceState, ParentFolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFolderRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["FolderId"] = FolderId,
		["Name"] = Name,
		["ResourceState"] = ResourceState,
		["ParentFolderId"] = ParentFolderId,
	}
	M.AssertUpdateFolderRequest(t)
	return t
end

local DescribeRootFoldersRequest_keys = { "AuthenticationToken" = true, "Marker" = true, "Limit" = true, nil }

function M.AssertDescribeRootFoldersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRootFoldersRequest to be of type 'table'")
	assert(struct["AuthenticationToken"], "Expected key AuthenticationToken to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRootFoldersRequest_keys[k], "DescribeRootFoldersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRootFoldersRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;The maximum number of items to return.&lt;/p&gt;
-- Required parameter: AuthenticationToken
function M.DescribeRootFoldersRequest(AuthenticationToken, Marker, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRootFoldersRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["Marker"] = Marker,
		["Limit"] = Limit,
	}
	M.AssertDescribeRootFoldersRequest(t)
	return t
end

local GetDocumentRequest_keys = { "AuthenticationToken" = true, "IncludeCustomMetadata" = true, "DocumentId" = true, nil }

function M.AssertGetDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["IncludeCustomMetadata"] then M.AssertBooleanType(struct["IncludeCustomMetadata"]) end
	if struct["DocumentId"] then M.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentRequest_keys[k], "GetDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentRequest
--  
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param IncludeCustomMetadata [BooleanType] &lt;p&gt;Set this to &lt;code&gt;TRUE&lt;/code&gt; to include custom metadata in the response.&lt;/p&gt;
-- @param DocumentId [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- Required parameter: DocumentId
function M.GetDocumentRequest(AuthenticationToken, IncludeCustomMetadata, DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentRequest")
	local t = { 
		["AuthenticationToken"] = AuthenticationToken,
		["IncludeCustomMetadata"] = IncludeCustomMetadata,
		["DocumentId"] = DocumentId,
	}
	M.AssertGetDocumentRequest(t)
	return t
end

local DraftUploadOutOfSyncException_keys = { "Message" = true, nil }

function M.AssertDraftUploadOutOfSyncException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DraftUploadOutOfSyncException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DraftUploadOutOfSyncException_keys[k], "DraftUploadOutOfSyncException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DraftUploadOutOfSyncException
-- &lt;p&gt;This exception is thrown when a valid checkout ID is not presented on document version upload calls for a document that has been checked out from Web client.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;This exception is thrown when a valid checkout ID is not presented on document version upload calls for a document that has been checked out from Web client.&lt;/p&gt;
function M.DraftUploadOutOfSyncException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DraftUploadOutOfSyncException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDraftUploadOutOfSyncException(t)
	return t
end

local StorageLimitWillExceedException_keys = { "Message" = true, nil }

function M.AssertStorageLimitWillExceedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageLimitWillExceedException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(StorageLimitWillExceedException_keys[k], "StorageLimitWillExceedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageLimitWillExceedException
-- &lt;p&gt;The storage limit will be exceeded.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The storage limit will be exceeded.&lt;/p&gt;
function M.StorageLimitWillExceedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageLimitWillExceedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertStorageLimitWillExceedException(t)
	return t
end

local DescribeDocumentVersionsResponse_keys = { "DocumentVersions" = true, "Marker" = true, nil }

function M.AssertDescribeDocumentVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentVersionsResponse to be of type 'table'")
	if struct["DocumentVersions"] then M.AssertDocumentVersionMetadataList(struct["DocumentVersions"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDocumentVersionsResponse_keys[k], "DescribeDocumentVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentVersionsResponse
--  
-- @param DocumentVersions [DocumentVersionMetadataList] &lt;p&gt;The document versions.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;The marker to use when requesting the next set of results. If there are no additional results, the string is empty.&lt;/p&gt;
function M.DescribeDocumentVersionsResponse(DocumentVersions, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDocumentVersionsResponse")
	local t = { 
		["DocumentVersions"] = DocumentVersions,
		["Marker"] = Marker,
	}
	M.AssertDescribeDocumentVersionsResponse(t)
	return t
end

local StorageRuleType_keys = { "StorageType" = true, "StorageAllocatedInBytes" = true, nil }

function M.AssertStorageRuleType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageRuleType to be of type 'table'")
	if struct["StorageType"] then M.AssertStorageType(struct["StorageType"]) end
	if struct["StorageAllocatedInBytes"] then M.AssertPositiveSizeType(struct["StorageAllocatedInBytes"]) end
	for k,_ in pairs(struct) do
		assert(StorageRuleType_keys[k], "StorageRuleType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageRuleType
-- &lt;p&gt;Describes the storage for a user.&lt;/p&gt;
-- @param StorageType [StorageType] &lt;p&gt;The type of storage.&lt;/p&gt;
-- @param StorageAllocatedInBytes [PositiveSizeType] &lt;p&gt;The amount of storage allocated, in bytes.&lt;/p&gt;
function M.StorageRuleType(StorageType, StorageAllocatedInBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageRuleType")
	local t = { 
		["StorageType"] = StorageType,
		["StorageAllocatedInBytes"] = StorageAllocatedInBytes,
	}
	M.AssertStorageRuleType(t)
	return t
end

local Activity_keys = { "Initiator" = true, "OriginalParent" = true, "OrganizationId" = true, "TimeStamp" = true, "ResourceMetadata" = true, "Participants" = true, "Type" = true, "CommentMetadata" = true, nil }

function M.AssertActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Activity to be of type 'table'")
	if struct["Initiator"] then M.AssertUserMetadata(struct["Initiator"]) end
	if struct["OriginalParent"] then M.AssertResourceMetadata(struct["OriginalParent"]) end
	if struct["OrganizationId"] then M.AssertIdType(struct["OrganizationId"]) end
	if struct["TimeStamp"] then M.AssertTimestampType(struct["TimeStamp"]) end
	if struct["ResourceMetadata"] then M.AssertResourceMetadata(struct["ResourceMetadata"]) end
	if struct["Participants"] then M.AssertParticipants(struct["Participants"]) end
	if struct["Type"] then M.AssertActivityType(struct["Type"]) end
	if struct["CommentMetadata"] then M.AssertCommentMetadata(struct["CommentMetadata"]) end
	for k,_ in pairs(struct) do
		assert(Activity_keys[k], "Activity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Activity
-- &lt;p&gt;Describes the activity information.&lt;/p&gt;
-- @param Initiator [UserMetadata] &lt;p&gt;The user who performed the action.&lt;/p&gt;
-- @param OriginalParent [ResourceMetadata] &lt;p&gt;The original parent of the resource. This is an optional field and is filled for move activities.&lt;/p&gt;
-- @param OrganizationId [IdType] &lt;p&gt;The ID of the organization.&lt;/p&gt;
-- @param TimeStamp [TimestampType] &lt;p&gt;The timestamp when the action was performed.&lt;/p&gt;
-- @param ResourceMetadata [ResourceMetadata] &lt;p&gt;The metadata of the resource involved in the user action.&lt;/p&gt;
-- @param Participants [Participants] &lt;p&gt;The list of users or groups impacted by this action. This is an optional field and is filled for the following sharing activities: DOCUMENT_SHARED, DOCUMENT_SHARED, DOCUMENT_UNSHARED, FOLDER_SHARED, FOLDER_UNSHARED.&lt;/p&gt;
-- @param Type [ActivityType] &lt;p&gt;The activity type.&lt;/p&gt;
-- @param CommentMetadata [CommentMetadata] &lt;p&gt;Metadata of the commenting activity. This is an optional field and is filled for commenting activities.&lt;/p&gt;
function M.Activity(Initiator, OriginalParent, OrganizationId, TimeStamp, ResourceMetadata, Participants, Type, CommentMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Activity")
	local t = { 
		["Initiator"] = Initiator,
		["OriginalParent"] = OriginalParent,
		["OrganizationId"] = OrganizationId,
		["TimeStamp"] = TimeStamp,
		["ResourceMetadata"] = ResourceMetadata,
		["Participants"] = Participants,
		["Type"] = Type,
		["CommentMetadata"] = CommentMetadata,
	}
	M.AssertActivity(t)
	return t
end

local InvalidArgumentException_keys = { "Message" = true, nil }

function M.AssertInvalidArgumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgumentException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidArgumentException_keys[k], "InvalidArgumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgumentException
-- &lt;p&gt;The pagination marker and/or limit fields are not valid.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The pagination marker and/or limit fields are not valid.&lt;/p&gt;
function M.InvalidArgumentException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArgumentException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidArgumentException(t)
	return t
end

local DeleteCustomMetadataResponse_keys = { nil }

function M.AssertDeleteCustomMetadataResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCustomMetadataResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteCustomMetadataResponse_keys[k], "DeleteCustomMetadataResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCustomMetadataResponse
--  
function M.DeleteCustomMetadataResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCustomMetadataResponse")
	local t = { 
	}
	M.AssertDeleteCustomMetadataResponse(t)
	return t
end

local DescribeDocumentVersionsRequest_keys = { "Fields" = true, "Marker" = true, "Limit" = true, "AuthenticationToken" = true, "Include" = true, "DocumentId" = true, nil }

function M.AssertDescribeDocumentVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentVersionsRequest to be of type 'table'")
	assert(struct["DocumentId"], "Expected key DocumentId to exist in table")
	if struct["Fields"] then M.AssertFieldNamesType(struct["Fields"]) end
	if struct["Marker"] then M.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then M.AssertLimitType(struct["Limit"]) end
	if struct["AuthenticationToken"] then M.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["Include"] then M.AssertFieldNamesType(struct["Include"]) end
	if struct["DocumentId"] then M.AssertResourceIdType(struct["DocumentId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDocumentVersionsRequest_keys[k], "DescribeDocumentVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentVersionsRequest
--  
-- @param Fields [FieldNamesType] &lt;p&gt;Specify &quot;SOURCE&quot; to include initialized versions and a URL for the source document.&lt;/p&gt;
-- @param Marker [PageMarkerType] &lt;p&gt;The marker for the next set of results. (You received this marker from a previous call.)&lt;/p&gt;
-- @param Limit [LimitType] &lt;p&gt;The maximum number of versions to return with this call.&lt;/p&gt;
-- @param AuthenticationToken [AuthenticationHeaderType] &lt;p&gt;Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.&lt;/p&gt;
-- @param Include [FieldNamesType] &lt;p&gt;A comma-separated list of values. Specify &quot;INITIALIZED&quot; to include incomplete versions.&lt;/p&gt;
-- @param DocumentId [ResourceIdType] &lt;p&gt;The ID of the document.&lt;/p&gt;
-- Required parameter: DocumentId
function M.DescribeDocumentVersionsRequest(Fields, Marker, Limit, AuthenticationToken, Include, DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDocumentVersionsRequest")
	local t = { 
		["Fields"] = Fields,
		["Marker"] = Marker,
		["Limit"] = Limit,
		["AuthenticationToken"] = AuthenticationToken,
		["Include"] = Include,
		["DocumentId"] = DocumentId,
	}
	M.AssertDescribeDocumentVersionsRequest(t)
	return t
end

local GetCurrentUserResponse_keys = { "User" = true, nil }

function M.AssertGetCurrentUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCurrentUserResponse to be of type 'table'")
	if struct["User"] then M.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(GetCurrentUserResponse_keys[k], "GetCurrentUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCurrentUserResponse
--  
-- @param User [User] &lt;p&gt;Metadata of the user.&lt;/p&gt;
function M.GetCurrentUserResponse(User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCurrentUserResponse")
	local t = { 
		["User"] = User,
	}
	M.AssertGetCurrentUserResponse(t)
	return t
end

local EntityAlreadyExistsException_keys = { "Message" = true, nil }

function M.AssertEntityAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityAlreadyExistsException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(EntityAlreadyExistsException_keys[k], "EntityAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityAlreadyExistsException
-- &lt;p&gt;The resource already exists.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The resource already exists.&lt;/p&gt;
function M.EntityAlreadyExistsException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityAlreadyExistsException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertEntityAlreadyExistsException(t)
	return t
end

local Comment_keys = { "Status" = true, "Text" = true, "ParentId" = true, "RecipientId" = true, "Visibility" = true, "CreatedTimestamp" = true, "ThreadId" = true, "Contributor" = true, "CommentId" = true, nil }

function M.AssertComment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Comment to be of type 'table'")
	assert(struct["CommentId"], "Expected key CommentId to exist in table")
	if struct["Status"] then M.AssertCommentStatusType(struct["Status"]) end
	if struct["Text"] then M.AssertCommentTextType(struct["Text"]) end
	if struct["ParentId"] then M.AssertCommentIdType(struct["ParentId"]) end
	if struct["RecipientId"] then M.AssertIdType(struct["RecipientId"]) end
	if struct["Visibility"] then M.AssertCommentVisibilityType(struct["Visibility"]) end
	if struct["CreatedTimestamp"] then M.AssertTimestampType(struct["CreatedTimestamp"]) end
	if struct["ThreadId"] then M.AssertCommentIdType(struct["ThreadId"]) end
	if struct["Contributor"] then M.AssertUser(struct["Contributor"]) end
	if struct["CommentId"] then M.AssertCommentIdType(struct["CommentId"]) end
	for k,_ in pairs(struct) do
		assert(Comment_keys[k], "Comment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Comment
-- &lt;p&gt;Describes a comment.&lt;/p&gt;
-- @param Status [CommentStatusType] &lt;p&gt;The status of the comment.&lt;/p&gt;
-- @param Text [CommentTextType] &lt;p&gt;The text of the comment.&lt;/p&gt;
-- @param ParentId [CommentIdType] &lt;p&gt;The ID of the parent comment.&lt;/p&gt;
-- @param RecipientId [IdType] &lt;p&gt;If the comment is a reply to another user's comment, this field contains the user ID of the user being replied to.&lt;/p&gt;
-- @param Visibility [CommentVisibilityType] &lt;p&gt;The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors.&lt;/p&gt;
-- @param CreatedTimestamp [TimestampType] &lt;p&gt;The time that the comment was created.&lt;/p&gt;
-- @param ThreadId [CommentIdType] &lt;p&gt;The ID of the root comment in the thread.&lt;/p&gt;
-- @param Contributor [User] &lt;p&gt;The details of the user who made the comment.&lt;/p&gt;
-- @param CommentId [CommentIdType] &lt;p&gt;The ID of the comment.&lt;/p&gt;
-- Required parameter: CommentId
function M.Comment(Status, Text, ParentId, RecipientId, Visibility, CreatedTimestamp, ThreadId, Contributor, CommentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Comment")
	local t = { 
		["Status"] = Status,
		["Text"] = Text,
		["ParentId"] = ParentId,
		["RecipientId"] = RecipientId,
		["Visibility"] = Visibility,
		["CreatedTimestamp"] = CreatedTimestamp,
		["ThreadId"] = ThreadId,
		["Contributor"] = Contributor,
		["CommentId"] = CommentId,
	}
	M.AssertComment(t)
	return t
end

local FailedDependencyException_keys = { "Message" = true, nil }

function M.AssertFailedDependencyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedDependencyException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessageType(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FailedDependencyException_keys[k], "FailedDependencyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedDependencyException
-- &lt;p&gt;The AWS Directory Service cannot reach an on-premises instance. Or a dependency under the control of the organization is failing, such as a connected active directory.&lt;/p&gt;
-- @param Message [ErrorMessageType] &lt;p&gt;The AWS Directory Service cannot reach an on-premises instance. Or a dependency under the control of the organization is failing, such as a connected active directory.&lt;/p&gt;
function M.FailedDependencyException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailedDependencyException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertFailedDependencyException(t)
	return t
end

local Principal_keys = { "Type" = true, "Id" = true, "Roles" = true, nil }

function M.AssertPrincipal(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Principal to be of type 'table'")
	if struct["Type"] then M.AssertPrincipalType(struct["Type"]) end
	if struct["Id"] then M.AssertIdType(struct["Id"]) end
	if struct["Roles"] then M.AssertPermissionInfoList(struct["Roles"]) end
	for k,_ in pairs(struct) do
		assert(Principal_keys[k], "Principal contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Principal
-- &lt;p&gt;Describes a resource.&lt;/p&gt;
-- @param Type [PrincipalType] &lt;p&gt;The type of resource.&lt;/p&gt;
-- @param Id [IdType] &lt;p&gt;The ID of the resource.&lt;/p&gt;
-- @param Roles [PermissionInfoList] &lt;p&gt;The permission information for the resource.&lt;/p&gt;
function M.Principal(Type, Id, Roles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Principal")
	local t = { 
		["Type"] = Type,
		["Id"] = Id,
		["Roles"] = Roles,
	}
	M.AssertPrincipal(t)
	return t
end

function M.AssertUserFilterType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserFilterType to be of type 'string'")
end

--  
function M.UserFilterType(str)
	M.AssertUserFilterType(str)
	return str
end

function M.AssertPageMarkerType(str)
	assert(str)
	assert(type(str) == "string", "Expected PageMarkerType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PageMarkerType(str)
	M.AssertPageMarkerType(str)
	return str
end

function M.AssertUserType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserType to be of type 'string'")
end

--  
function M.UserType(str)
	M.AssertUserType(str)
	return str
end

function M.AssertActivityType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivityType to be of type 'string'")
end

--  
function M.ActivityType(str)
	M.AssertActivityType(str)
	return str
end

function M.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.MessageType(str)
	M.AssertMessageType(str)
	return str
end

function M.AssertEmailAddressType(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailAddressType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+%.[a-zA-Z]{2,}"), "Expected string to match pattern '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+%.[a-zA-Z]{2,}'")
end

--  
function M.EmailAddressType(str)
	M.AssertEmailAddressType(str)
	return str
end

function M.AssertCustomMetadataValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomMetadataValueType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*"), "Expected string to match pattern '[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*'")
end

--  
function M.CustomMetadataValueType(str)
	M.AssertCustomMetadataValueType(str)
	return str
end

function M.AssertHeaderNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w-]+"), "Expected string to match pattern '[%w-]+'")
end

--  
function M.HeaderNameType(str)
	M.AssertHeaderNameType(str)
	return str
end

function M.AssertAuthenticationHeaderType(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticationHeaderType to be of type 'string'")
	assert(#str <= 8199, "Expected string to be max 8199 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AuthenticationHeaderType(str)
	M.AssertAuthenticationHeaderType(str)
	return str
end

function M.AssertResourceStateType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceStateType to be of type 'string'")
end

--  
function M.ResourceStateType(str)
	M.AssertResourceStateType(str)
	return str
end

function M.AssertTimeZoneIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeZoneIdType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TimeZoneIdType(str)
	M.AssertTimeZoneIdType(str)
	return str
end

function M.AssertUsernameType(str)
	assert(str)
	assert(type(str) == "string", "Expected UsernameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w%-+.]+(@[a-zA-Z0-9.%-]+%.[a-zA-Z]+)?"), "Expected string to match pattern '[%w%-+.]+(@[a-zA-Z0-9.%-]+%.[a-zA-Z]+)?'")
end

--  
function M.UsernameType(str)
	M.AssertUsernameType(str)
	return str
end

function M.AssertDocumentStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentStatusType to be of type 'string'")
end

--  
function M.DocumentStatusType(str)
	M.AssertDocumentStatusType(str)
	return str
end

function M.AssertCommentIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected CommentIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+-.@]+"), "Expected string to match pattern '[%w+-.@]+'")
end

--  
function M.CommentIdType(str)
	M.AssertCommentIdType(str)
	return str
end

function M.AssertSubscriptionEndPointType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionEndPointType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SubscriptionEndPointType(str)
	M.AssertSubscriptionEndPointType(str)
	return str
end

function M.AssertLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected Label to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*"), "Expected string to match pattern '[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*'")
end

--  
function M.Label(str)
	M.AssertLabel(str)
	return str
end

function M.AssertPasswordType(str)
	assert(str)
	assert(type(str) == "string", "Expected PasswordType to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 4, "Expected string to be min 4 characters")
	assert(str:match("[%u0020-%u00FF]+"), "Expected string to match pattern '[%u0020-%u00FF]+'")
end

--  
function M.PasswordType(str)
	M.AssertPasswordType(str)
	return str
end

function M.AssertDocumentVersionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentVersionStatus to be of type 'string'")
end

--  
function M.DocumentVersionStatus(str)
	M.AssertDocumentVersionStatus(str)
	return str
end

function M.AssertCustomMetadataKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomMetadataKeyType to be of type 'string'")
	assert(#str <= 56, "Expected string to be max 56 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*"), "Expected string to match pattern '[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*'")
end

--  
function M.CustomMetadataKeyType(str)
	M.AssertCustomMetadataKeyType(str)
	return str
end

function M.AssertRolePermissionType(str)
	assert(str)
	assert(type(str) == "string", "Expected RolePermissionType to be of type 'string'")
end

--  
function M.RolePermissionType(str)
	M.AssertRolePermissionType(str)
	return str
end

function M.AssertCommentVisibilityType(str)
	assert(str)
	assert(type(str) == "string", "Expected CommentVisibilityType to be of type 'string'")
end

--  
function M.CommentVisibilityType(str)
	M.AssertCommentVisibilityType(str)
	return str
end

function M.AssertRoleType(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleType to be of type 'string'")
end

--  
function M.RoleType(str)
	M.AssertRoleType(str)
	return str
end

function M.AssertStorageType(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageType to be of type 'string'")
end

--  
function M.StorageType(str)
	M.AssertStorageType(str)
	return str
end

function M.AssertDocumentVersionIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentVersionIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+-.@]+"), "Expected string to match pattern '[%w+-.@]+'")
end

--  
function M.DocumentVersionIdType(str)
	M.AssertDocumentVersionIdType(str)
	return str
end

function M.AssertCommentStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected CommentStatusType to be of type 'string'")
end

--  
function M.CommentStatusType(str)
	M.AssertCommentStatusType(str)
	return str
end

function M.AssertUrlType(str)
	assert(str)
	assert(type(str) == "string", "Expected UrlType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UrlType(str)
	M.AssertUrlType(str)
	return str
end

function M.AssertResourceSortType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceSortType to be of type 'string'")
end

--  
function M.ResourceSortType(str)
	M.AssertResourceSortType(str)
	return str
end

function M.AssertShareStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected ShareStatusType to be of type 'string'")
end

--  
function M.ShareStatusType(str)
	M.AssertShareStatusType(str)
	return str
end

function M.AssertOrderType(str)
	assert(str)
	assert(type(str) == "string", "Expected OrderType to be of type 'string'")
end

--  
function M.OrderType(str)
	M.AssertOrderType(str)
	return str
end

function M.AssertResourceNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceNameType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%u202D%u202F-%uFFFF]+"), "Expected string to match pattern '[%u0020-%u202D%u202F-%uFFFF]+'")
end

--  
function M.ResourceNameType(str)
	M.AssertResourceNameType(str)
	return str
end

function M.AssertFieldNamesType(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldNamesType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w,]+"), "Expected string to match pattern '[%w,]+'")
end

--  
function M.FieldNamesType(str)
	M.AssertFieldNamesType(str)
	return str
end

function M.AssertDocumentSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentSourceType to be of type 'string'")
end

--  
function M.DocumentSourceType(str)
	M.AssertDocumentSourceType(str)
	return str
end

function M.AssertUserIdsType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserIdsType to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[&amp;%w+-.@, ]+"), "Expected string to match pattern '[&amp;%w+-.@, ]+'")
end

--  
function M.UserIdsType(str)
	M.AssertUserIdsType(str)
	return str
end

function M.AssertIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected IdType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[&amp;%w+-.@]+"), "Expected string to match pattern '[&amp;%w+-.@]+'")
end

--  
function M.IdType(str)
	M.AssertIdType(str)
	return str
end

function M.AssertSubscriptionProtocolType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionProtocolType to be of type 'string'")
end

--  
function M.SubscriptionProtocolType(str)
	M.AssertSubscriptionProtocolType(str)
	return str
end

function M.AssertSubscriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionType to be of type 'string'")
end

--  
function M.SubscriptionType(str)
	M.AssertSubscriptionType(str)
	return str
end

function M.AssertErrorMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessageType to be of type 'string'")
end

--  
function M.ErrorMessageType(str)
	M.AssertErrorMessageType(str)
	return str
end

function M.AssertMarkerType(str)
	assert(str)
	assert(type(str) == "string", "Expected MarkerType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0000-%u00FF]+"), "Expected string to match pattern '[%u0000-%u00FF]+'")
end

--  
function M.MarkerType(str)
	M.AssertMarkerType(str)
	return str
end

function M.AssertResourceIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+-.@]+"), "Expected string to match pattern '[%w+-.@]+'")
end

--  
function M.ResourceIdType(str)
	M.AssertResourceIdType(str)
	return str
end

function M.AssertUserStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserStatusType to be of type 'string'")
end

--  
function M.UserStatusType(str)
	M.AssertUserStatusType(str)
	return str
end

function M.AssertUserAttributeValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserAttributeValueType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserAttributeValueType(str)
	M.AssertUserAttributeValueType(str)
	return str
end

function M.AssertHeaderValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderValueType to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HeaderValueType(str)
	M.AssertHeaderValueType(str)
	return str
end

function M.AssertUserSortType(str)
	assert(str)
	assert(type(str) == "string", "Expected UserSortType to be of type 'string'")
end

--  
function M.UserSortType(str)
	M.AssertUserSortType(str)
	return str
end

function M.AssertGroupNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupNameType to be of type 'string'")
end

--  
function M.GroupNameType(str)
	M.AssertGroupNameType(str)
	return str
end

function M.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	M.AssertResourceType(str)
	return str
end

function M.AssertLocaleType(str)
	assert(str)
	assert(type(str) == "string", "Expected LocaleType to be of type 'string'")
end

--  
function M.LocaleType(str)
	M.AssertLocaleType(str)
	return str
end

function M.AssertPrincipalType(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalType to be of type 'string'")
end

--  
function M.PrincipalType(str)
	M.AssertPrincipalType(str)
	return str
end

function M.AssertSearchQueryType(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchQueryType to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%uFFFF]+"), "Expected string to match pattern '[%u0020-%uFFFF]+'")
end

--  
function M.SearchQueryType(str)
	M.AssertSearchQueryType(str)
	return str
end

function M.AssertDocumentThumbnailType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentThumbnailType to be of type 'string'")
end

--  
function M.DocumentThumbnailType(str)
	M.AssertDocumentThumbnailType(str)
	return str
end

function M.AssertCommentTextType(str)
	assert(str)
	assert(type(str) == "string", "Expected CommentTextType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CommentTextType(str)
	M.AssertCommentTextType(str)
	return str
end

function M.AssertDocumentContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentContentType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DocumentContentType(str)
	M.AssertDocumentContentType(str)
	return str
end

function M.AssertHashType(str)
	assert(str)
	assert(type(str) == "string", "Expected HashType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(str:match("[&amp;%w+-.@]+"), "Expected string to match pattern '[&amp;%w+-.@]+'")
end

--  
function M.HashType(str)
	M.AssertHashType(str)
	return str
end

function M.AssertFolderContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected FolderContentType to be of type 'string'")
end

--  
function M.FolderContentType(str)
	M.AssertFolderContentType(str)
	return str
end

function M.AssertSizeType(long)
	assert(long)
	assert(type(long) == "number", "Expected SizeType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.SizeType(long)
	M.AssertSizeType(long)
	return long
end

function M.AssertPositiveSizeType(long)
	assert(long)
	assert(type(long) == "number", "Expected PositiveSizeType to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PositiveSizeType(long)
	M.AssertPositiveSizeType(long)
	return long
end

function M.AssertLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 999, "Expected integer to be max 999")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.LimitType(integer)
	M.AssertLimitType(integer)
	return integer
end

function M.AssertBooleanType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanType to be of type 'boolean'")
end

function M.BooleanType(boolean)
	M.AssertBooleanType(boolean)
	return boolean
end

function M.AssertDocumentThumbnailUrlMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DocumentThumbnailUrlMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertDocumentThumbnailType(k)
		M.AssertUrlType(v)
	end
end

function M.DocumentThumbnailUrlMap(map)
	M.AssertDocumentThumbnailUrlMap(map)
	return map
end

function M.AssertCustomMetadataMap(map)
	assert(map)
	assert(type(map) == "table", "Expected CustomMetadataMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertCustomMetadataKeyType(k)
		M.AssertCustomMetadataValueType(v)
	end
end

function M.CustomMetadataMap(map)
	M.AssertCustomMetadataMap(map)
	return map
end

function M.AssertDocumentSourceUrlMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DocumentSourceUrlMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertDocumentSourceType(k)
		M.AssertUrlType(v)
	end
end

function M.DocumentSourceUrlMap(map)
	M.AssertDocumentSourceUrlMap(map)
	return map
end

function M.AssertSignedHeaderMap(map)
	assert(map)
	assert(type(map) == "table", "Expected SignedHeaderMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertHeaderNameType(k)
		M.AssertHeaderValueType(v)
	end
end

function M.SignedHeaderMap(map)
	M.AssertSignedHeaderMap(map)
	return map
end

function M.AssertTimestampType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimestampType to be of type 'string'")
end

function M.TimestampType(timestamp)
	M.AssertTimestampType(timestamp)
	return timestamp
end

function M.AssertDocumentMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDocumentMetadata(v)
	end
end

--  
-- List of DocumentMetadata objects
function M.DocumentMetadataList(list)
	M.AssertDocumentMetadataList(list)
	return list
end

function M.AssertPrincipalList(list)
	assert(list)
	assert(type(list) == "table", "Expected PrincipalList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPrincipal(v)
	end
end

--  
-- List of Principal objects
function M.PrincipalList(list)
	M.AssertPrincipalList(list)
	return list
end

function M.AssertLabels(list)
	assert(list)
	assert(type(list) == "table", "Expected Labels to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		M.AssertLabel(v)
	end
end

--  
-- List of Label objects
function M.Labels(list)
	M.AssertLabels(list)
	return list
end

function M.AssertGroupMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected GroupMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGroupMetadata(v)
	end
end

--  
-- List of GroupMetadata objects
function M.GroupMetadataList(list)
	M.AssertGroupMetadataList(list)
	return list
end

function M.AssertSharePrincipalList(list)
	assert(list)
	assert(type(list) == "table", "Expected SharePrincipalList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSharePrincipal(v)
	end
end

--  
-- List of SharePrincipal objects
function M.SharePrincipalList(list)
	M.AssertSharePrincipalList(list)
	return list
end

function M.AssertShareResultsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ShareResultsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertShareResult(v)
	end
end

--  
-- List of ShareResult objects
function M.ShareResultsList(list)
	M.AssertShareResultsList(list)
	return list
end

function M.AssertCommentList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommentList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertComment(v)
	end
end

--  
-- List of Comment objects
function M.CommentList(list)
	M.AssertCommentList(list)
	return list
end

function M.AssertUserMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUserMetadata(v)
	end
end

--  
-- List of UserMetadata objects
function M.UserMetadataList(list)
	M.AssertUserMetadataList(list)
	return list
end

function M.AssertEntityIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected EntityIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIdType(v)
	end
end

--  
-- List of IdType objects
function M.EntityIdList(list)
	M.AssertEntityIdList(list)
	return list
end

function M.AssertFolderMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected FolderMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFolderMetadata(v)
	end
end

--  
-- List of FolderMetadata objects
function M.FolderMetadataList(list)
	M.AssertFolderMetadataList(list)
	return list
end

function M.AssertOrganizationUserList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrganizationUserList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUser(v)
	end
end

--  
-- List of User objects
function M.OrganizationUserList(list)
	M.AssertOrganizationUserList(list)
	return list
end

function M.AssertResourcePathComponentList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourcePathComponentList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourcePathComponent(v)
	end
end

--  
-- List of ResourcePathComponent objects
function M.ResourcePathComponentList(list)
	M.AssertResourcePathComponentList(list)
	return list
end

function M.AssertDocumentVersionMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentVersionMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDocumentVersionMetadata(v)
	end
end

--  
-- List of DocumentVersionMetadata objects
function M.DocumentVersionMetadataList(list)
	M.AssertDocumentVersionMetadataList(list)
	return list
end

function M.AssertCustomMetadataKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomMetadataKeyList to be of type ''table")
	assert(#list <= 8, "Expected list to be contain 8 elements")
	for _,v in ipairs(list) do
		M.AssertCustomMetadataKeyType(v)
	end
end

--  
-- List of CustomMetadataKeyType objects
function M.CustomMetadataKeyList(list)
	M.AssertCustomMetadataKeyList(list)
	return list
end

function M.AssertSubscriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubscriptionList to be of type ''table")
	assert(#list <= 256, "Expected list to be contain 256 elements")
	for _,v in ipairs(list) do
		M.AssertSubscription(v)
	end
end

--  
-- List of Subscription objects
function M.SubscriptionList(list)
	M.AssertSubscriptionList(list)
	return list
end

function M.AssertPermissionInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected PermissionInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPermissionInfo(v)
	end
end

--  
-- List of PermissionInfo objects
function M.PermissionInfoList(list)
	M.AssertPermissionInfoList(list)
	return list
end

function M.AssertUserActivities(list)
	assert(list)
	assert(type(list) == "table", "Expected UserActivities to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActivity(v)
	end
end

--  
-- List of Activity objects
function M.UserActivities(list)
	M.AssertUserActivities(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DeactivateUser
-- @param DeactivateUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeactivateUserAsync(DeactivateUserRequest, cb)
	assert(DeactivateUserRequest, "You must provide a DeactivateUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeactivateUser",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/users/{UserId}/activation", DeactivateUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeRootFolders
-- @param DescribeRootFoldersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRootFoldersAsync(DescribeRootFoldersRequest, cb)
	assert(DescribeRootFoldersRequest, "You must provide a DescribeRootFoldersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeRootFolders",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/me/root", DescribeRootFoldersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddResourcePermissions
-- @param AddResourcePermissionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddResourcePermissionsAsync(AddResourcePermissionsRequest, cb)
	assert(AddResourcePermissionsRequest, "You must provide a AddResourcePermissionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddResourcePermissions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/api/v1/resources/{ResourceId}/permissions", AddResourcePermissionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteFolder
-- @param DeleteFolderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFolderAsync(DeleteFolderRequest, cb)
	assert(DeleteFolderRequest, "You must provide a DeleteFolderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteFolder",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/folders/{FolderId}", DeleteFolderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeUsers
-- @param DescribeUsersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeUsersAsync(DescribeUsersRequest, cb)
	assert(DescribeUsersRequest, "You must provide a DescribeUsersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeUsers",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/users", DescribeUsersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDocumentVersion
-- @param UpdateDocumentVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDocumentVersionAsync(UpdateDocumentVersionRequest, cb)
	assert(UpdateDocumentVersionRequest, "You must provide a UpdateDocumentVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateDocumentVersion",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}/versions/{VersionId}", UpdateDocumentVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCustomMetadata
-- @param DeleteCustomMetadataRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCustomMetadataAsync(DeleteCustomMetadataRequest, cb)
	assert(DeleteCustomMetadataRequest, "You must provide a DeleteCustomMetadataRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCustomMetadata",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/resources/{ResourceId}/customMetadata", DeleteCustomMetadataRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLabels
-- @param CreateLabelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLabelsAsync(CreateLabelsRequest, cb)
	assert(CreateLabelsRequest, "You must provide a CreateLabelsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateLabels",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/api/v1/resources/{ResourceId}/labels", CreateLabelsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- InitiateDocumentVersionUpload
-- @param InitiateDocumentVersionUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.InitiateDocumentVersionUploadAsync(InitiateDocumentVersionUploadRequest, cb)
	assert(InitiateDocumentVersionUploadRequest, "You must provide a InitiateDocumentVersionUploadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".InitiateDocumentVersionUpload",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/api/v1/documents", InitiateDocumentVersionUploadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCustomMetadata
-- @param CreateCustomMetadataRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCustomMetadataAsync(CreateCustomMetadataRequest, cb)
	assert(CreateCustomMetadataRequest, "You must provide a CreateCustomMetadataRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCustomMetadata",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/api/v1/resources/{ResourceId}/customMetadata", CreateCustomMetadataRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDocument
-- @param GetDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentAsync(GetDocumentRequest, cb)
	assert(GetDocumentRequest, "You must provide a GetDocumentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDocument",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}", GetDocumentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDocumentPath
-- @param GetDocumentPathRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentPathAsync(GetDocumentPathRequest, cb)
	assert(GetDocumentPathRequest, "You must provide a GetDocumentPathRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDocumentPath",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}/path", GetDocumentPathRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveAllResourcePermissions
-- @param RemoveAllResourcePermissionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveAllResourcePermissionsAsync(RemoveAllResourcePermissionsRequest, cb)
	assert(RemoveAllResourcePermissionsRequest, "You must provide a RemoveAllResourcePermissionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveAllResourcePermissions",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/resources/{ResourceId}/permissions", RemoveAllResourcePermissionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateUser
-- @param UpdateUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserAsync(UpdateUserRequest, cb)
	assert(UpdateUserRequest, "You must provide a UpdateUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateUser",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/api/v1/users/{UserId}", UpdateUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCurrentUser
-- @param GetCurrentUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCurrentUserAsync(GetCurrentUserRequest, cb)
	assert(GetCurrentUserRequest, "You must provide a GetCurrentUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCurrentUser",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/me", GetCurrentUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateFolder
-- @param UpdateFolderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFolderAsync(UpdateFolderRequest, cb)
	assert(UpdateFolderRequest, "You must provide a UpdateFolderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateFolder",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/api/v1/folders/{FolderId}", UpdateFolderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteComment
-- @param DeleteCommentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCommentAsync(DeleteCommentRequest, cb)
	assert(DeleteCommentRequest, "You must provide a DeleteCommentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteComment",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", DeleteCommentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUser
-- @param CreateUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserAsync(CreateUserRequest, cb)
	assert(CreateUserRequest, "You must provide a CreateUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/api/v1/users", CreateUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteFolderContents
-- @param DeleteFolderContentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFolderContentsAsync(DeleteFolderContentsRequest, cb)
	assert(DeleteFolderContentsRequest, "You must provide a DeleteFolderContentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteFolderContents",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/folders/{FolderId}/contents", DeleteFolderContentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteNotificationSubscription
-- @param DeleteNotificationSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteNotificationSubscriptionAsync(DeleteNotificationSubscriptionRequest, cb)
	assert(DeleteNotificationSubscriptionRequest, "You must provide a DeleteNotificationSubscriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteNotificationSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", DeleteNotificationSubscriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AbortDocumentVersionUpload
-- @param AbortDocumentVersionUploadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AbortDocumentVersionUploadAsync(AbortDocumentVersionUploadRequest, cb)
	assert(AbortDocumentVersionUploadRequest, "You must provide a AbortDocumentVersionUploadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AbortDocumentVersionUpload",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}/versions/{VersionId}", AbortDocumentVersionUploadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeNotificationSubscriptions
-- @param DescribeNotificationSubscriptionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeNotificationSubscriptionsAsync(DescribeNotificationSubscriptionsRequest, cb)
	assert(DescribeNotificationSubscriptionsRequest, "You must provide a DescribeNotificationSubscriptionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeNotificationSubscriptions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/organizations/{OrganizationId}/subscriptions", DescribeNotificationSubscriptionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateComment
-- @param CreateCommentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCommentAsync(CreateCommentRequest, cb)
	assert(CreateCommentRequest, "You must provide a CreateCommentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateComment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", CreateCommentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDocumentVersion
-- @param GetDocumentVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentVersionAsync(GetDocumentVersionRequest, cb)
	assert(GetDocumentVersionRequest, "You must provide a GetDocumentVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDocumentVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}/versions/{VersionId}", GetDocumentVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetFolderPath
-- @param GetFolderPathRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFolderPathAsync(GetFolderPathRequest, cb)
	assert(GetFolderPathRequest, "You must provide a GetFolderPathRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetFolderPath",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/folders/{FolderId}/path", GetFolderPathRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeFolderContents
-- @param DescribeFolderContentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFolderContentsAsync(DescribeFolderContentsRequest, cb)
	assert(DescribeFolderContentsRequest, "You must provide a DescribeFolderContentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeFolderContents",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/folders/{FolderId}/contents", DescribeFolderContentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateFolder
-- @param CreateFolderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFolderAsync(CreateFolderRequest, cb)
	assert(CreateFolderRequest, "You must provide a CreateFolderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateFolder",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/api/v1/folders", CreateFolderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeResourcePermissions
-- @param DescribeResourcePermissionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeResourcePermissionsAsync(DescribeResourcePermissionsRequest, cb)
	assert(DescribeResourcePermissionsRequest, "You must provide a DescribeResourcePermissionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeResourcePermissions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/resources/{ResourceId}/permissions", DescribeResourcePermissionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateNotificationSubscription
-- @param CreateNotificationSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateNotificationSubscriptionAsync(CreateNotificationSubscriptionRequest, cb)
	assert(CreateNotificationSubscriptionRequest, "You must provide a CreateNotificationSubscriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateNotificationSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/api/v1/organizations/{OrganizationId}/subscriptions", CreateNotificationSubscriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDocument
-- @param UpdateDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDocumentAsync(UpdateDocumentRequest, cb)
	assert(UpdateDocumentRequest, "You must provide a UpdateDocumentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateDocument",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}", UpdateDocumentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeComments
-- @param DescribeCommentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCommentsAsync(DescribeCommentsRequest, cb)
	assert(DescribeCommentsRequest, "You must provide a DescribeCommentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeComments",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", DescribeCommentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUser
-- @param DeleteUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserAsync(DeleteUserRequest, cb)
	assert(DeleteUserRequest, "You must provide a DeleteUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteUser",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/users/{UserId}", DeleteUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDocument
-- @param DeleteDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDocumentAsync(DeleteDocumentRequest, cb)
	assert(DeleteDocumentRequest, "You must provide a DeleteDocumentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDocument",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}", DeleteDocumentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeActivities
-- @param DescribeActivitiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeActivitiesAsync(DescribeActivitiesRequest, cb)
	assert(DescribeActivitiesRequest, "You must provide a DescribeActivitiesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeActivities",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/activities", DescribeActivitiesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ActivateUser
-- @param ActivateUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ActivateUserAsync(ActivateUserRequest, cb)
	assert(ActivateUserRequest, "You must provide a ActivateUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ActivateUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/api/v1/users/{UserId}/activation", ActivateUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetFolder
-- @param GetFolderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFolderAsync(GetFolderRequest, cb)
	assert(GetFolderRequest, "You must provide a GetFolderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetFolder",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/folders/{FolderId}", GetFolderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveResourcePermission
-- @param RemoveResourcePermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveResourcePermissionAsync(RemoveResourcePermissionRequest, cb)
	assert(RemoveResourcePermissionRequest, "You must provide a RemoveResourcePermissionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveResourcePermission",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", RemoveResourcePermissionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLabels
-- @param DeleteLabelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLabelsAsync(DeleteLabelsRequest, cb)
	assert(DeleteLabelsRequest, "You must provide a DeleteLabelsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteLabels",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/api/v1/resources/{ResourceId}/labels", DeleteLabelsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDocumentVersions
-- @param DescribeDocumentVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDocumentVersionsAsync(DescribeDocumentVersionsRequest, cb)
	assert(DescribeDocumentVersionsRequest, "You must provide a DescribeDocumentVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDocumentVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/api/v1/documents/{DocumentId}/versions", DescribeDocumentVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
