--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudDirectory (clouddirectory-2016-05-10)

local M = {}

M.metadata = {
	api_version = "2016-05-10",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "clouddirectory",
	service_abbreviation = "",
	service_full_name = "Amazon CloudDirectory",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "clouddirectory-2016-05-10",
}

local keys = {}
local asserts = {}

keys.GetSchemaAsJsonResponse = { ["Document"] = true, ["Name"] = true, nil }

function asserts.AssertGetSchemaAsJsonResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSchemaAsJsonResponse to be of type 'table'")
	if struct["Document"] then asserts.AssertSchemaJsonDocument(struct["Document"]) end
	if struct["Name"] then asserts.AssertSchemaName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSchemaAsJsonResponse[k], "GetSchemaAsJsonResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSchemaAsJsonResponse
--  
-- @param _Document [SchemaJsonDocument] <p>The JSON representation of the schema document.</p>
-- @param _Name [SchemaName] <p>The name of the retrieved schema.</p>
function M.GetSchemaAsJsonResponse(_Document, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSchemaAsJsonResponse")
	local t = { 
		["Document"] = _Document,
		["Name"] = _Name,
	}
	asserts.AssertGetSchemaAsJsonResponse(t)
	return t
end

keys.ObjectAttributeRange = { ["AttributeKey"] = true, ["Range"] = true, nil }

function asserts.AssertObjectAttributeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectAttributeRange to be of type 'table'")
	if struct["AttributeKey"] then asserts.AssertAttributeKey(struct["AttributeKey"]) end
	if struct["Range"] then asserts.AssertTypedAttributeValueRange(struct["Range"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectAttributeRange[k], "ObjectAttributeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectAttributeRange
-- <p>A range of attributes.</p>
-- @param _AttributeKey [AttributeKey] <p>The key of the attribute that the attribute range covers.</p>
-- @param _Range [TypedAttributeValueRange] <p>The range of attribute values being selected.</p>
function M.ObjectAttributeRange(_AttributeKey, _Range, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectAttributeRange")
	local t = { 
		["AttributeKey"] = _AttributeKey,
		["Range"] = _Range,
	}
	asserts.AssertObjectAttributeRange(t)
	return t
end

keys.LinkNameAlreadyInUseException = { ["Message"] = true, nil }

function asserts.AssertLinkNameAlreadyInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LinkNameAlreadyInUseException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LinkNameAlreadyInUseException[k], "LinkNameAlreadyInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LinkNameAlreadyInUseException
-- <p>Indicates that a link could not be created due to a naming conflict. Choose a different name and then try again.</p>
-- @param _Message [ExceptionMessage] 
function M.LinkNameAlreadyInUseException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LinkNameAlreadyInUseException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertLinkNameAlreadyInUseException(t)
	return t
end

keys.BatchReadException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertBatchReadException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["Type"] then asserts.AssertBatchReadExceptionType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchReadException[k], "BatchReadException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadException
-- <p>The batch read exception structure, which contains the exception type and message.</p>
-- @param _Message [ExceptionMessage] <p>An exception message that is associated with the failure.</p>
-- @param _Type [BatchReadExceptionType] <p>A type of exception, such as <code>InvalidArnException</code>.</p>
function M.BatchReadException(_Message, _Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadException")
	local t = { 
		["Message"] = _Message,
		["Type"] = _Type,
	}
	asserts.AssertBatchReadException(t)
	return t
end

keys.RemoveFacetFromObjectResponse = { nil }

function asserts.AssertRemoveFacetFromObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveFacetFromObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RemoveFacetFromObjectResponse[k], "RemoveFacetFromObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveFacetFromObjectResponse
--  
function M.RemoveFacetFromObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveFacetFromObjectResponse")
	local t = { 
	}
	asserts.AssertRemoveFacetFromObjectResponse(t)
	return t
end

keys.InvalidNextTokenException = { ["Message"] = true, nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>Indicates that the <code>NextToken</code> value is not valid.</p>
-- @param _Message [ExceptionMessage] 
function M.InvalidNextTokenException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidNextTokenException(t)
	return t
end

keys.AttachObjectRequest = { ["ParentReference"] = true, ["LinkName"] = true, ["DirectoryArn"] = true, ["ChildReference"] = true, nil }

function asserts.AssertAttachObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["ChildReference"], "Expected key ChildReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	if struct["ParentReference"] then asserts.AssertObjectReference(struct["ParentReference"]) end
	if struct["LinkName"] then asserts.AssertLinkName(struct["LinkName"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["ChildReference"] then asserts.AssertObjectReference(struct["ChildReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachObjectRequest[k], "AttachObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachObjectRequest
--  
-- @param _ParentReference [ObjectReference] <p>The parent object reference.</p>
-- @param _LinkName [LinkName] <p>The link name with which the child object is attached to the parent.</p>
-- @param _DirectoryArn [Arn] <p>Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where both objects reside. For more information, see <a>arns</a>.</p>
-- @param _ChildReference [ObjectReference] <p>The child object reference to be attached to the object.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ParentReference
-- Required parameter: ChildReference
-- Required parameter: LinkName
function M.AttachObjectRequest(_ParentReference, _LinkName, _DirectoryArn, _ChildReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachObjectRequest")
	local t = { 
		["ParentReference"] = _ParentReference,
		["LinkName"] = _LinkName,
		["DirectoryArn"] = _DirectoryArn,
		["ChildReference"] = _ChildReference,
	}
	asserts.AssertAttachObjectRequest(t)
	return t
end

keys.SchemaAlreadyPublishedException = { ["Message"] = true, nil }

function asserts.AssertSchemaAlreadyPublishedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaAlreadyPublishedException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SchemaAlreadyPublishedException[k], "SchemaAlreadyPublishedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaAlreadyPublishedException
-- <p>Indicates that a schema is already published.</p>
-- @param _Message [ExceptionMessage] 
function M.SchemaAlreadyPublishedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SchemaAlreadyPublishedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertSchemaAlreadyPublishedException(t)
	return t
end

keys.ApplySchemaRequest = { ["DirectoryArn"] = true, ["PublishedSchemaArn"] = true, nil }

function asserts.AssertApplySchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplySchemaRequest to be of type 'table'")
	assert(struct["PublishedSchemaArn"], "Expected key PublishedSchemaArn to exist in table")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["PublishedSchemaArn"] then asserts.AssertArn(struct["PublishedSchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplySchemaRequest[k], "ApplySchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplySchemaRequest
--  
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> into which the schema is copied. For more information, see <a>arns</a>.</p>
-- @param _PublishedSchemaArn [Arn] <p>Published schema Amazon Resource Name (ARN) that needs to be copied. For more information, see <a>arns</a>.</p>
-- Required parameter: PublishedSchemaArn
-- Required parameter: DirectoryArn
function M.ApplySchemaRequest(_DirectoryArn, _PublishedSchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplySchemaRequest")
	local t = { 
		["DirectoryArn"] = _DirectoryArn,
		["PublishedSchemaArn"] = _PublishedSchemaArn,
	}
	asserts.AssertApplySchemaRequest(t)
	return t
end

keys.TypedAttributeValueRange = { ["EndMode"] = true, ["StartMode"] = true, ["StartValue"] = true, ["EndValue"] = true, nil }

function asserts.AssertTypedAttributeValueRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedAttributeValueRange to be of type 'table'")
	assert(struct["StartMode"], "Expected key StartMode to exist in table")
	assert(struct["EndMode"], "Expected key EndMode to exist in table")
	if struct["EndMode"] then asserts.AssertRangeMode(struct["EndMode"]) end
	if struct["StartMode"] then asserts.AssertRangeMode(struct["StartMode"]) end
	if struct["StartValue"] then asserts.AssertTypedAttributeValue(struct["StartValue"]) end
	if struct["EndValue"] then asserts.AssertTypedAttributeValue(struct["EndValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.TypedAttributeValueRange[k], "TypedAttributeValueRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedAttributeValueRange
-- <p>A range of attribute values.</p>
-- @param _EndMode [RangeMode] <p>The inclusive or exclusive range end.</p>
-- @param _StartMode [RangeMode] <p>The inclusive or exclusive range start.</p>
-- @param _StartValue [TypedAttributeValue] <p>The value to start the range at.</p>
-- @param _EndValue [TypedAttributeValue] <p>The attribute value to terminate the range at.</p>
-- Required parameter: StartMode
-- Required parameter: EndMode
function M.TypedAttributeValueRange(_EndMode, _StartMode, _StartValue, _EndValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedAttributeValueRange")
	local t = { 
		["EndMode"] = _EndMode,
		["StartMode"] = _StartMode,
		["StartValue"] = _StartValue,
		["EndValue"] = _EndValue,
	}
	asserts.AssertTypedAttributeValueRange(t)
	return t
end

keys.InvalidFacetUpdateException = { ["Message"] = true, nil }

function asserts.AssertInvalidFacetUpdateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFacetUpdateException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidFacetUpdateException[k], "InvalidFacetUpdateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFacetUpdateException
-- <p>An attempt to modify a <a>Facet</a> resulted in an invalid schema exception.</p>
-- @param _Message [ExceptionMessage] 
function M.InvalidFacetUpdateException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFacetUpdateException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidFacetUpdateException(t)
	return t
end

keys.ListObjectChildrenResponse = { ["NextToken"] = true, ["Children"] = true, nil }

function asserts.AssertListObjectChildrenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectChildrenResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Children"] then asserts.AssertLinkNameToObjectIdentifierMap(struct["Children"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectChildrenResponse[k], "ListObjectChildrenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectChildrenResponse
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _Children [LinkNameToObjectIdentifierMap] <p>Children structure, which is a map with key as the <code>LinkName</code> and <code>ObjectIdentifier</code> as the value.</p>
function M.ListObjectChildrenResponse(_NextToken, _Children, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectChildrenResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Children"] = _Children,
	}
	asserts.AssertListObjectChildrenResponse(t)
	return t
end

keys.ListPolicyAttachmentsResponse = { ["NextToken"] = true, ["ObjectIdentifiers"] = true, nil }

function asserts.AssertListPolicyAttachmentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyAttachmentsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ObjectIdentifiers"] then asserts.AssertObjectIdentifierList(struct["ObjectIdentifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyAttachmentsResponse[k], "ListPolicyAttachmentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyAttachmentsResponse
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _ObjectIdentifiers [ObjectIdentifierList] <p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>
function M.ListPolicyAttachmentsResponse(_NextToken, _ObjectIdentifiers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyAttachmentsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["ObjectIdentifiers"] = _ObjectIdentifiers,
	}
	asserts.AssertListPolicyAttachmentsResponse(t)
	return t
end

keys.AttachPolicyRequest = { ["PolicyReference"] = true, ["ObjectReference"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertAttachPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachPolicyRequest to be of type 'table'")
	assert(struct["PolicyReference"], "Expected key PolicyReference to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["PolicyReference"] then asserts.AssertObjectReference(struct["PolicyReference"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachPolicyRequest[k], "AttachPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachPolicyRequest
--  
-- @param _PolicyReference [ObjectReference] <p>The reference that is associated with the policy object.</p>
-- @param _ObjectReference [ObjectReference] <p>The reference that identifies the object to which the policy will be attached.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where both objects reside. For more information, see <a>arns</a>.</p>
-- Required parameter: PolicyReference
-- Required parameter: ObjectReference
function M.AttachPolicyRequest(_PolicyReference, _ObjectReference, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachPolicyRequest")
	local t = { 
		["PolicyReference"] = _PolicyReference,
		["ObjectReference"] = _ObjectReference,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertAttachPolicyRequest(t)
	return t
end

keys.EnableDirectoryResponse = { ["DirectoryArn"] = true, nil }

function asserts.AssertEnableDirectoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDirectoryResponse to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableDirectoryResponse[k], "EnableDirectoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDirectoryResponse
--  
-- @param _DirectoryArn [Arn] <p>The ARN of the enabled directory.</p>
-- Required parameter: DirectoryArn
function M.EnableDirectoryResponse(_DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDirectoryResponse")
	local t = { 
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertEnableDirectoryResponse(t)
	return t
end

keys.ListDevelopmentSchemaArnsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListDevelopmentSchemaArnsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevelopmentSchemaArnsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDevelopmentSchemaArnsRequest[k], "ListDevelopmentSchemaArnsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevelopmentSchemaArnsRequest
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
function M.ListDevelopmentSchemaArnsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDevelopmentSchemaArnsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListDevelopmentSchemaArnsRequest(t)
	return t
end

keys.ObjectNotDetachedException = { ["Message"] = true, nil }

function asserts.AssertObjectNotDetachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectNotDetachedException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectNotDetachedException[k], "ObjectNotDetachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectNotDetachedException
-- <p>Indicates that the requested operation cannot be completed because the object has not been detached from the tree.</p>
-- @param _Message [ExceptionMessage] 
function M.ObjectNotDetachedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectNotDetachedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertObjectNotDetachedException(t)
	return t
end

keys.StillContainsLinksException = { ["Message"] = true, nil }

function asserts.AssertStillContainsLinksException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StillContainsLinksException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.StillContainsLinksException[k], "StillContainsLinksException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StillContainsLinksException
-- <p>The object could not be deleted because links still exist. Remove the links and then try the operation again.</p>
-- @param _Message [ExceptionMessage] 
function M.StillContainsLinksException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StillContainsLinksException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertStillContainsLinksException(t)
	return t
end

keys.BatchWriteRequest = { ["Operations"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertBatchWriteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["Operations"], "Expected key Operations to exist in table")
	if struct["Operations"] then asserts.AssertBatchWriteOperationList(struct["Operations"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchWriteRequest[k], "BatchWriteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteRequest
--  
-- @param _Operations [BatchWriteOperationList] <p>A list of operations that are part of the batch.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: Operations
function M.BatchWriteRequest(_Operations, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteRequest")
	local t = { 
		["Operations"] = _Operations,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertBatchWriteRequest(t)
	return t
end

keys.PolicyAttachment = { ["PolicyType"] = true, ["ObjectIdentifier"] = true, ["PolicyId"] = true, nil }

function asserts.AssertPolicyAttachment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyAttachment to be of type 'table'")
	if struct["PolicyType"] then asserts.AssertPolicyType(struct["PolicyType"]) end
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	if struct["PolicyId"] then asserts.AssertObjectIdentifier(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyAttachment[k], "PolicyAttachment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyAttachment
-- <p>Contains the <code>PolicyType</code>, <code>PolicyId</code>, and the <code>ObjectIdentifier</code> to which it is attached. For more information, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies">Policies</a>.</p>
-- @param _PolicyType [PolicyType] <p>The type of policy that can be associated with <code>PolicyAttachment</code>.</p>
-- @param _ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> that is associated with <code>PolicyAttachment</code>.</p>
-- @param _PolicyId [ObjectIdentifier] <p>The ID of <code>PolicyAttachment</code>.</p>
function M.PolicyAttachment(_PolicyType, _ObjectIdentifier, _PolicyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyAttachment")
	local t = { 
		["PolicyType"] = _PolicyType,
		["ObjectIdentifier"] = _ObjectIdentifier,
		["PolicyId"] = _PolicyId,
	}
	asserts.AssertPolicyAttachment(t)
	return t
end

keys.AttachToIndexResponse = { ["AttachedObjectIdentifier"] = true, nil }

function asserts.AssertAttachToIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachToIndexResponse to be of type 'table'")
	if struct["AttachedObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["AttachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachToIndexResponse[k], "AttachToIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachToIndexResponse
--  
-- @param _AttachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>
function M.AttachToIndexResponse(_AttachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachToIndexResponse")
	local t = { 
		["AttachedObjectIdentifier"] = _AttachedObjectIdentifier,
	}
	asserts.AssertAttachToIndexResponse(t)
	return t
end

keys.FacetNotFoundException = { ["Message"] = true, nil }

function asserts.AssertFacetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FacetNotFoundException[k], "FacetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetNotFoundException
-- <p>The specified <a>Facet</a> could not be found.</p>
-- @param _Message [ExceptionMessage] 
function M.FacetNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertFacetNotFoundException(t)
	return t
end

keys.UpdateObjectAttributesResponse = { ["ObjectIdentifier"] = true, nil }

function asserts.AssertUpdateObjectAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateObjectAttributesResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateObjectAttributesResponse[k], "UpdateObjectAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateObjectAttributesResponse
--  
-- @param _ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the updated object.</p>
function M.UpdateObjectAttributesResponse(_ObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateObjectAttributesResponse")
	local t = { 
		["ObjectIdentifier"] = _ObjectIdentifier,
	}
	asserts.AssertUpdateObjectAttributesResponse(t)
	return t
end

keys.AttachTypedLinkRequest = { ["SourceObjectReference"] = true, ["Attributes"] = true, ["TargetObjectReference"] = true, ["DirectoryArn"] = true, ["TypedLinkFacet"] = true, nil }

function asserts.AssertAttachTypedLinkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachTypedLinkRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["SourceObjectReference"], "Expected key SourceObjectReference to exist in table")
	assert(struct["TargetObjectReference"], "Expected key TargetObjectReference to exist in table")
	assert(struct["TypedLinkFacet"], "Expected key TypedLinkFacet to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["SourceObjectReference"] then asserts.AssertObjectReference(struct["SourceObjectReference"]) end
	if struct["Attributes"] then asserts.AssertAttributeNameAndValueList(struct["Attributes"]) end
	if struct["TargetObjectReference"] then asserts.AssertObjectReference(struct["TargetObjectReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["TypedLinkFacet"] then asserts.AssertTypedLinkSchemaAndFacetName(struct["TypedLinkFacet"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachTypedLinkRequest[k], "AttachTypedLinkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachTypedLinkRequest
--  
-- @param _SourceObjectReference [ObjectReference] <p>Identifies the source object that the typed link will attach to.</p>
-- @param _Attributes [AttributeNameAndValueList] <p>A set of attributes that are associated with the typed link.</p>
-- @param _TargetObjectReference [ObjectReference] <p>Identifies the target object that the typed link will attach to.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory where you want to attach the typed link.</p>
-- @param _TypedLinkFacet [TypedLinkSchemaAndFacetName] <p>Identifies the typed link facet that is associated with the typed link.</p>
-- Required parameter: DirectoryArn
-- Required parameter: SourceObjectReference
-- Required parameter: TargetObjectReference
-- Required parameter: TypedLinkFacet
-- Required parameter: Attributes
function M.AttachTypedLinkRequest(_SourceObjectReference, _Attributes, _TargetObjectReference, _DirectoryArn, _TypedLinkFacet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachTypedLinkRequest")
	local t = { 
		["SourceObjectReference"] = _SourceObjectReference,
		["Attributes"] = _Attributes,
		["TargetObjectReference"] = _TargetObjectReference,
		["DirectoryArn"] = _DirectoryArn,
		["TypedLinkFacet"] = _TypedLinkFacet,
	}
	asserts.AssertAttachTypedLinkRequest(t)
	return t
end

keys.UnsupportedIndexTypeException = { ["Message"] = true, nil }

function asserts.AssertUnsupportedIndexTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedIndexTypeException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedIndexTypeException[k], "UnsupportedIndexTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedIndexTypeException
-- <p>Indicates that the requested index type is not supported.</p>
-- @param _Message [ExceptionMessage] 
function M.UnsupportedIndexTypeException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedIndexTypeException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertUnsupportedIndexTypeException(t)
	return t
end

keys.BatchReadOperationResponse = { ["SuccessfulResponse"] = true, ["ExceptionResponse"] = true, nil }

function asserts.AssertBatchReadOperationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadOperationResponse to be of type 'table'")
	if struct["SuccessfulResponse"] then asserts.AssertBatchReadSuccessfulResponse(struct["SuccessfulResponse"]) end
	if struct["ExceptionResponse"] then asserts.AssertBatchReadException(struct["ExceptionResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchReadOperationResponse[k], "BatchReadOperationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadOperationResponse
-- <p>Represents the output of a <code>BatchRead</code> response operation.</p>
-- @param _SuccessfulResponse [BatchReadSuccessfulResponse] <p>Identifies which operation in a batch has succeeded.</p>
-- @param _ExceptionResponse [BatchReadException] <p>Identifies which operation in a batch has failed.</p>
function M.BatchReadOperationResponse(_SuccessfulResponse, _ExceptionResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadOperationResponse")
	local t = { 
		["SuccessfulResponse"] = _SuccessfulResponse,
		["ExceptionResponse"] = _ExceptionResponse,
	}
	asserts.AssertBatchReadOperationResponse(t)
	return t
end

keys.AddFacetToObjectResponse = { nil }

function asserts.AssertAddFacetToObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddFacetToObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddFacetToObjectResponse[k], "AddFacetToObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddFacetToObjectResponse
--  
function M.AddFacetToObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddFacetToObjectResponse")
	local t = { 
	}
	asserts.AssertAddFacetToObjectResponse(t)
	return t
end

keys.ListFacetNamesRequest = { ["SchemaArn"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListFacetNamesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacetNamesRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFacetNamesRequest[k], "ListFacetNamesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacetNamesRequest
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) to retrieve facet names from.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required parameter: SchemaArn
function M.ListFacetNamesRequest(_SchemaArn, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFacetNamesRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListFacetNamesRequest(t)
	return t
end

keys.DeleteFacetResponse = { nil }

function asserts.AssertDeleteFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteFacetResponse[k], "DeleteFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFacetResponse
--  
function M.DeleteFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFacetResponse")
	local t = { 
	}
	asserts.AssertDeleteFacetResponse(t)
	return t
end

keys.InvalidArnException = { ["Message"] = true, nil }

function asserts.AssertInvalidArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArnException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArnException[k], "InvalidArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArnException
-- <p>Indicates that the provided ARN value is not valid.</p>
-- @param _Message [ExceptionMessage] 
function M.InvalidArnException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArnException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidArnException(t)
	return t
end

keys.AttributeKey = { ["SchemaArn"] = true, ["FacetName"] = true, ["Name"] = true, nil }

function asserts.AssertAttributeKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeKey to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["FacetName"], "Expected key FacetName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["FacetName"] then asserts.AssertFacetName(struct["FacetName"]) end
	if struct["Name"] then asserts.AssertAttributeName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeKey[k], "AttributeKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeKey
-- <p>A unique identifier for an attribute.</p>
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) of the schema that contains the facet and attribute.</p>
-- @param _FacetName [FacetName] <p>The name of the facet that the attribute exists within.</p>
-- @param _Name [AttributeName] <p>The name of the attribute.</p>
-- Required parameter: SchemaArn
-- Required parameter: FacetName
-- Required parameter: Name
function M.AttributeKey(_SchemaArn, _FacetName, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeKey")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["FacetName"] = _FacetName,
		["Name"] = _Name,
	}
	asserts.AssertAttributeKey(t)
	return t
end

keys.ListAppliedSchemaArnsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertListAppliedSchemaArnsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAppliedSchemaArnsRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAppliedSchemaArnsRequest[k], "ListAppliedSchemaArnsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAppliedSchemaArnsRequest
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- @param _DirectoryArn [Arn] <p>The ARN of the directory you are listing.</p>
-- Required parameter: DirectoryArn
function M.ListAppliedSchemaArnsRequest(_NextToken, _MaxResults, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAppliedSchemaArnsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertListAppliedSchemaArnsRequest(t)
	return t
end

keys.BatchCreateObjectResponse = { ["ObjectIdentifier"] = true, nil }

function asserts.AssertBatchCreateObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCreateObjectResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchCreateObjectResponse[k], "BatchCreateObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCreateObjectResponse
-- <p>Represents the output of a <code>CreateObject</code> response operation.</p>
-- @param _ObjectIdentifier [ObjectIdentifier] <p>The ID that is associated with the object.</p>
function M.BatchCreateObjectResponse(_ObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchCreateObjectResponse")
	local t = { 
		["ObjectIdentifier"] = _ObjectIdentifier,
	}
	asserts.AssertBatchCreateObjectResponse(t)
	return t
end

keys.UpdateFacetResponse = { nil }

function asserts.AssertUpdateFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateFacetResponse[k], "UpdateFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFacetResponse
--  
function M.UpdateFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFacetResponse")
	local t = { 
	}
	asserts.AssertUpdateFacetResponse(t)
	return t
end

keys.FacetInUseException = { ["Message"] = true, nil }

function asserts.AssertFacetInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetInUseException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FacetInUseException[k], "FacetInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetInUseException
-- <p>Occurs when deleting a facet that contains an attribute that is a target to an attribute reference in a different facet.</p>
-- @param _Message [ExceptionMessage] 
function M.FacetInUseException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetInUseException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertFacetInUseException(t)
	return t
end

keys.PathToObjectIdentifiers = { ["Path"] = true, ["ObjectIdentifiers"] = true, nil }

function asserts.AssertPathToObjectIdentifiers(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PathToObjectIdentifiers to be of type 'table'")
	if struct["Path"] then asserts.AssertPathString(struct["Path"]) end
	if struct["ObjectIdentifiers"] then asserts.AssertObjectIdentifierList(struct["ObjectIdentifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.PathToObjectIdentifiers[k], "PathToObjectIdentifiers contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PathToObjectIdentifiers
-- <p>Returns the path to the <code>ObjectIdentifiers</code> that is associated with the directory.</p>
-- @param _Path [PathString] <p>The path that is used to identify the object starting from directory root.</p>
-- @param _ObjectIdentifiers [ObjectIdentifierList] <p>Lists <code>ObjectIdentifiers</code> starting from directory root to the object in the request.</p>
function M.PathToObjectIdentifiers(_Path, _ObjectIdentifiers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PathToObjectIdentifiers")
	local t = { 
		["Path"] = _Path,
		["ObjectIdentifiers"] = _ObjectIdentifiers,
	}
	asserts.AssertPathToObjectIdentifiers(t)
	return t
end

keys.BatchReadRequest = { ["Operations"] = true, ["ConsistencyLevel"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertBatchReadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["Operations"], "Expected key Operations to exist in table")
	if struct["Operations"] then asserts.AssertBatchReadOperationList(struct["Operations"]) end
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchReadRequest[k], "BatchReadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadRequest
--  
-- @param _Operations [BatchReadOperationList] <p>A list of operations that are part of the batch.</p>
-- @param _ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: Operations
function M.BatchReadRequest(_Operations, _ConsistencyLevel, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadRequest")
	local t = { 
		["Operations"] = _Operations,
		["ConsistencyLevel"] = _ConsistencyLevel,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertBatchReadRequest(t)
	return t
end

keys.FacetValidationException = { ["Message"] = true, nil }

function asserts.AssertFacetValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetValidationException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FacetValidationException[k], "FacetValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetValidationException
-- <p>The <a>Facet</a> that you provided was not well formed or could not be validated with the schema.</p>
-- @param _Message [ExceptionMessage] 
function M.FacetValidationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetValidationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertFacetValidationException(t)
	return t
end

keys.ListObjectChildrenRequest = { ["ConsistencyLevel"] = true, ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertListObjectChildrenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectChildrenRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectChildrenRequest[k], "ListObjectChildrenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectChildrenRequest
--  
-- @param _ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- @param _ObjectReference [ObjectReference] <p>The reference that identifies the object for which child objects are being listed.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListObjectChildrenRequest(_ConsistencyLevel, _ObjectReference, _NextToken, _MaxResults, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectChildrenRequest")
	local t = { 
		["ConsistencyLevel"] = _ConsistencyLevel,
		["ObjectReference"] = _ObjectReference,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertListObjectChildrenRequest(t)
	return t
end

keys.BatchWriteOperationResponse = { ["DetachObject"] = true, ["AttachObject"] = true, ["AddFacetToObject"] = true, ["RemoveFacetFromObject"] = true, ["CreateObject"] = true, ["DeleteObject"] = true, ["UpdateObjectAttributes"] = true, nil }

function asserts.AssertBatchWriteOperationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteOperationResponse to be of type 'table'")
	if struct["DetachObject"] then asserts.AssertBatchDetachObjectResponse(struct["DetachObject"]) end
	if struct["AttachObject"] then asserts.AssertBatchAttachObjectResponse(struct["AttachObject"]) end
	if struct["AddFacetToObject"] then asserts.AssertBatchAddFacetToObjectResponse(struct["AddFacetToObject"]) end
	if struct["RemoveFacetFromObject"] then asserts.AssertBatchRemoveFacetFromObjectResponse(struct["RemoveFacetFromObject"]) end
	if struct["CreateObject"] then asserts.AssertBatchCreateObjectResponse(struct["CreateObject"]) end
	if struct["DeleteObject"] then asserts.AssertBatchDeleteObjectResponse(struct["DeleteObject"]) end
	if struct["UpdateObjectAttributes"] then asserts.AssertBatchUpdateObjectAttributesResponse(struct["UpdateObjectAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchWriteOperationResponse[k], "BatchWriteOperationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteOperationResponse
-- <p>Represents the output of a <code>BatchWrite</code> response operation.</p>
-- @param _DetachObject [BatchDetachObjectResponse] <p>Detaches an object from a <a>Directory</a>.</p>
-- @param _AttachObject [BatchAttachObjectResponse] <p>Attaches an object to a <a>Directory</a>.</p>
-- @param _AddFacetToObject [BatchAddFacetToObjectResponse] <p>The result of an add facet to object batch operation.</p>
-- @param _RemoveFacetFromObject [BatchRemoveFacetFromObjectResponse] <p>The result of a batch remove facet from object operation.</p>
-- @param _CreateObject [BatchCreateObjectResponse] <p>Creates an object in a <a>Directory</a>.</p>
-- @param _DeleteObject [BatchDeleteObjectResponse] <p>Deletes an object in a <a>Directory</a>.</p>
-- @param _UpdateObjectAttributes [BatchUpdateObjectAttributesResponse] <p>Updates a given object’s attributes.</p>
function M.BatchWriteOperationResponse(_DetachObject, _AttachObject, _AddFacetToObject, _RemoveFacetFromObject, _CreateObject, _DeleteObject, _UpdateObjectAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteOperationResponse")
	local t = { 
		["DetachObject"] = _DetachObject,
		["AttachObject"] = _AttachObject,
		["AddFacetToObject"] = _AddFacetToObject,
		["RemoveFacetFromObject"] = _RemoveFacetFromObject,
		["CreateObject"] = _CreateObject,
		["DeleteObject"] = _DeleteObject,
		["UpdateObjectAttributes"] = _UpdateObjectAttributes,
	}
	asserts.AssertBatchWriteOperationResponse(t)
	return t
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>The tag structure that contains a tag key and value.</p>
-- @param _Value [TagValue] <p>The value that is associated with the tag.</p>
-- @param _Key [TagKey] <p>The key that is associated with the tag.</p>
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

keys.ListFacetAttributesResponse = { ["Attributes"] = true, ["NextToken"] = true, nil }

function asserts.AssertListFacetAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacetAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertFacetAttributeList(struct["Attributes"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFacetAttributesResponse[k], "ListFacetAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacetAttributesResponse
--  
-- @param _Attributes [FacetAttributeList] <p>The attributes attached to the facet.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
function M.ListFacetAttributesResponse(_Attributes, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFacetAttributesResponse")
	local t = { 
		["Attributes"] = _Attributes,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListFacetAttributesResponse(t)
	return t
end

keys.UpdateSchemaResponse = { ["SchemaArn"] = true, nil }

function asserts.AssertUpdateSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSchemaResponse to be of type 'table'")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSchemaResponse[k], "UpdateSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSchemaResponse
--  
-- @param _SchemaArn [Arn] <p>The ARN that is associated with the updated schema. For more information, see <a>arns</a>.</p>
function M.UpdateSchemaResponse(_SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSchemaResponse")
	local t = { 
		["SchemaArn"] = _SchemaArn,
	}
	asserts.AssertUpdateSchemaResponse(t)
	return t
end

keys.DisableDirectoryRequest = { ["DirectoryArn"] = true, nil }

function asserts.AssertDisableDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableDirectoryRequest[k], "DisableDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDirectoryRequest
--  
-- @param _DirectoryArn [Arn] <p>The ARN of the directory to disable.</p>
-- Required parameter: DirectoryArn
function M.DisableDirectoryRequest(_DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDirectoryRequest")
	local t = { 
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertDisableDirectoryRequest(t)
	return t
end

keys.LimitExceededException = { ["Message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>Indicates that limits are exceeded. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/limits.html">Limits</a> for more information.</p>
-- @param _Message [ExceptionMessage] 
function M.LimitExceededException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.ListTypedLinkFacetNamesRequest = { ["SchemaArn"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListTypedLinkFacetNamesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTypedLinkFacetNamesRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTypedLinkFacetNamesRequest[k], "ListTypedLinkFacetNamesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTypedLinkFacetNamesRequest
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required parameter: SchemaArn
function M.ListTypedLinkFacetNamesRequest(_SchemaArn, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTypedLinkFacetNamesRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListTypedLinkFacetNamesRequest(t)
	return t
end

keys.ListObjectPoliciesRequest = { ["ConsistencyLevel"] = true, ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertListObjectPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectPoliciesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectPoliciesRequest[k], "ListObjectPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectPoliciesRequest
--  
-- @param _ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- @param _ObjectReference [ObjectReference] <p>Reference that identifies the object for which policies will be listed.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where objects reside. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListObjectPoliciesRequest(_ConsistencyLevel, _ObjectReference, _NextToken, _MaxResults, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectPoliciesRequest")
	local t = { 
		["ConsistencyLevel"] = _ConsistencyLevel,
		["ObjectReference"] = _ObjectReference,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertListObjectPoliciesRequest(t)
	return t
end

keys.GetFacetResponse = { ["Facet"] = true, nil }

function asserts.AssertGetFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFacetResponse to be of type 'table'")
	if struct["Facet"] then asserts.AssertFacet(struct["Facet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFacetResponse[k], "GetFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFacetResponse
--  
-- @param _Facet [Facet] <p>The <a>Facet</a> structure that is associated with the facet.</p>
function M.GetFacetResponse(_Facet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFacetResponse")
	local t = { 
		["Facet"] = _Facet,
	}
	asserts.AssertGetFacetResponse(t)
	return t
end

keys.ListDirectoriesRequest = { ["state"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListDirectoriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDirectoriesRequest to be of type 'table'")
	if struct["state"] then asserts.AssertDirectoryState(struct["state"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDirectoriesRequest[k], "ListDirectoriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDirectoriesRequest
--  
-- @param _state [DirectoryState] <p>The state of the directories in the list. Can be either Enabled, Disabled, or Deleted.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
function M.ListDirectoriesRequest(_state, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDirectoriesRequest")
	local t = { 
		["state"] = _state,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListDirectoriesRequest(t)
	return t
end

keys.ValidationException = { ["Message"] = true, nil }

function asserts.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidationException[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>Indicates that your request is malformed in some manner. See the exception message.</p>
-- @param _Message [ExceptionMessage] 
function M.ValidationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertValidationException(t)
	return t
end

keys.DirectoryNotDisabledException = { ["Message"] = true, nil }

function asserts.AssertDirectoryNotDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryNotDisabledException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryNotDisabledException[k], "DirectoryNotDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryNotDisabledException
-- <p>An operation can only operate on a disabled directory.</p>
-- @param _Message [ExceptionMessage] 
function M.DirectoryNotDisabledException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryNotDisabledException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDirectoryNotDisabledException(t)
	return t
end

keys.ObjectReference = { ["Selector"] = true, nil }

function asserts.AssertObjectReference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectReference to be of type 'table'")
	if struct["Selector"] then asserts.AssertSelectorObjectReference(struct["Selector"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectReference[k], "ObjectReference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectReference
-- <p>The reference that identifies an object.</p>
-- @param _Selector [SelectorObjectReference] <p>A path selector supports easy selection of an object by the parent/child links leading to it from the directory root. Use the link names from each parent/child link to construct the path. Path selectors start with a slash (/) and link names are separated by slashes. For more information about paths, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#accessingobjects">Accessing Objects</a>. You can identify an object in one of the following ways:</p> <ul> <li> <p> <i>$ObjectIdentifier</i> - An object identifier is an opaque string provided by Amazon Cloud Directory. When creating objects, the system will provide you with the identifier of the created object. An object’s identifier is immutable and no two objects will ever share the same object identifier</p> </li> <li> <p> <i>/some/path</i> - Identifies the object based on path</p> </li> <li> <p> <i>#SomeBatchReference</i> - Identifies the object in a batch call</p> </li> </ul>
function M.ObjectReference(_Selector, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectReference")
	local t = { 
		["Selector"] = _Selector,
	}
	asserts.AssertObjectReference(t)
	return t
end

keys.ListObjectPoliciesResponse = { ["AttachedPolicyIds"] = true, ["NextToken"] = true, nil }

function asserts.AssertListObjectPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectPoliciesResponse to be of type 'table'")
	if struct["AttachedPolicyIds"] then asserts.AssertObjectIdentifierList(struct["AttachedPolicyIds"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectPoliciesResponse[k], "ListObjectPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectPoliciesResponse
--  
-- @param _AttachedPolicyIds [ObjectIdentifierList] <p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the object.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
function M.ListObjectPoliciesResponse(_AttachedPolicyIds, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectPoliciesResponse")
	local t = { 
		["AttachedPolicyIds"] = _AttachedPolicyIds,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListObjectPoliciesResponse(t)
	return t
end

keys.InternalServiceException = { ["Message"] = true, nil }

function asserts.AssertInternalServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServiceException[k], "InternalServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceException
-- <p>Indicates a problem that must be resolved by Amazon Web Services. This might be a transient error in which case you can retry your request until it succeeds. Otherwise, go to the <a href="http://status.aws.amazon.com/">AWS Service Health Dashboard</a> site to see if there are any operational issues with the service.</p>
-- @param _Message [ExceptionMessage] 
function M.InternalServiceException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInternalServiceException(t)
	return t
end

keys.ApplySchemaResponse = { ["AppliedSchemaArn"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertApplySchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplySchemaResponse to be of type 'table'")
	if struct["AppliedSchemaArn"] then asserts.AssertArn(struct["AppliedSchemaArn"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplySchemaResponse[k], "ApplySchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplySchemaResponse
--  
-- @param _AppliedSchemaArn [Arn] <p>The applied schema ARN that is associated with the copied schema in the <a>Directory</a>. You can use this ARN to describe the schema information applied on this directory. For more information, see <a>arns</a>.</p>
-- @param _DirectoryArn [Arn] <p>The ARN that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>
function M.ApplySchemaResponse(_AppliedSchemaArn, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplySchemaResponse")
	local t = { 
		["AppliedSchemaArn"] = _AppliedSchemaArn,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertApplySchemaResponse(t)
	return t
end

keys.FacetAttribute = { ["AttributeDefinition"] = true, ["RequiredBehavior"] = true, ["Name"] = true, ["AttributeReference"] = true, nil }

function asserts.AssertFacetAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetAttribute to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["AttributeDefinition"] then asserts.AssertFacetAttributeDefinition(struct["AttributeDefinition"]) end
	if struct["RequiredBehavior"] then asserts.AssertRequiredAttributeBehavior(struct["RequiredBehavior"]) end
	if struct["Name"] then asserts.AssertAttributeName(struct["Name"]) end
	if struct["AttributeReference"] then asserts.AssertFacetAttributeReference(struct["AttributeReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.FacetAttribute[k], "FacetAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetAttribute
-- <p>An attribute that is associated with the <a>Facet</a>.</p>
-- @param _AttributeDefinition [FacetAttributeDefinition] <p>A facet attribute consists of either a definition or a reference. This structure contains the attribute definition. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences">Attribute References</a> for more information.</p>
-- @param _RequiredBehavior [RequiredAttributeBehavior] <p>The required behavior of the <code>FacetAttribute</code>.</p>
-- @param _Name [AttributeName] <p>The name of the facet attribute.</p>
-- @param _AttributeReference [FacetAttributeReference] <p>An attribute reference that is associated with the attribute. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences">Attribute References</a> for more information.</p>
-- Required parameter: Name
function M.FacetAttribute(_AttributeDefinition, _RequiredBehavior, _Name, _AttributeReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetAttribute")
	local t = { 
		["AttributeDefinition"] = _AttributeDefinition,
		["RequiredBehavior"] = _RequiredBehavior,
		["Name"] = _Name,
		["AttributeReference"] = _AttributeReference,
	}
	asserts.AssertFacetAttribute(t)
	return t
end

keys.BatchUpdateObjectAttributes = { ["AttributeUpdates"] = true, ["ObjectReference"] = true, nil }

function asserts.AssertBatchUpdateObjectAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUpdateObjectAttributes to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	assert(struct["AttributeUpdates"], "Expected key AttributeUpdates to exist in table")
	if struct["AttributeUpdates"] then asserts.AssertObjectAttributeUpdateList(struct["AttributeUpdates"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchUpdateObjectAttributes[k], "BatchUpdateObjectAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUpdateObjectAttributes
-- <p>Represents the output of a <code>BatchUpdate</code> operation. </p>
-- @param _AttributeUpdates [ObjectAttributeUpdateList] <p>Attributes update structure.</p>
-- @param _ObjectReference [ObjectReference] <p>Reference that identifies the object.</p>
-- Required parameter: ObjectReference
-- Required parameter: AttributeUpdates
function M.BatchUpdateObjectAttributes(_AttributeUpdates, _ObjectReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchUpdateObjectAttributes")
	local t = { 
		["AttributeUpdates"] = _AttributeUpdates,
		["ObjectReference"] = _ObjectReference,
	}
	asserts.AssertBatchUpdateObjectAttributes(t)
	return t
end

keys.UpdateFacetRequest = { ["AttributeUpdates"] = true, ["SchemaArn"] = true, ["Name"] = true, ["ObjectType"] = true, nil }

function asserts.AssertUpdateFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["AttributeUpdates"] then asserts.AssertFacetAttributeUpdateList(struct["AttributeUpdates"]) end
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then asserts.AssertFacetName(struct["Name"]) end
	if struct["ObjectType"] then asserts.AssertObjectType(struct["ObjectType"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFacetRequest[k], "UpdateFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFacetRequest
--  
-- @param _AttributeUpdates [FacetAttributeUpdateList] <p>List of attributes that need to be updated in a given schema <a>Facet</a>. Each attribute is followed by <code>AttributeAction</code>, which specifies the type of update operation to perform. </p>
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>. For more information, see <a>arns</a>.</p>
-- @param _Name [FacetName] <p>The name of the facet.</p>
-- @param _ObjectType [ObjectType] <p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.UpdateFacetRequest(_AttributeUpdates, _SchemaArn, _Name, _ObjectType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFacetRequest")
	local t = { 
		["AttributeUpdates"] = _AttributeUpdates,
		["SchemaArn"] = _SchemaArn,
		["Name"] = _Name,
		["ObjectType"] = _ObjectType,
	}
	asserts.AssertUpdateFacetRequest(t)
	return t
end

keys.ListObjectParentPathsRequest = { ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertListObjectParentPathsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectParentPathsRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectParentPathsRequest[k], "ListObjectParentPathsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectParentPathsRequest
--  
-- @param _ObjectReference [ObjectReference] <p>The reference that identifies the object whose parent paths are listed.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- @param _DirectoryArn [Arn] <p>The ARN of the directory to which the parent path applies.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListObjectParentPathsRequest(_ObjectReference, _NextToken, _MaxResults, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectParentPathsRequest")
	local t = { 
		["ObjectReference"] = _ObjectReference,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertListObjectParentPathsRequest(t)
	return t
end

keys.RetryableConflictException = { ["Message"] = true, nil }

function asserts.AssertRetryableConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetryableConflictException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetryableConflictException[k], "RetryableConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetryableConflictException
-- <p>Occurs when a conflict with a previous successful write is detected. For example, if a write operation occurs on an object and then an attempt is made to read the object using “SERIALIZABLE” consistency, this exception may result. This generally occurs when the previous write did not have time to propagate to the host serving the current request. A retry (with appropriate backoff logic) is the recommended response to this exception.</p>
-- @param _Message [ExceptionMessage] 
function M.RetryableConflictException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetryableConflictException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertRetryableConflictException(t)
	return t
end

keys.SchemaAlreadyExistsException = { ["Message"] = true, nil }

function asserts.AssertSchemaAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaAlreadyExistsException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SchemaAlreadyExistsException[k], "SchemaAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaAlreadyExistsException
-- <p>Indicates that a schema could not be created due to a naming conflict. Please select a different name and then try again.</p>
-- @param _Message [ExceptionMessage] 
function M.SchemaAlreadyExistsException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SchemaAlreadyExistsException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertSchemaAlreadyExistsException(t)
	return t
end

keys.NotIndexException = { ["Message"] = true, nil }

function asserts.AssertNotIndexException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotIndexException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotIndexException[k], "NotIndexException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotIndexException
-- <p>Indicates that the requested operation can only operate on index objects.</p>
-- @param _Message [ExceptionMessage] 
function M.NotIndexException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotIndexException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNotIndexException(t)
	return t
end

keys.ListObjectParentsResponse = { ["NextToken"] = true, ["Parents"] = true, nil }

function asserts.AssertListObjectParentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectParentsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Parents"] then asserts.AssertObjectIdentifierToLinkNameMap(struct["Parents"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectParentsResponse[k], "ListObjectParentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectParentsResponse
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _Parents [ObjectIdentifierToLinkNameMap] <p>The parent structure, which is a map with key as the <code>ObjectIdentifier</code> and LinkName as the value.</p>
function M.ListObjectParentsResponse(_NextToken, _Parents, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectParentsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Parents"] = _Parents,
	}
	asserts.AssertListObjectParentsResponse(t)
	return t
end

keys.AttributeNameAndValue = { ["AttributeName"] = true, ["Value"] = true, nil }

function asserts.AssertAttributeNameAndValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeNameAndValue to be of type 'table'")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["AttributeName"] then asserts.AssertAttributeName(struct["AttributeName"]) end
	if struct["Value"] then asserts.AssertTypedAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeNameAndValue[k], "AttributeNameAndValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeNameAndValue
-- <p>Identifies the attribute name and value for a typed link.</p>
-- @param _AttributeName [AttributeName] <p>The attribute name of the typed link.</p>
-- @param _Value [TypedAttributeValue] <p>The value for the typed link.</p>
-- Required parameter: AttributeName
-- Required parameter: Value
function M.AttributeNameAndValue(_AttributeName, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeNameAndValue")
	local t = { 
		["AttributeName"] = _AttributeName,
		["Value"] = _Value,
	}
	asserts.AssertAttributeNameAndValue(t)
	return t
end

keys.RemoveFacetFromObjectRequest = { ["ObjectReference"] = true, ["SchemaFacet"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertRemoveFacetFromObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveFacetFromObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["SchemaFacet"] then asserts.AssertSchemaFacet(struct["SchemaFacet"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveFacetFromObjectRequest[k], "RemoveFacetFromObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveFacetFromObjectRequest
--  
-- @param _ObjectReference [ObjectReference] <p>A reference to the object to remove the facet from.</p>
-- @param _SchemaFacet [SchemaFacet] <p>The facet to remove.</p>
-- @param _DirectoryArn [Arn] <p>The ARN of the directory in which the object resides.</p>
-- Required parameter: DirectoryArn
-- Required parameter: SchemaFacet
-- Required parameter: ObjectReference
function M.RemoveFacetFromObjectRequest(_ObjectReference, _SchemaFacet, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveFacetFromObjectRequest")
	local t = { 
		["ObjectReference"] = _ObjectReference,
		["SchemaFacet"] = _SchemaFacet,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertRemoveFacetFromObjectRequest(t)
	return t
end

keys.TypedLinkFacetAttributeUpdate = { ["Action"] = true, ["Attribute"] = true, nil }

function asserts.AssertTypedLinkFacetAttributeUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkFacetAttributeUpdate to be of type 'table'")
	assert(struct["Attribute"], "Expected key Attribute to exist in table")
	assert(struct["Action"], "Expected key Action to exist in table")
	if struct["Action"] then asserts.AssertUpdateActionType(struct["Action"]) end
	if struct["Attribute"] then asserts.AssertTypedLinkAttributeDefinition(struct["Attribute"]) end
	for k,_ in pairs(struct) do
		assert(keys.TypedLinkFacetAttributeUpdate[k], "TypedLinkFacetAttributeUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkFacetAttributeUpdate
-- <p>A typed link facet attribute update.</p>
-- @param _Action [UpdateActionType] <p>The action to perform when updating the attribute.</p>
-- @param _Attribute [TypedLinkAttributeDefinition] <p>The attribute to update.</p>
-- Required parameter: Attribute
-- Required parameter: Action
function M.TypedLinkFacetAttributeUpdate(_Action, _Attribute, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkFacetAttributeUpdate")
	local t = { 
		["Action"] = _Action,
		["Attribute"] = _Attribute,
	}
	asserts.AssertTypedLinkFacetAttributeUpdate(t)
	return t
end

keys.InvalidSchemaDocException = { ["Message"] = true, nil }

function asserts.AssertInvalidSchemaDocException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSchemaDocException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidSchemaDocException[k], "InvalidSchemaDocException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSchemaDocException
-- <p>Indicates that the provided <code>SchemaDoc</code> value is not valid.</p>
-- @param _Message [ExceptionMessage] 
function M.InvalidSchemaDocException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSchemaDocException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidSchemaDocException(t)
	return t
end

keys.DeleteObjectResponse = { nil }

function asserts.AssertDeleteObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteObjectResponse[k], "DeleteObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectResponse
--  
function M.DeleteObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteObjectResponse")
	local t = { 
	}
	asserts.AssertDeleteObjectResponse(t)
	return t
end

keys.ListAttachedIndicesRequest = { ["MaxResults"] = true, ["ConsistencyLevel"] = true, ["NextToken"] = true, ["TargetReference"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertListAttachedIndicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedIndicesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["TargetReference"], "Expected key TargetReference to exist in table")
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["TargetReference"] then asserts.AssertObjectReference(struct["TargetReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttachedIndicesRequest[k], "ListAttachedIndicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedIndicesRequest
--  
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- @param _ConsistencyLevel [ConsistencyLevel] <p>The consistency level to use for this operation.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _TargetReference [ObjectReference] <p>A reference to the object to that has indices attached.</p>
-- @param _DirectoryArn [Arn] <p>The ARN of the directory.</p>
-- Required parameter: DirectoryArn
-- Required parameter: TargetReference
function M.ListAttachedIndicesRequest(_MaxResults, _ConsistencyLevel, _NextToken, _TargetReference, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedIndicesRequest")
	local t = { 
		["MaxResults"] = _MaxResults,
		["ConsistencyLevel"] = _ConsistencyLevel,
		["NextToken"] = _NextToken,
		["TargetReference"] = _TargetReference,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertListAttachedIndicesRequest(t)
	return t
end

keys.AttachObjectResponse = { ["AttachedObjectIdentifier"] = true, nil }

function asserts.AssertAttachObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachObjectResponse to be of type 'table'")
	if struct["AttachedObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["AttachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachObjectResponse[k], "AttachObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachObjectResponse
--  
-- @param _AttachedObjectIdentifier [ObjectIdentifier] <p>The attached <code>ObjectIdentifier</code>, which is the child <code>ObjectIdentifier</code>.</p>
function M.AttachObjectResponse(_AttachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachObjectResponse")
	local t = { 
		["AttachedObjectIdentifier"] = _AttachedObjectIdentifier,
	}
	asserts.AssertAttachObjectResponse(t)
	return t
end

keys.TypedAttributeValue = { ["StringValue"] = true, ["BooleanValue"] = true, ["DatetimeValue"] = true, ["BinaryValue"] = true, ["NumberValue"] = true, nil }

function asserts.AssertTypedAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedAttributeValue to be of type 'table'")
	if struct["StringValue"] then asserts.AssertStringAttributeValue(struct["StringValue"]) end
	if struct["BooleanValue"] then asserts.AssertBooleanAttributeValue(struct["BooleanValue"]) end
	if struct["DatetimeValue"] then asserts.AssertDatetimeAttributeValue(struct["DatetimeValue"]) end
	if struct["BinaryValue"] then asserts.AssertBinaryAttributeValue(struct["BinaryValue"]) end
	if struct["NumberValue"] then asserts.AssertNumberAttributeValue(struct["NumberValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.TypedAttributeValue[k], "TypedAttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedAttributeValue
-- <p>Represents the data for a typed attribute. You can set one, and only one, of the elements. Each attribute in an item is a name-value pair. Attributes have a single value.</p>
-- @param _StringValue [StringAttributeValue] <p>A string data value.</p>
-- @param _BooleanValue [BooleanAttributeValue] <p>A Boolean data value.</p>
-- @param _DatetimeValue [DatetimeAttributeValue] <p>A date and time value.</p>
-- @param _BinaryValue [BinaryAttributeValue] <p>A binary data value.</p>
-- @param _NumberValue [NumberAttributeValue] <p>A number data value.</p>
function M.TypedAttributeValue(_StringValue, _BooleanValue, _DatetimeValue, _BinaryValue, _NumberValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedAttributeValue")
	local t = { 
		["StringValue"] = _StringValue,
		["BooleanValue"] = _BooleanValue,
		["DatetimeValue"] = _DatetimeValue,
		["BinaryValue"] = _BinaryValue,
		["NumberValue"] = _NumberValue,
	}
	asserts.AssertTypedAttributeValue(t)
	return t
end

keys.UpdateSchemaRequest = { ["SchemaArn"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSchemaRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then asserts.AssertSchemaName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSchemaRequest[k], "UpdateSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSchemaRequest
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) of the development schema. For more information, see <a>arns</a>.</p>
-- @param _Name [SchemaName] <p>The name of the schema.</p>
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.UpdateSchemaRequest(_SchemaArn, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSchemaRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["Name"] = _Name,
	}
	asserts.AssertUpdateSchemaRequest(t)
	return t
end

keys.FacetAttributeUpdate = { ["Action"] = true, ["Attribute"] = true, nil }

function asserts.AssertFacetAttributeUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetAttributeUpdate to be of type 'table'")
	if struct["Action"] then asserts.AssertUpdateActionType(struct["Action"]) end
	if struct["Attribute"] then asserts.AssertFacetAttribute(struct["Attribute"]) end
	for k,_ in pairs(struct) do
		assert(keys.FacetAttributeUpdate[k], "FacetAttributeUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetAttributeUpdate
-- <p>A structure that contains information used to update an attribute.</p>
-- @param _Action [UpdateActionType] <p>The action to perform when updating the attribute.</p>
-- @param _Attribute [FacetAttribute] <p>The attribute to update.</p>
function M.FacetAttributeUpdate(_Action, _Attribute, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetAttributeUpdate")
	local t = { 
		["Action"] = _Action,
		["Attribute"] = _Attribute,
	}
	asserts.AssertFacetAttributeUpdate(t)
	return t
end

keys.CreateIndexRequest = { ["ParentReference"] = true, ["OrderedIndexedAttributeList"] = true, ["IsUnique"] = true, ["DirectoryArn"] = true, ["LinkName"] = true, nil }

function asserts.AssertCreateIndexRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIndexRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["OrderedIndexedAttributeList"], "Expected key OrderedIndexedAttributeList to exist in table")
	assert(struct["IsUnique"], "Expected key IsUnique to exist in table")
	if struct["ParentReference"] then asserts.AssertObjectReference(struct["ParentReference"]) end
	if struct["OrderedIndexedAttributeList"] then asserts.AssertAttributeKeyList(struct["OrderedIndexedAttributeList"]) end
	if struct["IsUnique"] then asserts.AssertBool(struct["IsUnique"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["LinkName"] then asserts.AssertLinkName(struct["LinkName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIndexRequest[k], "CreateIndexRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIndexRequest
--  
-- @param _ParentReference [ObjectReference] <p>A reference to the parent object that contains the index object.</p>
-- @param _OrderedIndexedAttributeList [AttributeKeyList] <p>Specifies the attributes that should be indexed on. Currently only a single attribute is supported.</p>
-- @param _IsUnique [Bool] <p>Indicates whether the attribute that is being indexed has unique values or not.</p>
-- @param _DirectoryArn [Arn] <p>The ARN of the directory where the index should be created.</p>
-- @param _LinkName [LinkName] <p>The name of the link between the parent object and the index object.</p>
-- Required parameter: DirectoryArn
-- Required parameter: OrderedIndexedAttributeList
-- Required parameter: IsUnique
function M.CreateIndexRequest(_ParentReference, _OrderedIndexedAttributeList, _IsUnique, _DirectoryArn, _LinkName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIndexRequest")
	local t = { 
		["ParentReference"] = _ParentReference,
		["OrderedIndexedAttributeList"] = _OrderedIndexedAttributeList,
		["IsUnique"] = _IsUnique,
		["DirectoryArn"] = _DirectoryArn,
		["LinkName"] = _LinkName,
	}
	asserts.AssertCreateIndexRequest(t)
	return t
end

keys.DeleteSchemaResponse = { ["SchemaArn"] = true, nil }

function asserts.AssertDeleteSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSchemaResponse to be of type 'table'")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSchemaResponse[k], "DeleteSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSchemaResponse
--  
-- @param _SchemaArn [Arn] <p>The input ARN that is returned as part of the response. For more information, see <a>arns</a>.</p>
function M.DeleteSchemaResponse(_SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSchemaResponse")
	local t = { 
		["SchemaArn"] = _SchemaArn,
	}
	asserts.AssertDeleteSchemaResponse(t)
	return t
end

keys.Facet = { ["Name"] = true, ["ObjectType"] = true, nil }

function asserts.AssertFacet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Facet to be of type 'table'")
	if struct["Name"] then asserts.AssertFacetName(struct["Name"]) end
	if struct["ObjectType"] then asserts.AssertObjectType(struct["ObjectType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Facet[k], "Facet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Facet
-- <p>A structure that contains <code>Name</code>, <code>ARN</code>, <code>Attributes</code>, <a>Rule</a>s, and <code>ObjectTypes</code>.</p>
-- @param _Name [FacetName] <p>The name of the <a>Facet</a>.</p>
-- @param _ObjectType [ObjectType] <p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>
function M.Facet(_Name, _ObjectType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Facet")
	local t = { 
		["Name"] = _Name,
		["ObjectType"] = _ObjectType,
	}
	asserts.AssertFacet(t)
	return t
end

keys.CreateTypedLinkFacetRequest = { ["Facet"] = true, ["SchemaArn"] = true, nil }

function asserts.AssertCreateTypedLinkFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTypedLinkFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Facet"], "Expected key Facet to exist in table")
	if struct["Facet"] then asserts.AssertTypedLinkFacet(struct["Facet"]) end
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTypedLinkFacetRequest[k], "CreateTypedLinkFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTypedLinkFacetRequest
--  
-- @param _Facet [TypedLinkFacet] <p> <a>Facet</a> structure that is associated with the typed link facet.</p>
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- Required parameter: SchemaArn
-- Required parameter: Facet
function M.CreateTypedLinkFacetRequest(_Facet, _SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTypedLinkFacetRequest")
	local t = { 
		["Facet"] = _Facet,
		["SchemaArn"] = _SchemaArn,
	}
	asserts.AssertCreateTypedLinkFacetRequest(t)
	return t
end

keys.DirectoryDeletedException = { ["Message"] = true, nil }

function asserts.AssertDirectoryDeletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryDeletedException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryDeletedException[k], "DirectoryDeletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryDeletedException
-- <p>A directory that has been deleted and to which access has been attempted. Note: The requested resource will eventually cease to exist.</p>
-- @param _Message [ExceptionMessage] 
function M.DirectoryDeletedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryDeletedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDirectoryDeletedException(t)
	return t
end

keys.ListObjectParentsRequest = { ["ConsistencyLevel"] = true, ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertListObjectParentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectParentsRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectParentsRequest[k], "ListObjectParentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectParentsRequest
--  
-- @param _ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- @param _ObjectReference [ObjectReference] <p>The reference that identifies the object for which parent objects are being listed.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListObjectParentsRequest(_ConsistencyLevel, _ObjectReference, _NextToken, _MaxResults, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectParentsRequest")
	local t = { 
		["ConsistencyLevel"] = _ConsistencyLevel,
		["ObjectReference"] = _ObjectReference,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertListObjectParentsRequest(t)
	return t
end

keys.Directory = { ["State"] = true, ["CreationDateTime"] = true, ["Name"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertDirectory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Directory to be of type 'table'")
	if struct["State"] then asserts.AssertDirectoryState(struct["State"]) end
	if struct["CreationDateTime"] then asserts.AssertDate(struct["CreationDateTime"]) end
	if struct["Name"] then asserts.AssertDirectoryName(struct["Name"]) end
	if struct["DirectoryArn"] then asserts.AssertDirectoryArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Directory[k], "Directory contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Directory
-- <p>Directory structure that includes the directory name and directory ARN.</p>
-- @param _State [DirectoryState] <p>The state of the directory. Can be either <code>Enabled</code>, <code>Disabled</code>, or <code>Deleted</code>.</p>
-- @param _CreationDateTime [Date] <p>The date and time when the directory was created.</p>
-- @param _Name [DirectoryName] <p>The name of the directory.</p>
-- @param _DirectoryArn [DirectoryArn] <p>The Amazon Resource Name (ARN) that is associated with the directory. For more information, see <a>arns</a>.</p>
function M.Directory(_State, _CreationDateTime, _Name, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Directory")
	local t = { 
		["State"] = _State,
		["CreationDateTime"] = _CreationDateTime,
		["Name"] = _Name,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertDirectory(t)
	return t
end

keys.SchemaFacet = { ["SchemaArn"] = true, ["FacetName"] = true, nil }

function asserts.AssertSchemaFacet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaFacet to be of type 'table'")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["FacetName"] then asserts.AssertFacetName(struct["FacetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SchemaFacet[k], "SchemaFacet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaFacet
-- <p>A facet.</p>
-- @param _SchemaArn [Arn] <p>The ARN of the schema that contains the facet.</p>
-- @param _FacetName [FacetName] <p>The name of the facet.</p>
function M.SchemaFacet(_SchemaArn, _FacetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SchemaFacet")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["FacetName"] = _FacetName,
	}
	asserts.AssertSchemaFacet(t)
	return t
end

keys.ListObjectAttributesRequest = { ["FacetFilter"] = true, ["MaxResults"] = true, ["ObjectReference"] = true, ["DirectoryArn"] = true, ["NextToken"] = true, ["ConsistencyLevel"] = true, nil }

function asserts.AssertListObjectAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectAttributesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["FacetFilter"] then asserts.AssertSchemaFacet(struct["FacetFilter"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectAttributesRequest[k], "ListObjectAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectAttributesRequest
--  
-- @param _FacetFilter [SchemaFacet] <p>Used to filter the list of object attributes that are associated with a certain facet.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- @param _ObjectReference [ObjectReference] <p>The reference that identifies the object whose attributes will be listed.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListObjectAttributesRequest(_FacetFilter, _MaxResults, _ObjectReference, _DirectoryArn, _NextToken, _ConsistencyLevel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectAttributesRequest")
	local t = { 
		["FacetFilter"] = _FacetFilter,
		["MaxResults"] = _MaxResults,
		["ObjectReference"] = _ObjectReference,
		["DirectoryArn"] = _DirectoryArn,
		["NextToken"] = _NextToken,
		["ConsistencyLevel"] = _ConsistencyLevel,
	}
	asserts.AssertListObjectAttributesRequest(t)
	return t
end

keys.BatchDetachObjectResponse = { ["detachedObjectIdentifier"] = true, nil }

function asserts.AssertBatchDetachObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachObjectResponse to be of type 'table'")
	if struct["detachedObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["detachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetachObjectResponse[k], "BatchDetachObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachObjectResponse
-- <p>Represents the output of a <code>DetachObject</code> response operation.</p>
-- @param _detachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the detached object.</p>
function M.BatchDetachObjectResponse(_detachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDetachObjectResponse")
	local t = { 
		["detachedObjectIdentifier"] = _detachedObjectIdentifier,
	}
	asserts.AssertBatchDetachObjectResponse(t)
	return t
end

keys.ListIndexResponse = { ["IndexAttachments"] = true, ["NextToken"] = true, nil }

function asserts.AssertListIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIndexResponse to be of type 'table'")
	if struct["IndexAttachments"] then asserts.AssertIndexAttachmentList(struct["IndexAttachments"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIndexResponse[k], "ListIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIndexResponse
--  
-- @param _IndexAttachments [IndexAttachmentList] <p>The objects and indexed values attached to the index.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
function M.ListIndexResponse(_IndexAttachments, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIndexResponse")
	local t = { 
		["IndexAttachments"] = _IndexAttachments,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListIndexResponse(t)
	return t
end

keys.DetachPolicyResponse = { nil }

function asserts.AssertDetachPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DetachPolicyResponse[k], "DetachPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachPolicyResponse
--  
function M.DetachPolicyResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachPolicyResponse")
	local t = { 
	}
	asserts.AssertDetachPolicyResponse(t)
	return t
end

keys.PublishSchemaRequest = { ["DevelopmentSchemaArn"] = true, ["Version"] = true, ["Name"] = true, nil }

function asserts.AssertPublishSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishSchemaRequest to be of type 'table'")
	assert(struct["DevelopmentSchemaArn"], "Expected key DevelopmentSchemaArn to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	if struct["DevelopmentSchemaArn"] then asserts.AssertArn(struct["DevelopmentSchemaArn"]) end
	if struct["Version"] then asserts.AssertVersion(struct["Version"]) end
	if struct["Name"] then asserts.AssertSchemaName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublishSchemaRequest[k], "PublishSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishSchemaRequest
--  
-- @param _DevelopmentSchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the development schema. For more information, see <a>arns</a>.</p>
-- @param _Version [Version] <p>The version under which the schema will be published.</p>
-- @param _Name [SchemaName] <p>The new name under which the schema will be published. If this is not provided, the development schema is considered.</p>
-- Required parameter: DevelopmentSchemaArn
-- Required parameter: Version
function M.PublishSchemaRequest(_DevelopmentSchemaArn, _Version, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishSchemaRequest")
	local t = { 
		["DevelopmentSchemaArn"] = _DevelopmentSchemaArn,
		["Version"] = _Version,
		["Name"] = _Name,
	}
	asserts.AssertPublishSchemaRequest(t)
	return t
end

keys.CreateObjectResponse = { ["ObjectIdentifier"] = true, nil }

function asserts.AssertCreateObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateObjectResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateObjectResponse[k], "CreateObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateObjectResponse
--  
-- @param _ObjectIdentifier [ObjectIdentifier] <p>The identifier that is associated with the object.</p>
function M.CreateObjectResponse(_ObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateObjectResponse")
	local t = { 
		["ObjectIdentifier"] = _ObjectIdentifier,
	}
	asserts.AssertCreateObjectResponse(t)
	return t
end

keys.ListFacetAttributesRequest = { ["SchemaArn"] = true, ["NextToken"] = true, ["Name"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListFacetAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacetAttributesRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Name"] then asserts.AssertFacetName(struct["Name"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFacetAttributesRequest[k], "ListFacetAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacetAttributesRequest
--  
-- @param _SchemaArn [Arn] <p>The ARN of the schema where the facet resides.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _Name [FacetName] <p>The name of the facet whose attributes will be retrieved.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.ListFacetAttributesRequest(_SchemaArn, _NextToken, _Name, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFacetAttributesRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["NextToken"] = _NextToken,
		["Name"] = _Name,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListFacetAttributesRequest(t)
	return t
end

keys.DeleteObjectRequest = { ["ObjectReference"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertDeleteObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteObjectRequest[k], "DeleteObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectRequest
--  
-- @param _ObjectReference [ObjectReference] <p>A reference that identifies the object.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.DeleteObjectRequest(_ObjectReference, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteObjectRequest")
	local t = { 
		["ObjectReference"] = _ObjectReference,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertDeleteObjectRequest(t)
	return t
end

keys.DetachObjectRequest = { ["ParentReference"] = true, ["LinkName"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertDetachObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	if struct["ParentReference"] then asserts.AssertObjectReference(struct["ParentReference"]) end
	if struct["LinkName"] then asserts.AssertLinkName(struct["LinkName"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachObjectRequest[k], "DetachObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachObjectRequest
--  
-- @param _ParentReference [ObjectReference] <p>The parent reference from which the object with the specified link name is detached.</p>
-- @param _LinkName [LinkName] <p>The link name associated with the object that needs to be detached.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where objects reside. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ParentReference
-- Required parameter: LinkName
function M.DetachObjectRequest(_ParentReference, _LinkName, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachObjectRequest")
	local t = { 
		["ParentReference"] = _ParentReference,
		["LinkName"] = _LinkName,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertDetachObjectRequest(t)
	return t
end

keys.GetFacetRequest = { ["SchemaArn"] = true, ["Name"] = true, nil }

function asserts.AssertGetFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then asserts.AssertFacetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFacetRequest[k], "GetFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFacetRequest
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>. For more information, see <a>arns</a>.</p>
-- @param _Name [FacetName] <p>The name of the facet to retrieve.</p>
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.GetFacetRequest(_SchemaArn, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFacetRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["Name"] = _Name,
	}
	asserts.AssertGetFacetRequest(t)
	return t
end

keys.ListDirectoriesResponse = { ["Directories"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDirectoriesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDirectoriesResponse to be of type 'table'")
	assert(struct["Directories"], "Expected key Directories to exist in table")
	if struct["Directories"] then asserts.AssertDirectoryList(struct["Directories"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDirectoriesResponse[k], "ListDirectoriesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDirectoriesResponse
--  
-- @param _Directories [DirectoryList] <p>Lists all directories that are associated with your account in pagination fashion.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- Required parameter: Directories
function M.ListDirectoriesResponse(_Directories, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDirectoriesResponse")
	local t = { 
		["Directories"] = _Directories,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListDirectoriesResponse(t)
	return t
end

keys.InvalidTaggingRequestException = { ["Message"] = true, nil }

function asserts.AssertInvalidTaggingRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTaggingRequestException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidTaggingRequestException[k], "InvalidTaggingRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTaggingRequestException
-- <p>Can occur for multiple reasons such as when you tag a resource that doesn’t exist or if you specify a higher number of tags for a resource than the allowed limit. Allowed limit is 50 tags per resource.</p>
-- @param _Message [ExceptionMessage] 
function M.InvalidTaggingRequestException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTaggingRequestException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidTaggingRequestException(t)
	return t
end

keys.CreateDirectoryResponse = { ["AppliedSchemaArn"] = true, ["ObjectIdentifier"] = true, ["Name"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertCreateDirectoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectoryResponse to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ObjectIdentifier"], "Expected key ObjectIdentifier to exist in table")
	assert(struct["AppliedSchemaArn"], "Expected key AppliedSchemaArn to exist in table")
	if struct["AppliedSchemaArn"] then asserts.AssertArn(struct["AppliedSchemaArn"]) end
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	if struct["Name"] then asserts.AssertDirectoryName(struct["Name"]) end
	if struct["DirectoryArn"] then asserts.AssertDirectoryArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDirectoryResponse[k], "CreateDirectoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectoryResponse
--  
-- @param _AppliedSchemaArn [Arn] <p>The ARN of the published schema in the <a>Directory</a>. Once a published schema is copied into the directory, it has its own ARN, which is referred to applied schema ARN. For more information, see <a>arns</a>.</p>
-- @param _ObjectIdentifier [ObjectIdentifier] <p>The root object node of the created directory.</p>
-- @param _Name [DirectoryName] <p>The name of the <a>Directory</a>.</p>
-- @param _DirectoryArn [DirectoryArn] <p>The ARN that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: Name
-- Required parameter: ObjectIdentifier
-- Required parameter: AppliedSchemaArn
function M.CreateDirectoryResponse(_AppliedSchemaArn, _ObjectIdentifier, _Name, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDirectoryResponse")
	local t = { 
		["AppliedSchemaArn"] = _AppliedSchemaArn,
		["ObjectIdentifier"] = _ObjectIdentifier,
		["Name"] = _Name,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertCreateDirectoryResponse(t)
	return t
end

keys.ListAttachedIndicesResponse = { ["IndexAttachments"] = true, ["NextToken"] = true, nil }

function asserts.AssertListAttachedIndicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedIndicesResponse to be of type 'table'")
	if struct["IndexAttachments"] then asserts.AssertIndexAttachmentList(struct["IndexAttachments"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttachedIndicesResponse[k], "ListAttachedIndicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedIndicesResponse
--  
-- @param _IndexAttachments [IndexAttachmentList] <p>The indices attached to the specified object.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
function M.ListAttachedIndicesResponse(_IndexAttachments, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedIndicesResponse")
	local t = { 
		["IndexAttachments"] = _IndexAttachments,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListAttachedIndicesResponse(t)
	return t
end

keys.UntagResourceRequest = { ["ResourceArn"] = true, ["TagKeys"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceArn"] then asserts.AssertArn(struct["ResourceArn"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param _ResourceArn [Arn] <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.</p>
-- @param _TagKeys [TagKeyList] <p>Keys of the tag that need to be removed from the resource.</p>
-- Required parameter: ResourceArn
-- Required parameter: TagKeys
function M.UntagResourceRequest(_ResourceArn, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertUntagResourceRequest(t)
	return t
end

keys.DirectoryAlreadyExistsException = { ["Message"] = true, nil }

function asserts.AssertDirectoryAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryAlreadyExistsException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryAlreadyExistsException[k], "DirectoryAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryAlreadyExistsException
-- <p>Indicates that a <a>Directory</a> could not be created due to a naming conflict. Choose a different name and try again.</p>
-- @param _Message [ExceptionMessage] 
function M.DirectoryAlreadyExistsException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryAlreadyExistsException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDirectoryAlreadyExistsException(t)
	return t
end

keys.BatchListObjectChildrenResponse = { ["NextToken"] = true, ["Children"] = true, nil }

function asserts.AssertBatchListObjectChildrenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectChildrenResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Children"] then asserts.AssertLinkNameToObjectIdentifierMap(struct["Children"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListObjectChildrenResponse[k], "BatchListObjectChildrenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectChildrenResponse
-- <p>Represents the output of a <code>ListObjectChildren</code> response operation.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _Children [LinkNameToObjectIdentifierMap] <p>The children structure, which is a map with the key as the <code>LinkName</code> and <code>ObjectIdentifier</code> as the value.</p>
function M.BatchListObjectChildrenResponse(_NextToken, _Children, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchListObjectChildrenResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Children"] = _Children,
	}
	asserts.AssertBatchListObjectChildrenResponse(t)
	return t
end

keys.GetObjectInformationRequest = { ["ObjectReference"] = true, ["ConsistencyLevel"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertGetObjectInformationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectInformationRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectInformationRequest[k], "GetObjectInformationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectInformationRequest
--  
-- @param _ObjectReference [ObjectReference] <p>A reference to the object.</p>
-- @param _ConsistencyLevel [ConsistencyLevel] <p>The consistency level at which to retrieve the object information.</p>
-- @param _DirectoryArn [Arn] <p>The ARN of the directory being retrieved.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.GetObjectInformationRequest(_ObjectReference, _ConsistencyLevel, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectInformationRequest")
	local t = { 
		["ObjectReference"] = _ObjectReference,
		["ConsistencyLevel"] = _ConsistencyLevel,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertGetObjectInformationRequest(t)
	return t
end

keys.PublishSchemaResponse = { ["PublishedSchemaArn"] = true, nil }

function asserts.AssertPublishSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishSchemaResponse to be of type 'table'")
	if struct["PublishedSchemaArn"] then asserts.AssertArn(struct["PublishedSchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublishSchemaResponse[k], "PublishSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishSchemaResponse
--  
-- @param _PublishedSchemaArn [Arn] <p>The ARN that is associated with the published schema. For more information, see <a>arns</a>.</p>
function M.PublishSchemaResponse(_PublishedSchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishSchemaResponse")
	local t = { 
		["PublishedSchemaArn"] = _PublishedSchemaArn,
	}
	asserts.AssertPublishSchemaResponse(t)
	return t
end

keys.InvalidAttachmentException = { ["Message"] = true, nil }

function asserts.AssertInvalidAttachmentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAttachmentException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidAttachmentException[k], "InvalidAttachmentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAttachmentException
-- <p>Indicates that an attempt to attach an object with the same link name or to apply a schema with the same name has occurred. Rename the link or the schema and then try again.</p>
-- @param _Message [ExceptionMessage] 
function M.InvalidAttachmentException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAttachmentException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidAttachmentException(t)
	return t
end

keys.UpdateObjectAttributesRequest = { ["AttributeUpdates"] = true, ["ObjectReference"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertUpdateObjectAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateObjectAttributesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	assert(struct["AttributeUpdates"], "Expected key AttributeUpdates to exist in table")
	if struct["AttributeUpdates"] then asserts.AssertObjectAttributeUpdateList(struct["AttributeUpdates"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateObjectAttributesRequest[k], "UpdateObjectAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateObjectAttributesRequest
--  
-- @param _AttributeUpdates [ObjectAttributeUpdateList] <p>The attributes update structure.</p>
-- @param _ObjectReference [ObjectReference] <p>The reference that identifies the object.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
-- Required parameter: AttributeUpdates
function M.UpdateObjectAttributesRequest(_AttributeUpdates, _ObjectReference, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateObjectAttributesRequest")
	local t = { 
		["AttributeUpdates"] = _AttributeUpdates,
		["ObjectReference"] = _ObjectReference,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertUpdateObjectAttributesRequest(t)
	return t
end

keys.DetachFromIndexRequest = { ["IndexReference"] = true, ["DirectoryArn"] = true, ["TargetReference"] = true, nil }

function asserts.AssertDetachFromIndexRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachFromIndexRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["IndexReference"], "Expected key IndexReference to exist in table")
	assert(struct["TargetReference"], "Expected key TargetReference to exist in table")
	if struct["IndexReference"] then asserts.AssertObjectReference(struct["IndexReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["TargetReference"] then asserts.AssertObjectReference(struct["TargetReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachFromIndexRequest[k], "DetachFromIndexRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachFromIndexRequest
--  
-- @param _IndexReference [ObjectReference] <p>A reference to the index object.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory the index and object exist in.</p>
-- @param _TargetReference [ObjectReference] <p>A reference to the object being detached from the index.</p>
-- Required parameter: DirectoryArn
-- Required parameter: IndexReference
-- Required parameter: TargetReference
function M.DetachFromIndexRequest(_IndexReference, _DirectoryArn, _TargetReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachFromIndexRequest")
	local t = { 
		["IndexReference"] = _IndexReference,
		["DirectoryArn"] = _DirectoryArn,
		["TargetReference"] = _TargetReference,
	}
	asserts.AssertDetachFromIndexRequest(t)
	return t
end

keys.ListAppliedSchemaArnsResponse = { ["NextToken"] = true, ["SchemaArns"] = true, nil }

function asserts.AssertListAppliedSchemaArnsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAppliedSchemaArnsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SchemaArns"] then asserts.AssertArns(struct["SchemaArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAppliedSchemaArnsResponse[k], "ListAppliedSchemaArnsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAppliedSchemaArnsResponse
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _SchemaArns [Arns] <p>The ARNs of schemas that are applied to the directory.</p>
function M.ListAppliedSchemaArnsResponse(_NextToken, _SchemaArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAppliedSchemaArnsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["SchemaArns"] = _SchemaArns,
	}
	asserts.AssertListAppliedSchemaArnsResponse(t)
	return t
end

keys.ListIncomingTypedLinksRequest = { ["FilterAttributeRanges"] = true, ["MaxResults"] = true, ["FilterTypedLink"] = true, ["ObjectReference"] = true, ["DirectoryArn"] = true, ["NextToken"] = true, ["ConsistencyLevel"] = true, nil }

function asserts.AssertListIncomingTypedLinksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIncomingTypedLinksRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["FilterAttributeRanges"] then asserts.AssertTypedLinkAttributeRangeList(struct["FilterAttributeRanges"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["FilterTypedLink"] then asserts.AssertTypedLinkSchemaAndFacetName(struct["FilterTypedLink"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIncomingTypedLinksRequest[k], "ListIncomingTypedLinksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIncomingTypedLinksRequest
--  
-- @param _FilterAttributeRanges [TypedLinkAttributeRangeList] <p>Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- @param _FilterTypedLink [TypedLinkSchemaAndFacetName] <p>Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.</p>
-- @param _ObjectReference [ObjectReference] <p>Reference that identifies the object whose attributes will be listed.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed links.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _ConsistencyLevel [ConsistencyLevel] <p>The consistency level to execute the request at.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListIncomingTypedLinksRequest(_FilterAttributeRanges, _MaxResults, _FilterTypedLink, _ObjectReference, _DirectoryArn, _NextToken, _ConsistencyLevel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIncomingTypedLinksRequest")
	local t = { 
		["FilterAttributeRanges"] = _FilterAttributeRanges,
		["MaxResults"] = _MaxResults,
		["FilterTypedLink"] = _FilterTypedLink,
		["ObjectReference"] = _ObjectReference,
		["DirectoryArn"] = _DirectoryArn,
		["NextToken"] = _NextToken,
		["ConsistencyLevel"] = _ConsistencyLevel,
	}
	asserts.AssertListIncomingTypedLinksRequest(t)
	return t
end

keys.DetachPolicyRequest = { ["PolicyReference"] = true, ["ObjectReference"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertDetachPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachPolicyRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["PolicyReference"], "Expected key PolicyReference to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["PolicyReference"] then asserts.AssertObjectReference(struct["PolicyReference"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachPolicyRequest[k], "DetachPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachPolicyRequest
--  
-- @param _PolicyReference [ObjectReference] <p>Reference that identifies the policy object.</p>
-- @param _ObjectReference [ObjectReference] <p>Reference that identifies the object whose policy object will be detached.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where both objects reside. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: PolicyReference
-- Required parameter: ObjectReference
function M.DetachPolicyRequest(_PolicyReference, _ObjectReference, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachPolicyRequest")
	local t = { 
		["PolicyReference"] = _PolicyReference,
		["ObjectReference"] = _ObjectReference,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertDetachPolicyRequest(t)
	return t
end

keys.PutSchemaFromJsonResponse = { ["Arn"] = true, nil }

function asserts.AssertPutSchemaFromJsonResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSchemaFromJsonResponse to be of type 'table'")
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutSchemaFromJsonResponse[k], "PutSchemaFromJsonResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSchemaFromJsonResponse
--  
-- @param _Arn [Arn] <p>The ARN of the schema to update.</p>
function M.PutSchemaFromJsonResponse(_Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutSchemaFromJsonResponse")
	local t = { 
		["Arn"] = _Arn,
	}
	asserts.AssertPutSchemaFromJsonResponse(t)
	return t
end

keys.TypedLinkSpecifier = { ["SourceObjectReference"] = true, ["IdentityAttributeValues"] = true, ["TargetObjectReference"] = true, ["TypedLinkFacet"] = true, nil }

function asserts.AssertTypedLinkSpecifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkSpecifier to be of type 'table'")
	assert(struct["TypedLinkFacet"], "Expected key TypedLinkFacet to exist in table")
	assert(struct["SourceObjectReference"], "Expected key SourceObjectReference to exist in table")
	assert(struct["TargetObjectReference"], "Expected key TargetObjectReference to exist in table")
	assert(struct["IdentityAttributeValues"], "Expected key IdentityAttributeValues to exist in table")
	if struct["SourceObjectReference"] then asserts.AssertObjectReference(struct["SourceObjectReference"]) end
	if struct["IdentityAttributeValues"] then asserts.AssertAttributeNameAndValueList(struct["IdentityAttributeValues"]) end
	if struct["TargetObjectReference"] then asserts.AssertObjectReference(struct["TargetObjectReference"]) end
	if struct["TypedLinkFacet"] then asserts.AssertTypedLinkSchemaAndFacetName(struct["TypedLinkFacet"]) end
	for k,_ in pairs(struct) do
		assert(keys.TypedLinkSpecifier[k], "TypedLinkSpecifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkSpecifier
-- <p>Contains all the information that is used to uniquely identify a typed link. The parameters discussed in this topic are used to uniquely specify the typed link being operated on. The <a>AttachTypedLink</a> API returns a typed link specifier while the <a>DetachTypedLink</a> API accepts one as input. Similarly, the <a>ListIncomingTypedLinks</a> and <a>ListOutgoingTypedLinks</a> API operations provide typed link specifiers as output. You can also construct a typed link specifier from scratch.</p>
-- @param _SourceObjectReference [ObjectReference] <p>Identifies the source object that the typed link will attach to.</p>
-- @param _IdentityAttributeValues [AttributeNameAndValueList] <p>Identifies the attribute value to update.</p>
-- @param _TargetObjectReference [ObjectReference] <p>Identifies the target object that the typed link will attach to.</p>
-- @param _TypedLinkFacet [TypedLinkSchemaAndFacetName] <p>Identifies the typed link facet that is associated with the typed link.</p>
-- Required parameter: TypedLinkFacet
-- Required parameter: SourceObjectReference
-- Required parameter: TargetObjectReference
-- Required parameter: IdentityAttributeValues
function M.TypedLinkSpecifier(_SourceObjectReference, _IdentityAttributeValues, _TargetObjectReference, _TypedLinkFacet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkSpecifier")
	local t = { 
		["SourceObjectReference"] = _SourceObjectReference,
		["IdentityAttributeValues"] = _IdentityAttributeValues,
		["TargetObjectReference"] = _TargetObjectReference,
		["TypedLinkFacet"] = _TypedLinkFacet,
	}
	asserts.AssertTypedLinkSpecifier(t)
	return t
end

keys.ObjectAlreadyDetachedException = { ["Message"] = true, nil }

function asserts.AssertObjectAlreadyDetachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectAlreadyDetachedException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectAlreadyDetachedException[k], "ObjectAlreadyDetachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectAlreadyDetachedException
-- <p>Indicates that the object is not attached to the index.</p>
-- @param _Message [ExceptionMessage] 
function M.ObjectAlreadyDetachedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectAlreadyDetachedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertObjectAlreadyDetachedException(t)
	return t
end

keys.ListIndexRequest = { ["MaxResults"] = true, ["RangesOnIndexedValues"] = true, ["IndexReference"] = true, ["DirectoryArn"] = true, ["NextToken"] = true, ["ConsistencyLevel"] = true, nil }

function asserts.AssertListIndexRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIndexRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["IndexReference"], "Expected key IndexReference to exist in table")
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["RangesOnIndexedValues"] then asserts.AssertObjectAttributeRangeList(struct["RangesOnIndexedValues"]) end
	if struct["IndexReference"] then asserts.AssertObjectReference(struct["IndexReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIndexRequest[k], "ListIndexRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIndexRequest
--  
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve from the index.</p>
-- @param _RangesOnIndexedValues [ObjectAttributeRangeList] <p>Specifies the ranges of indexed values that you want to query.</p>
-- @param _IndexReference [ObjectReference] <p>The reference to the index to list.</p>
-- @param _DirectoryArn [Arn] <p>The ARN of the directory that the index exists in.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _ConsistencyLevel [ConsistencyLevel] <p>The consistency level to execute the request at.</p>
-- Required parameter: DirectoryArn
-- Required parameter: IndexReference
function M.ListIndexRequest(_MaxResults, _RangesOnIndexedValues, _IndexReference, _DirectoryArn, _NextToken, _ConsistencyLevel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIndexRequest")
	local t = { 
		["MaxResults"] = _MaxResults,
		["RangesOnIndexedValues"] = _RangesOnIndexedValues,
		["IndexReference"] = _IndexReference,
		["DirectoryArn"] = _DirectoryArn,
		["NextToken"] = _NextToken,
		["ConsistencyLevel"] = _ConsistencyLevel,
	}
	asserts.AssertListIndexRequest(t)
	return t
end

keys.CreateTypedLinkFacetResponse = { nil }

function asserts.AssertCreateTypedLinkFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTypedLinkFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateTypedLinkFacetResponse[k], "CreateTypedLinkFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTypedLinkFacetResponse
--  
function M.CreateTypedLinkFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTypedLinkFacetResponse")
	local t = { 
	}
	asserts.AssertCreateTypedLinkFacetResponse(t)
	return t
end

keys.ListPublishedSchemaArnsResponse = { ["NextToken"] = true, ["SchemaArns"] = true, nil }

function asserts.AssertListPublishedSchemaArnsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublishedSchemaArnsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SchemaArns"] then asserts.AssertArns(struct["SchemaArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPublishedSchemaArnsResponse[k], "ListPublishedSchemaArnsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublishedSchemaArnsResponse
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _SchemaArns [Arns] <p>The ARNs of published schemas.</p>
function M.ListPublishedSchemaArnsResponse(_NextToken, _SchemaArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPublishedSchemaArnsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["SchemaArns"] = _SchemaArns,
	}
	asserts.AssertListPublishedSchemaArnsResponse(t)
	return t
end

keys.CreateIndexResponse = { ["ObjectIdentifier"] = true, nil }

function asserts.AssertCreateIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIndexResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIndexResponse[k], "CreateIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIndexResponse
--  
-- @param _ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>
function M.CreateIndexResponse(_ObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIndexResponse")
	local t = { 
		["ObjectIdentifier"] = _ObjectIdentifier,
	}
	asserts.AssertCreateIndexResponse(t)
	return t
end

keys.BatchAttachObject = { ["ParentReference"] = true, ["LinkName"] = true, ["ChildReference"] = true, nil }

function asserts.AssertBatchAttachObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAttachObject to be of type 'table'")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["ChildReference"], "Expected key ChildReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	if struct["ParentReference"] then asserts.AssertObjectReference(struct["ParentReference"]) end
	if struct["LinkName"] then asserts.AssertLinkName(struct["LinkName"]) end
	if struct["ChildReference"] then asserts.AssertObjectReference(struct["ChildReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAttachObject[k], "BatchAttachObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAttachObject
-- <p>Represents the output of an <code>AttachObject</code> operation.</p>
-- @param _ParentReference [ObjectReference] <p>The parent object reference.</p>
-- @param _LinkName [LinkName] <p>The name of the link.</p>
-- @param _ChildReference [ObjectReference] <p>The child object reference that is to be attached to the object.</p>
-- Required parameter: ParentReference
-- Required parameter: ChildReference
-- Required parameter: LinkName
function M.BatchAttachObject(_ParentReference, _LinkName, _ChildReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchAttachObject")
	local t = { 
		["ParentReference"] = _ParentReference,
		["LinkName"] = _LinkName,
		["ChildReference"] = _ChildReference,
	}
	asserts.AssertBatchAttachObject(t)
	return t
end

keys.FacetAttributeDefinition = { ["Rules"] = true, ["DefaultValue"] = true, ["Type"] = true, ["IsImmutable"] = true, nil }

function asserts.AssertFacetAttributeDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetAttributeDefinition to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Rules"] then asserts.AssertRuleMap(struct["Rules"]) end
	if struct["DefaultValue"] then asserts.AssertTypedAttributeValue(struct["DefaultValue"]) end
	if struct["Type"] then asserts.AssertFacetAttributeType(struct["Type"]) end
	if struct["IsImmutable"] then asserts.AssertBool(struct["IsImmutable"]) end
	for k,_ in pairs(struct) do
		assert(keys.FacetAttributeDefinition[k], "FacetAttributeDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetAttributeDefinition
-- <p>A facet attribute definition. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences">Attribute References</a> for more information.</p>
-- @param _Rules [RuleMap] <p>Validation rules attached to the attribute definition.</p>
-- @param _DefaultValue [TypedAttributeValue] <p>The default value of the attribute (if configured).</p>
-- @param _Type [FacetAttributeType] <p>The type of the attribute.</p>
-- @param _IsImmutable [Bool] <p>Whether the attribute is mutable or not.</p>
-- Required parameter: Type
function M.FacetAttributeDefinition(_Rules, _DefaultValue, _Type, _IsImmutable, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetAttributeDefinition")
	local t = { 
		["Rules"] = _Rules,
		["DefaultValue"] = _DefaultValue,
		["Type"] = _Type,
		["IsImmutable"] = _IsImmutable,
	}
	asserts.AssertFacetAttributeDefinition(t)
	return t
end

keys.ListTagsForResourceRequest = { ["ResourceArn"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertArn(struct["ResourceArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertTagsNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param _ResourceArn [Arn] <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.</p>
-- @param _NextToken [NextToken] <p>The pagination token. This is for future use. Currently pagination is not supported for tagging.</p>
-- @param _MaxResults [TagsNumberResults] <p>The <code>MaxResults</code> parameter sets the maximum number of results returned in a single page. This is for future use and is not supported currently.</p>
-- Required parameter: ResourceArn
function M.ListTagsForResourceRequest(_ResourceArn, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListTagsForResourceRequest(t)
	return t
end

keys.BatchAddFacetToObjectResponse = { nil }

function asserts.AssertBatchAddFacetToObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAddFacetToObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchAddFacetToObjectResponse[k], "BatchAddFacetToObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAddFacetToObjectResponse
-- <p>The result of a batch add facet to object operation.</p>
function M.BatchAddFacetToObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchAddFacetToObjectResponse")
	local t = { 
	}
	asserts.AssertBatchAddFacetToObjectResponse(t)
	return t
end

keys.BatchRemoveFacetFromObjectResponse = { nil }

function asserts.AssertBatchRemoveFacetFromObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchRemoveFacetFromObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchRemoveFacetFromObjectResponse[k], "BatchRemoveFacetFromObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchRemoveFacetFromObjectResponse
-- <p>An empty result that represents success.</p>
function M.BatchRemoveFacetFromObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchRemoveFacetFromObjectResponse")
	local t = { 
	}
	asserts.AssertBatchRemoveFacetFromObjectResponse(t)
	return t
end

keys.AttachPolicyResponse = { nil }

function asserts.AssertAttachPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AttachPolicyResponse[k], "AttachPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachPolicyResponse
--  
function M.AttachPolicyResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachPolicyResponse")
	local t = { 
	}
	asserts.AssertAttachPolicyResponse(t)
	return t
end

keys.PolicyToPath = { ["Path"] = true, ["Policies"] = true, nil }

function asserts.AssertPolicyToPath(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyToPath to be of type 'table'")
	if struct["Path"] then asserts.AssertPathString(struct["Path"]) end
	if struct["Policies"] then asserts.AssertPolicyAttachmentList(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyToPath[k], "PolicyToPath contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyToPath
-- <p>Used when a regular object exists in a <a>Directory</a> and you want to find all of the policies that are associated with that object and the parent to that object.</p>
-- @param _Path [PathString] <p>The path that is referenced from the root.</p>
-- @param _Policies [PolicyAttachmentList] <p>List of policy objects.</p>
function M.PolicyToPath(_Path, _Policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyToPath")
	local t = { 
		["Path"] = _Path,
		["Policies"] = _Policies,
	}
	asserts.AssertPolicyToPath(t)
	return t
end

keys.BatchListObjectChildren = { ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertBatchListObjectChildren(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectChildren to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListObjectChildren[k], "BatchListObjectChildren contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectChildren
-- <p>Represents the output of a <code>ListObjectChildren</code> operation.</p>
-- @param _ObjectReference [ObjectReference] <p>Reference of the object for which child objects are being listed.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>Maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- Required parameter: ObjectReference
function M.BatchListObjectChildren(_ObjectReference, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchListObjectChildren")
	local t = { 
		["ObjectReference"] = _ObjectReference,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertBatchListObjectChildren(t)
	return t
end

keys.ListPublishedSchemaArnsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListPublishedSchemaArnsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublishedSchemaArnsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPublishedSchemaArnsRequest[k], "ListPublishedSchemaArnsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublishedSchemaArnsRequest
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
function M.ListPublishedSchemaArnsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPublishedSchemaArnsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListPublishedSchemaArnsRequest(t)
	return t
end

keys.UpdateTypedLinkFacetResponse = { nil }

function asserts.AssertUpdateTypedLinkFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTypedLinkFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateTypedLinkFacetResponse[k], "UpdateTypedLinkFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTypedLinkFacetResponse
--  
function M.UpdateTypedLinkFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTypedLinkFacetResponse")
	local t = { 
	}
	asserts.AssertUpdateTypedLinkFacetResponse(t)
	return t
end

keys.FacetAlreadyExistsException = { ["Message"] = true, nil }

function asserts.AssertFacetAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetAlreadyExistsException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FacetAlreadyExistsException[k], "FacetAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetAlreadyExistsException
-- <p>A facet with the same name already exists.</p>
-- @param _Message [ExceptionMessage] 
function M.FacetAlreadyExistsException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetAlreadyExistsException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertFacetAlreadyExistsException(t)
	return t
end

keys.TagResourceRequest = { ["ResourceArn"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArn"] then asserts.AssertArn(struct["ResourceArn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param _ResourceArn [Arn] <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.</p>
-- @param _Tags [TagList] <p>A list of tag key-value pairs.</p>
-- Required parameter: ResourceArn
-- Required parameter: Tags
function M.TagResourceRequest(_ResourceArn, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["Tags"] = _Tags,
	}
	asserts.AssertTagResourceRequest(t)
	return t
end

keys.AttachTypedLinkResponse = { ["TypedLinkSpecifier"] = true, nil }

function asserts.AssertAttachTypedLinkResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachTypedLinkResponse to be of type 'table'")
	if struct["TypedLinkSpecifier"] then asserts.AssertTypedLinkSpecifier(struct["TypedLinkSpecifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachTypedLinkResponse[k], "AttachTypedLinkResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachTypedLinkResponse
--  
-- @param _TypedLinkSpecifier [TypedLinkSpecifier] <p>Returns a typed link specifier as output.</p>
function M.AttachTypedLinkResponse(_TypedLinkSpecifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachTypedLinkResponse")
	local t = { 
		["TypedLinkSpecifier"] = _TypedLinkSpecifier,
	}
	asserts.AssertAttachTypedLinkResponse(t)
	return t
end

keys.DisableDirectoryResponse = { ["DirectoryArn"] = true, nil }

function asserts.AssertDisableDirectoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDirectoryResponse to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableDirectoryResponse[k], "DisableDirectoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDirectoryResponse
--  
-- @param _DirectoryArn [Arn] <p>The ARN of the directory that has been disabled.</p>
-- Required parameter: DirectoryArn
function M.DisableDirectoryResponse(_DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDirectoryResponse")
	local t = { 
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertDisableDirectoryResponse(t)
	return t
end

keys.DetachObjectResponse = { ["DetachedObjectIdentifier"] = true, nil }

function asserts.AssertDetachObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachObjectResponse to be of type 'table'")
	if struct["DetachedObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["DetachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachObjectResponse[k], "DetachObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachObjectResponse
--  
-- @param _DetachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> that was detached from the object.</p>
function M.DetachObjectResponse(_DetachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachObjectResponse")
	local t = { 
		["DetachedObjectIdentifier"] = _DetachedObjectIdentifier,
	}
	asserts.AssertDetachObjectResponse(t)
	return t
end

keys.BatchListObjectAttributes = { ["FacetFilter"] = true, ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertBatchListObjectAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectAttributes to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["FacetFilter"] then asserts.AssertSchemaFacet(struct["FacetFilter"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListObjectAttributes[k], "BatchListObjectAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectAttributes
-- <p>Represents the output of a <code>ListObjectAttributes</code> operation.</p>
-- @param _FacetFilter [SchemaFacet] <p>Used to filter the list of object attributes that are associated with a certain facet.</p>
-- @param _ObjectReference [ObjectReference] <p>Reference of the object whose attributes need to be listed.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- Required parameter: ObjectReference
function M.BatchListObjectAttributes(_FacetFilter, _ObjectReference, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchListObjectAttributes")
	local t = { 
		["FacetFilter"] = _FacetFilter,
		["ObjectReference"] = _ObjectReference,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertBatchListObjectAttributes(t)
	return t
end

keys.GetTypedLinkFacetInformationResponse = { ["IdentityAttributeOrder"] = true, nil }

function asserts.AssertGetTypedLinkFacetInformationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTypedLinkFacetInformationResponse to be of type 'table'")
	if struct["IdentityAttributeOrder"] then asserts.AssertAttributeNameList(struct["IdentityAttributeOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTypedLinkFacetInformationResponse[k], "GetTypedLinkFacetInformationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTypedLinkFacetInformationResponse
--  
-- @param _IdentityAttributeOrder [AttributeNameList] <p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed links considers the order that the attributes are defined on the typed link facet. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range. Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls. For more information about identity attributes, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink">Typed link</a>.</p>
function M.GetTypedLinkFacetInformationResponse(_IdentityAttributeOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTypedLinkFacetInformationResponse")
	local t = { 
		["IdentityAttributeOrder"] = _IdentityAttributeOrder,
	}
	asserts.AssertGetTypedLinkFacetInformationResponse(t)
	return t
end

keys.UntagResourceResponse = { nil }

function asserts.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceResponse[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
--  
function M.UntagResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceResponse")
	local t = { 
	}
	asserts.AssertUntagResourceResponse(t)
	return t
end

keys.GetObjectInformationResponse = { ["ObjectIdentifier"] = true, ["SchemaFacets"] = true, nil }

function asserts.AssertGetObjectInformationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectInformationResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	if struct["SchemaFacets"] then asserts.AssertSchemaFacetList(struct["SchemaFacets"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectInformationResponse[k], "GetObjectInformationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectInformationResponse
--  
-- @param _ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the specified object.</p>
-- @param _SchemaFacets [SchemaFacetList] <p>The facets attached to the specified object.</p>
function M.GetObjectInformationResponse(_ObjectIdentifier, _SchemaFacets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectInformationResponse")
	local t = { 
		["ObjectIdentifier"] = _ObjectIdentifier,
		["SchemaFacets"] = _SchemaFacets,
	}
	asserts.AssertGetObjectInformationResponse(t)
	return t
end

keys.DirectoryNotEnabledException = { ["Message"] = true, nil }

function asserts.AssertDirectoryNotEnabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryNotEnabledException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryNotEnabledException[k], "DirectoryNotEnabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryNotEnabledException
-- <p>An operation can only operate on a directory that is not enabled.</p>
-- @param _Message [ExceptionMessage] 
function M.DirectoryNotEnabledException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryNotEnabledException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDirectoryNotEnabledException(t)
	return t
end

keys.CreateSchemaResponse = { ["SchemaArn"] = true, nil }

function asserts.AssertCreateSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSchemaResponse to be of type 'table'")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSchemaResponse[k], "CreateSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSchemaResponse
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
function M.CreateSchemaResponse(_SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSchemaResponse")
	local t = { 
		["SchemaArn"] = _SchemaArn,
	}
	asserts.AssertCreateSchemaResponse(t)
	return t
end

keys.CreateFacetResponse = { nil }

function asserts.AssertCreateFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateFacetResponse[k], "CreateFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFacetResponse
--  
function M.CreateFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFacetResponse")
	local t = { 
	}
	asserts.AssertCreateFacetResponse(t)
	return t
end

keys.GetSchemaAsJsonRequest = { ["SchemaArn"] = true, nil }

function asserts.AssertGetSchemaAsJsonRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSchemaAsJsonRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSchemaAsJsonRequest[k], "GetSchemaAsJsonRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSchemaAsJsonRequest
--  
-- @param _SchemaArn [Arn] <p>The ARN of the schema to retrieve.</p>
-- Required parameter: SchemaArn
function M.GetSchemaAsJsonRequest(_SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSchemaAsJsonRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
	}
	asserts.AssertGetSchemaAsJsonRequest(t)
	return t
end

keys.DeleteTypedLinkFacetResponse = { nil }

function asserts.AssertDeleteTypedLinkFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTypedLinkFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTypedLinkFacetResponse[k], "DeleteTypedLinkFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTypedLinkFacetResponse
--  
function M.DeleteTypedLinkFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTypedLinkFacetResponse")
	local t = { 
	}
	asserts.AssertDeleteTypedLinkFacetResponse(t)
	return t
end

keys.GetTypedLinkFacetInformationRequest = { ["SchemaArn"] = true, ["Name"] = true, nil }

function asserts.AssertGetTypedLinkFacetInformationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTypedLinkFacetInformationRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then asserts.AssertTypedLinkName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTypedLinkFacetInformationRequest[k], "GetTypedLinkFacetInformationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTypedLinkFacetInformationRequest
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- @param _Name [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.GetTypedLinkFacetInformationRequest(_SchemaArn, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTypedLinkFacetInformationRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["Name"] = _Name,
	}
	asserts.AssertGetTypedLinkFacetInformationRequest(t)
	return t
end

keys.ListOutgoingTypedLinksResponse = { ["NextToken"] = true, ["TypedLinkSpecifiers"] = true, nil }

function asserts.AssertListOutgoingTypedLinksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOutgoingTypedLinksResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["TypedLinkSpecifiers"] then asserts.AssertTypedLinkSpecifierList(struct["TypedLinkSpecifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOutgoingTypedLinksResponse[k], "ListOutgoingTypedLinksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOutgoingTypedLinksResponse
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _TypedLinkSpecifiers [TypedLinkSpecifierList] <p>Returns a typed link specifier as output.</p>
function M.ListOutgoingTypedLinksResponse(_NextToken, _TypedLinkSpecifiers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOutgoingTypedLinksResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["TypedLinkSpecifiers"] = _TypedLinkSpecifiers,
	}
	asserts.AssertListOutgoingTypedLinksResponse(t)
	return t
end

keys.PutSchemaFromJsonRequest = { ["Document"] = true, ["SchemaArn"] = true, nil }

function asserts.AssertPutSchemaFromJsonRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSchemaFromJsonRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Document"], "Expected key Document to exist in table")
	if struct["Document"] then asserts.AssertSchemaJsonDocument(struct["Document"]) end
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutSchemaFromJsonRequest[k], "PutSchemaFromJsonRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSchemaFromJsonRequest
--  
-- @param _Document [SchemaJsonDocument] <p>The replacement JSON schema.</p>
-- @param _SchemaArn [Arn] <p>The ARN of the schema to update.</p>
-- Required parameter: SchemaArn
-- Required parameter: Document
function M.PutSchemaFromJsonRequest(_Document, _SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutSchemaFromJsonRequest")
	local t = { 
		["Document"] = _Document,
		["SchemaArn"] = _SchemaArn,
	}
	asserts.AssertPutSchemaFromJsonRequest(t)
	return t
end

keys.EnableDirectoryRequest = { ["DirectoryArn"] = true, nil }

function asserts.AssertEnableDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableDirectoryRequest[k], "EnableDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDirectoryRequest
--  
-- @param _DirectoryArn [Arn] <p>The ARN of the directory to enable.</p>
-- Required parameter: DirectoryArn
function M.EnableDirectoryRequest(_DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDirectoryRequest")
	local t = { 
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertEnableDirectoryRequest(t)
	return t
end

keys.IndexedAttributeMissingException = { ["Message"] = true, nil }

function asserts.AssertIndexedAttributeMissingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexedAttributeMissingException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexedAttributeMissingException[k], "IndexedAttributeMissingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexedAttributeMissingException
-- <p>An object has been attempted to be attached to an object that does not have the appropriate attribute value.</p>
-- @param _Message [ExceptionMessage] 
function M.IndexedAttributeMissingException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexedAttributeMissingException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertIndexedAttributeMissingException(t)
	return t
end

keys.ListObjectParentPathsResponse = { ["PathToObjectIdentifiersList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListObjectParentPathsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectParentPathsResponse to be of type 'table'")
	if struct["PathToObjectIdentifiersList"] then asserts.AssertPathToObjectIdentifiersList(struct["PathToObjectIdentifiersList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectParentPathsResponse[k], "ListObjectParentPathsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectParentPathsResponse
--  
-- @param _PathToObjectIdentifiersList [PathToObjectIdentifiersList] <p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the directory.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
function M.ListObjectParentPathsResponse(_PathToObjectIdentifiersList, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectParentPathsResponse")
	local t = { 
		["PathToObjectIdentifiersList"] = _PathToObjectIdentifiersList,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListObjectParentPathsResponse(t)
	return t
end

keys.UpdateTypedLinkFacetRequest = { ["AttributeUpdates"] = true, ["SchemaArn"] = true, ["IdentityAttributeOrder"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateTypedLinkFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTypedLinkFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["AttributeUpdates"], "Expected key AttributeUpdates to exist in table")
	assert(struct["IdentityAttributeOrder"], "Expected key IdentityAttributeOrder to exist in table")
	if struct["AttributeUpdates"] then asserts.AssertTypedLinkFacetAttributeUpdateList(struct["AttributeUpdates"]) end
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["IdentityAttributeOrder"] then asserts.AssertAttributeNameList(struct["IdentityAttributeOrder"]) end
	if struct["Name"] then asserts.AssertTypedLinkName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTypedLinkFacetRequest[k], "UpdateTypedLinkFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTypedLinkFacetRequest
--  
-- @param _AttributeUpdates [TypedLinkFacetAttributeUpdateList] <p>Attributes update structure.</p>
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- @param _IdentityAttributeOrder [AttributeNameList] <p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed links considers the order that the attributes are defined on the typed link facet. When providing ranges to a typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range. Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls. For more information about identity attributes, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink">Typed link</a>.</p>
-- @param _Name [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- Required parameter: SchemaArn
-- Required parameter: Name
-- Required parameter: AttributeUpdates
-- Required parameter: IdentityAttributeOrder
function M.UpdateTypedLinkFacetRequest(_AttributeUpdates, _SchemaArn, _IdentityAttributeOrder, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTypedLinkFacetRequest")
	local t = { 
		["AttributeUpdates"] = _AttributeUpdates,
		["SchemaArn"] = _SchemaArn,
		["IdentityAttributeOrder"] = _IdentityAttributeOrder,
		["Name"] = _Name,
	}
	asserts.AssertUpdateTypedLinkFacetRequest(t)
	return t
end

keys.ListFacetNamesResponse = { ["NextToken"] = true, ["FacetNames"] = true, nil }

function asserts.AssertListFacetNamesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacetNamesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["FacetNames"] then asserts.AssertFacetNameList(struct["FacetNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFacetNamesResponse[k], "ListFacetNamesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacetNamesResponse
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _FacetNames [FacetNameList] <p>The names of facets that exist within the schema.</p>
function M.ListFacetNamesResponse(_NextToken, _FacetNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFacetNamesResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["FacetNames"] = _FacetNames,
	}
	asserts.AssertListFacetNamesResponse(t)
	return t
end

keys.ListTypedLinkFacetAttributesRequest = { ["SchemaArn"] = true, ["NextToken"] = true, ["Name"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListTypedLinkFacetAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTypedLinkFacetAttributesRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Name"] then asserts.AssertTypedLinkName(struct["Name"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTypedLinkFacetAttributesRequest[k], "ListTypedLinkFacetAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTypedLinkFacetAttributesRequest
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _Name [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.ListTypedLinkFacetAttributesRequest(_SchemaArn, _NextToken, _Name, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTypedLinkFacetAttributesRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["NextToken"] = _NextToken,
		["Name"] = _Name,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListTypedLinkFacetAttributesRequest(t)
	return t
end

keys.TagResourceResponse = { nil }

function asserts.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagResourceResponse[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
--  
function M.TagResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceResponse")
	local t = { 
	}
	asserts.AssertTagResourceResponse(t)
	return t
end

keys.TypedLinkAttributeDefinition = { ["RequiredBehavior"] = true, ["Name"] = true, ["IsImmutable"] = true, ["Rules"] = true, ["DefaultValue"] = true, ["Type"] = true, nil }

function asserts.AssertTypedLinkAttributeDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkAttributeDefinition to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["RequiredBehavior"], "Expected key RequiredBehavior to exist in table")
	if struct["RequiredBehavior"] then asserts.AssertRequiredAttributeBehavior(struct["RequiredBehavior"]) end
	if struct["Name"] then asserts.AssertAttributeName(struct["Name"]) end
	if struct["IsImmutable"] then asserts.AssertBool(struct["IsImmutable"]) end
	if struct["Rules"] then asserts.AssertRuleMap(struct["Rules"]) end
	if struct["DefaultValue"] then asserts.AssertTypedAttributeValue(struct["DefaultValue"]) end
	if struct["Type"] then asserts.AssertFacetAttributeType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.TypedLinkAttributeDefinition[k], "TypedLinkAttributeDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkAttributeDefinition
-- <p>A typed link attribute definition.</p>
-- @param _RequiredBehavior [RequiredAttributeBehavior] <p>The required behavior of the <code>TypedLinkAttributeDefinition</code>.</p>
-- @param _Name [AttributeName] <p>The unique name of the typed link attribute.</p>
-- @param _IsImmutable [Bool] <p>Whether the attribute is mutable or not.</p>
-- @param _Rules [RuleMap] <p>Validation rules that are attached to the attribute definition.</p>
-- @param _DefaultValue [TypedAttributeValue] <p>The default value of the attribute (if configured).</p>
-- @param _Type [FacetAttributeType] <p>The type of the attribute.</p>
-- Required parameter: Name
-- Required parameter: Type
-- Required parameter: RequiredBehavior
function M.TypedLinkAttributeDefinition(_RequiredBehavior, _Name, _IsImmutable, _Rules, _DefaultValue, _Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkAttributeDefinition")
	local t = { 
		["RequiredBehavior"] = _RequiredBehavior,
		["Name"] = _Name,
		["IsImmutable"] = _IsImmutable,
		["Rules"] = _Rules,
		["DefaultValue"] = _DefaultValue,
		["Type"] = _Type,
	}
	asserts.AssertTypedLinkAttributeDefinition(t)
	return t
end

keys.ListOutgoingTypedLinksRequest = { ["FilterAttributeRanges"] = true, ["MaxResults"] = true, ["FilterTypedLink"] = true, ["ObjectReference"] = true, ["DirectoryArn"] = true, ["NextToken"] = true, ["ConsistencyLevel"] = true, nil }

function asserts.AssertListOutgoingTypedLinksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOutgoingTypedLinksRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["FilterAttributeRanges"] then asserts.AssertTypedLinkAttributeRangeList(struct["FilterAttributeRanges"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["FilterTypedLink"] then asserts.AssertTypedLinkSchemaAndFacetName(struct["FilterTypedLink"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOutgoingTypedLinksRequest[k], "ListOutgoingTypedLinksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOutgoingTypedLinksRequest
--  
-- @param _FilterAttributeRanges [TypedLinkAttributeRangeList] <p>Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- @param _FilterTypedLink [TypedLinkSchemaAndFacetName] <p>Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.</p>
-- @param _ObjectReference [ObjectReference] <p>A reference that identifies the object whose attributes will be listed.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed links.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _ConsistencyLevel [ConsistencyLevel] <p>The consistency level to execute the request at.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListOutgoingTypedLinksRequest(_FilterAttributeRanges, _MaxResults, _FilterTypedLink, _ObjectReference, _DirectoryArn, _NextToken, _ConsistencyLevel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOutgoingTypedLinksRequest")
	local t = { 
		["FilterAttributeRanges"] = _FilterAttributeRanges,
		["MaxResults"] = _MaxResults,
		["FilterTypedLink"] = _FilterTypedLink,
		["ObjectReference"] = _ObjectReference,
		["DirectoryArn"] = _DirectoryArn,
		["NextToken"] = _NextToken,
		["ConsistencyLevel"] = _ConsistencyLevel,
	}
	asserts.AssertListOutgoingTypedLinksRequest(t)
	return t
end

keys.CreateDirectoryRequest = { ["SchemaArn"] = true, ["Name"] = true, nil }

function asserts.AssertCreateDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectoryRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then asserts.AssertDirectoryName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDirectoryRequest[k], "CreateDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectoryRequest
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) of the published schema that will be copied into the data <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- @param _Name [DirectoryName] <p>The name of the <a>Directory</a>. Should be unique per account, per region.</p>
-- Required parameter: Name
-- Required parameter: SchemaArn
function M.CreateDirectoryRequest(_SchemaArn, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDirectoryRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["Name"] = _Name,
	}
	asserts.AssertCreateDirectoryRequest(t)
	return t
end

keys.ListTypedLinkFacetNamesResponse = { ["NextToken"] = true, ["FacetNames"] = true, nil }

function asserts.AssertListTypedLinkFacetNamesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTypedLinkFacetNamesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["FacetNames"] then asserts.AssertTypedLinkNameList(struct["FacetNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTypedLinkFacetNamesResponse[k], "ListTypedLinkFacetNamesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTypedLinkFacetNamesResponse
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _FacetNames [TypedLinkNameList] <p>The names of typed link facets that exist within the schema.</p>
function M.ListTypedLinkFacetNamesResponse(_NextToken, _FacetNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTypedLinkFacetNamesResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["FacetNames"] = _FacetNames,
	}
	asserts.AssertListTypedLinkFacetNamesResponse(t)
	return t
end

keys.GetDirectoryRequest = { ["DirectoryArn"] = true, nil }

function asserts.AssertGetDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then asserts.AssertDirectoryArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDirectoryRequest[k], "GetDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDirectoryRequest
--  
-- @param _DirectoryArn [DirectoryArn] <p>The ARN of the directory.</p>
-- Required parameter: DirectoryArn
function M.GetDirectoryRequest(_DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDirectoryRequest")
	local t = { 
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertGetDirectoryRequest(t)
	return t
end

keys.BatchAttachObjectResponse = { ["attachedObjectIdentifier"] = true, nil }

function asserts.AssertBatchAttachObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAttachObjectResponse to be of type 'table'")
	if struct["attachedObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["attachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAttachObjectResponse[k], "BatchAttachObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAttachObjectResponse
-- <p>Represents the output batch <code>AttachObject</code> response operation.</p>
-- @param _attachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the object that has been attached.</p>
function M.BatchAttachObjectResponse(_attachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchAttachObjectResponse")
	local t = { 
		["attachedObjectIdentifier"] = _attachedObjectIdentifier,
	}
	asserts.AssertBatchAttachObjectResponse(t)
	return t
end

keys.BatchWriteOperation = { ["DetachObject"] = true, ["AttachObject"] = true, ["AddFacetToObject"] = true, ["RemoveFacetFromObject"] = true, ["CreateObject"] = true, ["DeleteObject"] = true, ["UpdateObjectAttributes"] = true, nil }

function asserts.AssertBatchWriteOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteOperation to be of type 'table'")
	if struct["DetachObject"] then asserts.AssertBatchDetachObject(struct["DetachObject"]) end
	if struct["AttachObject"] then asserts.AssertBatchAttachObject(struct["AttachObject"]) end
	if struct["AddFacetToObject"] then asserts.AssertBatchAddFacetToObject(struct["AddFacetToObject"]) end
	if struct["RemoveFacetFromObject"] then asserts.AssertBatchRemoveFacetFromObject(struct["RemoveFacetFromObject"]) end
	if struct["CreateObject"] then asserts.AssertBatchCreateObject(struct["CreateObject"]) end
	if struct["DeleteObject"] then asserts.AssertBatchDeleteObject(struct["DeleteObject"]) end
	if struct["UpdateObjectAttributes"] then asserts.AssertBatchUpdateObjectAttributes(struct["UpdateObjectAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchWriteOperation[k], "BatchWriteOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteOperation
-- <p>Represents the output of a <code>BatchWrite</code> operation. </p>
-- @param _DetachObject [BatchDetachObject] <p>Detaches an object from a <a>Directory</a>.</p>
-- @param _AttachObject [BatchAttachObject] <p>Attaches an object to a <a>Directory</a>.</p>
-- @param _AddFacetToObject [BatchAddFacetToObject] <p>A batch operation that adds a facet to an object.</p>
-- @param _RemoveFacetFromObject [BatchRemoveFacetFromObject] <p>A batch operation that removes a facet from an object.</p>
-- @param _CreateObject [BatchCreateObject] <p>Creates an object.</p>
-- @param _DeleteObject [BatchDeleteObject] <p>Deletes an object in a <a>Directory</a>.</p>
-- @param _UpdateObjectAttributes [BatchUpdateObjectAttributes] <p>Updates a given object's attributes.</p>
function M.BatchWriteOperation(_DetachObject, _AttachObject, _AddFacetToObject, _RemoveFacetFromObject, _CreateObject, _DeleteObject, _UpdateObjectAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteOperation")
	local t = { 
		["DetachObject"] = _DetachObject,
		["AttachObject"] = _AttachObject,
		["AddFacetToObject"] = _AddFacetToObject,
		["RemoveFacetFromObject"] = _RemoveFacetFromObject,
		["CreateObject"] = _CreateObject,
		["DeleteObject"] = _DeleteObject,
		["UpdateObjectAttributes"] = _UpdateObjectAttributes,
	}
	asserts.AssertBatchWriteOperation(t)
	return t
end

keys.GetDirectoryResponse = { ["Directory"] = true, nil }

function asserts.AssertGetDirectoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDirectoryResponse to be of type 'table'")
	assert(struct["Directory"], "Expected key Directory to exist in table")
	if struct["Directory"] then asserts.AssertDirectory(struct["Directory"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDirectoryResponse[k], "GetDirectoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDirectoryResponse
--  
-- @param _Directory [Directory] <p>Metadata about the directory.</p>
-- Required parameter: Directory
function M.GetDirectoryResponse(_Directory, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDirectoryResponse")
	local t = { 
		["Directory"] = _Directory,
	}
	asserts.AssertGetDirectoryResponse(t)
	return t
end

keys.BatchReadSuccessfulResponse = { ["ListObjectAttributes"] = true, ["ListObjectChildren"] = true, nil }

function asserts.AssertBatchReadSuccessfulResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadSuccessfulResponse to be of type 'table'")
	if struct["ListObjectAttributes"] then asserts.AssertBatchListObjectAttributesResponse(struct["ListObjectAttributes"]) end
	if struct["ListObjectChildren"] then asserts.AssertBatchListObjectChildrenResponse(struct["ListObjectChildren"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchReadSuccessfulResponse[k], "BatchReadSuccessfulResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadSuccessfulResponse
-- <p>Represents the output of a <code>BatchRead</code> success response operation.</p>
-- @param _ListObjectAttributes [BatchListObjectAttributesResponse] <p>Lists all attributes that are associated with an object.</p>
-- @param _ListObjectChildren [BatchListObjectChildrenResponse] <p>Returns a paginated list of child objects that are associated with a given object.</p>
function M.BatchReadSuccessfulResponse(_ListObjectAttributes, _ListObjectChildren, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadSuccessfulResponse")
	local t = { 
		["ListObjectAttributes"] = _ListObjectAttributes,
		["ListObjectChildren"] = _ListObjectChildren,
	}
	asserts.AssertBatchReadSuccessfulResponse(t)
	return t
end

keys.CreateSchemaRequest = { ["Name"] = true, nil }

function asserts.AssertCreateSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSchemaRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertSchemaName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSchemaRequest[k], "CreateSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSchemaRequest
--  
-- @param _Name [SchemaName] <p>The name that is associated with the schema. This is unique to each account and in each region.</p>
-- Required parameter: Name
function M.CreateSchemaRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSchemaRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertCreateSchemaRequest(t)
	return t
end

keys.BatchReadResponse = { ["Responses"] = true, nil }

function asserts.AssertBatchReadResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadResponse to be of type 'table'")
	if struct["Responses"] then asserts.AssertBatchReadOperationResponseList(struct["Responses"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchReadResponse[k], "BatchReadResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadResponse
--  
-- @param _Responses [BatchReadOperationResponseList] <p>A list of all the responses for each batch read.</p>
function M.BatchReadResponse(_Responses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadResponse")
	local t = { 
		["Responses"] = _Responses,
	}
	asserts.AssertBatchReadResponse(t)
	return t
end

keys.DeleteTypedLinkFacetRequest = { ["SchemaArn"] = true, ["Name"] = true, nil }

function asserts.AssertDeleteTypedLinkFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTypedLinkFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then asserts.AssertTypedLinkName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTypedLinkFacetRequest[k], "DeleteTypedLinkFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTypedLinkFacetRequest
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- @param _Name [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.DeleteTypedLinkFacetRequest(_SchemaArn, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTypedLinkFacetRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["Name"] = _Name,
	}
	asserts.AssertDeleteTypedLinkFacetRequest(t)
	return t
end

keys.ListObjectAttributesResponse = { ["Attributes"] = true, ["NextToken"] = true, nil }

function asserts.AssertListObjectAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributeKeyAndValueList(struct["Attributes"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectAttributesResponse[k], "ListObjectAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectAttributesResponse
--  
-- @param _Attributes [AttributeKeyAndValueList] <p>Attributes map that is associated with the object. <code>AttributeArn</code> is the key, and attribute value is the value.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
function M.ListObjectAttributesResponse(_Attributes, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectAttributesResponse")
	local t = { 
		["Attributes"] = _Attributes,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListObjectAttributesResponse(t)
	return t
end

keys.AttachToIndexRequest = { ["IndexReference"] = true, ["DirectoryArn"] = true, ["TargetReference"] = true, nil }

function asserts.AssertAttachToIndexRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachToIndexRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["IndexReference"], "Expected key IndexReference to exist in table")
	assert(struct["TargetReference"], "Expected key TargetReference to exist in table")
	if struct["IndexReference"] then asserts.AssertObjectReference(struct["IndexReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["TargetReference"] then asserts.AssertObjectReference(struct["TargetReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachToIndexRequest[k], "AttachToIndexRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachToIndexRequest
--  
-- @param _IndexReference [ObjectReference] <p>A reference to the index that you are attaching the object to.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory where the object and index exist.</p>
-- @param _TargetReference [ObjectReference] <p>A reference to the object that you are attaching to the index.</p>
-- Required parameter: DirectoryArn
-- Required parameter: IndexReference
-- Required parameter: TargetReference
function M.AttachToIndexRequest(_IndexReference, _DirectoryArn, _TargetReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachToIndexRequest")
	local t = { 
		["IndexReference"] = _IndexReference,
		["DirectoryArn"] = _DirectoryArn,
		["TargetReference"] = _TargetReference,
	}
	asserts.AssertAttachToIndexRequest(t)
	return t
end

keys.LookupPolicyRequest = { ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertLookupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupPolicyRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LookupPolicyRequest[k], "LookupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupPolicyRequest
--  
-- @param _ObjectReference [ObjectReference] <p>Reference that identifies the object whose policies will be looked up.</p>
-- @param _NextToken [NextToken] <p>The token to request the next page of results.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.LookupPolicyRequest(_ObjectReference, _NextToken, _MaxResults, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupPolicyRequest")
	local t = { 
		["ObjectReference"] = _ObjectReference,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertLookupPolicyRequest(t)
	return t
end

keys.BatchWriteException = { ["Index"] = true, ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertBatchWriteException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteException to be of type 'table'")
	if struct["Index"] then asserts.AssertBatchOperationIndex(struct["Index"]) end
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["Type"] then asserts.AssertBatchWriteExceptionType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchWriteException[k], "BatchWriteException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteException
-- <p>A <code>BatchWrite</code> exception has occurred.</p>
-- @param _Index [BatchOperationIndex] 
-- @param _Message [ExceptionMessage] 
-- @param _Type [BatchWriteExceptionType] 
function M.BatchWriteException(_Index, _Message, _Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteException")
	local t = { 
		["Index"] = _Index,
		["Message"] = _Message,
		["Type"] = _Type,
	}
	asserts.AssertBatchWriteException(t)
	return t
end

keys.BatchReadOperation = { ["ListObjectAttributes"] = true, ["ListObjectChildren"] = true, nil }

function asserts.AssertBatchReadOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadOperation to be of type 'table'")
	if struct["ListObjectAttributes"] then asserts.AssertBatchListObjectAttributes(struct["ListObjectAttributes"]) end
	if struct["ListObjectChildren"] then asserts.AssertBatchListObjectChildren(struct["ListObjectChildren"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchReadOperation[k], "BatchReadOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadOperation
-- <p>Represents the output of a <code>BatchRead</code> operation.</p>
-- @param _ListObjectAttributes [BatchListObjectAttributes] <p>Lists all attributes that are associated with an object.</p>
-- @param _ListObjectChildren [BatchListObjectChildren] <p>Returns a paginated list of child objects that are associated with a given object.</p>
function M.BatchReadOperation(_ListObjectAttributes, _ListObjectChildren, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadOperation")
	local t = { 
		["ListObjectAttributes"] = _ListObjectAttributes,
		["ListObjectChildren"] = _ListObjectChildren,
	}
	asserts.AssertBatchReadOperation(t)
	return t
end

keys.AttributeKeyAndValue = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertAttributeKeyAndValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeKeyAndValue to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTypedAttributeValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertAttributeKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeKeyAndValue[k], "AttributeKeyAndValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeKeyAndValue
-- <p>The combination of an attribute key and an attribute value.</p>
-- @param _Value [TypedAttributeValue] <p>The value of the attribute.</p>
-- @param _Key [AttributeKey] <p>The key of the attribute.</p>
-- Required parameter: Key
-- Required parameter: Value
function M.AttributeKeyAndValue(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeKeyAndValue")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertAttributeKeyAndValue(t)
	return t
end

keys.IndexAttachment = { ["ObjectIdentifier"] = true, ["IndexedAttributes"] = true, nil }

function asserts.AssertIndexAttachment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexAttachment to be of type 'table'")
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	if struct["IndexedAttributes"] then asserts.AssertAttributeKeyAndValueList(struct["IndexedAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.IndexAttachment[k], "IndexAttachment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexAttachment
-- <p>Represents an index and an attached object.</p>
-- @param _ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the object attached to the index.</p>
-- @param _IndexedAttributes [AttributeKeyAndValueList] <p>The indexed attribute values.</p>
function M.IndexAttachment(_ObjectIdentifier, _IndexedAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexAttachment")
	local t = { 
		["ObjectIdentifier"] = _ObjectIdentifier,
		["IndexedAttributes"] = _IndexedAttributes,
	}
	asserts.AssertIndexAttachment(t)
	return t
end

keys.BatchCreateObject = { ["ObjectAttributeList"] = true, ["ParentReference"] = true, ["BatchReferenceName"] = true, ["SchemaFacet"] = true, ["LinkName"] = true, nil }

function asserts.AssertBatchCreateObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCreateObject to be of type 'table'")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectAttributeList"], "Expected key ObjectAttributeList to exist in table")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	assert(struct["BatchReferenceName"], "Expected key BatchReferenceName to exist in table")
	if struct["ObjectAttributeList"] then asserts.AssertAttributeKeyAndValueList(struct["ObjectAttributeList"]) end
	if struct["ParentReference"] then asserts.AssertObjectReference(struct["ParentReference"]) end
	if struct["BatchReferenceName"] then asserts.AssertBatchReferenceName(struct["BatchReferenceName"]) end
	if struct["SchemaFacet"] then asserts.AssertSchemaFacetList(struct["SchemaFacet"]) end
	if struct["LinkName"] then asserts.AssertLinkName(struct["LinkName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchCreateObject[k], "BatchCreateObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCreateObject
-- <p>Represents the output of a <code>CreateObject</code> operation.</p>
-- @param _ObjectAttributeList [AttributeKeyAndValueList] <p>An attribute map, which contains an attribute ARN as the key and attribute value as the map value.</p>
-- @param _ParentReference [ObjectReference] <p>If specified, the parent reference to which this object will be attached.</p>
-- @param _BatchReferenceName [BatchReferenceName] <p>The batch reference name. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#batches">Batches</a> for more information.</p>
-- @param _SchemaFacet [SchemaFacetList] <p>A list of <code>FacetArns</code> that will be associated with the object. For more information, see <a>arns</a>.</p>
-- @param _LinkName [LinkName] <p>The name of the link.</p>
-- Required parameter: SchemaFacet
-- Required parameter: ObjectAttributeList
-- Required parameter: ParentReference
-- Required parameter: LinkName
-- Required parameter: BatchReferenceName
function M.BatchCreateObject(_ObjectAttributeList, _ParentReference, _BatchReferenceName, _SchemaFacet, _LinkName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchCreateObject")
	local t = { 
		["ObjectAttributeList"] = _ObjectAttributeList,
		["ParentReference"] = _ParentReference,
		["BatchReferenceName"] = _BatchReferenceName,
		["SchemaFacet"] = _SchemaFacet,
		["LinkName"] = _LinkName,
	}
	asserts.AssertBatchCreateObject(t)
	return t
end

keys.ListDevelopmentSchemaArnsResponse = { ["NextToken"] = true, ["SchemaArns"] = true, nil }

function asserts.AssertListDevelopmentSchemaArnsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevelopmentSchemaArnsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SchemaArns"] then asserts.AssertArns(struct["SchemaArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDevelopmentSchemaArnsResponse[k], "ListDevelopmentSchemaArnsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevelopmentSchemaArnsResponse
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _SchemaArns [Arns] <p>The ARNs of retrieved development schemas.</p>
function M.ListDevelopmentSchemaArnsResponse(_NextToken, _SchemaArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDevelopmentSchemaArnsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["SchemaArns"] = _SchemaArns,
	}
	asserts.AssertListDevelopmentSchemaArnsResponse(t)
	return t
end

keys.LookupPolicyResponse = { ["PolicyToPathList"] = true, ["NextToken"] = true, nil }

function asserts.AssertLookupPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupPolicyResponse to be of type 'table'")
	if struct["PolicyToPathList"] then asserts.AssertPolicyToPathList(struct["PolicyToPathList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.LookupPolicyResponse[k], "LookupPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupPolicyResponse
--  
-- @param _PolicyToPathList [PolicyToPathList] <p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and <code>PolicyType</code>. For more information, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies">Policies</a>.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
function M.LookupPolicyResponse(_PolicyToPathList, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupPolicyResponse")
	local t = { 
		["PolicyToPathList"] = _PolicyToPathList,
		["NextToken"] = _NextToken,
	}
	asserts.AssertLookupPolicyResponse(t)
	return t
end

keys.InvalidRuleException = { ["Message"] = true, nil }

function asserts.AssertInvalidRuleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRuleException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRuleException[k], "InvalidRuleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRuleException
-- <p>Occurs when any of the rule parameter keys or values are invalid.</p>
-- @param _Message [ExceptionMessage] 
function M.InvalidRuleException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRuleException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidRuleException(t)
	return t
end

keys.ListTagsForResourceResponse = { ["NextToken"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResponse[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
--  
-- @param _NextToken [NextToken] <p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>
-- @param _Tags [TagList] <p>A list of tag key value pairs that are associated with the response.</p>
function M.ListTagsForResourceResponse(_NextToken, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Tags"] = _Tags,
	}
	asserts.AssertListTagsForResourceResponse(t)
	return t
end

keys.TypedLinkSchemaAndFacetName = { ["TypedLinkName"] = true, ["SchemaArn"] = true, nil }

function asserts.AssertTypedLinkSchemaAndFacetName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkSchemaAndFacetName to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["TypedLinkName"], "Expected key TypedLinkName to exist in table")
	if struct["TypedLinkName"] then asserts.AssertTypedLinkName(struct["TypedLinkName"]) end
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.TypedLinkSchemaAndFacetName[k], "TypedLinkSchemaAndFacetName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkSchemaAndFacetName
-- <p>Identifies the schema Amazon Resource Name (ARN) and facet name for the typed link.</p>
-- @param _TypedLinkName [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- Required parameter: SchemaArn
-- Required parameter: TypedLinkName
function M.TypedLinkSchemaAndFacetName(_TypedLinkName, _SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkSchemaAndFacetName")
	local t = { 
		["TypedLinkName"] = _TypedLinkName,
		["SchemaArn"] = _SchemaArn,
	}
	asserts.AssertTypedLinkSchemaAndFacetName(t)
	return t
end

keys.ListIncomingTypedLinksResponse = { ["NextToken"] = true, ["LinkSpecifiers"] = true, nil }

function asserts.AssertListIncomingTypedLinksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIncomingTypedLinksResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["LinkSpecifiers"] then asserts.AssertTypedLinkSpecifierList(struct["LinkSpecifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIncomingTypedLinksResponse[k], "ListIncomingTypedLinksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIncomingTypedLinksResponse
--  
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _LinkSpecifiers [TypedLinkSpecifierList] <p>Returns one or more typed link specifiers as output.</p>
function M.ListIncomingTypedLinksResponse(_NextToken, _LinkSpecifiers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIncomingTypedLinksResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["LinkSpecifiers"] = _LinkSpecifiers,
	}
	asserts.AssertListIncomingTypedLinksResponse(t)
	return t
end

keys.BatchDetachObject = { ["ParentReference"] = true, ["LinkName"] = true, ["BatchReferenceName"] = true, nil }

function asserts.AssertBatchDetachObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachObject to be of type 'table'")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	assert(struct["BatchReferenceName"], "Expected key BatchReferenceName to exist in table")
	if struct["ParentReference"] then asserts.AssertObjectReference(struct["ParentReference"]) end
	if struct["LinkName"] then asserts.AssertLinkName(struct["LinkName"]) end
	if struct["BatchReferenceName"] then asserts.AssertBatchReferenceName(struct["BatchReferenceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetachObject[k], "BatchDetachObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachObject
-- <p>Represents the output of a <code>DetachObject</code> operation.</p>
-- @param _ParentReference [ObjectReference] <p>Parent reference from which the object with the specified link name is detached.</p>
-- @param _LinkName [LinkName] <p>The name of the link.</p>
-- @param _BatchReferenceName [BatchReferenceName] <p>The batch reference name. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#batches">Batches</a> for more information.</p>
-- Required parameter: ParentReference
-- Required parameter: LinkName
-- Required parameter: BatchReferenceName
function M.BatchDetachObject(_ParentReference, _LinkName, _BatchReferenceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDetachObject")
	local t = { 
		["ParentReference"] = _ParentReference,
		["LinkName"] = _LinkName,
		["BatchReferenceName"] = _BatchReferenceName,
	}
	asserts.AssertBatchDetachObject(t)
	return t
end

keys.CreateFacetRequest = { ["Attributes"] = true, ["SchemaArn"] = true, ["Name"] = true, ["ObjectType"] = true, nil }

function asserts.AssertCreateFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ObjectType"], "Expected key ObjectType to exist in table")
	if struct["Attributes"] then asserts.AssertFacetAttributeList(struct["Attributes"]) end
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then asserts.AssertFacetName(struct["Name"]) end
	if struct["ObjectType"] then asserts.AssertObjectType(struct["ObjectType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFacetRequest[k], "CreateFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFacetRequest
--  
-- @param _Attributes [FacetAttributeList] <p>The attributes that are associated with the <a>Facet</a>.</p>
-- @param _SchemaArn [Arn] <p>The schema ARN in which the new <a>Facet</a> will be created. For more information, see <a>arns</a>.</p>
-- @param _Name [FacetName] <p>The name of the <a>Facet</a>, which is unique for a given schema.</p>
-- @param _ObjectType [ObjectType] <p>Specifies whether a given object created from this facet is of type node, leaf node, policy or index.</p> <ul> <li> <p>Node: Can have multiple children but one parent.</p> </li> </ul> <ul> <li> <p>Leaf node: Cannot have children but can have multiple parents.</p> </li> </ul> <ul> <li> <p>Policy: Allows you to store a policy document and policy type. For more information, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies">Policies</a>.</p> </li> </ul> <ul> <li> <p>Index: Can be created with the Index API.</p> </li> </ul>
-- Required parameter: SchemaArn
-- Required parameter: Name
-- Required parameter: ObjectType
function M.CreateFacetRequest(_Attributes, _SchemaArn, _Name, _ObjectType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFacetRequest")
	local t = { 
		["Attributes"] = _Attributes,
		["SchemaArn"] = _SchemaArn,
		["Name"] = _Name,
		["ObjectType"] = _ObjectType,
	}
	asserts.AssertCreateFacetRequest(t)
	return t
end

keys.TypedLinkAttributeRange = { ["Range"] = true, ["AttributeName"] = true, nil }

function asserts.AssertTypedLinkAttributeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkAttributeRange to be of type 'table'")
	assert(struct["Range"], "Expected key Range to exist in table")
	if struct["Range"] then asserts.AssertTypedAttributeValueRange(struct["Range"]) end
	if struct["AttributeName"] then asserts.AssertAttributeName(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TypedLinkAttributeRange[k], "TypedLinkAttributeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkAttributeRange
-- <p>Identifies the range of attributes that are used by a specified filter.</p>
-- @param _Range [TypedAttributeValueRange] <p>The range of attribute values that are being selected.</p>
-- @param _AttributeName [AttributeName] <p>The unique name of the typed link attribute.</p>
-- Required parameter: Range
function M.TypedLinkAttributeRange(_Range, _AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkAttributeRange")
	local t = { 
		["Range"] = _Range,
		["AttributeName"] = _AttributeName,
	}
	asserts.AssertTypedLinkAttributeRange(t)
	return t
end

keys.BatchDeleteObject = { ["ObjectReference"] = true, nil }

function asserts.AssertBatchDeleteObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteObject to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteObject[k], "BatchDeleteObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteObject
-- <p>Represents the output of a <code>DeleteObject</code> operation.</p>
-- @param _ObjectReference [ObjectReference] <p>The reference that identifies the object.</p>
-- Required parameter: ObjectReference
function M.BatchDeleteObject(_ObjectReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDeleteObject")
	local t = { 
		["ObjectReference"] = _ObjectReference,
	}
	asserts.AssertBatchDeleteObject(t)
	return t
end

keys.DeleteDirectoryRequest = { ["DirectoryArn"] = true, nil }

function asserts.AssertDeleteDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDirectoryRequest[k], "DeleteDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectoryRequest
--  
-- @param _DirectoryArn [Arn] <p>The ARN of the directory to delete.</p>
-- Required parameter: DirectoryArn
function M.DeleteDirectoryRequest(_DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDirectoryRequest")
	local t = { 
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertDeleteDirectoryRequest(t)
	return t
end

keys.BatchListObjectAttributesResponse = { ["Attributes"] = true, ["NextToken"] = true, nil }

function asserts.AssertBatchListObjectAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributeKeyAndValueList(struct["Attributes"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListObjectAttributesResponse[k], "BatchListObjectAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectAttributesResponse
-- <p>Represents the output of a <code>ListObjectAttributes</code> response operation.</p>
-- @param _Attributes [AttributeKeyAndValueList] <p>The attributes map that is associated with the object. <code>AttributeArn</code> is the key; attribute value is the value.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
function M.BatchListObjectAttributesResponse(_Attributes, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchListObjectAttributesResponse")
	local t = { 
		["Attributes"] = _Attributes,
		["NextToken"] = _NextToken,
	}
	asserts.AssertBatchListObjectAttributesResponse(t)
	return t
end

keys.AddFacetToObjectRequest = { ["ObjectAttributeList"] = true, ["ObjectReference"] = true, ["SchemaFacet"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertAddFacetToObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddFacetToObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectAttributeList"] then asserts.AssertAttributeKeyAndValueList(struct["ObjectAttributeList"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["SchemaFacet"] then asserts.AssertSchemaFacet(struct["SchemaFacet"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddFacetToObjectRequest[k], "AddFacetToObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddFacetToObjectRequest
--  
-- @param _ObjectAttributeList [AttributeKeyAndValueList] <p>Attributes on the facet that you are adding to the object.</p>
-- @param _ObjectReference [ObjectReference] <p>A reference to the object you are adding the specified facet to.</p>
-- @param _SchemaFacet [SchemaFacet] <p>Identifiers for the facet that you are adding to the object.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: SchemaFacet
-- Required parameter: ObjectReference
function M.AddFacetToObjectRequest(_ObjectAttributeList, _ObjectReference, _SchemaFacet, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddFacetToObjectRequest")
	local t = { 
		["ObjectAttributeList"] = _ObjectAttributeList,
		["ObjectReference"] = _ObjectReference,
		["SchemaFacet"] = _SchemaFacet,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertAddFacetToObjectRequest(t)
	return t
end

keys.ObjectAttributeUpdate = { ["ObjectAttributeAction"] = true, ["ObjectAttributeKey"] = true, nil }

function asserts.AssertObjectAttributeUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectAttributeUpdate to be of type 'table'")
	if struct["ObjectAttributeAction"] then asserts.AssertObjectAttributeAction(struct["ObjectAttributeAction"]) end
	if struct["ObjectAttributeKey"] then asserts.AssertAttributeKey(struct["ObjectAttributeKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectAttributeUpdate[k], "ObjectAttributeUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectAttributeUpdate
-- <p>Structure that contains attribute update information.</p>
-- @param _ObjectAttributeAction [ObjectAttributeAction] <p>The action to perform as part of the attribute update.</p>
-- @param _ObjectAttributeKey [AttributeKey] <p>The key of the attribute being updated.</p>
function M.ObjectAttributeUpdate(_ObjectAttributeAction, _ObjectAttributeKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectAttributeUpdate")
	local t = { 
		["ObjectAttributeAction"] = _ObjectAttributeAction,
		["ObjectAttributeKey"] = _ObjectAttributeKey,
	}
	asserts.AssertObjectAttributeUpdate(t)
	return t
end

keys.CannotListParentOfRootException = { ["Message"] = true, nil }

function asserts.AssertCannotListParentOfRootException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CannotListParentOfRootException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CannotListParentOfRootException[k], "CannotListParentOfRootException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CannotListParentOfRootException
-- <p>Cannot list the parents of a <a>Directory</a> root.</p>
-- @param _Message [ExceptionMessage] 
function M.CannotListParentOfRootException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CannotListParentOfRootException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertCannotListParentOfRootException(t)
	return t
end

keys.ListTypedLinkFacetAttributesResponse = { ["Attributes"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTypedLinkFacetAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTypedLinkFacetAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertTypedLinkAttributeDefinitionList(struct["Attributes"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTypedLinkFacetAttributesResponse[k], "ListTypedLinkFacetAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTypedLinkFacetAttributesResponse
--  
-- @param _Attributes [TypedLinkAttributeDefinitionList] <p>An ordered set of attributes associate with the typed link.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
function M.ListTypedLinkFacetAttributesResponse(_Attributes, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTypedLinkFacetAttributesResponse")
	local t = { 
		["Attributes"] = _Attributes,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListTypedLinkFacetAttributesResponse(t)
	return t
end

keys.DetachFromIndexResponse = { ["DetachedObjectIdentifier"] = true, nil }

function asserts.AssertDetachFromIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachFromIndexResponse to be of type 'table'")
	if struct["DetachedObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["DetachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachFromIndexResponse[k], "DetachFromIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachFromIndexResponse
--  
-- @param _DetachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>
function M.DetachFromIndexResponse(_DetachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachFromIndexResponse")
	local t = { 
		["DetachedObjectIdentifier"] = _DetachedObjectIdentifier,
	}
	asserts.AssertDetachFromIndexResponse(t)
	return t
end

keys.AccessDeniedException = { ["Message"] = true, nil }

function asserts.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessDeniedException[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>Access denied. Check your permissions.</p>
-- @param _Message [ExceptionMessage] 
function M.AccessDeniedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertAccessDeniedException(t)
	return t
end

keys.NotPolicyException = { ["Message"] = true, nil }

function asserts.AssertNotPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotPolicyException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotPolicyException[k], "NotPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotPolicyException
-- <p>Indicates that the requested operation can only operate on policy objects.</p>
-- @param _Message [ExceptionMessage] 
function M.NotPolicyException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotPolicyException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNotPolicyException(t)
	return t
end

keys.NotNodeException = { ["Message"] = true, nil }

function asserts.AssertNotNodeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotNodeException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotNodeException[k], "NotNodeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotNodeException
-- <p>Occurs when any invalid operations are performed on an object that is not a node, such as calling <code>ListObjectChildren</code> for a leaf node object.</p>
-- @param _Message [ExceptionMessage] 
function M.NotNodeException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotNodeException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNotNodeException(t)
	return t
end

keys.BatchUpdateObjectAttributesResponse = { ["ObjectIdentifier"] = true, nil }

function asserts.AssertBatchUpdateObjectAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUpdateObjectAttributesResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchUpdateObjectAttributesResponse[k], "BatchUpdateObjectAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUpdateObjectAttributesResponse
-- <p>Represents the output of a <code>BatchUpdate</code> response operation.</p>
-- @param _ObjectIdentifier [ObjectIdentifier] <p>ID that is associated with the object.</p>
function M.BatchUpdateObjectAttributesResponse(_ObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchUpdateObjectAttributesResponse")
	local t = { 
		["ObjectIdentifier"] = _ObjectIdentifier,
	}
	asserts.AssertBatchUpdateObjectAttributesResponse(t)
	return t
end

keys.Rule = { ["Type"] = true, ["Parameters"] = true, nil }

function asserts.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	if struct["Type"] then asserts.AssertRuleType(struct["Type"]) end
	if struct["Parameters"] then asserts.AssertRuleParameterMap(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.Rule[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
-- <p>Contains an Amazon Resource Name (ARN) and parameters that are associated with the rule.</p>
-- @param _Type [RuleType] <p>The type of attribute validation rule.</p>
-- @param _Parameters [RuleParameterMap] <p>The minimum and maximum parameters that are associated with the rule.</p>
function M.Rule(_Type, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Rule")
	local t = { 
		["Type"] = _Type,
		["Parameters"] = _Parameters,
	}
	asserts.AssertRule(t)
	return t
end

keys.CreateObjectRequest = { ["ObjectAttributeList"] = true, ["ParentReference"] = true, ["SchemaFacets"] = true, ["DirectoryArn"] = true, ["LinkName"] = true, nil }

function asserts.AssertCreateObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["SchemaFacets"], "Expected key SchemaFacets to exist in table")
	if struct["ObjectAttributeList"] then asserts.AssertAttributeKeyAndValueList(struct["ObjectAttributeList"]) end
	if struct["ParentReference"] then asserts.AssertObjectReference(struct["ParentReference"]) end
	if struct["SchemaFacets"] then asserts.AssertSchemaFacetList(struct["SchemaFacets"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["LinkName"] then asserts.AssertLinkName(struct["LinkName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateObjectRequest[k], "CreateObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateObjectRequest
--  
-- @param _ObjectAttributeList [AttributeKeyAndValueList] <p>The attribute map whose attribute ARN contains the key and attribute value as the map value.</p>
-- @param _ParentReference [ObjectReference] <p>If specified, the parent reference to which this object will be attached.</p>
-- @param _SchemaFacets [SchemaFacetList] <p>A list of schema facets to be associated with the object that contains <code>SchemaArn</code> and facet name. For more information, see <a>arns</a>.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> in which the object will be created. For more information, see <a>arns</a>.</p>
-- @param _LinkName [LinkName] <p>The name of link that is used to attach this object to a parent.</p>
-- Required parameter: DirectoryArn
-- Required parameter: SchemaFacets
function M.CreateObjectRequest(_ObjectAttributeList, _ParentReference, _SchemaFacets, _DirectoryArn, _LinkName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateObjectRequest")
	local t = { 
		["ObjectAttributeList"] = _ObjectAttributeList,
		["ParentReference"] = _ParentReference,
		["SchemaFacets"] = _SchemaFacets,
		["DirectoryArn"] = _DirectoryArn,
		["LinkName"] = _LinkName,
	}
	asserts.AssertCreateObjectRequest(t)
	return t
end

keys.BatchAddFacetToObject = { ["ObjectAttributeList"] = true, ["ObjectReference"] = true, ["SchemaFacet"] = true, nil }

function asserts.AssertBatchAddFacetToObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAddFacetToObject to be of type 'table'")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectAttributeList"], "Expected key ObjectAttributeList to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectAttributeList"] then asserts.AssertAttributeKeyAndValueList(struct["ObjectAttributeList"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["SchemaFacet"] then asserts.AssertSchemaFacet(struct["SchemaFacet"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAddFacetToObject[k], "BatchAddFacetToObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAddFacetToObject
-- <p>Represents the output of a batch add facet to object operation.</p>
-- @param _ObjectAttributeList [AttributeKeyAndValueList] <p>The attributes to set on the object.</p>
-- @param _ObjectReference [ObjectReference] <p>A reference to the object being mutated.</p>
-- @param _SchemaFacet [SchemaFacet] <p>Represents the facet being added to the object.</p>
-- Required parameter: SchemaFacet
-- Required parameter: ObjectAttributeList
-- Required parameter: ObjectReference
function M.BatchAddFacetToObject(_ObjectAttributeList, _ObjectReference, _SchemaFacet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchAddFacetToObject")
	local t = { 
		["ObjectAttributeList"] = _ObjectAttributeList,
		["ObjectReference"] = _ObjectReference,
		["SchemaFacet"] = _SchemaFacet,
	}
	asserts.AssertBatchAddFacetToObject(t)
	return t
end

keys.ResourceNotFoundException = { ["Message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified resource could not be found.</p>
-- @param _Message [ExceptionMessage] 
function M.ResourceNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.BatchDeleteObjectResponse = { nil }

function asserts.AssertBatchDeleteObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteObjectResponse[k], "BatchDeleteObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteObjectResponse
-- <p>Represents the output of a <code>DeleteObject</code> response operation.</p>
function M.BatchDeleteObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDeleteObjectResponse")
	local t = { 
	}
	asserts.AssertBatchDeleteObjectResponse(t)
	return t
end

keys.DeleteDirectoryResponse = { ["DirectoryArn"] = true, nil }

function asserts.AssertDeleteDirectoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectoryResponse to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDirectoryResponse[k], "DeleteDirectoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectoryResponse
--  
-- @param _DirectoryArn [Arn] <p>The ARN of the deleted directory.</p>
-- Required parameter: DirectoryArn
function M.DeleteDirectoryResponse(_DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDirectoryResponse")
	local t = { 
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertDeleteDirectoryResponse(t)
	return t
end

keys.FacetAttributeReference = { ["TargetFacetName"] = true, ["TargetAttributeName"] = true, nil }

function asserts.AssertFacetAttributeReference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetAttributeReference to be of type 'table'")
	assert(struct["TargetFacetName"], "Expected key TargetFacetName to exist in table")
	assert(struct["TargetAttributeName"], "Expected key TargetAttributeName to exist in table")
	if struct["TargetFacetName"] then asserts.AssertFacetName(struct["TargetFacetName"]) end
	if struct["TargetAttributeName"] then asserts.AssertAttributeName(struct["TargetAttributeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.FacetAttributeReference[k], "FacetAttributeReference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetAttributeReference
-- <p>The facet attribute reference that specifies the attribute definition that contains the attribute facet name and attribute name.</p>
-- @param _TargetFacetName [FacetName] <p>The target facet name that is associated with the facet reference. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences">Attribute References</a> for more information.</p>
-- @param _TargetAttributeName [AttributeName] <p>The target attribute name that is associated with the facet reference. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences">Attribute References</a> for more information.</p>
-- Required parameter: TargetFacetName
-- Required parameter: TargetAttributeName
function M.FacetAttributeReference(_TargetFacetName, _TargetAttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetAttributeReference")
	local t = { 
		["TargetFacetName"] = _TargetFacetName,
		["TargetAttributeName"] = _TargetAttributeName,
	}
	asserts.AssertFacetAttributeReference(t)
	return t
end

keys.DetachTypedLinkRequest = { ["TypedLinkSpecifier"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertDetachTypedLinkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachTypedLinkRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["TypedLinkSpecifier"], "Expected key TypedLinkSpecifier to exist in table")
	if struct["TypedLinkSpecifier"] then asserts.AssertTypedLinkSpecifier(struct["TypedLinkSpecifier"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachTypedLinkRequest[k], "DetachTypedLinkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachTypedLinkRequest
--  
-- @param _TypedLinkSpecifier [TypedLinkSpecifier] <p>Used to accept a typed link specifier as input.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory where you want to detach the typed link.</p>
-- Required parameter: DirectoryArn
-- Required parameter: TypedLinkSpecifier
function M.DetachTypedLinkRequest(_TypedLinkSpecifier, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachTypedLinkRequest")
	local t = { 
		["TypedLinkSpecifier"] = _TypedLinkSpecifier,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertDetachTypedLinkRequest(t)
	return t
end

keys.ObjectAttributeAction = { ["ObjectAttributeActionType"] = true, ["ObjectAttributeUpdateValue"] = true, nil }

function asserts.AssertObjectAttributeAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectAttributeAction to be of type 'table'")
	if struct["ObjectAttributeActionType"] then asserts.AssertUpdateActionType(struct["ObjectAttributeActionType"]) end
	if struct["ObjectAttributeUpdateValue"] then asserts.AssertTypedAttributeValue(struct["ObjectAttributeUpdateValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectAttributeAction[k], "ObjectAttributeAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectAttributeAction
-- <p>The action to take on the object attribute.</p>
-- @param _ObjectAttributeActionType [UpdateActionType] <p>A type that can be either <code>Update</code> or <code>Delete</code>.</p>
-- @param _ObjectAttributeUpdateValue [TypedAttributeValue] <p>The value that you want to update to.</p>
function M.ObjectAttributeAction(_ObjectAttributeActionType, _ObjectAttributeUpdateValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectAttributeAction")
	local t = { 
		["ObjectAttributeActionType"] = _ObjectAttributeActionType,
		["ObjectAttributeUpdateValue"] = _ObjectAttributeUpdateValue,
	}
	asserts.AssertObjectAttributeAction(t)
	return t
end

keys.BatchRemoveFacetFromObject = { ["ObjectReference"] = true, ["SchemaFacet"] = true, nil }

function asserts.AssertBatchRemoveFacetFromObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchRemoveFacetFromObject to be of type 'table'")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["SchemaFacet"] then asserts.AssertSchemaFacet(struct["SchemaFacet"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchRemoveFacetFromObject[k], "BatchRemoveFacetFromObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchRemoveFacetFromObject
-- <p>A batch operation to remove a facet from an object.</p>
-- @param _ObjectReference [ObjectReference] <p>A reference to the object whose facet will be removed.</p>
-- @param _SchemaFacet [SchemaFacet] <p>The facet to remove from the object.</p>
-- Required parameter: SchemaFacet
-- Required parameter: ObjectReference
function M.BatchRemoveFacetFromObject(_ObjectReference, _SchemaFacet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchRemoveFacetFromObject")
	local t = { 
		["ObjectReference"] = _ObjectReference,
		["SchemaFacet"] = _SchemaFacet,
	}
	asserts.AssertBatchRemoveFacetFromObject(t)
	return t
end

keys.ListPolicyAttachmentsRequest = { ["ConsistencyLevel"] = true, ["PolicyReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertListPolicyAttachmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyAttachmentsRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["PolicyReference"], "Expected key PolicyReference to exist in table")
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["PolicyReference"] then asserts.AssertObjectReference(struct["PolicyReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyAttachmentsRequest[k], "ListPolicyAttachmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyAttachmentsRequest
--  
-- @param _ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- @param _PolicyReference [ObjectReference] <p>The reference that identifies the policy object.</p>
-- @param _NextToken [NextToken] <p>The pagination token.</p>
-- @param _MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- @param _DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where objects reside. For more information, see <a>arns</a>.</p>
-- Required parameter: DirectoryArn
-- Required parameter: PolicyReference
function M.ListPolicyAttachmentsRequest(_ConsistencyLevel, _PolicyReference, _NextToken, _MaxResults, _DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyAttachmentsRequest")
	local t = { 
		["ConsistencyLevel"] = _ConsistencyLevel,
		["PolicyReference"] = _PolicyReference,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["DirectoryArn"] = _DirectoryArn,
	}
	asserts.AssertListPolicyAttachmentsRequest(t)
	return t
end

keys.DeleteSchemaRequest = { ["SchemaArn"] = true, nil }

function asserts.AssertDeleteSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSchemaRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSchemaRequest[k], "DeleteSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSchemaRequest
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) of the development schema. For more information, see <a>arns</a>.</p>
-- Required parameter: SchemaArn
function M.DeleteSchemaRequest(_SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSchemaRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
	}
	asserts.AssertDeleteSchemaRequest(t)
	return t
end

keys.DeleteFacetRequest = { ["SchemaArn"] = true, ["Name"] = true, nil }

function asserts.AssertDeleteFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then asserts.AssertFacetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFacetRequest[k], "DeleteFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFacetRequest
--  
-- @param _SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>. For more information, see <a>arns</a>.</p>
-- @param _Name [FacetName] <p>The name of the facet to delete.</p>
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.DeleteFacetRequest(_SchemaArn, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFacetRequest")
	local t = { 
		["SchemaArn"] = _SchemaArn,
		["Name"] = _Name,
	}
	asserts.AssertDeleteFacetRequest(t)
	return t
end

keys.TypedLinkFacet = { ["Attributes"] = true, ["IdentityAttributeOrder"] = true, ["Name"] = true, nil }

function asserts.AssertTypedLinkFacet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkFacet to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	assert(struct["IdentityAttributeOrder"], "Expected key IdentityAttributeOrder to exist in table")
	if struct["Attributes"] then asserts.AssertTypedLinkAttributeDefinitionList(struct["Attributes"]) end
	if struct["IdentityAttributeOrder"] then asserts.AssertAttributeNameList(struct["IdentityAttributeOrder"]) end
	if struct["Name"] then asserts.AssertTypedLinkName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.TypedLinkFacet[k], "TypedLinkFacet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkFacet
-- <p>Defines the typed links structure and its attributes. To create a typed link facet, use the <a>CreateTypedLinkFacet</a> API.</p>
-- @param _Attributes [TypedLinkAttributeDefinitionList] <p>A set of key-value pairs associated with the typed link. Typed link attributes are used when you have data values that are related to the link itself, and not to one of the two objects being linked. Identity attributes also serve to distinguish the link from others of the same type between the same objects.</p>
-- @param _IdentityAttributeOrder [AttributeNameList] <p>The set of attributes that distinguish links made from this facet from each other, in the order of significance. Listing typed links can filter on the values of these attributes. See <a>ListOutgoingTypedLinks</a> and <a>ListIncomingTypeLinks</a> for details.</p>
-- @param _Name [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- Required parameter: Name
-- Required parameter: Attributes
-- Required parameter: IdentityAttributeOrder
function M.TypedLinkFacet(_Attributes, _IdentityAttributeOrder, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkFacet")
	local t = { 
		["Attributes"] = _Attributes,
		["IdentityAttributeOrder"] = _IdentityAttributeOrder,
		["Name"] = _Name,
	}
	asserts.AssertTypedLinkFacet(t)
	return t
end

keys.BatchWriteResponse = { ["Responses"] = true, nil }

function asserts.AssertBatchWriteResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteResponse to be of type 'table'")
	if struct["Responses"] then asserts.AssertBatchWriteOperationResponseList(struct["Responses"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchWriteResponse[k], "BatchWriteResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteResponse
--  
-- @param _Responses [BatchWriteOperationResponseList] <p>A list of all the responses for each batch write.</p>
function M.BatchWriteResponse(_Responses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteResponse")
	local t = { 
		["Responses"] = _Responses,
	}
	asserts.AssertBatchWriteResponse(t)
	return t
end

function asserts.AssertDirectoryArn(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryArn to be of type 'string'")
end

--  
function M.DirectoryArn(str)
	asserts.AssertDirectoryArn(str)
	return str
end

function asserts.AssertSchemaJsonDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaJsonDocument to be of type 'string'")
end

--  
function M.SchemaJsonDocument(str)
	asserts.AssertSchemaJsonDocument(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertBatchReferenceName(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchReferenceName to be of type 'string'")
end

--  
function M.BatchReferenceName(str)
	asserts.AssertBatchReferenceName(str)
	return str
end

function asserts.AssertObjectType(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectType to be of type 'string'")
end

--  
function M.ObjectType(str)
	asserts.AssertObjectType(str)
	return str
end

function asserts.AssertPathString(str)
	assert(str)
	assert(type(str) == "string", "Expected PathString to be of type 'string'")
end

--  
function M.PathString(str)
	asserts.AssertPathString(str)
	return str
end

function asserts.AssertBatchWriteExceptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchWriteExceptionType to be of type 'string'")
end

--  
function M.BatchWriteExceptionType(str)
	asserts.AssertBatchWriteExceptionType(str)
	return str
end

function asserts.AssertRuleParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleParameterValue to be of type 'string'")
end

--  
function M.RuleParameterValue(str)
	asserts.AssertRuleParameterValue(str)
	return str
end

function asserts.AssertRangeMode(str)
	assert(str)
	assert(type(str) == "string", "Expected RangeMode to be of type 'string'")
end

--  
function M.RangeMode(str)
	asserts.AssertRangeMode(str)
	return str
end

function asserts.AssertBatchReadExceptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchReadExceptionType to be of type 'string'")
end

--  
function M.BatchReadExceptionType(str)
	asserts.AssertBatchReadExceptionType(str)
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

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertNumberAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumberAttributeValue to be of type 'string'")
end

--  
function M.NumberAttributeValue(str)
	asserts.AssertNumberAttributeValue(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertPolicyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyType to be of type 'string'")
end

--  
function M.PolicyType(str)
	asserts.AssertPolicyType(str)
	return str
end

function asserts.AssertRequiredAttributeBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected RequiredAttributeBehavior to be of type 'string'")
end

--  
function M.RequiredAttributeBehavior(str)
	asserts.AssertRequiredAttributeBehavior(str)
	return str
end

function asserts.AssertSchemaName(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaName to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SchemaName(str)
	asserts.AssertSchemaName(str)
	return str
end

function asserts.AssertDirectoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DirectoryName(str)
	asserts.AssertDirectoryName(str)
	return str
end

function asserts.AssertLinkName(str)
	assert(str)
	assert(type(str) == "string", "Expected LinkName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LinkName(str)
	asserts.AssertLinkName(str)
	return str
end

function asserts.AssertFacetAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected FacetAttributeType to be of type 'string'")
end

--  
function M.FacetAttributeType(str)
	asserts.AssertFacetAttributeType(str)
	return str
end

function asserts.AssertDirectoryState(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryState to be of type 'string'")
end

--  
function M.DirectoryState(str)
	asserts.AssertDirectoryState(str)
	return str
end

function asserts.AssertTypedLinkName(str)
	assert(str)
	assert(type(str) == "string", "Expected TypedLinkName to be of type 'string'")
end

--  
function M.TypedLinkName(str)
	asserts.AssertTypedLinkName(str)
	return str
end

function asserts.AssertConsistencyLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected ConsistencyLevel to be of type 'string'")
end

--  
function M.ConsistencyLevel(str)
	asserts.AssertConsistencyLevel(str)
	return str
end

function asserts.AssertRuleType(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleType to be of type 'string'")
end

--  
function M.RuleType(str)
	asserts.AssertRuleType(str)
	return str
end

function asserts.AssertObjectIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectIdentifier to be of type 'string'")
end

--  
function M.ObjectIdentifier(str)
	asserts.AssertObjectIdentifier(str)
	return str
end

function asserts.AssertUpdateActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected UpdateActionType to be of type 'string'")
end

--  
function M.UpdateActionType(str)
	asserts.AssertUpdateActionType(str)
	return str
end

function asserts.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	asserts.AssertExceptionMessage(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertStringAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StringAttributeValue to be of type 'string'")
end

--  
function M.StringAttributeValue(str)
	asserts.AssertStringAttributeValue(str)
	return str
end

function asserts.AssertFacetName(str)
	assert(str)
	assert(type(str) == "string", "Expected FacetName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FacetName(str)
	asserts.AssertFacetName(str)
	return str
end

function asserts.AssertSelectorObjectReference(str)
	assert(str)
	assert(type(str) == "string", "Expected SelectorObjectReference to be of type 'string'")
end

--  
function M.SelectorObjectReference(str)
	asserts.AssertSelectorObjectReference(str)
	return str
end

function asserts.AssertRuleKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleKey to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RuleKey(str)
	asserts.AssertRuleKey(str)
	return str
end

function asserts.AssertRuleParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleParameterKey to be of type 'string'")
end

--  
function M.RuleParameterKey(str)
	asserts.AssertRuleParameterKey(str)
	return str
end

function asserts.AssertTagsNumberResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TagsNumberResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 50, "Expected integer to be min 50")
end

function M.TagsNumberResults(integer)
	asserts.AssertTagsNumberResults(integer)
	return integer
end

function asserts.AssertBatchOperationIndex(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BatchOperationIndex to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.BatchOperationIndex(integer)
	asserts.AssertBatchOperationIndex(integer)
	return integer
end

function asserts.AssertNumberResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumberResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.NumberResults(integer)
	asserts.AssertNumberResults(integer)
	return integer
end

function asserts.AssertBool(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Bool to be of type 'boolean'")
end

function M.Bool(boolean)
	asserts.AssertBool(boolean)
	return boolean
end

function asserts.AssertBooleanAttributeValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanAttributeValue to be of type 'boolean'")
end

function M.BooleanAttributeValue(boolean)
	asserts.AssertBooleanAttributeValue(boolean)
	return boolean
end

function asserts.AssertObjectIdentifierToLinkNameMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ObjectIdentifierToLinkNameMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertObjectIdentifier(k)
		asserts.AssertLinkName(v)
	end
end

function M.ObjectIdentifierToLinkNameMap(map)
	asserts.AssertObjectIdentifierToLinkNameMap(map)
	return map
end

function asserts.AssertRuleParameterMap(map)
	assert(map)
	assert(type(map) == "table", "Expected RuleParameterMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertRuleParameterKey(k)
		asserts.AssertRuleParameterValue(v)
	end
end

function M.RuleParameterMap(map)
	asserts.AssertRuleParameterMap(map)
	return map
end

function asserts.AssertRuleMap(map)
	assert(map)
	assert(type(map) == "table", "Expected RuleMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertRuleKey(k)
		asserts.AssertRule(v)
	end
end

function M.RuleMap(map)
	asserts.AssertRuleMap(map)
	return map
end

function asserts.AssertLinkNameToObjectIdentifierMap(map)
	assert(map)
	assert(type(map) == "table", "Expected LinkNameToObjectIdentifierMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertLinkName(k)
		asserts.AssertObjectIdentifier(v)
	end
end

function M.LinkNameToObjectIdentifierMap(map)
	asserts.AssertLinkNameToObjectIdentifierMap(map)
	return map
end

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertDatetimeAttributeValue(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DatetimeAttributeValue to be of type 'string'")
end

function M.DatetimeAttributeValue(timestamp)
	asserts.AssertDatetimeAttributeValue(timestamp)
	return timestamp
end

function asserts.AssertBinaryAttributeValue(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BinaryAttributeValue to be of type 'string'")
end

function M.BinaryAttributeValue(blob)
	asserts.AssertBinaryAttributeValue(blob)
	return blob
end

function asserts.AssertPolicyToPathList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyToPathList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyToPath(v)
	end
end

--  
-- List of PolicyToPath objects
function M.PolicyToPathList(list)
	asserts.AssertPolicyToPathList(list)
	return list
end

function asserts.AssertAttributeNameAndValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameAndValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeNameAndValue(v)
	end
end

--  
-- List of AttributeNameAndValue objects
function M.AttributeNameAndValueList(list)
	asserts.AssertAttributeNameAndValueList(list)
	return list
end

function asserts.AssertAttributeKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeKey(v)
	end
end

--  
-- List of AttributeKey objects
function M.AttributeKeyList(list)
	asserts.AssertAttributeKeyList(list)
	return list
end

function asserts.AssertTypedLinkSpecifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypedLinkSpecifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTypedLinkSpecifier(v)
	end
end

--  
-- List of TypedLinkSpecifier objects
function M.TypedLinkSpecifierList(list)
	asserts.AssertTypedLinkSpecifierList(list)
	return list
end

function asserts.AssertObjectAttributeUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectAttributeUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertObjectAttributeUpdate(v)
	end
end

--  
-- List of ObjectAttributeUpdate objects
function M.ObjectAttributeUpdateList(list)
	asserts.AssertObjectAttributeUpdateList(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertObjectAttributeRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectAttributeRangeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertObjectAttributeRange(v)
	end
end

--  
-- List of ObjectAttributeRange objects
function M.ObjectAttributeRangeList(list)
	asserts.AssertObjectAttributeRangeList(list)
	return list
end

function asserts.AssertDirectoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDirectory(v)
	end
end

--  
-- List of Directory objects
function M.DirectoryList(list)
	asserts.AssertDirectoryList(list)
	return list
end

function asserts.AssertIndexAttachmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected IndexAttachmentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIndexAttachment(v)
	end
end

--  
-- List of IndexAttachment objects
function M.IndexAttachmentList(list)
	asserts.AssertIndexAttachmentList(list)
	return list
end

function asserts.AssertTypedLinkNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypedLinkNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTypedLinkName(v)
	end
end

--  
-- List of TypedLinkName objects
function M.TypedLinkNameList(list)
	asserts.AssertTypedLinkNameList(list)
	return list
end

function asserts.AssertFacetAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected FacetAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFacetAttribute(v)
	end
end

--  
-- List of FacetAttribute objects
function M.FacetAttributeList(list)
	asserts.AssertFacetAttributeList(list)
	return list
end

function asserts.AssertArns(list)
	assert(list)
	assert(type(list) == "table", "Expected Arns to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.Arns(list)
	asserts.AssertArns(list)
	return list
end

function asserts.AssertBatchReadOperationList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchReadOperationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchReadOperation(v)
	end
end

--  
-- List of BatchReadOperation objects
function M.BatchReadOperationList(list)
	asserts.AssertBatchReadOperationList(list)
	return list
end

function asserts.AssertAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeName(v)
	end
end

--  
-- List of AttributeName objects
function M.AttributeNameList(list)
	asserts.AssertAttributeNameList(list)
	return list
end

function asserts.AssertSchemaFacetList(list)
	assert(list)
	assert(type(list) == "table", "Expected SchemaFacetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSchemaFacet(v)
	end
end

--  
-- List of SchemaFacet objects
function M.SchemaFacetList(list)
	asserts.AssertSchemaFacetList(list)
	return list
end

function asserts.AssertFacetAttributeUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected FacetAttributeUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFacetAttributeUpdate(v)
	end
end

--  
-- List of FacetAttributeUpdate objects
function M.FacetAttributeUpdateList(list)
	asserts.AssertFacetAttributeUpdateList(list)
	return list
end

function asserts.AssertTypedLinkAttributeRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypedLinkAttributeRangeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTypedLinkAttributeRange(v)
	end
end

--  
-- List of TypedLinkAttributeRange objects
function M.TypedLinkAttributeRangeList(list)
	asserts.AssertTypedLinkAttributeRangeList(list)
	return list
end

function asserts.AssertBatchWriteOperationResponseList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchWriteOperationResponseList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchWriteOperationResponse(v)
	end
end

--  
-- List of BatchWriteOperationResponse objects
function M.BatchWriteOperationResponseList(list)
	asserts.AssertBatchWriteOperationResponseList(list)
	return list
end

function asserts.AssertTypedLinkFacetAttributeUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypedLinkFacetAttributeUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTypedLinkFacetAttributeUpdate(v)
	end
end

--  
-- List of TypedLinkFacetAttributeUpdate objects
function M.TypedLinkFacetAttributeUpdateList(list)
	asserts.AssertTypedLinkFacetAttributeUpdateList(list)
	return list
end

function asserts.AssertObjectIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertObjectIdentifier(v)
	end
end

--  
-- List of ObjectIdentifier objects
function M.ObjectIdentifierList(list)
	asserts.AssertObjectIdentifierList(list)
	return list
end

function asserts.AssertFacetNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected FacetNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFacetName(v)
	end
end

--  
-- List of FacetName objects
function M.FacetNameList(list)
	asserts.AssertFacetNameList(list)
	return list
end

function asserts.AssertBatchReadOperationResponseList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchReadOperationResponseList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchReadOperationResponse(v)
	end
end

--  
-- List of BatchReadOperationResponse objects
function M.BatchReadOperationResponseList(list)
	asserts.AssertBatchReadOperationResponseList(list)
	return list
end

function asserts.AssertPolicyAttachmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyAttachmentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyAttachment(v)
	end
end

--  
-- List of PolicyAttachment objects
function M.PolicyAttachmentList(list)
	asserts.AssertPolicyAttachmentList(list)
	return list
end

function asserts.AssertTypedLinkAttributeDefinitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypedLinkAttributeDefinitionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTypedLinkAttributeDefinition(v)
	end
end

--  
-- List of TypedLinkAttributeDefinition objects
function M.TypedLinkAttributeDefinitionList(list)
	asserts.AssertTypedLinkAttributeDefinitionList(list)
	return list
end

function asserts.AssertAttributeKeyAndValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeKeyAndValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeKeyAndValue(v)
	end
end

--  
-- List of AttributeKeyAndValue objects
function M.AttributeKeyAndValueList(list)
	asserts.AssertAttributeKeyAndValueList(list)
	return list
end

function asserts.AssertBatchWriteOperationList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchWriteOperationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchWriteOperation(v)
	end
end

--  
-- List of BatchWriteOperation objects
function M.BatchWriteOperationList(list)
	asserts.AssertBatchWriteOperationList(list)
	return list
end

function asserts.AssertPathToObjectIdentifiersList(list)
	assert(list)
	assert(type(list) == "table", "Expected PathToObjectIdentifiersList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPathToObjectIdentifiers(v)
	end
end

--  
-- List of PathToObjectIdentifiers objects
function M.PathToObjectIdentifiersList(list)
	asserts.AssertPathToObjectIdentifiersList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
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
			return "clouddirectory.amazonaws.com"
		end
	end
	local ss = { "clouddirectory" }
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
--- ListTypedLinkFacetNames
-- @param ListTypedLinkFacetNamesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTypedLinkFacetNamesAsync(ListTypedLinkFacetNamesRequest, cb)
	assert(ListTypedLinkFacetNamesRequest, "You must provide a ListTypedLinkFacetNamesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTypedLinkFacetNames",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/typedlink/facet/list", ListTypedLinkFacetNamesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListIncomingTypedLinks
-- @param ListIncomingTypedLinksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIncomingTypedLinksAsync(ListIncomingTypedLinksRequest, cb)
	assert(ListIncomingTypedLinksRequest, "You must provide a ListIncomingTypedLinksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListIncomingTypedLinks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/typedlink/incoming", ListIncomingTypedLinksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDirectories
-- @param ListDirectoriesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDirectoriesAsync(ListDirectoriesRequest, cb)
	assert(ListDirectoriesRequest, "You must provide a ListDirectoriesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDirectories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/directory/list", ListDirectoriesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSchema
-- @param CreateSchemaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSchemaAsync(CreateSchemaRequest, cb)
	assert(CreateSchemaRequest, "You must provide a CreateSchemaRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateSchema",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/schema/create", CreateSchemaRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSchema
-- @param UpdateSchemaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSchemaAsync(UpdateSchemaRequest, cb)
	assert(UpdateSchemaRequest, "You must provide a UpdateSchemaRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateSchema",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/schema/update", UpdateSchemaRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateObject
-- @param CreateObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateObjectAsync(CreateObjectRequest, cb)
	assert(CreateObjectRequest, "You must provide a CreateObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateObject",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object", CreateObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableDirectory
-- @param EnableDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableDirectoryAsync(EnableDirectoryRequest, cb)
	assert(EnableDirectoryRequest, "You must provide a EnableDirectoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".EnableDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/directory/enable", EnableDirectoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetObjectInformation
-- @param GetObjectInformationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetObjectInformationAsync(GetObjectInformationRequest, cb)
	assert(GetObjectInformationRequest, "You must provide a GetObjectInformationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetObjectInformation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/information", GetObjectInformationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSchemaAsJson
-- @param GetSchemaAsJsonRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSchemaAsJsonAsync(GetSchemaAsJsonRequest, cb)
	assert(GetSchemaAsJsonRequest, "You must provide a GetSchemaAsJsonRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSchemaAsJson",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/schema/json", GetSchemaAsJsonRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchWrite
-- @param BatchWriteRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BatchWriteAsync(BatchWriteRequest, cb)
	assert(BatchWriteRequest, "You must provide a BatchWriteRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".BatchWrite",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/batchwrite", BatchWriteRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListFacetNames
-- @param ListFacetNamesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListFacetNamesAsync(ListFacetNamesRequest, cb)
	assert(ListFacetNamesRequest, "You must provide a ListFacetNamesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListFacetNames",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/facet/list", ListFacetNamesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDirectory
-- @param CreateDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDirectoryAsync(CreateDirectoryRequest, cb)
	assert(CreateDirectoryRequest, "You must provide a CreateDirectoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/directory/create", CreateDirectoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateIndex
-- @param CreateIndexRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateIndexAsync(CreateIndexRequest, cb)
	assert(CreateIndexRequest, "You must provide a CreateIndexRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateIndex",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/index", CreateIndexRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteFacet
-- @param DeleteFacetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFacetAsync(DeleteFacetRequest, cb)
	assert(DeleteFacetRequest, "You must provide a DeleteFacetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteFacet",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/facet/delete", DeleteFacetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachPolicy
-- @param DetachPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachPolicyAsync(DetachPolicyRequest, cb)
	assert(DetachPolicyRequest, "You must provide a DetachPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/policy/detach", DetachPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachObject
-- @param DetachObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachObjectAsync(DetachObjectRequest, cb)
	assert(DetachObjectRequest, "You must provide a DetachObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachObject",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/detach", DetachObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListObjectChildren
-- @param ListObjectChildrenRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectChildrenAsync(ListObjectChildrenRequest, cb)
	assert(ListObjectChildrenRequest, "You must provide a ListObjectChildrenRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListObjectChildren",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/children", ListObjectChildrenRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListObjectAttributes
-- @param ListObjectAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectAttributesAsync(ListObjectAttributesRequest, cb)
	assert(ListObjectAttributesRequest, "You must provide a ListObjectAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListObjectAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/attributes", ListObjectAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddFacetToObject
-- @param AddFacetToObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddFacetToObjectAsync(AddFacetToObjectRequest, cb)
	assert(AddFacetToObjectRequest, "You must provide a AddFacetToObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddFacetToObject",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/facets", AddFacetToObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutSchemaFromJson
-- @param PutSchemaFromJsonRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutSchemaFromJsonAsync(PutSchemaFromJsonRequest, cb)
	assert(PutSchemaFromJsonRequest, "You must provide a PutSchemaFromJsonRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutSchemaFromJson",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/schema/json", PutSchemaFromJsonRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPolicyAttachments
-- @param ListPolicyAttachmentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPolicyAttachmentsAsync(ListPolicyAttachmentsRequest, cb)
	assert(ListPolicyAttachmentsRequest, "You must provide a ListPolicyAttachmentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPolicyAttachments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/policy/attachment", ListPolicyAttachmentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateFacet
-- @param CreateFacetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFacetAsync(CreateFacetRequest, cb)
	assert(CreateFacetRequest, "You must provide a CreateFacetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateFacet",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/facet/create", CreateFacetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListObjectParents
-- @param ListObjectParentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectParentsAsync(ListObjectParentsRequest, cb)
	assert(ListObjectParentsRequest, "You must provide a ListObjectParentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListObjectParents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/parent", ListObjectParentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchRead
-- @param BatchReadRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BatchReadAsync(BatchReadRequest, cb)
	assert(BatchReadRequest, "You must provide a BatchReadRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".BatchRead",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/batchread", BatchReadRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachTypedLink
-- @param DetachTypedLinkRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachTypedLinkAsync(DetachTypedLinkRequest, cb)
	assert(DetachTypedLinkRequest, "You must provide a DetachTypedLinkRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachTypedLink",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/typedlink/detach", DetachTypedLinkRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveFacetFromObject
-- @param RemoveFacetFromObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveFacetFromObjectAsync(RemoveFacetFromObjectRequest, cb)
	assert(RemoveFacetFromObjectRequest, "You must provide a RemoveFacetFromObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveFacetFromObject",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/facets/delete", RemoveFacetFromObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- LookupPolicy
-- @param LookupPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.LookupPolicyAsync(LookupPolicyRequest, cb)
	assert(LookupPolicyRequest, "You must provide a LookupPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".LookupPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/policy/lookup", LookupPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListObjectParentPaths
-- @param ListObjectParentPathsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectParentPathsAsync(ListObjectParentPathsRequest, cb)
	assert(ListObjectParentPathsRequest, "You must provide a ListObjectParentPathsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListObjectParentPaths",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/parentpaths", ListObjectParentPathsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TagResource
-- @param TagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TagResource",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/tags/add", TagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAttachedIndices
-- @param ListAttachedIndicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAttachedIndicesAsync(ListAttachedIndicesRequest, cb)
	assert(ListAttachedIndicesRequest, "You must provide a ListAttachedIndicesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListAttachedIndices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/indices", ListAttachedIndicesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachTypedLink
-- @param AttachTypedLinkRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachTypedLinkAsync(AttachTypedLinkRequest, cb)
	assert(AttachTypedLinkRequest, "You must provide a AttachTypedLinkRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachTypedLink",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/typedlink/attach", AttachTypedLinkRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateObjectAttributes
-- @param UpdateObjectAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateObjectAttributesAsync(UpdateObjectAttributesRequest, cb)
	assert(UpdateObjectAttributesRequest, "You must provide a UpdateObjectAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateObjectAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/update", UpdateObjectAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTypedLinkFacetAttributes
-- @param ListTypedLinkFacetAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTypedLinkFacetAttributesAsync(ListTypedLinkFacetAttributesRequest, cb)
	assert(ListTypedLinkFacetAttributesRequest, "You must provide a ListTypedLinkFacetAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTypedLinkFacetAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", ListTypedLinkFacetAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPublishedSchemaArns
-- @param ListPublishedSchemaArnsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPublishedSchemaArnsAsync(ListPublishedSchemaArnsRequest, cb)
	assert(ListPublishedSchemaArnsRequest, "You must provide a ListPublishedSchemaArnsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPublishedSchemaArns",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/schema/published", ListPublishedSchemaArnsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDirectory
-- @param DeleteDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDirectoryAsync(DeleteDirectoryRequest, cb)
	assert(DeleteDirectoryRequest, "You must provide a DeleteDirectoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/directory", DeleteDirectoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PublishSchema
-- @param PublishSchemaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PublishSchemaAsync(PublishSchemaRequest, cb)
	assert(PublishSchemaRequest, "You must provide a PublishSchemaRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PublishSchema",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/schema/publish", PublishSchemaRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetFacet
-- @param GetFacetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFacetAsync(GetFacetRequest, cb)
	assert(GetFacetRequest, "You must provide a GetFacetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetFacet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/facet", GetFacetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSchema
-- @param DeleteSchemaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSchemaAsync(DeleteSchemaRequest, cb)
	assert(DeleteSchemaRequest, "You must provide a DeleteSchemaRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSchema",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/schema", DeleteSchemaRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachPolicy
-- @param AttachPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachPolicyAsync(AttachPolicyRequest, cb)
	assert(AttachPolicyRequest, "You must provide a AttachPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/policy/attach", AttachPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableDirectory
-- @param DisableDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableDirectoryAsync(DisableDirectoryRequest, cb)
	assert(DisableDirectoryRequest, "You must provide a DisableDirectoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DisableDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/directory/disable", DisableDirectoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListFacetAttributes
-- @param ListFacetAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListFacetAttributesAsync(ListFacetAttributesRequest, cb)
	assert(ListFacetAttributesRequest, "You must provide a ListFacetAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListFacetAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/facet/attributes", ListFacetAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTypedLinkFacet
-- @param DeleteTypedLinkFacetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTypedLinkFacetAsync(DeleteTypedLinkFacetRequest, cb)
	assert(DeleteTypedLinkFacetRequest, "You must provide a DeleteTypedLinkFacetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteTypedLinkFacet",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", DeleteTypedLinkFacetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateTypedLinkFacet
-- @param UpdateTypedLinkFacetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTypedLinkFacetAsync(UpdateTypedLinkFacetRequest, cb)
	assert(UpdateTypedLinkFacetRequest, "You must provide a UpdateTypedLinkFacetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateTypedLinkFacet",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/typedlink/facet", UpdateTypedLinkFacetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachFromIndex
-- @param DetachFromIndexRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachFromIndexAsync(DetachFromIndexRequest, cb)
	assert(DetachFromIndexRequest, "You must provide a DetachFromIndexRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachFromIndex",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/index/detach", DetachFromIndexRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAppliedSchemaArns
-- @param ListAppliedSchemaArnsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAppliedSchemaArnsAsync(ListAppliedSchemaArnsRequest, cb)
	assert(ListAppliedSchemaArnsRequest, "You must provide a ListAppliedSchemaArnsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListAppliedSchemaArns",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/schema/applied", ListAppliedSchemaArnsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListObjectPolicies
-- @param ListObjectPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListObjectPoliciesAsync(ListObjectPoliciesRequest, cb)
	assert(ListObjectPoliciesRequest, "You must provide a ListObjectPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListObjectPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/policy", ListObjectPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ApplySchema
-- @param ApplySchemaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ApplySchemaAsync(ApplySchemaRequest, cb)
	assert(ApplySchemaRequest, "You must provide a ApplySchemaRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ApplySchema",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/schema/apply", ApplySchemaRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDevelopmentSchemaArns
-- @param ListDevelopmentSchemaArnsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDevelopmentSchemaArnsAsync(ListDevelopmentSchemaArnsRequest, cb)
	assert(ListDevelopmentSchemaArnsRequest, "You must provide a ListDevelopmentSchemaArnsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDevelopmentSchemaArns",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/schema/development", ListDevelopmentSchemaArnsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDirectory
-- @param GetDirectoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDirectoryAsync(GetDirectoryRequest, cb)
	assert(GetDirectoryRequest, "You must provide a GetDirectoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDirectory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/directory/get", GetDirectoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachObject
-- @param AttachObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachObjectAsync(AttachObjectRequest, cb)
	assert(AttachObjectRequest, "You must provide a AttachObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachObject",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/attach", AttachObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForResource
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/tags", ListTagsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UntagResource
-- @param UntagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UntagResource",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/tags/remove", UntagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTypedLinkFacet
-- @param CreateTypedLinkFacetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTypedLinkFacetAsync(CreateTypedLinkFacetRequest, cb)
	assert(CreateTypedLinkFacetRequest, "You must provide a CreateTypedLinkFacetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateTypedLinkFacet",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/typedlink/facet/create", CreateTypedLinkFacetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachToIndex
-- @param AttachToIndexRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachToIndexAsync(AttachToIndexRequest, cb)
	assert(AttachToIndexRequest, "You must provide a AttachToIndexRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachToIndex",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/index/attach", AttachToIndexRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListIndex
-- @param ListIndexRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIndexAsync(ListIndexRequest, cb)
	assert(ListIndexRequest, "You must provide a ListIndexRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListIndex",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/index/targets", ListIndexRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateFacet
-- @param UpdateFacetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFacetAsync(UpdateFacetRequest, cb)
	assert(UpdateFacetRequest, "You must provide a UpdateFacetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateFacet",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/facet", UpdateFacetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOutgoingTypedLinks
-- @param ListOutgoingTypedLinksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListOutgoingTypedLinksAsync(ListOutgoingTypedLinksRequest, cb)
	assert(ListOutgoingTypedLinksRequest, "You must provide a ListOutgoingTypedLinksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListOutgoingTypedLinks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/typedlink/outgoing", ListOutgoingTypedLinksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteObject
-- @param DeleteObjectRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteObjectAsync(DeleteObjectRequest, cb)
	assert(DeleteObjectRequest, "You must provide a DeleteObjectRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteObject",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/object/delete", DeleteObjectRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTypedLinkFacetInformation
-- @param GetTypedLinkFacetInformationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTypedLinkFacetInformationAsync(GetTypedLinkFacetInformationRequest, cb)
	assert(GetTypedLinkFacetInformationRequest, "You must provide a GetTypedLinkFacetInformationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetTypedLinkFacetInformation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/amazonclouddirectory/2017-01-11/typedlink/facet/get", GetTypedLinkFacetInformationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
