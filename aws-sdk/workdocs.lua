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
-- @param _Name [ResourceNameType] <p>The name of the resource.</p>
-- @param _Owner [UserMetadata] <p>The owner of the resource.</p>
-- @param _VersionId [DocumentVersionIdType] <p>The version ID of the resource. This is an optional field and is filled for action on document version.</p>
-- @param _ParentId [ResourceIdType] <p>The parent ID of the resource before a rename operation.</p>
-- @param _OriginalName [ResourceNameType] <p>The original name of the resource prior to a rename operation.</p>
-- @param _Type [ResourceType] <p>The type of resource.</p>
-- @param _Id [ResourceIdType] <p>The ID of the resource.</p>
function M.ResourceMetadata(_Name, _Owner, _VersionId, _ParentId, _OriginalName, _Type, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceMetadata")
	local t = { 
		["Name"] = _Name,
		["Owner"] = _Owner,
		["VersionId"] = _VersionId,
		["ParentId"] = _ParentId,
		["OriginalName"] = _OriginalName,
		["Type"] = _Type,
		["Id"] = _Id,
	}
	asserts.AssertResourceMetadata(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.ServiceUnavailableException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertServiceUnavailableException(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token.</p>
-- Required parameter: AuthenticationToken
function M.GetCurrentUserRequest(_AuthenticationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCurrentUserRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
	}
	asserts.AssertGetCurrentUserRequest(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- Required parameter: ResourceId
function M.RemoveAllResourcePermissionsRequest(_AuthenticationToken, _ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveAllResourcePermissionsRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["ResourceId"] = _ResourceId,
	}
	asserts.AssertRemoveAllResourcePermissionsRequest(t)
	return t
end

keys.DescribeResourcePermissionsRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["Marker"] = true, ["Limit"] = true, nil }

function asserts.AssertDescribeResourcePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourcePermissionsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Marker"] then asserts.AssertPageMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourcePermissionsRequest[k], "DescribeResourcePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourcePermissionsRequest
--  
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- @param _Marker [PageMarkerType] <p>The marker for the next set of results. (You received this marker from a previous call)</p>
-- @param _Limit [LimitType] <p>The maximum number of items to return with this call.</p>
-- Required parameter: ResourceId
function M.DescribeResourcePermissionsRequest(_AuthenticationToken, _ResourceId, _Marker, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeResourcePermissionsRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["ResourceId"] = _ResourceId,
		["Marker"] = _Marker,
		["Limit"] = _Limit,
	}
	asserts.AssertDescribeResourcePermissionsRequest(t)
	return t
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
function M.CreateLabelsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLabelsResponse")
	local t = { 
	}
	asserts.AssertCreateLabelsResponse(t)
	return t
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
-- @param _Folders [FolderMetadataList] <p>The user's special folders.</p>
-- @param _Marker [PageMarkerType] <p>The marker for the next set of results.</p>
function M.DescribeRootFoldersResponse(_Folders, _Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRootFoldersResponse")
	local t = { 
		["Folders"] = _Folders,
		["Marker"] = _Marker,
	}
	asserts.AssertDescribeRootFoldersResponse(t)
	return t
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
-- @param _CustomMetadata [CustomMetadataMap] <p>The custom metadata on the document version.</p>
-- @param _Metadata [DocumentVersionMetadata] <p>The version metadata.</p>
function M.GetDocumentVersionResponse(_CustomMetadata, _Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentVersionResponse")
	local t = { 
		["CustomMetadata"] = _CustomMetadata,
		["Metadata"] = _Metadata,
	}
	asserts.AssertGetDocumentVersionResponse(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.ProhibitedStateException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProhibitedStateException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertProhibitedStateException(t)
	return t
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
-- @param _ContentType [DocumentContentType] <p>The content type of the document.</p>
-- @param _Name [ResourceNameType] <p>The name of the document.</p>
-- @param _ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- @param _ContentCreatedTimestamp [TimestampType] <p>The time stamp when the content of the document was originally created.</p>
-- @param _DocumentSizeInBytes [SizeType] <p>The size of the document, in bytes.</p>
-- @param _ContentModifiedTimestamp [TimestampType] <p>The time stamp when the content of the document was modified.</p>
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _Id [ResourceIdType] <p>The ID of the document.</p>
-- Required parameter: ParentFolderId
function M.InitiateDocumentVersionUploadRequest(_ContentType, _Name, _ParentFolderId, _ContentCreatedTimestamp, _DocumentSizeInBytes, _ContentModifiedTimestamp, _AuthenticationToken, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateDocumentVersionUploadRequest")
	local t = { 
		["ContentType"] = _ContentType,
		["Name"] = _Name,
		["ParentFolderId"] = _ParentFolderId,
		["ContentCreatedTimestamp"] = _ContentCreatedTimestamp,
		["DocumentSizeInBytes"] = _DocumentSizeInBytes,
		["ContentModifiedTimestamp"] = _ContentModifiedTimestamp,
		["AuthenticationToken"] = _AuthenticationToken,
		["Id"] = _Id,
	}
	asserts.AssertInitiateDocumentVersionUploadRequest(t)
	return t
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
-- @param _Folders [FolderMetadataList] <p>The subfolders in the specified folder.</p>
-- @param _Marker [PageMarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- @param _Documents [DocumentMetadataList] <p>The documents in the specified folder.</p>
function M.DescribeFolderContentsResponse(_Folders, _Marker, _Documents, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFolderContentsResponse")
	local t = { 
		["Folders"] = _Folders,
		["Marker"] = _Marker,
		["Documents"] = _Documents,
	}
	asserts.AssertDescribeFolderContentsResponse(t)
	return t
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
-- @param _Username [UsernameType] <p>The username of the user.</p>
-- @param _EmailAddress [EmailAddressType] <p>The email address of the user.</p>
-- @param _GivenName [UserAttributeValueType] <p>The given name of the user before a rename operation.</p>
-- @param _Surname [UserAttributeValueType] <p>The surname of the user.</p>
-- @param _Id [IdType] <p>The ID of the user.</p>
function M.UserMetadata(_Username, _EmailAddress, _GivenName, _Surname, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserMetadata")
	local t = { 
		["Username"] = _Username,
		["EmailAddress"] = _EmailAddress,
		["GivenName"] = _GivenName,
		["Surname"] = _Surname,
		["Id"] = _Id,
	}
	asserts.AssertUserMetadata(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _FolderId [ResourceIdType] <p>The ID of the folder.</p>
-- Required parameter: FolderId
function M.DeleteFolderContentsRequest(_AuthenticationToken, _FolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFolderContentsRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["FolderId"] = _FolderId,
	}
	asserts.AssertDeleteFolderContentsRequest(t)
	return t
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
-- @param _User [User] <p>The user information.</p>
function M.ActivateUserResponse(_User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivateUserResponse")
	local t = { 
		["User"] = _User,
	}
	asserts.AssertActivateUserResponse(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.TooManyLabelsException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyLabelsException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManyLabelsException(t)
	return t
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
-- @param _Role [RoleType] <p>The role of the recipient.</p>
-- @param _Type [PrincipalType] <p>The type of the recipient.</p>
-- @param _Id [IdType] <p>The ID of the recipient.</p>
-- Required parameter: Id
-- Required parameter: Type
-- Required parameter: Role
function M.SharePrincipal(_Role, _Type, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SharePrincipal")
	local t = { 
		["Role"] = _Role,
		["Type"] = _Type,
		["Id"] = _Id,
	}
	asserts.AssertSharePrincipal(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _ResourceId [ResourceIdType] <p>The ID of the resource, either a document or folder.</p>
-- @param _VersionId [DocumentVersionIdType] <p>The ID of the version, if the custom metadata is being deleted from a document version.</p>
-- @param _DeleteAll [BooleanType] <p>Flag to indicate removal of all custom metadata properties from the specified resource.</p>
-- @param _Keys [CustomMetadataKeyList] <p>List of properties to remove.</p>
-- Required parameter: ResourceId
function M.DeleteCustomMetadataRequest(_AuthenticationToken, _ResourceId, _VersionId, _DeleteAll, _Keys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCustomMetadataRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["ResourceId"] = _ResourceId,
		["VersionId"] = _VersionId,
		["DeleteAll"] = _DeleteAll,
		["Keys"] = _Keys,
	}
	asserts.AssertDeleteCustomMetadataRequest(t)
	return t
end

keys.CreateLabelsRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["Labels"] = true, nil }

function asserts.AssertCreateLabelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLabelsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Labels"], "Expected key Labels to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Labels"] then asserts.AssertLabels(struct["Labels"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLabelsRequest[k], "CreateLabelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLabelsRequest
--  
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- @param _Labels [Labels] <p>List of labels to add to the resource.</p>
-- Required parameter: ResourceId
-- Required parameter: Labels
function M.CreateLabelsRequest(_AuthenticationToken, _ResourceId, _Labels, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLabelsRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["ResourceId"] = _ResourceId,
		["Labels"] = _Labels,
	}
	asserts.AssertCreateLabelsRequest(t)
	return t
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
-- @param _OrganizationId [IdType] <p>The ID of the organization.</p>
-- @param _SubscriptionId [IdType] <p>The ID of the subscription.</p>
-- Required parameter: SubscriptionId
-- Required parameter: OrganizationId
function M.DeleteNotificationSubscriptionRequest(_OrganizationId, _SubscriptionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNotificationSubscriptionRequest")
	local t = { 
		["OrganizationId"] = _OrganizationId,
		["SubscriptionId"] = _SubscriptionId,
	}
	asserts.AssertDeleteNotificationSubscriptionRequest(t)
	return t
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
-- @param _OrganizationId [IdType] <p>The ID of the organization.</p>
-- @param _SubscriptionType [SubscriptionType] <p>The notification type.</p>
-- @param _Endpoint [SubscriptionEndPointType] <p>The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint is a URL that begins with "https://".</p>
-- @param _Protocol [SubscriptionProtocolType] <p>The protocol to use. The supported value is https, which delivers JSON-encoded messasges using HTTPS POST.</p>
-- Required parameter: OrganizationId
-- Required parameter: Endpoint
-- Required parameter: Protocol
-- Required parameter: SubscriptionType
function M.CreateNotificationSubscriptionRequest(_OrganizationId, _SubscriptionType, _Endpoint, _Protocol, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNotificationSubscriptionRequest")
	local t = { 
		["OrganizationId"] = _OrganizationId,
		["SubscriptionType"] = _SubscriptionType,
		["Endpoint"] = _Endpoint,
		["Protocol"] = _Protocol,
	}
	asserts.AssertCreateNotificationSubscriptionRequest(t)
	return t
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
-- @param _Status [DocumentStatusType] <p>The status of the document.</p>
-- @param _ContentType [DocumentContentType] <p>The content type of the document.</p>
-- @param _Name [ResourceNameType] <p>The name of the version.</p>
-- @param _ModifiedTimestamp [TimestampType] <p>The time stamp when the document was last uploaded.</p>
-- @param _Thumbnail [DocumentThumbnailUrlMap] <p>The thumbnail of the document.</p>
-- @param _CreatedTimestamp [TimestampType] <p>The time stamp when the document was first uploaded.</p>
-- @param _Source [DocumentSourceUrlMap] <p>The source of the document.</p>
-- @param _CreatorId [IdType] <p>The ID of the creator.</p>
-- @param _ContentCreatedTimestamp [TimestampType] <p>The time stamp when the content of the document was originally created.</p>
-- @param _ContentModifiedTimestamp [TimestampType] <p>The time stamp when the content of the document was modified.</p>
-- @param _Signature [HashType] <p>The signature of the document.</p>
-- @param _Id [DocumentVersionIdType] <p>The ID of the version.</p>
-- @param _Size [SizeType] <p>The size of the document, in bytes.</p>
function M.DocumentVersionMetadata(_Status, _ContentType, _Name, _ModifiedTimestamp, _Thumbnail, _CreatedTimestamp, _Source, _CreatorId, _ContentCreatedTimestamp, _ContentModifiedTimestamp, _Signature, _Id, _Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentVersionMetadata")
	local t = { 
		["Status"] = _Status,
		["ContentType"] = _ContentType,
		["Name"] = _Name,
		["ModifiedTimestamp"] = _ModifiedTimestamp,
		["Thumbnail"] = _Thumbnail,
		["CreatedTimestamp"] = _CreatedTimestamp,
		["Source"] = _Source,
		["CreatorId"] = _CreatorId,
		["ContentCreatedTimestamp"] = _ContentCreatedTimestamp,
		["ContentModifiedTimestamp"] = _ContentModifiedTimestamp,
		["Signature"] = _Signature,
		["Id"] = _Id,
		["Size"] = _Size,
	}
	asserts.AssertDocumentVersionMetadata(t)
	return t
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
-- @param _UploadMetadata [UploadMetadata] <p>The upload metadata.</p>
-- @param _Metadata [DocumentMetadata] <p>The document metadata.</p>
function M.InitiateDocumentVersionUploadResponse(_UploadMetadata, _Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InitiateDocumentVersionUploadResponse")
	local t = { 
		["UploadMetadata"] = _UploadMetadata,
		["Metadata"] = _Metadata,
	}
	asserts.AssertInitiateDocumentVersionUploadResponse(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _UserId [IdType] <p>The ID of the user.</p>
-- Required parameter: UserId
function M.DeleteUserRequest(_AuthenticationToken, _UserId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["UserId"] = _UserId,
	}
	asserts.AssertDeleteUserRequest(t)
	return t
end

keys.DeleteLabelsRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["Labels"] = true, ["DeleteAll"] = true, nil }

function asserts.AssertDeleteLabelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLabelsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Labels"] then asserts.AssertLabels(struct["Labels"]) end
	if struct["DeleteAll"] then asserts.AssertBooleanType(struct["DeleteAll"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLabelsRequest[k], "DeleteLabelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLabelsRequest
--  
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- @param _Labels [Labels] <p>List of labels to delete from the resource.</p>
-- @param _DeleteAll [BooleanType] <p>Flag to request removal of all labels from the specified resource.</p>
-- Required parameter: ResourceId
function M.DeleteLabelsRequest(_AuthenticationToken, _ResourceId, _Labels, _DeleteAll, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLabelsRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["ResourceId"] = _ResourceId,
		["Labels"] = _Labels,
		["DeleteAll"] = _DeleteAll,
	}
	asserts.AssertDeleteLabelsRequest(t)
	return t
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
-- @param _User [User] <p>The user information.</p>
function M.UpdateUserResponse(_User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserResponse")
	local t = { 
		["User"] = _User,
	}
	asserts.AssertUpdateUserResponse(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _Fields [FieldNamesType] <p>A comma-separated list of values. Specify <code>NAME</code> to include the names of the parent folders.</p>
-- @param _Marker [PageMarkerType] <p>This value is not supported.</p>
-- @param _Limit [LimitType] <p>The maximum number of levels in the hierarchy to return.</p>
-- @param _DocumentId [IdType] <p>The ID of the document.</p>
-- Required parameter: DocumentId
function M.GetDocumentPathRequest(_AuthenticationToken, _Fields, _Marker, _Limit, _DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentPathRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["Fields"] = _Fields,
		["Marker"] = _Marker,
		["Limit"] = _Limit,
		["DocumentId"] = _DocumentId,
	}
	asserts.AssertGetDocumentPathRequest(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.UnauthorizedResourceAccessException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedResourceAccessException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertUnauthorizedResourceAccessException(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.ConcurrentModificationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertConcurrentModificationException(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _UserId [IdType] <p>The ID of the user.</p>
-- Required parameter: UserId
function M.ActivateUserRequest(_AuthenticationToken, _UserId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivateUserRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["UserId"] = _UserId,
	}
	asserts.AssertActivateUserRequest(t)
	return t
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
-- @param _OrganizationId [IdType] <p>The ID of the organization. This is a mandatory parameter when using administrative API (SigV4) requests.</p>
-- @param _UserId [IdType] <p>The ID of the user who performed the action. The response includes activities pertaining to this user. This is an optional parameter and is only applicable for administrative API (SigV4) requests.</p>
-- @param _Marker [MarkerType] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- @param _Limit [LimitType] <p>The maximum number of items to return.</p>
-- @param _StartTime [TimestampType] <p>The timestamp that determines the starting time of the activities; the response includes the activities performed after the specified timestamp.</p>
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _EndTime [TimestampType] <p>The timestamp that determines the end time of the activities; the response includes the activities performed before the specified timestamp.</p>
function M.DescribeActivitiesRequest(_OrganizationId, _UserId, _Marker, _Limit, _StartTime, _AuthenticationToken, _EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivitiesRequest")
	local t = { 
		["OrganizationId"] = _OrganizationId,
		["UserId"] = _UserId,
		["Marker"] = _Marker,
		["Limit"] = _Limit,
		["StartTime"] = _StartTime,
		["AuthenticationToken"] = _AuthenticationToken,
		["EndTime"] = _EndTime,
	}
	asserts.AssertDescribeActivitiesRequest(t)
	return t
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
-- @param _Marker [PageMarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- @param _Subscriptions [SubscriptionList] <p>The subscriptions.</p>
function M.DescribeNotificationSubscriptionsResponse(_Marker, _Subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNotificationSubscriptionsResponse")
	local t = { 
		["Marker"] = _Marker,
		["Subscriptions"] = _Subscriptions,
	}
	asserts.AssertDescribeNotificationSubscriptionsResponse(t)
	return t
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
-- @param _Text [CommentTextType] <p>The text of the comment.</p>
-- @param _ParentId [CommentIdType] <p>The ID of the parent comment.</p>
-- @param _Visibility [CommentVisibilityType] <p>The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors.</p>
-- @param _NotifyCollaborators [BooleanType] <p>Set this parameter to TRUE to send an email out to the document collaborators after the comment is created.</p>
-- @param _VersionId [DocumentVersionIdType] <p>The ID of the document version.</p>
-- @param _ThreadId [CommentIdType] <p>The ID of the root comment in the thread.</p>
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required parameter: DocumentId
-- Required parameter: VersionId
-- Required parameter: Text
function M.CreateCommentRequest(_Text, _ParentId, _Visibility, _NotifyCollaborators, _VersionId, _ThreadId, _AuthenticationToken, _DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCommentRequest")
	local t = { 
		["Text"] = _Text,
		["ParentId"] = _ParentId,
		["Visibility"] = _Visibility,
		["NotifyCollaborators"] = _NotifyCollaborators,
		["VersionId"] = _VersionId,
		["ThreadId"] = _ThreadId,
		["AuthenticationToken"] = _AuthenticationToken,
		["DocumentId"] = _DocumentId,
	}
	asserts.AssertCreateCommentRequest(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _Name [ResourceNameType] <p>The name of the new folder.</p>
-- @param _ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- Required parameter: ParentFolderId
function M.CreateFolderRequest(_AuthenticationToken, _Name, _ParentFolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFolderRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["Name"] = _Name,
		["ParentFolderId"] = _ParentFolderId,
	}
	asserts.AssertCreateFolderRequest(t)
	return t
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
-- @param _User [User] <p>The user information.</p>
function M.CreateUserResponse(_User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserResponse")
	local t = { 
		["User"] = _User,
	}
	asserts.AssertCreateUserResponse(t)
	return t
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
-- @param _Marker [MarkerType] <p>The marker for the next set of results. This marker was received from a previous call.</p>
-- @param _Comments [CommentList] <p>The list of comments for the specified document version.</p>
function M.DescribeCommentsResponse(_Marker, _Comments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommentsResponse")
	local t = { 
		["Marker"] = _Marker,
		["Comments"] = _Comments,
	}
	asserts.AssertDescribeCommentsResponse(t)
	return t
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
-- @param _Path [ResourcePath] <p>The path information.</p>
function M.GetFolderPathResponse(_Path, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFolderPathResponse")
	local t = { 
		["Path"] = _Path,
	}
	asserts.AssertGetFolderPathResponse(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _FolderId [ResourceIdType] <p>The ID of the folder.</p>
-- Required parameter: FolderId
function M.DeleteFolderRequest(_AuthenticationToken, _FolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFolderRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["FolderId"] = _FolderId,
	}
	asserts.AssertDeleteFolderRequest(t)
	return t
end

keys.DocumentMetadata = { ["ResourceState"] = true, ["Labels"] = true, ["ModifiedTimestamp"] = true, ["ParentFolderId"] = true, ["CreatedTimestamp"] = true, ["LatestVersionMetadata"] = true, ["CreatorId"] = true, ["Id"] = true, nil }

function asserts.AssertDocumentMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentMetadata to be of type 'table'")
	if struct["ResourceState"] then asserts.AssertResourceStateType(struct["ResourceState"]) end
	if struct["Labels"] then asserts.AssertLabels(struct["Labels"]) end
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
-- @param _ResourceState [ResourceStateType] <p>The resource state.</p>
-- @param _Labels [Labels] <p>List of labels on the document.</p>
-- @param _ModifiedTimestamp [TimestampType] <p>The time when the document was updated.</p>
-- @param _ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- @param _CreatedTimestamp [TimestampType] <p>The time when the document was created.</p>
-- @param _LatestVersionMetadata [DocumentVersionMetadata] <p>The latest version of the document.</p>
-- @param _CreatorId [IdType] <p>The ID of the creator.</p>
-- @param _Id [ResourceIdType] <p>The ID of the document.</p>
function M.DocumentMetadata(_ResourceState, _Labels, _ModifiedTimestamp, _ParentFolderId, _CreatedTimestamp, _LatestVersionMetadata, _CreatorId, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentMetadata")
	local t = { 
		["ResourceState"] = _ResourceState,
		["Labels"] = _Labels,
		["ModifiedTimestamp"] = _ModifiedTimestamp,
		["ParentFolderId"] = _ParentFolderId,
		["CreatedTimestamp"] = _CreatedTimestamp,
		["LatestVersionMetadata"] = _LatestVersionMetadata,
		["CreatorId"] = _CreatorId,
		["Id"] = _Id,
	}
	asserts.AssertDocumentMetadata(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.DocumentLockedForCommentsException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentLockedForCommentsException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDocumentLockedForCommentsException(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _ResourceState [ResourceStateType] <p>The resource state of the document. Note that only ACTIVE and RECYCLED are supported.</p>
-- @param _Name [ResourceNameType] <p>The name of the document.</p>
-- @param _DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- @param _ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- Required parameter: DocumentId
function M.UpdateDocumentRequest(_AuthenticationToken, _ResourceState, _Name, _DocumentId, _ParentFolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDocumentRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["ResourceState"] = _ResourceState,
		["Name"] = _Name,
		["DocumentId"] = _DocumentId,
		["ParentFolderId"] = _ParentFolderId,
	}
	asserts.AssertUpdateDocumentRequest(t)
	return t
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
-- @param _Marker [PageMarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- @param _Principals [PrincipalList] <p>The principals.</p>
function M.DescribeResourcePermissionsResponse(_Marker, _Principals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeResourcePermissionsResponse")
	local t = { 
		["Marker"] = _Marker,
		["Principals"] = _Principals,
	}
	asserts.AssertDescribeResourcePermissionsResponse(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _Fields [FieldNamesType] <p>A comma-separated list of values. Specify "SOURCE" to include a URL for the source document.</p>
-- @param _VersionId [DocumentVersionIdType] <p>The version ID of the document.</p>
-- @param _IncludeCustomMetadata [BooleanType] <p>Set this to TRUE to include custom metadata in the response.</p>
-- @param _DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required parameter: DocumentId
-- Required parameter: VersionId
function M.GetDocumentVersionRequest(_AuthenticationToken, _Fields, _VersionId, _IncludeCustomMetadata, _DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentVersionRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["Fields"] = _Fields,
		["VersionId"] = _VersionId,
		["IncludeCustomMetadata"] = _IncludeCustomMetadata,
		["DocumentId"] = _DocumentId,
	}
	asserts.AssertGetDocumentVersionRequest(t)
	return t
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
function M.DeactivatingLastSystemUserException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeactivatingLastSystemUserException")
	local t = { 
	}
	asserts.AssertDeactivatingLastSystemUserException(t)
	return t
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
-- @param _Status [ShareStatusType] <p>The status.</p>
-- @param _StatusMessage [MessageType] <p>The status message.</p>
-- @param _Role [RoleType] <p>The role.</p>
-- @param _ShareId [ResourceIdType] <p>The ID of the resource that was shared.</p>
-- @param _PrincipalId [IdType] <p>The ID of the principal.</p>
function M.ShareResult(_Status, _StatusMessage, _Role, _ShareId, _PrincipalId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ShareResult")
	local t = { 
		["Status"] = _Status,
		["StatusMessage"] = _StatusMessage,
		["Role"] = _Role,
		["ShareId"] = _ShareId,
		["PrincipalId"] = _PrincipalId,
	}
	asserts.AssertShareResult(t)
	return t
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
-- @param _CustomMetadata [CustomMetadataMap] <p>The custom metadata on the document.</p>
-- @param _Metadata [DocumentMetadata] <p>The metadata details of the document.</p>
function M.GetDocumentResponse(_CustomMetadata, _Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentResponse")
	local t = { 
		["CustomMetadata"] = _CustomMetadata,
		["Metadata"] = _Metadata,
	}
	asserts.AssertGetDocumentResponse(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _Fields [FieldNamesType] <p>A comma-separated list of values. Specify "NAME" to include the names of the parent folders.</p>
-- @param _FolderId [IdType] <p>The ID of the folder.</p>
-- @param _Limit [LimitType] <p>The maximum number of levels in the hierarchy to return.</p>
-- @param _Marker [PageMarkerType] <p>This value is not supported.</p>
-- Required parameter: FolderId
function M.GetFolderPathRequest(_AuthenticationToken, _Fields, _FolderId, _Limit, _Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFolderPathRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["Fields"] = _Fields,
		["FolderId"] = _FolderId,
		["Limit"] = _Limit,
		["Marker"] = _Marker,
	}
	asserts.AssertGetFolderPathRequest(t)
	return t
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
-- @param _ShareResults [ShareResultsList] <p>The share results.</p>
function M.AddResourcePermissionsResponse(_ShareResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddResourcePermissionsResponse")
	local t = { 
		["ShareResults"] = _ShareResults,
	}
	asserts.AssertAddResourcePermissionsResponse(t)
	return t
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
-- @param _CustomMetadata [CustomMetadataMap] <p>The custom metadata on the folder.</p>
-- @param _Metadata [FolderMetadata] <p>The metadata of the folder.</p>
function M.GetFolderResponse(_CustomMetadata, _Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFolderResponse")
	local t = { 
		["CustomMetadata"] = _CustomMetadata,
		["Metadata"] = _Metadata,
	}
	asserts.AssertGetFolderResponse(t)
	return t
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
-- @param _SubscriptionId [IdType] <p>The ID of the subscription.</p>
-- @param _EndPoint [SubscriptionEndPointType] <p>The endpoint of the subscription.</p>
-- @param _Protocol [SubscriptionProtocolType] <p>The protocol of the subscription.</p>
function M.Subscription(_SubscriptionId, _EndPoint, _Protocol, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscription")
	local t = { 
		["SubscriptionId"] = _SubscriptionId,
		["EndPoint"] = _EndPoint,
		["Protocol"] = _Protocol,
	}
	asserts.AssertSubscription(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.LimitExceededException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertLimitExceededException(t)
	return t
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
-- @param _Id [IdType] <p>The ID of the resource path.</p>
-- @param _Name [ResourceNameType] <p>The name of the resource path.</p>
function M.ResourcePathComponent(_Id, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourcePathComponent")
	local t = { 
		["Id"] = _Id,
		["Name"] = _Name,
	}
	asserts.AssertResourcePathComponent(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _UserId [IdType] <p>The ID of the user.</p>
-- Required parameter: UserId
function M.DeactivateUserRequest(_AuthenticationToken, _UserId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeactivateUserRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["UserId"] = _UserId,
	}
	asserts.AssertDeactivateUserRequest(t)
	return t
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
-- @param _Metadata [FolderMetadata] <p>The metadata of the folder.</p>
function M.CreateFolderResponse(_Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFolderResponse")
	local t = { 
		["Metadata"] = _Metadata,
	}
	asserts.AssertCreateFolderResponse(t)
	return t
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
function M.UnauthorizedOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedOperationException")
	local t = { 
	}
	asserts.AssertUnauthorizedOperationException(t)
	return t
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
-- @param _Sort [UserSortType] <p>The sorting criteria.</p>
-- @param _OrganizationId [IdType] <p>The ID of the organization.</p>
-- @param _Fields [FieldNamesType] <p>A comma-separated list of values. Specify "STORAGE_METADATA" to include the user storage quota and utilization information.</p>
-- @param _UserIds [UserIdsType] <p>The IDs of the users.</p>
-- @param _Marker [PageMarkerType] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- @param _Limit [LimitType] <p>The maximum number of items to return.</p>
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _Query [SearchQueryType] <p>A query to filter users by user name.</p>
-- @param _Include [UserFilterType] <p>The state of the users. Specify "ALL" to include inactive users.</p>
-- @param _Order [OrderType] <p>The order for the results.</p>
function M.DescribeUsersRequest(_Sort, _OrganizationId, _Fields, _UserIds, _Marker, _Limit, _AuthenticationToken, _Query, _Include, _Order, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUsersRequest")
	local t = { 
		["Sort"] = _Sort,
		["OrganizationId"] = _OrganizationId,
		["Fields"] = _Fields,
		["UserIds"] = _UserIds,
		["Marker"] = _Marker,
		["Limit"] = _Limit,
		["AuthenticationToken"] = _AuthenticationToken,
		["Query"] = _Query,
		["Include"] = _Include,
		["Order"] = _Order,
	}
	asserts.AssertDescribeUsersRequest(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- @param _PrincipalType [PrincipalType] <p>The principal type of the resource.</p>
-- @param _PrincipalId [IdType] <p>The principal ID of the resource.</p>
-- Required parameter: ResourceId
-- Required parameter: PrincipalId
function M.RemoveResourcePermissionRequest(_AuthenticationToken, _ResourceId, _PrincipalType, _PrincipalId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveResourcePermissionRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["ResourceId"] = _ResourceId,
		["PrincipalType"] = _PrincipalType,
		["PrincipalId"] = _PrincipalId,
	}
	asserts.AssertRemoveResourcePermissionRequest(t)
	return t
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
-- @param _Components [ResourcePathComponentList] <p>The components of the resource path.</p>
function M.ResourcePath(_Components, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourcePath")
	local t = { 
		["Components"] = _Components,
	}
	asserts.AssertResourcePath(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.IllegalUserStateException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IllegalUserStateException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertIllegalUserStateException(t)
	return t
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
-- @param _Sort [ResourceSortType] <p>The sorting criteria.</p>
-- @param _Include [FieldNamesType] <p>The contents to include. Specify "INITIALIZED" to include initialized documents.</p>
-- @param _Marker [PageMarkerType] <p>The marker for the next set of results. This marker was received from a previous call.</p>
-- @param _Limit [LimitType] <p>The maximum number of items to return with this call.</p>
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _FolderId [ResourceIdType] <p>The ID of the folder.</p>
-- @param _Type [FolderContentType] <p>The type of items.</p>
-- @param _Order [OrderType] <p>The order for the contents of the folder.</p>
-- Required parameter: FolderId
function M.DescribeFolderContentsRequest(_Sort, _Include, _Marker, _Limit, _AuthenticationToken, _FolderId, _Type, _Order, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFolderContentsRequest")
	local t = { 
		["Sort"] = _Sort,
		["Include"] = _Include,
		["Marker"] = _Marker,
		["Limit"] = _Limit,
		["AuthenticationToken"] = _AuthenticationToken,
		["FolderId"] = _FolderId,
		["Type"] = _Type,
		["Order"] = _Order,
	}
	asserts.AssertDescribeFolderContentsRequest(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.ResourceAlreadyCheckedOutException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyCheckedOutException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertResourceAlreadyCheckedOutException(t)
	return t
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
-- @param _Path [ResourcePath] <p>The path information.</p>
function M.GetDocumentPathResponse(_Path, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentPathResponse")
	local t = { 
		["Path"] = _Path,
	}
	asserts.AssertGetDocumentPathResponse(t)
	return t
end

keys.UpdateUserRequest = { ["TimeZoneId"] = true, ["Surname"] = true, ["Locale"] = true, ["UserId"] = true, ["StorageRule"] = true, ["AuthenticationToken"] = true, ["GivenName"] = true, ["Type"] = true, nil }

function asserts.AssertUpdateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["TimeZoneId"] then asserts.AssertTimeZoneIdType(struct["TimeZoneId"]) end
	if struct["Surname"] then asserts.AssertUserAttributeValueType(struct["Surname"]) end
	if struct["Locale"] then asserts.AssertLocaleType(struct["Locale"]) end
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
-- @param _TimeZoneId [TimeZoneIdType] <p>The time zone ID of the user.</p>
-- @param _Surname [UserAttributeValueType] <p>The surname of the user.</p>
-- @param _Locale [LocaleType] <p>The locale of the user.</p>
-- @param _UserId [IdType] <p>The ID of the user.</p>
-- @param _StorageRule [StorageRuleType] <p>The amount of storage for the user.</p>
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _GivenName [UserAttributeValueType] <p>The given name of the user.</p>
-- @param _Type [UserType] <p>The type of the user.</p>
-- Required parameter: UserId
function M.UpdateUserRequest(_TimeZoneId, _Surname, _Locale, _UserId, _StorageRule, _AuthenticationToken, _GivenName, _Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserRequest")
	local t = { 
		["TimeZoneId"] = _TimeZoneId,
		["Surname"] = _Surname,
		["Locale"] = _Locale,
		["UserId"] = _UserId,
		["StorageRule"] = _StorageRule,
		["AuthenticationToken"] = _AuthenticationToken,
		["GivenName"] = _GivenName,
		["Type"] = _Type,
	}
	asserts.AssertUpdateUserRequest(t)
	return t
end

keys.AddResourcePermissionsRequest = { ["AuthenticationToken"] = true, ["ResourceId"] = true, ["Principals"] = true, nil }

function asserts.AssertAddResourcePermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddResourcePermissionsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Principals"], "Expected key Principals to exist in table")
	if struct["AuthenticationToken"] then asserts.AssertAuthenticationHeaderType(struct["AuthenticationToken"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdType(struct["ResourceId"]) end
	if struct["Principals"] then asserts.AssertSharePrincipalList(struct["Principals"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddResourcePermissionsRequest[k], "AddResourcePermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddResourcePermissionsRequest
--  
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- @param _Principals [SharePrincipalList] <p>The users, groups, or organization being granted permission.</p>
-- Required parameter: ResourceId
-- Required parameter: Principals
function M.AddResourcePermissionsRequest(_AuthenticationToken, _ResourceId, _Principals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddResourcePermissionsRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["ResourceId"] = _ResourceId,
		["Principals"] = _Principals,
	}
	asserts.AssertAddResourcePermissionsRequest(t)
	return t
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
-- <p>Describes the users and/or user groups.</p>
-- @param _Users [UserMetadataList] <p>The list of users.</p>
-- @param _Groups [GroupMetadataList] <p>The list of user groups.</p>
function M.Participants(_Users, _Groups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Participants")
	local t = { 
		["Users"] = _Users,
		["Groups"] = _Groups,
	}
	asserts.AssertParticipants(t)
	return t
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
-- @param _UserActivities [UserActivities] <p>The list of activities for the specified user and time period.</p>
-- @param _Marker [MarkerType] <p>The marker for the next set of results.</p>
function M.DescribeActivitiesResponse(_UserActivities, _Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivitiesResponse")
	local t = { 
		["UserActivities"] = _UserActivities,
		["Marker"] = _Marker,
	}
	asserts.AssertDescribeActivitiesResponse(t)
	return t
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
-- @param _StorageRule [StorageRuleType] <p>The storage for a user.</p>
-- @param _StorageUtilizedInBytes [SizeType] <p>The amount of storage utilized, in bytes.</p>
function M.UserStorageMetadata(_StorageRule, _StorageUtilizedInBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserStorageMetadata")
	local t = { 
		["StorageRule"] = _StorageRule,
		["StorageUtilizedInBytes"] = _StorageUtilizedInBytes,
	}
	asserts.AssertUserStorageMetadata(t)
	return t
end

keys.FolderMetadata = { ["Name"] = true, ["LatestVersionSize"] = true, ["Labels"] = true, ["ModifiedTimestamp"] = true, ["Id"] = true, ["CreatedTimestamp"] = true, ["ResourceState"] = true, ["CreatorId"] = true, ["Signature"] = true, ["ParentFolderId"] = true, ["Size"] = true, nil }

function asserts.AssertFolderMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FolderMetadata to be of type 'table'")
	if struct["Name"] then asserts.AssertResourceNameType(struct["Name"]) end
	if struct["LatestVersionSize"] then asserts.AssertSizeType(struct["LatestVersionSize"]) end
	if struct["Labels"] then asserts.AssertLabels(struct["Labels"]) end
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
-- @param _Name [ResourceNameType] <p>The name of the folder.</p>
-- @param _LatestVersionSize [SizeType] <p>The size of the latest version of the folder metadata.</p>
-- @param _Labels [Labels] <p>List of labels on the folder.</p>
-- @param _ModifiedTimestamp [TimestampType] <p>The time when the folder was updated.</p>
-- @param _Id [ResourceIdType] <p>The ID of the folder.</p>
-- @param _CreatedTimestamp [TimestampType] <p>The time when the folder was created.</p>
-- @param _ResourceState [ResourceStateType] <p>The resource state of the folder.</p>
-- @param _CreatorId [IdType] <p>The ID of the creator.</p>
-- @param _Signature [HashType] <p>The unique identifier created from the subfolders and documents of the folder.</p>
-- @param _ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- @param _Size [SizeType] <p>The size of the folder metadata.</p>
function M.FolderMetadata(_Name, _LatestVersionSize, _Labels, _ModifiedTimestamp, _Id, _CreatedTimestamp, _ResourceState, _CreatorId, _Signature, _ParentFolderId, _Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FolderMetadata")
	local t = { 
		["Name"] = _Name,
		["LatestVersionSize"] = _LatestVersionSize,
		["Labels"] = _Labels,
		["ModifiedTimestamp"] = _ModifiedTimestamp,
		["Id"] = _Id,
		["CreatedTimestamp"] = _CreatedTimestamp,
		["ResourceState"] = _ResourceState,
		["CreatorId"] = _CreatorId,
		["Signature"] = _Signature,
		["ParentFolderId"] = _ParentFolderId,
		["Size"] = _Size,
	}
	asserts.AssertFolderMetadata(t)
	return t
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
-- @param _Id [IdType] <p>The ID of the user group.</p>
-- @param _Name [GroupNameType] <p>The name of the group.</p>
function M.GroupMetadata(_Id, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupMetadata")
	local t = { 
		["Id"] = _Id,
		["Name"] = _Name,
	}
	asserts.AssertGroupMetadata(t)
	return t
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
-- @param _SignedHeaders [SignedHeaderMap] <p>The signed headers.</p>
-- @param _UploadUrl [UrlType] <p>The URL of the upload.</p>
function M.UploadMetadata(_SignedHeaders, _UploadUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadMetadata")
	local t = { 
		["SignedHeaders"] = _SignedHeaders,
		["UploadUrl"] = _UploadUrl,
	}
	asserts.AssertUploadMetadata(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.CustomMetadataLimitExceededException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomMetadataLimitExceededException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertCustomMetadataLimitExceededException(t)
	return t
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
-- @param _Username [UsernameType] <p>The login name of the user.</p>
-- @param _Status [UserStatusType] <p>The status of the user.</p>
-- @param _Surname [UserAttributeValueType] <p>The surname of the user.</p>
-- @param _OrganizationId [IdType] <p>The ID of the organization.</p>
-- @param _Storage [UserStorageMetadata] <p>The storage for the user.</p>
-- @param _RecycleBinFolderId [ResourceIdType] <p>The ID of the recycle bin folder.</p>
-- @param _TimeZoneId [TimeZoneIdType] <p>The time zone ID of the user.</p>
-- @param _ModifiedTimestamp [TimestampType] <p>The time when the user was modified.</p>
-- @param _CreatedTimestamp [TimestampType] <p>The time when the user was created.</p>
-- @param _Locale [LocaleType] <p>The locale of the user.</p>
-- @param _EmailAddress [EmailAddressType] <p>The email address of the user.</p>
-- @param _RootFolderId [ResourceIdType] <p>The ID of the root folder.</p>
-- @param _GivenName [UserAttributeValueType] <p>The given name of the user.</p>
-- @param _Type [UserType] <p>The type of user.</p>
-- @param _Id [IdType] <p>The ID of the user.</p>
function M.User(_Username, _Status, _Surname, _OrganizationId, _Storage, _RecycleBinFolderId, _TimeZoneId, _ModifiedTimestamp, _CreatedTimestamp, _Locale, _EmailAddress, _RootFolderId, _GivenName, _Type, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating User")
	local t = { 
		["Username"] = _Username,
		["Status"] = _Status,
		["Surname"] = _Surname,
		["OrganizationId"] = _OrganizationId,
		["Storage"] = _Storage,
		["RecycleBinFolderId"] = _RecycleBinFolderId,
		["TimeZoneId"] = _TimeZoneId,
		["ModifiedTimestamp"] = _ModifiedTimestamp,
		["CreatedTimestamp"] = _CreatedTimestamp,
		["Locale"] = _Locale,
		["EmailAddress"] = _EmailAddress,
		["RootFolderId"] = _RootFolderId,
		["GivenName"] = _GivenName,
		["Type"] = _Type,
		["Id"] = _Id,
	}
	asserts.AssertUser(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.InvalidOperationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOperationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidOperationException(t)
	return t
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
function M.CreateCustomMetadataResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCustomMetadataResponse")
	local t = { 
	}
	asserts.AssertCreateCustomMetadataResponse(t)
	return t
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
-- @param _Contributor [User] <p>The user who made the comment.</p>
-- @param _CommentId [CommentIdType] <p>The ID of the comment.</p>
-- @param _CreatedTimestamp [TimestampType] 
-- @param _RecipientId [IdType] <p>The ID of the user being replied to.</p>
-- @param _CommentStatus [CommentStatusType] 
function M.CommentMetadata(_Contributor, _CommentId, _CreatedTimestamp, _RecipientId, _CommentStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CommentMetadata")
	local t = { 
		["Contributor"] = _Contributor,
		["CommentId"] = _CommentId,
		["CreatedTimestamp"] = _CreatedTimestamp,
		["RecipientId"] = _RecipientId,
		["CommentStatus"] = _CommentStatus,
	}
	asserts.AssertCommentMetadata(t)
	return t
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
function M.DeleteLabelsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLabelsResponse")
	local t = { 
	}
	asserts.AssertDeleteLabelsResponse(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _CommentId [CommentIdType] <p>The ID of the comment.</p>
-- @param _VersionId [DocumentVersionIdType] <p>The ID of the document version.</p>
-- @param _DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required parameter: DocumentId
-- Required parameter: VersionId
-- Required parameter: CommentId
function M.DeleteCommentRequest(_AuthenticationToken, _CommentId, _VersionId, _DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCommentRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["CommentId"] = _CommentId,
		["VersionId"] = _VersionId,
		["DocumentId"] = _DocumentId,
	}
	asserts.AssertDeleteCommentRequest(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required parameter: DocumentId
function M.DeleteDocumentRequest(_AuthenticationToken, _DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDocumentRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["DocumentId"] = _DocumentId,
	}
	asserts.AssertDeleteDocumentRequest(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _Marker [MarkerType] <p>The marker for the next set of results. This marker was received from a previous call.</p>
-- @param _VersionId [DocumentVersionIdType] <p>The ID of the document version.</p>
-- @param _Limit [LimitType] <p>The maximum number of items to return.</p>
-- @param _DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required parameter: DocumentId
-- Required parameter: VersionId
function M.DescribeCommentsRequest(_AuthenticationToken, _Marker, _VersionId, _Limit, _DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCommentsRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["Marker"] = _Marker,
		["VersionId"] = _VersionId,
		["Limit"] = _Limit,
		["DocumentId"] = _DocumentId,
	}
	asserts.AssertDescribeCommentsRequest(t)
	return t
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
-- @param _Marker [PageMarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
-- @param _TotalNumberOfUsers [SizeType] <p>The total number of users included in the results.</p>
-- @param _Users [OrganizationUserList] <p>The users.</p>
function M.DescribeUsersResponse(_Marker, _TotalNumberOfUsers, _Users, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeUsersResponse")
	local t = { 
		["Marker"] = _Marker,
		["TotalNumberOfUsers"] = _TotalNumberOfUsers,
		["Users"] = _Users,
	}
	asserts.AssertDescribeUsersResponse(t)
	return t
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
-- @param _Username [UsernameType] <p>The login name of the user.</p>
-- @param _TimeZoneId [TimeZoneIdType] <p>The time zone ID of the user.</p>
-- @param _Password [PasswordType] <p>The password of the user.</p>
-- @param _Surname [UserAttributeValueType] <p>The surname of the user.</p>
-- @param _OrganizationId [IdType] <p>The ID of the organization.</p>
-- @param _EmailAddress [EmailAddressType] <p>The email address of the user.</p>
-- @param _StorageRule [StorageRuleType] <p>The amount of storage for the user.</p>
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _GivenName [UserAttributeValueType] <p>The given name of the user.</p>
-- Required parameter: Username
-- Required parameter: GivenName
-- Required parameter: Surname
-- Required parameter: Password
function M.CreateUserRequest(_Username, _TimeZoneId, _Password, _Surname, _OrganizationId, _EmailAddress, _StorageRule, _AuthenticationToken, _GivenName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserRequest")
	local t = { 
		["Username"] = _Username,
		["TimeZoneId"] = _TimeZoneId,
		["Password"] = _Password,
		["Surname"] = _Surname,
		["OrganizationId"] = _OrganizationId,
		["EmailAddress"] = _EmailAddress,
		["StorageRule"] = _StorageRule,
		["AuthenticationToken"] = _AuthenticationToken,
		["GivenName"] = _GivenName,
	}
	asserts.AssertCreateUserRequest(t)
	return t
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
-- @param _Comment [Comment] <p>The comment that has been created.</p>
function M.CreateCommentResponse(_Comment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCommentResponse")
	local t = { 
		["Comment"] = _Comment,
	}
	asserts.AssertCreateCommentResponse(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _ResourceId [ResourceIdType] <p>The ID of the resource.</p>
-- @param _VersionId [DocumentVersionIdType] <p>The ID of the version, if the custom metadata is being added to a document version.</p>
-- @param _CustomMetadata [CustomMetadataMap] <p>Custom metadata in the form of name-value pairs.</p>
-- Required parameter: ResourceId
-- Required parameter: CustomMetadata
function M.CreateCustomMetadataRequest(_AuthenticationToken, _ResourceId, _VersionId, _CustomMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCustomMetadataRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["ResourceId"] = _ResourceId,
		["VersionId"] = _VersionId,
		["CustomMetadata"] = _CustomMetadata,
	}
	asserts.AssertCreateCustomMetadataRequest(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _IncludeCustomMetadata [BooleanType] <p>Set to TRUE to include custom metadata in the response.</p>
-- @param _FolderId [ResourceIdType] <p>The ID of the folder.</p>
-- Required parameter: FolderId
function M.GetFolderRequest(_AuthenticationToken, _IncludeCustomMetadata, _FolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFolderRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["IncludeCustomMetadata"] = _IncludeCustomMetadata,
		["FolderId"] = _FolderId,
	}
	asserts.AssertGetFolderRequest(t)
	return t
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
-- @param _Subscription [Subscription] <p>The subscription.</p>
function M.CreateNotificationSubscriptionResponse(_Subscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNotificationSubscriptionResponse")
	local t = { 
		["Subscription"] = _Subscription,
	}
	asserts.AssertCreateNotificationSubscriptionResponse(t)
	return t
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
-- @param _OrganizationId [IdType] <p>The ID of the organization.</p>
-- @param _Marker [PageMarkerType] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- @param _Limit [LimitType] <p>The maximum number of items to return with this call.</p>
-- Required parameter: OrganizationId
function M.DescribeNotificationSubscriptionsRequest(_OrganizationId, _Marker, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNotificationSubscriptionsRequest")
	local t = { 
		["OrganizationId"] = _OrganizationId,
		["Marker"] = _Marker,
		["Limit"] = _Limit,
	}
	asserts.AssertDescribeNotificationSubscriptionsRequest(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.StorageLimitExceededException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageLimitExceededException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertStorageLimitExceededException(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.TooManySubscriptionsException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManySubscriptionsException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTooManySubscriptionsException(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _VersionId [DocumentVersionIdType] <p>The version ID of the document.</p>
-- @param _DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- @param _VersionStatus [DocumentVersionStatus] <p>The status of the version.</p>
-- Required parameter: DocumentId
-- Required parameter: VersionId
function M.UpdateDocumentVersionRequest(_AuthenticationToken, _VersionId, _DocumentId, _VersionStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDocumentVersionRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["VersionId"] = _VersionId,
		["DocumentId"] = _DocumentId,
		["VersionStatus"] = _VersionStatus,
	}
	asserts.AssertUpdateDocumentVersionRequest(t)
	return t
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
-- @param _Message [ErrorMessageType] 
-- @param _EntityIds [EntityIdList] 
function M.EntityNotExistsException(_Message, _EntityIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityNotExistsException")
	local t = { 
		["Message"] = _Message,
		["EntityIds"] = _EntityIds,
	}
	asserts.AssertEntityNotExistsException(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _VersionId [DocumentVersionIdType] <p>The ID of the version.</p>
-- @param _DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required parameter: DocumentId
-- Required parameter: VersionId
function M.AbortDocumentVersionUploadRequest(_AuthenticationToken, _VersionId, _DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AbortDocumentVersionUploadRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["VersionId"] = _VersionId,
		["DocumentId"] = _DocumentId,
	}
	asserts.AssertAbortDocumentVersionUploadRequest(t)
	return t
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
-- @param _Type [RolePermissionType] <p>The type of permissions.</p>
-- @param _Role [RoleType] <p>The role of the user.</p>
function M.PermissionInfo(_Type, _Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PermissionInfo")
	local t = { 
		["Type"] = _Type,
		["Role"] = _Role,
	}
	asserts.AssertPermissionInfo(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _FolderId [ResourceIdType] <p>The ID of the folder.</p>
-- @param _Name [ResourceNameType] <p>The name of the folder.</p>
-- @param _ResourceState [ResourceStateType] <p>The resource state of the folder. Note that only ACTIVE and RECYCLED are accepted values from the API.</p>
-- @param _ParentFolderId [ResourceIdType] <p>The ID of the parent folder.</p>
-- Required parameter: FolderId
function M.UpdateFolderRequest(_AuthenticationToken, _FolderId, _Name, _ResourceState, _ParentFolderId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFolderRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["FolderId"] = _FolderId,
		["Name"] = _Name,
		["ResourceState"] = _ResourceState,
		["ParentFolderId"] = _ParentFolderId,
	}
	asserts.AssertUpdateFolderRequest(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _Marker [PageMarkerType] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- @param _Limit [LimitType] <p>The maximum number of items to return.</p>
-- Required parameter: AuthenticationToken
function M.DescribeRootFoldersRequest(_AuthenticationToken, _Marker, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRootFoldersRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["Marker"] = _Marker,
		["Limit"] = _Limit,
	}
	asserts.AssertDescribeRootFoldersRequest(t)
	return t
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
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _IncludeCustomMetadata [BooleanType] <p>Set this to <code>TRUE</code> to include custom metadata in the response.</p>
-- @param _DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required parameter: DocumentId
function M.GetDocumentRequest(_AuthenticationToken, _IncludeCustomMetadata, _DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentRequest")
	local t = { 
		["AuthenticationToken"] = _AuthenticationToken,
		["IncludeCustomMetadata"] = _IncludeCustomMetadata,
		["DocumentId"] = _DocumentId,
	}
	asserts.AssertGetDocumentRequest(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.DraftUploadOutOfSyncException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DraftUploadOutOfSyncException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDraftUploadOutOfSyncException(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.StorageLimitWillExceedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageLimitWillExceedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertStorageLimitWillExceedException(t)
	return t
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
-- @param _DocumentVersions [DocumentVersionMetadataList] <p>The document versions.</p>
-- @param _Marker [PageMarkerType] <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
function M.DescribeDocumentVersionsResponse(_DocumentVersions, _Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDocumentVersionsResponse")
	local t = { 
		["DocumentVersions"] = _DocumentVersions,
		["Marker"] = _Marker,
	}
	asserts.AssertDescribeDocumentVersionsResponse(t)
	return t
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
-- @param _StorageType [StorageType] <p>The type of storage.</p>
-- @param _StorageAllocatedInBytes [PositiveSizeType] <p>The amount of storage allocated, in bytes.</p>
function M.StorageRuleType(_StorageType, _StorageAllocatedInBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageRuleType")
	local t = { 
		["StorageType"] = _StorageType,
		["StorageAllocatedInBytes"] = _StorageAllocatedInBytes,
	}
	asserts.AssertStorageRuleType(t)
	return t
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
-- @param _Initiator [UserMetadata] <p>The user who performed the action.</p>
-- @param _OriginalParent [ResourceMetadata] <p>The original parent of the resource. This is an optional field and is filled for move activities.</p>
-- @param _OrganizationId [IdType] <p>The ID of the organization.</p>
-- @param _TimeStamp [TimestampType] <p>The timestamp when the action was performed.</p>
-- @param _ResourceMetadata [ResourceMetadata] <p>The metadata of the resource involved in the user action.</p>
-- @param _Participants [Participants] <p>The list of users or groups impacted by this action. This is an optional field and is filled for the following sharing activities: DOCUMENT_SHARED, DOCUMENT_SHARED, DOCUMENT_UNSHARED, FOLDER_SHARED, FOLDER_UNSHARED.</p>
-- @param _Type [ActivityType] <p>The activity type.</p>
-- @param _CommentMetadata [CommentMetadata] <p>Metadata of the commenting activity. This is an optional field and is filled for commenting activities.</p>
function M.Activity(_Initiator, _OriginalParent, _OrganizationId, _TimeStamp, _ResourceMetadata, _Participants, _Type, _CommentMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Activity")
	local t = { 
		["Initiator"] = _Initiator,
		["OriginalParent"] = _OriginalParent,
		["OrganizationId"] = _OrganizationId,
		["TimeStamp"] = _TimeStamp,
		["ResourceMetadata"] = _ResourceMetadata,
		["Participants"] = _Participants,
		["Type"] = _Type,
		["CommentMetadata"] = _CommentMetadata,
	}
	asserts.AssertActivity(t)
	return t
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
-- <p>The pagination marker and/or limit fields are not valid.</p>
-- @param _Message [ErrorMessageType] 
function M.InvalidArgumentException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArgumentException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidArgumentException(t)
	return t
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
function M.DeleteCustomMetadataResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCustomMetadataResponse")
	local t = { 
	}
	asserts.AssertDeleteCustomMetadataResponse(t)
	return t
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
-- @param _Fields [FieldNamesType] <p>Specify "SOURCE" to include initialized versions and a URL for the source document.</p>
-- @param _Marker [PageMarkerType] <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
-- @param _Limit [LimitType] <p>The maximum number of versions to return with this call.</p>
-- @param _AuthenticationToken [AuthenticationHeaderType] <p>Amazon WorkDocs authentication token. This field should not be set when using administrative API actions, as in accessing the API using AWS credentials.</p>
-- @param _Include [FieldNamesType] <p>A comma-separated list of values. Specify "INITIALIZED" to include incomplete versions.</p>
-- @param _DocumentId [ResourceIdType] <p>The ID of the document.</p>
-- Required parameter: DocumentId
function M.DescribeDocumentVersionsRequest(_Fields, _Marker, _Limit, _AuthenticationToken, _Include, _DocumentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDocumentVersionsRequest")
	local t = { 
		["Fields"] = _Fields,
		["Marker"] = _Marker,
		["Limit"] = _Limit,
		["AuthenticationToken"] = _AuthenticationToken,
		["Include"] = _Include,
		["DocumentId"] = _DocumentId,
	}
	asserts.AssertDescribeDocumentVersionsRequest(t)
	return t
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
-- @param _User [User] <p>Metadata of the user.</p>
function M.GetCurrentUserResponse(_User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCurrentUserResponse")
	local t = { 
		["User"] = _User,
	}
	asserts.AssertGetCurrentUserResponse(t)
	return t
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
-- @param _Message [ErrorMessageType] 
function M.EntityAlreadyExistsException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityAlreadyExistsException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertEntityAlreadyExistsException(t)
	return t
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
-- @param _Status [CommentStatusType] <p>The status of the comment.</p>
-- @param _Text [CommentTextType] <p>The text of the comment.</p>
-- @param _ParentId [CommentIdType] <p>The ID of the parent comment.</p>
-- @param _RecipientId [IdType] <p>If the comment is a reply to another user's comment, this field contains the user ID of the user being replied to.</p>
-- @param _Visibility [CommentVisibilityType] <p>The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors.</p>
-- @param _CreatedTimestamp [TimestampType] <p>The time that the comment was created.</p>
-- @param _ThreadId [CommentIdType] <p>The ID of the root comment in the thread.</p>
-- @param _Contributor [User] <p>The details of the user who made the comment.</p>
-- @param _CommentId [CommentIdType] <p>The ID of the comment.</p>
-- Required parameter: CommentId
function M.Comment(_Status, _Text, _ParentId, _RecipientId, _Visibility, _CreatedTimestamp, _ThreadId, _Contributor, _CommentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Comment")
	local t = { 
		["Status"] = _Status,
		["Text"] = _Text,
		["ParentId"] = _ParentId,
		["RecipientId"] = _RecipientId,
		["Visibility"] = _Visibility,
		["CreatedTimestamp"] = _CreatedTimestamp,
		["ThreadId"] = _ThreadId,
		["Contributor"] = _Contributor,
		["CommentId"] = _CommentId,
	}
	asserts.AssertComment(t)
	return t
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
-- <p>The AWS Directory Service cannot reach an on-premises instance. Or a dependency under the control of the organization is failing, such as a connected active directory.</p>
-- @param _Message [ErrorMessageType] 
function M.FailedDependencyException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailedDependencyException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertFailedDependencyException(t)
	return t
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
-- @param _Type [PrincipalType] <p>The type of resource.</p>
-- @param _Id [IdType] <p>The ID of the resource.</p>
-- @param _Roles [PermissionInfoList] <p>The permission information for the resource.</p>
function M.Principal(_Type, _Id, _Roles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Principal")
	local t = { 
		["Type"] = _Type,
		["Id"] = _Id,
		["Roles"] = _Roles,
	}
	asserts.AssertPrincipal(t)
	return t
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

function asserts.AssertLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected Label to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Label(str)
	asserts.AssertLabel(str)
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

function asserts.AssertOrderType(str)
	assert(str)
	assert(type(str) == "string", "Expected OrderType to be of type 'string'")
end

--  
function M.OrderType(str)
	asserts.AssertOrderType(str)
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

function asserts.AssertLocaleType(str)
	assert(str)
	assert(type(str) == "string", "Expected LocaleType to be of type 'string'")
end

--  
function M.LocaleType(str)
	asserts.AssertLocaleType(str)
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

function asserts.AssertLabels(list)
	assert(list)
	assert(type(list) == "table", "Expected Labels to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertLabel(v)
	end
end

--  
-- List of Label objects
function M.Labels(list)
	asserts.AssertLabels(list)
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
--- Call DeactivateUser asynchronously, invoking a callback when done
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

--- Call DeactivateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeactivateUserRequest
-- @return response
-- @return error_message
function M.DeactivateUserSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeactivateUserAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRootFolders asynchronously, invoking a callback when done
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

--- Call DescribeRootFolders synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRootFoldersRequest
-- @return response
-- @return error_message
function M.DescribeRootFoldersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRootFoldersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddResourcePermissions asynchronously, invoking a callback when done
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

--- Call AddResourcePermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddResourcePermissionsRequest
-- @return response
-- @return error_message
function M.AddResourcePermissionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddResourcePermissionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFolder asynchronously, invoking a callback when done
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

--- Call DeleteFolder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFolderRequest
-- @return response
-- @return error_message
function M.DeleteFolderSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFolderAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUsers asynchronously, invoking a callback when done
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

--- Call DescribeUsers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUsersRequest
-- @return response
-- @return error_message
function M.DescribeUsersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUsersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDocumentVersion asynchronously, invoking a callback when done
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

--- Call UpdateDocumentVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDocumentVersionRequest
-- @return response
-- @return error_message
function M.UpdateDocumentVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDocumentVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCustomMetadata asynchronously, invoking a callback when done
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

--- Call DeleteCustomMetadata synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCustomMetadataRequest
-- @return response
-- @return error_message
function M.DeleteCustomMetadataSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCustomMetadataAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLabels asynchronously, invoking a callback when done
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

--- Call CreateLabels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLabelsRequest
-- @return response
-- @return error_message
function M.CreateLabelsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLabelsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call InitiateDocumentVersionUpload asynchronously, invoking a callback when done
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

--- Call InitiateDocumentVersionUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InitiateDocumentVersionUploadRequest
-- @return response
-- @return error_message
function M.InitiateDocumentVersionUploadSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitiateDocumentVersionUploadAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCustomMetadata asynchronously, invoking a callback when done
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

--- Call CreateCustomMetadata synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCustomMetadataRequest
-- @return response
-- @return error_message
function M.CreateCustomMetadataSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCustomMetadataAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocument asynchronously, invoking a callback when done
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

--- Call GetDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentRequest
-- @return response
-- @return error_message
function M.GetDocumentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentPath asynchronously, invoking a callback when done
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

--- Call GetDocumentPath synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentPathRequest
-- @return response
-- @return error_message
function M.GetDocumentPathSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentPathAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveAllResourcePermissions asynchronously, invoking a callback when done
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

--- Call RemoveAllResourcePermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveAllResourcePermissionsRequest
-- @return response
-- @return error_message
function M.RemoveAllResourcePermissionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveAllResourcePermissionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUser asynchronously, invoking a callback when done
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

--- Call UpdateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserRequest
-- @return response
-- @return error_message
function M.UpdateUserSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCurrentUser asynchronously, invoking a callback when done
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

--- Call GetCurrentUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCurrentUserRequest
-- @return response
-- @return error_message
function M.GetCurrentUserSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCurrentUserAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFolder asynchronously, invoking a callback when done
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

--- Call UpdateFolder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFolderRequest
-- @return response
-- @return error_message
function M.UpdateFolderSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFolderAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteComment asynchronously, invoking a callback when done
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

--- Call DeleteComment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCommentRequest
-- @return response
-- @return error_message
function M.DeleteCommentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCommentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUser asynchronously, invoking a callback when done
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

--- Call CreateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserRequest
-- @return response
-- @return error_message
function M.CreateUserSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFolderContents asynchronously, invoking a callback when done
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

--- Call DeleteFolderContents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFolderContentsRequest
-- @return response
-- @return error_message
function M.DeleteFolderContentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFolderContentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNotificationSubscription asynchronously, invoking a callback when done
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

--- Call DeleteNotificationSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNotificationSubscriptionRequest
-- @return response
-- @return error_message
function M.DeleteNotificationSubscriptionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNotificationSubscriptionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AbortDocumentVersionUpload asynchronously, invoking a callback when done
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

--- Call AbortDocumentVersionUpload synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AbortDocumentVersionUploadRequest
-- @return response
-- @return error_message
function M.AbortDocumentVersionUploadSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AbortDocumentVersionUploadAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeNotificationSubscriptions asynchronously, invoking a callback when done
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

--- Call DescribeNotificationSubscriptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeNotificationSubscriptionsRequest
-- @return response
-- @return error_message
function M.DescribeNotificationSubscriptionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeNotificationSubscriptionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateComment asynchronously, invoking a callback when done
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

--- Call CreateComment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCommentRequest
-- @return response
-- @return error_message
function M.CreateCommentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCommentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentVersion asynchronously, invoking a callback when done
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

--- Call GetDocumentVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentVersionRequest
-- @return response
-- @return error_message
function M.GetDocumentVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFolderPath asynchronously, invoking a callback when done
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

--- Call GetFolderPath synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFolderPathRequest
-- @return response
-- @return error_message
function M.GetFolderPathSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFolderPathAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFolderContents asynchronously, invoking a callback when done
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

--- Call DescribeFolderContents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeFolderContentsRequest
-- @return response
-- @return error_message
function M.DescribeFolderContentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFolderContentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFolder asynchronously, invoking a callback when done
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

--- Call CreateFolder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFolderRequest
-- @return response
-- @return error_message
function M.CreateFolderSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFolderAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeResourcePermissions asynchronously, invoking a callback when done
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

--- Call DescribeResourcePermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeResourcePermissionsRequest
-- @return response
-- @return error_message
function M.DescribeResourcePermissionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeResourcePermissionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateNotificationSubscription asynchronously, invoking a callback when done
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

--- Call CreateNotificationSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateNotificationSubscriptionRequest
-- @return response
-- @return error_message
function M.CreateNotificationSubscriptionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateNotificationSubscriptionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDocument asynchronously, invoking a callback when done
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

--- Call UpdateDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDocumentRequest
-- @return response
-- @return error_message
function M.UpdateDocumentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDocumentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeComments asynchronously, invoking a callback when done
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

--- Call DescribeComments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCommentsRequest
-- @return response
-- @return error_message
function M.DescribeCommentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCommentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUser asynchronously, invoking a callback when done
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

--- Call DeleteUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserRequest
-- @return response
-- @return error_message
function M.DeleteUserSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDocument asynchronously, invoking a callback when done
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

--- Call DeleteDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDocumentRequest
-- @return response
-- @return error_message
function M.DeleteDocumentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDocumentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeActivities asynchronously, invoking a callback when done
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

--- Call DescribeActivities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeActivitiesRequest
-- @return response
-- @return error_message
function M.DescribeActivitiesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeActivitiesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ActivateUser asynchronously, invoking a callback when done
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

--- Call ActivateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ActivateUserRequest
-- @return response
-- @return error_message
function M.ActivateUserSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ActivateUserAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFolder asynchronously, invoking a callback when done
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

--- Call GetFolder synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFolderRequest
-- @return response
-- @return error_message
function M.GetFolderSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFolderAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveResourcePermission asynchronously, invoking a callback when done
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

--- Call RemoveResourcePermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveResourcePermissionRequest
-- @return response
-- @return error_message
function M.RemoveResourcePermissionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveResourcePermissionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLabels asynchronously, invoking a callback when done
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

--- Call DeleteLabels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLabelsRequest
-- @return response
-- @return error_message
function M.DeleteLabelsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLabelsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDocumentVersions asynchronously, invoking a callback when done
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

--- Call DescribeDocumentVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDocumentVersionsRequest
-- @return response
-- @return error_message
function M.DescribeDocumentVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDocumentVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
