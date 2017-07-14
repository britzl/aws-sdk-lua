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

local GetSchemaAsJsonResponse_keys = { "Document" = true, "Name" = true, nil }

function M.AssertGetSchemaAsJsonResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSchemaAsJsonResponse to be of type 'table'")
	if struct["Document"] then M.AssertSchemaJsonDocument(struct["Document"]) end
	if struct["Name"] then M.AssertSchemaName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(GetSchemaAsJsonResponse_keys[k], "GetSchemaAsJsonResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSchemaAsJsonResponse
--  
-- @param Document [SchemaJsonDocument] &lt;p&gt;The JSON representation of the schema document.&lt;/p&gt;
-- @param Name [SchemaName] &lt;p&gt;The name of the retrieved schema.&lt;/p&gt;
function M.GetSchemaAsJsonResponse(Document, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSchemaAsJsonResponse")
	local t = { 
		["Document"] = Document,
		["Name"] = Name,
	}
	M.AssertGetSchemaAsJsonResponse(t)
	return t
end

local ObjectAttributeRange_keys = { "AttributeKey" = true, "Range" = true, nil }

function M.AssertObjectAttributeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectAttributeRange to be of type 'table'")
	if struct["AttributeKey"] then M.AssertAttributeKey(struct["AttributeKey"]) end
	if struct["Range"] then M.AssertTypedAttributeValueRange(struct["Range"]) end
	for k,_ in pairs(struct) do
		assert(ObjectAttributeRange_keys[k], "ObjectAttributeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectAttributeRange
-- &lt;p&gt;A range of attributes.&lt;/p&gt;
-- @param AttributeKey [AttributeKey] &lt;p&gt;The key of the attribute that the attribute range covers.&lt;/p&gt;
-- @param Range [TypedAttributeValueRange] &lt;p&gt;The range of attribute values being selected.&lt;/p&gt;
function M.ObjectAttributeRange(AttributeKey, Range, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectAttributeRange")
	local t = { 
		["AttributeKey"] = AttributeKey,
		["Range"] = Range,
	}
	M.AssertObjectAttributeRange(t)
	return t
end

local LinkNameAlreadyInUseException_keys = { "Message" = true, nil }

function M.AssertLinkNameAlreadyInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LinkNameAlreadyInUseException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(LinkNameAlreadyInUseException_keys[k], "LinkNameAlreadyInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LinkNameAlreadyInUseException
-- &lt;p&gt;Indicates that a link could not be created due to a naming conflict. Choose a different name and then try again.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that a link could not be created due to a naming conflict. Choose a different name and then try again.&lt;/p&gt;
function M.LinkNameAlreadyInUseException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LinkNameAlreadyInUseException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertLinkNameAlreadyInUseException(t)
	return t
end

local BatchReadException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertBatchReadException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["Type"] then M.AssertBatchReadExceptionType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(BatchReadException_keys[k], "BatchReadException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadException
-- &lt;p&gt;The batch read exception structure, which contains the exception type and message.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;An exception message that is associated with the failure.&lt;/p&gt;
-- @param Type [BatchReadExceptionType] &lt;p&gt;A type of exception, such as &lt;code&gt;InvalidArnException&lt;/code&gt;.&lt;/p&gt;
function M.BatchReadException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertBatchReadException(t)
	return t
end

local RemoveFacetFromObjectResponse_keys = { nil }

function M.AssertRemoveFacetFromObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveFacetFromObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RemoveFacetFromObjectResponse_keys[k], "RemoveFacetFromObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveFacetFromObjectResponse
--  
function M.RemoveFacetFromObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveFacetFromObjectResponse")
	local t = { 
	}
	M.AssertRemoveFacetFromObjectResponse(t)
	return t
end

local InvalidNextTokenException_keys = { "Message" = true, nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- &lt;p&gt;Indicates that the &lt;code&gt;NextToken&lt;/code&gt; value is not valid.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that the &lt;code&gt;NextToken&lt;/code&gt; value is not valid.&lt;/p&gt;
function M.InvalidNextTokenException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local AttachObjectRequest_keys = { "ParentReference" = true, "LinkName" = true, "DirectoryArn" = true, "ChildReference" = true, nil }

function M.AssertAttachObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["ChildReference"], "Expected key ChildReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	if struct["ParentReference"] then M.AssertObjectReference(struct["ParentReference"]) end
	if struct["LinkName"] then M.AssertLinkName(struct["LinkName"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["ChildReference"] then M.AssertObjectReference(struct["ChildReference"]) end
	for k,_ in pairs(struct) do
		assert(AttachObjectRequest_keys[k], "AttachObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachObjectRequest
--  
-- @param ParentReference [ObjectReference] &lt;p&gt;The parent object reference.&lt;/p&gt;
-- @param LinkName [LinkName] &lt;p&gt;The link name with which the child object is attached to the parent.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where both objects reside. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param ChildReference [ObjectReference] &lt;p&gt;The child object reference to be attached to the object.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ParentReference
-- Required parameter: ChildReference
-- Required parameter: LinkName
function M.AttachObjectRequest(ParentReference, LinkName, DirectoryArn, ChildReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachObjectRequest")
	local t = { 
		["ParentReference"] = ParentReference,
		["LinkName"] = LinkName,
		["DirectoryArn"] = DirectoryArn,
		["ChildReference"] = ChildReference,
	}
	M.AssertAttachObjectRequest(t)
	return t
end

local SchemaAlreadyPublishedException_keys = { "Message" = true, nil }

function M.AssertSchemaAlreadyPublishedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaAlreadyPublishedException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(SchemaAlreadyPublishedException_keys[k], "SchemaAlreadyPublishedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaAlreadyPublishedException
-- &lt;p&gt;Indicates that a schema is already published.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that a schema is already published.&lt;/p&gt;
function M.SchemaAlreadyPublishedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SchemaAlreadyPublishedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertSchemaAlreadyPublishedException(t)
	return t
end

local ApplySchemaRequest_keys = { "DirectoryArn" = true, "PublishedSchemaArn" = true, nil }

function M.AssertApplySchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplySchemaRequest to be of type 'table'")
	assert(struct["PublishedSchemaArn"], "Expected key PublishedSchemaArn to exist in table")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["PublishedSchemaArn"] then M.AssertArn(struct["PublishedSchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(ApplySchemaRequest_keys[k], "ApplySchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplySchemaRequest
--  
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; into which the schema is copied. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param PublishedSchemaArn [Arn] &lt;p&gt;Published schema Amazon Resource Name (ARN) that needs to be copied. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: PublishedSchemaArn
-- Required parameter: DirectoryArn
function M.ApplySchemaRequest(DirectoryArn, PublishedSchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplySchemaRequest")
	local t = { 
		["DirectoryArn"] = DirectoryArn,
		["PublishedSchemaArn"] = PublishedSchemaArn,
	}
	M.AssertApplySchemaRequest(t)
	return t
end

local TypedAttributeValueRange_keys = { "EndMode" = true, "StartMode" = true, "StartValue" = true, "EndValue" = true, nil }

function M.AssertTypedAttributeValueRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedAttributeValueRange to be of type 'table'")
	assert(struct["StartMode"], "Expected key StartMode to exist in table")
	assert(struct["EndMode"], "Expected key EndMode to exist in table")
	if struct["EndMode"] then M.AssertRangeMode(struct["EndMode"]) end
	if struct["StartMode"] then M.AssertRangeMode(struct["StartMode"]) end
	if struct["StartValue"] then M.AssertTypedAttributeValue(struct["StartValue"]) end
	if struct["EndValue"] then M.AssertTypedAttributeValue(struct["EndValue"]) end
	for k,_ in pairs(struct) do
		assert(TypedAttributeValueRange_keys[k], "TypedAttributeValueRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedAttributeValueRange
-- &lt;p&gt;A range of attribute values.&lt;/p&gt;
-- @param EndMode [RangeMode] &lt;p&gt;The inclusive or exclusive range end.&lt;/p&gt;
-- @param StartMode [RangeMode] &lt;p&gt;The inclusive or exclusive range start.&lt;/p&gt;
-- @param StartValue [TypedAttributeValue] &lt;p&gt;The value to start the range at.&lt;/p&gt;
-- @param EndValue [TypedAttributeValue] &lt;p&gt;The attribute value to terminate the range at.&lt;/p&gt;
-- Required parameter: StartMode
-- Required parameter: EndMode
function M.TypedAttributeValueRange(EndMode, StartMode, StartValue, EndValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedAttributeValueRange")
	local t = { 
		["EndMode"] = EndMode,
		["StartMode"] = StartMode,
		["StartValue"] = StartValue,
		["EndValue"] = EndValue,
	}
	M.AssertTypedAttributeValueRange(t)
	return t
end

local InvalidFacetUpdateException_keys = { "Message" = true, nil }

function M.AssertInvalidFacetUpdateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFacetUpdateException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidFacetUpdateException_keys[k], "InvalidFacetUpdateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFacetUpdateException
-- &lt;p&gt;An attempt to modify a &lt;a&gt;Facet&lt;/a&gt; resulted in an invalid schema exception.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;An attempt to modify a &lt;a&gt;Facet&lt;/a&gt; resulted in an invalid schema exception.&lt;/p&gt;
function M.InvalidFacetUpdateException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFacetUpdateException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidFacetUpdateException(t)
	return t
end

local ListObjectChildrenResponse_keys = { "NextToken" = true, "Children" = true, nil }

function M.AssertListObjectChildrenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectChildrenResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Children"] then M.AssertLinkNameToObjectIdentifierMap(struct["Children"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectChildrenResponse_keys[k], "ListObjectChildrenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectChildrenResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param Children [LinkNameToObjectIdentifierMap] &lt;p&gt;Children structure, which is a map with key as the &lt;code&gt;LinkName&lt;/code&gt; and &lt;code&gt;ObjectIdentifier&lt;/code&gt; as the value.&lt;/p&gt;
function M.ListObjectChildrenResponse(NextToken, Children, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectChildrenResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Children"] = Children,
	}
	M.AssertListObjectChildrenResponse(t)
	return t
end

local ListPolicyAttachmentsResponse_keys = { "NextToken" = true, "ObjectIdentifiers" = true, nil }

function M.AssertListPolicyAttachmentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyAttachmentsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["ObjectIdentifiers"] then M.AssertObjectIdentifierList(struct["ObjectIdentifiers"]) end
	for k,_ in pairs(struct) do
		assert(ListPolicyAttachmentsResponse_keys[k], "ListPolicyAttachmentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyAttachmentsResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param ObjectIdentifiers [ObjectIdentifierList] &lt;p&gt;A list of &lt;code&gt;ObjectIdentifiers&lt;/code&gt; to which the policy is attached.&lt;/p&gt;
function M.ListPolicyAttachmentsResponse(NextToken, ObjectIdentifiers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyAttachmentsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["ObjectIdentifiers"] = ObjectIdentifiers,
	}
	M.AssertListPolicyAttachmentsResponse(t)
	return t
end

local AttachPolicyRequest_keys = { "PolicyReference" = true, "ObjectReference" = true, "DirectoryArn" = true, nil }

function M.AssertAttachPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachPolicyRequest to be of type 'table'")
	assert(struct["PolicyReference"], "Expected key PolicyReference to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["PolicyReference"] then M.AssertObjectReference(struct["PolicyReference"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(AttachPolicyRequest_keys[k], "AttachPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachPolicyRequest
--  
-- @param PolicyReference [ObjectReference] &lt;p&gt;The reference that is associated with the policy object.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;The reference that identifies the object to which the policy will be attached.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where both objects reside. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: PolicyReference
-- Required parameter: ObjectReference
function M.AttachPolicyRequest(PolicyReference, ObjectReference, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachPolicyRequest")
	local t = { 
		["PolicyReference"] = PolicyReference,
		["ObjectReference"] = ObjectReference,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertAttachPolicyRequest(t)
	return t
end

local EnableDirectoryResponse_keys = { "DirectoryArn" = true, nil }

function M.AssertEnableDirectoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDirectoryResponse to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(EnableDirectoryResponse_keys[k], "EnableDirectoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDirectoryResponse
--  
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the enabled directory.&lt;/p&gt;
-- Required parameter: DirectoryArn
function M.EnableDirectoryResponse(DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDirectoryResponse")
	local t = { 
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertEnableDirectoryResponse(t)
	return t
end

local ListDevelopmentSchemaArnsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListDevelopmentSchemaArnsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevelopmentSchemaArnsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListDevelopmentSchemaArnsRequest_keys[k], "ListDevelopmentSchemaArnsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevelopmentSchemaArnsRequest
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
function M.ListDevelopmentSchemaArnsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDevelopmentSchemaArnsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListDevelopmentSchemaArnsRequest(t)
	return t
end

local ObjectNotDetachedException_keys = { "Message" = true, nil }

function M.AssertObjectNotDetachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectNotDetachedException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ObjectNotDetachedException_keys[k], "ObjectNotDetachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectNotDetachedException
-- &lt;p&gt;Indicates that the requested operation cannot be completed because the object has not been detached from the tree.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that the requested operation cannot be completed because the object has not been detached from the tree.&lt;/p&gt;
function M.ObjectNotDetachedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectNotDetachedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertObjectNotDetachedException(t)
	return t
end

local StillContainsLinksException_keys = { "Message" = true, nil }

function M.AssertStillContainsLinksException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StillContainsLinksException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(StillContainsLinksException_keys[k], "StillContainsLinksException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StillContainsLinksException
-- &lt;p&gt;The object could not be deleted because links still exist. Remove the links and then try the operation again.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;The object could not be deleted because links still exist. Remove the links and then try the operation again.&lt;/p&gt;
function M.StillContainsLinksException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StillContainsLinksException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertStillContainsLinksException(t)
	return t
end

local BatchWriteRequest_keys = { "Operations" = true, "DirectoryArn" = true, nil }

function M.AssertBatchWriteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["Operations"], "Expected key Operations to exist in table")
	if struct["Operations"] then M.AssertBatchWriteOperationList(struct["Operations"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(BatchWriteRequest_keys[k], "BatchWriteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteRequest
--  
-- @param Operations [BatchWriteOperationList] &lt;p&gt;A list of operations that are part of the batch.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt;. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: Operations
function M.BatchWriteRequest(Operations, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteRequest")
	local t = { 
		["Operations"] = Operations,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertBatchWriteRequest(t)
	return t
end

local PolicyAttachment_keys = { "PolicyType" = true, "ObjectIdentifier" = true, "PolicyId" = true, nil }

function M.AssertPolicyAttachment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyAttachment to be of type 'table'")
	if struct["PolicyType"] then M.AssertPolicyType(struct["PolicyType"]) end
	if struct["ObjectIdentifier"] then M.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	if struct["PolicyId"] then M.AssertObjectIdentifier(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(PolicyAttachment_keys[k], "PolicyAttachment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyAttachment
-- &lt;p&gt;Contains the &lt;code&gt;PolicyType&lt;/code&gt;, &lt;code&gt;PolicyId&lt;/code&gt;, and the &lt;code&gt;ObjectIdentifier&lt;/code&gt; to which it is attached. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies&quot;&gt;Policies&lt;/a&gt;.&lt;/p&gt;
-- @param PolicyType [PolicyType] &lt;p&gt;The type of policy that can be associated with &lt;code&gt;PolicyAttachment&lt;/code&gt;.&lt;/p&gt;
-- @param ObjectIdentifier [ObjectIdentifier] &lt;p&gt;The &lt;code&gt;ObjectIdentifier&lt;/code&gt; that is associated with &lt;code&gt;PolicyAttachment&lt;/code&gt;.&lt;/p&gt;
-- @param PolicyId [ObjectIdentifier] &lt;p&gt;The ID of &lt;code&gt;PolicyAttachment&lt;/code&gt;.&lt;/p&gt;
function M.PolicyAttachment(PolicyType, ObjectIdentifier, PolicyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyAttachment")
	local t = { 
		["PolicyType"] = PolicyType,
		["ObjectIdentifier"] = ObjectIdentifier,
		["PolicyId"] = PolicyId,
	}
	M.AssertPolicyAttachment(t)
	return t
end

local AttachToIndexResponse_keys = { "AttachedObjectIdentifier" = true, nil }

function M.AssertAttachToIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachToIndexResponse to be of type 'table'")
	if struct["AttachedObjectIdentifier"] then M.AssertObjectIdentifier(struct["AttachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(AttachToIndexResponse_keys[k], "AttachToIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachToIndexResponse
--  
-- @param AttachedObjectIdentifier [ObjectIdentifier] &lt;p&gt;The &lt;code&gt;ObjectIdentifier&lt;/code&gt; of the object that was attached to the index.&lt;/p&gt;
function M.AttachToIndexResponse(AttachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachToIndexResponse")
	local t = { 
		["AttachedObjectIdentifier"] = AttachedObjectIdentifier,
	}
	M.AssertAttachToIndexResponse(t)
	return t
end

local FacetNotFoundException_keys = { "Message" = true, nil }

function M.AssertFacetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FacetNotFoundException_keys[k], "FacetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetNotFoundException
-- &lt;p&gt;The specified &lt;a&gt;Facet&lt;/a&gt; could not be found.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;The specified &lt;a&gt;Facet&lt;/a&gt; could not be found.&lt;/p&gt;
function M.FacetNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertFacetNotFoundException(t)
	return t
end

local UpdateObjectAttributesResponse_keys = { "ObjectIdentifier" = true, nil }

function M.AssertUpdateObjectAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateObjectAttributesResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then M.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(UpdateObjectAttributesResponse_keys[k], "UpdateObjectAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateObjectAttributesResponse
--  
-- @param ObjectIdentifier [ObjectIdentifier] &lt;p&gt;The &lt;code&gt;ObjectIdentifier&lt;/code&gt; of the updated object.&lt;/p&gt;
function M.UpdateObjectAttributesResponse(ObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateObjectAttributesResponse")
	local t = { 
		["ObjectIdentifier"] = ObjectIdentifier,
	}
	M.AssertUpdateObjectAttributesResponse(t)
	return t
end

local AttachTypedLinkRequest_keys = { "SourceObjectReference" = true, "Attributes" = true, "TargetObjectReference" = true, "DirectoryArn" = true, "TypedLinkFacet" = true, nil }

function M.AssertAttachTypedLinkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachTypedLinkRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["SourceObjectReference"], "Expected key SourceObjectReference to exist in table")
	assert(struct["TargetObjectReference"], "Expected key TargetObjectReference to exist in table")
	assert(struct["TypedLinkFacet"], "Expected key TypedLinkFacet to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["SourceObjectReference"] then M.AssertObjectReference(struct["SourceObjectReference"]) end
	if struct["Attributes"] then M.AssertAttributeNameAndValueList(struct["Attributes"]) end
	if struct["TargetObjectReference"] then M.AssertObjectReference(struct["TargetObjectReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["TypedLinkFacet"] then M.AssertTypedLinkSchemaAndFacetName(struct["TypedLinkFacet"]) end
	for k,_ in pairs(struct) do
		assert(AttachTypedLinkRequest_keys[k], "AttachTypedLinkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachTypedLinkRequest
--  
-- @param SourceObjectReference [ObjectReference] &lt;p&gt;Identifies the source object that the typed link will attach to.&lt;/p&gt;
-- @param Attributes [AttributeNameAndValueList] &lt;p&gt;A set of attributes that are associated with the typed link.&lt;/p&gt;
-- @param TargetObjectReference [ObjectReference] &lt;p&gt;Identifies the target object that the typed link will attach to.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the directory where you want to attach the typed link.&lt;/p&gt;
-- @param TypedLinkFacet [TypedLinkSchemaAndFacetName] &lt;p&gt;Identifies the typed link facet that is associated with the typed link.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: SourceObjectReference
-- Required parameter: TargetObjectReference
-- Required parameter: TypedLinkFacet
-- Required parameter: Attributes
function M.AttachTypedLinkRequest(SourceObjectReference, Attributes, TargetObjectReference, DirectoryArn, TypedLinkFacet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachTypedLinkRequest")
	local t = { 
		["SourceObjectReference"] = SourceObjectReference,
		["Attributes"] = Attributes,
		["TargetObjectReference"] = TargetObjectReference,
		["DirectoryArn"] = DirectoryArn,
		["TypedLinkFacet"] = TypedLinkFacet,
	}
	M.AssertAttachTypedLinkRequest(t)
	return t
end

local UnsupportedIndexTypeException_keys = { "Message" = true, nil }

function M.AssertUnsupportedIndexTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedIndexTypeException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedIndexTypeException_keys[k], "UnsupportedIndexTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedIndexTypeException
-- &lt;p&gt;Indicates that the requested index type is not supported.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that the requested index type is not supported.&lt;/p&gt;
function M.UnsupportedIndexTypeException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedIndexTypeException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertUnsupportedIndexTypeException(t)
	return t
end

local BatchReadOperationResponse_keys = { "SuccessfulResponse" = true, "ExceptionResponse" = true, nil }

function M.AssertBatchReadOperationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadOperationResponse to be of type 'table'")
	if struct["SuccessfulResponse"] then M.AssertBatchReadSuccessfulResponse(struct["SuccessfulResponse"]) end
	if struct["ExceptionResponse"] then M.AssertBatchReadException(struct["ExceptionResponse"]) end
	for k,_ in pairs(struct) do
		assert(BatchReadOperationResponse_keys[k], "BatchReadOperationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadOperationResponse
-- &lt;p&gt;Represents the output of a &lt;code&gt;BatchRead&lt;/code&gt; response operation.&lt;/p&gt;
-- @param SuccessfulResponse [BatchReadSuccessfulResponse] &lt;p&gt;Identifies which operation in a batch has succeeded.&lt;/p&gt;
-- @param ExceptionResponse [BatchReadException] &lt;p&gt;Identifies which operation in a batch has failed.&lt;/p&gt;
function M.BatchReadOperationResponse(SuccessfulResponse, ExceptionResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadOperationResponse")
	local t = { 
		["SuccessfulResponse"] = SuccessfulResponse,
		["ExceptionResponse"] = ExceptionResponse,
	}
	M.AssertBatchReadOperationResponse(t)
	return t
end

local AddFacetToObjectResponse_keys = { nil }

function M.AssertAddFacetToObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddFacetToObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddFacetToObjectResponse_keys[k], "AddFacetToObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddFacetToObjectResponse
--  
function M.AddFacetToObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddFacetToObjectResponse")
	local t = { 
	}
	M.AssertAddFacetToObjectResponse(t)
	return t
end

local ListFacetNamesRequest_keys = { "SchemaArn" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListFacetNamesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacetNamesRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListFacetNamesRequest_keys[k], "ListFacetNamesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacetNamesRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) to retrieve facet names from.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
-- Required parameter: SchemaArn
function M.ListFacetNamesRequest(SchemaArn, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFacetNamesRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListFacetNamesRequest(t)
	return t
end

local DeleteFacetResponse_keys = { nil }

function M.AssertDeleteFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteFacetResponse_keys[k], "DeleteFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFacetResponse
--  
function M.DeleteFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFacetResponse")
	local t = { 
	}
	M.AssertDeleteFacetResponse(t)
	return t
end

local InvalidArnException_keys = { "Message" = true, nil }

function M.AssertInvalidArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArnException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidArnException_keys[k], "InvalidArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArnException
-- &lt;p&gt;Indicates that the provided ARN value is not valid.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that the provided ARN value is not valid.&lt;/p&gt;
function M.InvalidArnException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArnException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidArnException(t)
	return t
end

local AttributeKey_keys = { "SchemaArn" = true, "FacetName" = true, "Name" = true, nil }

function M.AssertAttributeKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeKey to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["FacetName"], "Expected key FacetName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["FacetName"] then M.AssertFacetName(struct["FacetName"]) end
	if struct["Name"] then M.AssertAttributeName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(AttributeKey_keys[k], "AttributeKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeKey
-- &lt;p&gt;A unique identifier for an attribute.&lt;/p&gt;
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the schema that contains the facet and attribute.&lt;/p&gt;
-- @param FacetName [FacetName] &lt;p&gt;The name of the facet that the attribute exists within.&lt;/p&gt;
-- @param Name [AttributeName] &lt;p&gt;The name of the attribute.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: FacetName
-- Required parameter: Name
function M.AttributeKey(SchemaArn, FacetName, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeKey")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["FacetName"] = FacetName,
		["Name"] = Name,
	}
	M.AssertAttributeKey(t)
	return t
end

local ListAppliedSchemaArnsRequest_keys = { "NextToken" = true, "MaxResults" = true, "DirectoryArn" = true, nil }

function M.AssertListAppliedSchemaArnsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAppliedSchemaArnsRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(ListAppliedSchemaArnsRequest_keys[k], "ListAppliedSchemaArnsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAppliedSchemaArnsRequest
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory you are listing.&lt;/p&gt;
-- Required parameter: DirectoryArn
function M.ListAppliedSchemaArnsRequest(NextToken, MaxResults, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAppliedSchemaArnsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertListAppliedSchemaArnsRequest(t)
	return t
end

local BatchCreateObjectResponse_keys = { "ObjectIdentifier" = true, nil }

function M.AssertBatchCreateObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCreateObjectResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then M.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(BatchCreateObjectResponse_keys[k], "BatchCreateObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCreateObjectResponse
-- &lt;p&gt;Represents the output of a &lt;code&gt;CreateObject&lt;/code&gt; response operation.&lt;/p&gt;
-- @param ObjectIdentifier [ObjectIdentifier] &lt;p&gt;The ID that is associated with the object.&lt;/p&gt;
function M.BatchCreateObjectResponse(ObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchCreateObjectResponse")
	local t = { 
		["ObjectIdentifier"] = ObjectIdentifier,
	}
	M.AssertBatchCreateObjectResponse(t)
	return t
end

local UpdateFacetResponse_keys = { nil }

function M.AssertUpdateFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateFacetResponse_keys[k], "UpdateFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFacetResponse
--  
function M.UpdateFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFacetResponse")
	local t = { 
	}
	M.AssertUpdateFacetResponse(t)
	return t
end

local FacetInUseException_keys = { "Message" = true, nil }

function M.AssertFacetInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetInUseException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FacetInUseException_keys[k], "FacetInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetInUseException
-- &lt;p&gt;Occurs when deleting a facet that contains an attribute that is a target to an attribute reference in a different facet.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Occurs when deleting a facet that contains an attribute that is a target to an attribute reference in a different facet.&lt;/p&gt;
function M.FacetInUseException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetInUseException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertFacetInUseException(t)
	return t
end

local PathToObjectIdentifiers_keys = { "Path" = true, "ObjectIdentifiers" = true, nil }

function M.AssertPathToObjectIdentifiers(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PathToObjectIdentifiers to be of type 'table'")
	if struct["Path"] then M.AssertPathString(struct["Path"]) end
	if struct["ObjectIdentifiers"] then M.AssertObjectIdentifierList(struct["ObjectIdentifiers"]) end
	for k,_ in pairs(struct) do
		assert(PathToObjectIdentifiers_keys[k], "PathToObjectIdentifiers contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PathToObjectIdentifiers
-- &lt;p&gt;Returns the path to the &lt;code&gt;ObjectIdentifiers&lt;/code&gt; that is associated with the directory.&lt;/p&gt;
-- @param Path [PathString] &lt;p&gt;The path that is used to identify the object starting from directory root.&lt;/p&gt;
-- @param ObjectIdentifiers [ObjectIdentifierList] &lt;p&gt;Lists &lt;code&gt;ObjectIdentifiers&lt;/code&gt; starting from directory root to the object in the request.&lt;/p&gt;
function M.PathToObjectIdentifiers(Path, ObjectIdentifiers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PathToObjectIdentifiers")
	local t = { 
		["Path"] = Path,
		["ObjectIdentifiers"] = ObjectIdentifiers,
	}
	M.AssertPathToObjectIdentifiers(t)
	return t
end

local BatchReadRequest_keys = { "Operations" = true, "ConsistencyLevel" = true, "DirectoryArn" = true, nil }

function M.AssertBatchReadRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["Operations"], "Expected key Operations to exist in table")
	if struct["Operations"] then M.AssertBatchReadOperationList(struct["Operations"]) end
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(BatchReadRequest_keys[k], "BatchReadRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadRequest
--  
-- @param Operations [BatchReadOperationList] &lt;p&gt;A list of operations that are part of the batch.&lt;/p&gt;
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt;. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: Operations
function M.BatchReadRequest(Operations, ConsistencyLevel, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadRequest")
	local t = { 
		["Operations"] = Operations,
		["ConsistencyLevel"] = ConsistencyLevel,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertBatchReadRequest(t)
	return t
end

local FacetValidationException_keys = { "Message" = true, nil }

function M.AssertFacetValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetValidationException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FacetValidationException_keys[k], "FacetValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetValidationException
-- &lt;p&gt;The &lt;a&gt;Facet&lt;/a&gt; that you provided was not well formed or could not be validated with the schema.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;The &lt;a&gt;Facet&lt;/a&gt; that you provided was not well formed or could not be validated with the schema.&lt;/p&gt;
function M.FacetValidationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetValidationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertFacetValidationException(t)
	return t
end

local ListObjectChildrenRequest_keys = { "ConsistencyLevel" = true, "ObjectReference" = true, "NextToken" = true, "MaxResults" = true, "DirectoryArn" = true, nil }

function M.AssertListObjectChildrenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectChildrenRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectChildrenRequest_keys[k], "ListObjectChildrenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectChildrenRequest
--  
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;The reference that identifies the object for which child objects are being listed.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of items to be retrieved in a single call. This is an approximate number.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where the object resides. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListObjectChildrenRequest(ConsistencyLevel, ObjectReference, NextToken, MaxResults, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectChildrenRequest")
	local t = { 
		["ConsistencyLevel"] = ConsistencyLevel,
		["ObjectReference"] = ObjectReference,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertListObjectChildrenRequest(t)
	return t
end

local BatchWriteOperationResponse_keys = { "DetachObject" = true, "AttachObject" = true, "AddFacetToObject" = true, "RemoveFacetFromObject" = true, "CreateObject" = true, "DeleteObject" = true, "UpdateObjectAttributes" = true, nil }

function M.AssertBatchWriteOperationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteOperationResponse to be of type 'table'")
	if struct["DetachObject"] then M.AssertBatchDetachObjectResponse(struct["DetachObject"]) end
	if struct["AttachObject"] then M.AssertBatchAttachObjectResponse(struct["AttachObject"]) end
	if struct["AddFacetToObject"] then M.AssertBatchAddFacetToObjectResponse(struct["AddFacetToObject"]) end
	if struct["RemoveFacetFromObject"] then M.AssertBatchRemoveFacetFromObjectResponse(struct["RemoveFacetFromObject"]) end
	if struct["CreateObject"] then M.AssertBatchCreateObjectResponse(struct["CreateObject"]) end
	if struct["DeleteObject"] then M.AssertBatchDeleteObjectResponse(struct["DeleteObject"]) end
	if struct["UpdateObjectAttributes"] then M.AssertBatchUpdateObjectAttributesResponse(struct["UpdateObjectAttributes"]) end
	for k,_ in pairs(struct) do
		assert(BatchWriteOperationResponse_keys[k], "BatchWriteOperationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteOperationResponse
-- &lt;p&gt;Represents the output of a &lt;code&gt;BatchWrite&lt;/code&gt; response operation.&lt;/p&gt;
-- @param DetachObject [BatchDetachObjectResponse] &lt;p&gt;Detaches an object from a &lt;a&gt;Directory&lt;/a&gt;.&lt;/p&gt;
-- @param AttachObject [BatchAttachObjectResponse] &lt;p&gt;Attaches an object to a &lt;a&gt;Directory&lt;/a&gt;.&lt;/p&gt;
-- @param AddFacetToObject [BatchAddFacetToObjectResponse] &lt;p&gt;The result of an add facet to object batch operation.&lt;/p&gt;
-- @param RemoveFacetFromObject [BatchRemoveFacetFromObjectResponse] &lt;p&gt;The result of a batch remove facet from object operation.&lt;/p&gt;
-- @param CreateObject [BatchCreateObjectResponse] &lt;p&gt;Creates an object in a &lt;a&gt;Directory&lt;/a&gt;.&lt;/p&gt;
-- @param DeleteObject [BatchDeleteObjectResponse] &lt;p&gt;Deletes an object in a &lt;a&gt;Directory&lt;/a&gt;.&lt;/p&gt;
-- @param UpdateObjectAttributes [BatchUpdateObjectAttributesResponse] &lt;p&gt;Updates a given object’s attributes.&lt;/p&gt;
function M.BatchWriteOperationResponse(DetachObject, AttachObject, AddFacetToObject, RemoveFacetFromObject, CreateObject, DeleteObject, UpdateObjectAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteOperationResponse")
	local t = { 
		["DetachObject"] = DetachObject,
		["AttachObject"] = AttachObject,
		["AddFacetToObject"] = AddFacetToObject,
		["RemoveFacetFromObject"] = RemoveFacetFromObject,
		["CreateObject"] = CreateObject,
		["DeleteObject"] = DeleteObject,
		["UpdateObjectAttributes"] = UpdateObjectAttributes,
	}
	M.AssertBatchWriteOperationResponse(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;The tag structure that contains a tag key and value.&lt;/p&gt;
-- @param Value [TagValue] &lt;p&gt;The value that is associated with the tag.&lt;/p&gt;
-- @param Key [TagKey] &lt;p&gt;The key that is associated with the tag.&lt;/p&gt;
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local ListFacetAttributesResponse_keys = { "Attributes" = true, "NextToken" = true, nil }

function M.AssertListFacetAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacetAttributesResponse to be of type 'table'")
	if struct["Attributes"] then M.AssertFacetAttributeList(struct["Attributes"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListFacetAttributesResponse_keys[k], "ListFacetAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacetAttributesResponse
--  
-- @param Attributes [FacetAttributeList] &lt;p&gt;The attributes attached to the facet.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
function M.ListFacetAttributesResponse(Attributes, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFacetAttributesResponse")
	local t = { 
		["Attributes"] = Attributes,
		["NextToken"] = NextToken,
	}
	M.AssertListFacetAttributesResponse(t)
	return t
end

local UpdateSchemaResponse_keys = { "SchemaArn" = true, nil }

function M.AssertUpdateSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSchemaResponse to be of type 'table'")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSchemaResponse_keys[k], "UpdateSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSchemaResponse
--  
-- @param SchemaArn [Arn] &lt;p&gt;The ARN that is associated with the updated schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
function M.UpdateSchemaResponse(SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSchemaResponse")
	local t = { 
		["SchemaArn"] = SchemaArn,
	}
	M.AssertUpdateSchemaResponse(t)
	return t
end

local DisableDirectoryRequest_keys = { "DirectoryArn" = true, nil }

function M.AssertDisableDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(DisableDirectoryRequest_keys[k], "DisableDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDirectoryRequest
--  
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory to disable.&lt;/p&gt;
-- Required parameter: DirectoryArn
function M.DisableDirectoryRequest(DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDirectoryRequest")
	local t = { 
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertDisableDirectoryRequest(t)
	return t
end

local LimitExceededException_keys = { "Message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- &lt;p&gt;Indicates that limits are exceeded. See &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/limits.html&quot;&gt;Limits&lt;/a&gt; for more information.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that limits are exceeded. See &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/limits.html&quot;&gt;Limits&lt;/a&gt; for more information.&lt;/p&gt;
function M.LimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local ListTypedLinkFacetNamesRequest_keys = { "SchemaArn" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListTypedLinkFacetNamesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTypedLinkFacetNamesRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListTypedLinkFacetNamesRequest_keys[k], "ListTypedLinkFacetNamesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTypedLinkFacetNamesRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
-- Required parameter: SchemaArn
function M.ListTypedLinkFacetNamesRequest(SchemaArn, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTypedLinkFacetNamesRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListTypedLinkFacetNamesRequest(t)
	return t
end

local ListObjectPoliciesRequest_keys = { "ConsistencyLevel" = true, "ObjectReference" = true, "NextToken" = true, "MaxResults" = true, "DirectoryArn" = true, nil }

function M.AssertListObjectPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectPoliciesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectPoliciesRequest_keys[k], "ListObjectPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectPoliciesRequest
--  
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;Reference that identifies the object for which policies will be listed.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of items to be retrieved in a single call. This is an approximate number.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where objects reside. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListObjectPoliciesRequest(ConsistencyLevel, ObjectReference, NextToken, MaxResults, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectPoliciesRequest")
	local t = { 
		["ConsistencyLevel"] = ConsistencyLevel,
		["ObjectReference"] = ObjectReference,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertListObjectPoliciesRequest(t)
	return t
end

local GetFacetResponse_keys = { "Facet" = true, nil }

function M.AssertGetFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFacetResponse to be of type 'table'")
	if struct["Facet"] then M.AssertFacet(struct["Facet"]) end
	for k,_ in pairs(struct) do
		assert(GetFacetResponse_keys[k], "GetFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFacetResponse
--  
-- @param Facet [Facet] &lt;p&gt;The &lt;a&gt;Facet&lt;/a&gt; structure that is associated with the facet.&lt;/p&gt;
function M.GetFacetResponse(Facet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFacetResponse")
	local t = { 
		["Facet"] = Facet,
	}
	M.AssertGetFacetResponse(t)
	return t
end

local ListDirectoriesRequest_keys = { "state" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListDirectoriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDirectoriesRequest to be of type 'table'")
	if struct["state"] then M.AssertDirectoryState(struct["state"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListDirectoriesRequest_keys[k], "ListDirectoriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDirectoriesRequest
--  
-- @param state [DirectoryState] &lt;p&gt;The state of the directories in the list. Can be either Enabled, Disabled, or Deleted.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
function M.ListDirectoriesRequest(state, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDirectoriesRequest")
	local t = { 
		["state"] = state,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListDirectoriesRequest(t)
	return t
end

local ValidationException_keys = { "Message" = true, nil }

function M.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ValidationException_keys[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- &lt;p&gt;Indicates that your request is malformed in some manner. See the exception message.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that your request is malformed in some manner. See the exception message.&lt;/p&gt;
function M.ValidationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertValidationException(t)
	return t
end

local DirectoryNotDisabledException_keys = { "Message" = true, nil }

function M.AssertDirectoryNotDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryNotDisabledException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryNotDisabledException_keys[k], "DirectoryNotDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryNotDisabledException
-- &lt;p&gt;An operation can only operate on a disabled directory.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;An operation can only operate on a disabled directory.&lt;/p&gt;
function M.DirectoryNotDisabledException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryNotDisabledException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDirectoryNotDisabledException(t)
	return t
end

local ObjectReference_keys = { "Selector" = true, nil }

function M.AssertObjectReference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectReference to be of type 'table'")
	if struct["Selector"] then M.AssertSelectorObjectReference(struct["Selector"]) end
	for k,_ in pairs(struct) do
		assert(ObjectReference_keys[k], "ObjectReference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectReference
-- &lt;p&gt;The reference that identifies an object.&lt;/p&gt;
-- @param Selector [SelectorObjectReference] &lt;p&gt;A path selector supports easy selection of an object by the parent/child links leading to it from the directory root. Use the link names from each parent/child link to construct the path. Path selectors start with a slash (/) and link names are separated by slashes. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#accessingobjects&quot;&gt;Accessing Objects&lt;/a&gt;. You can identify an object in one of the following ways:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;$ObjectIdentifier&lt;/i&gt; - An object identifier is an opaque string provided by Amazon Cloud Directory. When creating objects, the system will provide you with the identifier of the created object. An object’s identifier is immutable and no two objects will ever share the same object identifier&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;/some/path&lt;/i&gt; - Identifies the object based on path&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;#SomeBatchReference&lt;/i&gt; - Identifies the object in a batch call&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.ObjectReference(Selector, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectReference")
	local t = { 
		["Selector"] = Selector,
	}
	M.AssertObjectReference(t)
	return t
end

local ListObjectPoliciesResponse_keys = { "AttachedPolicyIds" = true, "NextToken" = true, nil }

function M.AssertListObjectPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectPoliciesResponse to be of type 'table'")
	if struct["AttachedPolicyIds"] then M.AssertObjectIdentifierList(struct["AttachedPolicyIds"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectPoliciesResponse_keys[k], "ListObjectPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectPoliciesResponse
--  
-- @param AttachedPolicyIds [ObjectIdentifierList] &lt;p&gt;A list of policy &lt;code&gt;ObjectIdentifiers&lt;/code&gt;, that are attached to the object.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
function M.ListObjectPoliciesResponse(AttachedPolicyIds, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectPoliciesResponse")
	local t = { 
		["AttachedPolicyIds"] = AttachedPolicyIds,
		["NextToken"] = NextToken,
	}
	M.AssertListObjectPoliciesResponse(t)
	return t
end

local InternalServiceException_keys = { "Message" = true, nil }

function M.AssertInternalServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServiceException_keys[k], "InternalServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceException
-- &lt;p&gt;Indicates a problem that must be resolved by Amazon Web Services. This might be a transient error in which case you can retry your request until it succeeds. Otherwise, go to the &lt;a href=&quot;http://status.aws.amazon.com/&quot;&gt;AWS Service Health Dashboard&lt;/a&gt; site to see if there are any operational issues with the service.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates a problem that must be resolved by Amazon Web Services. This might be a transient error in which case you can retry your request until it succeeds. Otherwise, go to the &lt;a href=&quot;http://status.aws.amazon.com/&quot;&gt;AWS Service Health Dashboard&lt;/a&gt; site to see if there are any operational issues with the service.&lt;/p&gt;
function M.InternalServiceException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInternalServiceException(t)
	return t
end

local ApplySchemaResponse_keys = { "AppliedSchemaArn" = true, "DirectoryArn" = true, nil }

function M.AssertApplySchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplySchemaResponse to be of type 'table'")
	if struct["AppliedSchemaArn"] then M.AssertArn(struct["AppliedSchemaArn"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(ApplySchemaResponse_keys[k], "ApplySchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplySchemaResponse
--  
-- @param AppliedSchemaArn [Arn] &lt;p&gt;The applied schema ARN that is associated with the copied schema in the &lt;a&gt;Directory&lt;/a&gt;. You can use this ARN to describe the schema information applied on this directory. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN that is associated with the &lt;a&gt;Directory&lt;/a&gt;. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
function M.ApplySchemaResponse(AppliedSchemaArn, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplySchemaResponse")
	local t = { 
		["AppliedSchemaArn"] = AppliedSchemaArn,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertApplySchemaResponse(t)
	return t
end

local FacetAttribute_keys = { "AttributeDefinition" = true, "RequiredBehavior" = true, "Name" = true, "AttributeReference" = true, nil }

function M.AssertFacetAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetAttribute to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["AttributeDefinition"] then M.AssertFacetAttributeDefinition(struct["AttributeDefinition"]) end
	if struct["RequiredBehavior"] then M.AssertRequiredAttributeBehavior(struct["RequiredBehavior"]) end
	if struct["Name"] then M.AssertAttributeName(struct["Name"]) end
	if struct["AttributeReference"] then M.AssertFacetAttributeReference(struct["AttributeReference"]) end
	for k,_ in pairs(struct) do
		assert(FacetAttribute_keys[k], "FacetAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetAttribute
-- &lt;p&gt;An attribute that is associated with the &lt;a&gt;Facet&lt;/a&gt;.&lt;/p&gt;
-- @param AttributeDefinition [FacetAttributeDefinition] &lt;p&gt;A facet attribute consists of either a definition or a reference. This structure contains the attribute definition. See &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences&quot;&gt;Attribute References&lt;/a&gt; for more information.&lt;/p&gt;
-- @param RequiredBehavior [RequiredAttributeBehavior] &lt;p&gt;The required behavior of the &lt;code&gt;FacetAttribute&lt;/code&gt;.&lt;/p&gt;
-- @param Name [AttributeName] &lt;p&gt;The name of the facet attribute.&lt;/p&gt;
-- @param AttributeReference [FacetAttributeReference] &lt;p&gt;An attribute reference that is associated with the attribute. See &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences&quot;&gt;Attribute References&lt;/a&gt; for more information.&lt;/p&gt;
-- Required parameter: Name
function M.FacetAttribute(AttributeDefinition, RequiredBehavior, Name, AttributeReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetAttribute")
	local t = { 
		["AttributeDefinition"] = AttributeDefinition,
		["RequiredBehavior"] = RequiredBehavior,
		["Name"] = Name,
		["AttributeReference"] = AttributeReference,
	}
	M.AssertFacetAttribute(t)
	return t
end

local BatchUpdateObjectAttributes_keys = { "AttributeUpdates" = true, "ObjectReference" = true, nil }

function M.AssertBatchUpdateObjectAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUpdateObjectAttributes to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	assert(struct["AttributeUpdates"], "Expected key AttributeUpdates to exist in table")
	if struct["AttributeUpdates"] then M.AssertObjectAttributeUpdateList(struct["AttributeUpdates"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	for k,_ in pairs(struct) do
		assert(BatchUpdateObjectAttributes_keys[k], "BatchUpdateObjectAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUpdateObjectAttributes
-- &lt;p&gt;Represents the output of a &lt;code&gt;BatchUpdate&lt;/code&gt; operation. &lt;/p&gt;
-- @param AttributeUpdates [ObjectAttributeUpdateList] &lt;p&gt;Attributes update structure.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;Reference that identifies the object.&lt;/p&gt;
-- Required parameter: ObjectReference
-- Required parameter: AttributeUpdates
function M.BatchUpdateObjectAttributes(AttributeUpdates, ObjectReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchUpdateObjectAttributes")
	local t = { 
		["AttributeUpdates"] = AttributeUpdates,
		["ObjectReference"] = ObjectReference,
	}
	M.AssertBatchUpdateObjectAttributes(t)
	return t
end

local UpdateFacetRequest_keys = { "AttributeUpdates" = true, "SchemaArn" = true, "Name" = true, "ObjectType" = true, nil }

function M.AssertUpdateFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["AttributeUpdates"] then M.AssertFacetAttributeUpdateList(struct["AttributeUpdates"]) end
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then M.AssertFacetName(struct["Name"]) end
	if struct["ObjectType"] then M.AssertObjectType(struct["ObjectType"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFacetRequest_keys[k], "UpdateFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFacetRequest
--  
-- @param AttributeUpdates [FacetAttributeUpdateList] &lt;p&gt;List of attributes that need to be updated in a given schema &lt;a&gt;Facet&lt;/a&gt;. Each attribute is followed by &lt;code&gt;AttributeAction&lt;/code&gt;, which specifies the type of update operation to perform. &lt;/p&gt;
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Facet&lt;/a&gt;. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param Name [FacetName] &lt;p&gt;The name of the facet.&lt;/p&gt;
-- @param ObjectType [ObjectType] &lt;p&gt;The object type that is associated with the facet. See &lt;a&gt;CreateFacetRequest$ObjectType&lt;/a&gt; for more details.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.UpdateFacetRequest(AttributeUpdates, SchemaArn, Name, ObjectType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFacetRequest")
	local t = { 
		["AttributeUpdates"] = AttributeUpdates,
		["SchemaArn"] = SchemaArn,
		["Name"] = Name,
		["ObjectType"] = ObjectType,
	}
	M.AssertUpdateFacetRequest(t)
	return t
end

local ListObjectParentPathsRequest_keys = { "ObjectReference" = true, "NextToken" = true, "MaxResults" = true, "DirectoryArn" = true, nil }

function M.AssertListObjectParentPathsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectParentPathsRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectParentPathsRequest_keys[k], "ListObjectParentPathsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectParentPathsRequest
--  
-- @param ObjectReference [ObjectReference] &lt;p&gt;The reference that identifies the object whose parent paths are listed.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of items to be retrieved in a single call. This is an approximate number.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory to which the parent path applies.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListObjectParentPathsRequest(ObjectReference, NextToken, MaxResults, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectParentPathsRequest")
	local t = { 
		["ObjectReference"] = ObjectReference,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertListObjectParentPathsRequest(t)
	return t
end

local RetryableConflictException_keys = { "Message" = true, nil }

function M.AssertRetryableConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetryableConflictException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(RetryableConflictException_keys[k], "RetryableConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetryableConflictException
-- &lt;p&gt;Occurs when a conflict with a previous successful write is detected. For example, if a write operation occurs on an object and then an attempt is made to read the object using “SERIALIZABLE” consistency, this exception may result. This generally occurs when the previous write did not have time to propagate to the host serving the current request. A retry (with appropriate backoff logic) is the recommended response to this exception.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Occurs when a conflict with a previous successful write is detected. For example, if a write operation occurs on an object and then an attempt is made to read the object using “SERIALIZABLE” consistency, this exception may result. This generally occurs when the previous write did not have time to propagate to the host serving the current request. A retry (with appropriate backoff logic) is the recommended response to this exception.&lt;/p&gt;
function M.RetryableConflictException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetryableConflictException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertRetryableConflictException(t)
	return t
end

local SchemaAlreadyExistsException_keys = { "Message" = true, nil }

function M.AssertSchemaAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaAlreadyExistsException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(SchemaAlreadyExistsException_keys[k], "SchemaAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaAlreadyExistsException
-- &lt;p&gt;Indicates that a schema could not be created due to a naming conflict. Please select a different name and then try again.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that a schema could not be created due to a naming conflict. Please select a different name and then try again.&lt;/p&gt;
function M.SchemaAlreadyExistsException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SchemaAlreadyExistsException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertSchemaAlreadyExistsException(t)
	return t
end

local NotIndexException_keys = { "Message" = true, nil }

function M.AssertNotIndexException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotIndexException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NotIndexException_keys[k], "NotIndexException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotIndexException
-- &lt;p&gt;Indicates that the requested operation can only operate on index objects.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that the requested operation can only operate on index objects.&lt;/p&gt;
function M.NotIndexException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotIndexException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNotIndexException(t)
	return t
end

local ListObjectParentsResponse_keys = { "NextToken" = true, "Parents" = true, nil }

function M.AssertListObjectParentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectParentsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Parents"] then M.AssertObjectIdentifierToLinkNameMap(struct["Parents"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectParentsResponse_keys[k], "ListObjectParentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectParentsResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param Parents [ObjectIdentifierToLinkNameMap] &lt;p&gt;The parent structure, which is a map with key as the &lt;code&gt;ObjectIdentifier&lt;/code&gt; and LinkName as the value.&lt;/p&gt;
function M.ListObjectParentsResponse(NextToken, Parents, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectParentsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Parents"] = Parents,
	}
	M.AssertListObjectParentsResponse(t)
	return t
end

local AttributeNameAndValue_keys = { "AttributeName" = true, "Value" = true, nil }

function M.AssertAttributeNameAndValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeNameAndValue to be of type 'table'")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["AttributeName"] then M.AssertAttributeName(struct["AttributeName"]) end
	if struct["Value"] then M.AssertTypedAttributeValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(AttributeNameAndValue_keys[k], "AttributeNameAndValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeNameAndValue
-- &lt;p&gt;Identifies the attribute name and value for a typed link.&lt;/p&gt;
-- @param AttributeName [AttributeName] &lt;p&gt;The attribute name of the typed link.&lt;/p&gt;
-- @param Value [TypedAttributeValue] &lt;p&gt;The value for the typed link.&lt;/p&gt;
-- Required parameter: AttributeName
-- Required parameter: Value
function M.AttributeNameAndValue(AttributeName, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeNameAndValue")
	local t = { 
		["AttributeName"] = AttributeName,
		["Value"] = Value,
	}
	M.AssertAttributeNameAndValue(t)
	return t
end

local RemoveFacetFromObjectRequest_keys = { "ObjectReference" = true, "SchemaFacet" = true, "DirectoryArn" = true, nil }

function M.AssertRemoveFacetFromObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveFacetFromObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["SchemaFacet"] then M.AssertSchemaFacet(struct["SchemaFacet"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(RemoveFacetFromObjectRequest_keys[k], "RemoveFacetFromObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveFacetFromObjectRequest
--  
-- @param ObjectReference [ObjectReference] &lt;p&gt;A reference to the object to remove the facet from.&lt;/p&gt;
-- @param SchemaFacet [SchemaFacet] &lt;p&gt;The facet to remove.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory in which the object resides.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: SchemaFacet
-- Required parameter: ObjectReference
function M.RemoveFacetFromObjectRequest(ObjectReference, SchemaFacet, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveFacetFromObjectRequest")
	local t = { 
		["ObjectReference"] = ObjectReference,
		["SchemaFacet"] = SchemaFacet,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertRemoveFacetFromObjectRequest(t)
	return t
end

local TypedLinkFacetAttributeUpdate_keys = { "Action" = true, "Attribute" = true, nil }

function M.AssertTypedLinkFacetAttributeUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkFacetAttributeUpdate to be of type 'table'")
	assert(struct["Attribute"], "Expected key Attribute to exist in table")
	assert(struct["Action"], "Expected key Action to exist in table")
	if struct["Action"] then M.AssertUpdateActionType(struct["Action"]) end
	if struct["Attribute"] then M.AssertTypedLinkAttributeDefinition(struct["Attribute"]) end
	for k,_ in pairs(struct) do
		assert(TypedLinkFacetAttributeUpdate_keys[k], "TypedLinkFacetAttributeUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkFacetAttributeUpdate
-- &lt;p&gt;A typed link facet attribute update.&lt;/p&gt;
-- @param Action [UpdateActionType] &lt;p&gt;The action to perform when updating the attribute.&lt;/p&gt;
-- @param Attribute [TypedLinkAttributeDefinition] &lt;p&gt;The attribute to update.&lt;/p&gt;
-- Required parameter: Attribute
-- Required parameter: Action
function M.TypedLinkFacetAttributeUpdate(Action, Attribute, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkFacetAttributeUpdate")
	local t = { 
		["Action"] = Action,
		["Attribute"] = Attribute,
	}
	M.AssertTypedLinkFacetAttributeUpdate(t)
	return t
end

local InvalidSchemaDocException_keys = { "Message" = true, nil }

function M.AssertInvalidSchemaDocException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSchemaDocException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSchemaDocException_keys[k], "InvalidSchemaDocException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSchemaDocException
-- &lt;p&gt;Indicates that the provided &lt;code&gt;SchemaDoc&lt;/code&gt; value is not valid.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that the provided &lt;code&gt;SchemaDoc&lt;/code&gt; value is not valid.&lt;/p&gt;
function M.InvalidSchemaDocException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSchemaDocException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidSchemaDocException(t)
	return t
end

local DeleteObjectResponse_keys = { nil }

function M.AssertDeleteObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteObjectResponse_keys[k], "DeleteObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectResponse
--  
function M.DeleteObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteObjectResponse")
	local t = { 
	}
	M.AssertDeleteObjectResponse(t)
	return t
end

local ListAttachedIndicesRequest_keys = { "MaxResults" = true, "ConsistencyLevel" = true, "NextToken" = true, "TargetReference" = true, "DirectoryArn" = true, nil }

function M.AssertListAttachedIndicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedIndicesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["TargetReference"], "Expected key TargetReference to exist in table")
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["TargetReference"] then M.AssertObjectReference(struct["TargetReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(ListAttachedIndicesRequest_keys[k], "ListAttachedIndicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedIndicesRequest
--  
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;The consistency level to use for this operation.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param TargetReference [ObjectReference] &lt;p&gt;A reference to the object to that has indices attached.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: TargetReference
function M.ListAttachedIndicesRequest(MaxResults, ConsistencyLevel, NextToken, TargetReference, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedIndicesRequest")
	local t = { 
		["MaxResults"] = MaxResults,
		["ConsistencyLevel"] = ConsistencyLevel,
		["NextToken"] = NextToken,
		["TargetReference"] = TargetReference,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertListAttachedIndicesRequest(t)
	return t
end

local AttachObjectResponse_keys = { "AttachedObjectIdentifier" = true, nil }

function M.AssertAttachObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachObjectResponse to be of type 'table'")
	if struct["AttachedObjectIdentifier"] then M.AssertObjectIdentifier(struct["AttachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(AttachObjectResponse_keys[k], "AttachObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachObjectResponse
--  
-- @param AttachedObjectIdentifier [ObjectIdentifier] &lt;p&gt;The attached &lt;code&gt;ObjectIdentifier&lt;/code&gt;, which is the child &lt;code&gt;ObjectIdentifier&lt;/code&gt;.&lt;/p&gt;
function M.AttachObjectResponse(AttachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachObjectResponse")
	local t = { 
		["AttachedObjectIdentifier"] = AttachedObjectIdentifier,
	}
	M.AssertAttachObjectResponse(t)
	return t
end

local TypedAttributeValue_keys = { "StringValue" = true, "BooleanValue" = true, "DatetimeValue" = true, "BinaryValue" = true, "NumberValue" = true, nil }

function M.AssertTypedAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedAttributeValue to be of type 'table'")
	if struct["StringValue"] then M.AssertStringAttributeValue(struct["StringValue"]) end
	if struct["BooleanValue"] then M.AssertBooleanAttributeValue(struct["BooleanValue"]) end
	if struct["DatetimeValue"] then M.AssertDatetimeAttributeValue(struct["DatetimeValue"]) end
	if struct["BinaryValue"] then M.AssertBinaryAttributeValue(struct["BinaryValue"]) end
	if struct["NumberValue"] then M.AssertNumberAttributeValue(struct["NumberValue"]) end
	for k,_ in pairs(struct) do
		assert(TypedAttributeValue_keys[k], "TypedAttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedAttributeValue
-- &lt;p&gt;Represents the data for a typed attribute. You can set one, and only one, of the elements. Each attribute in an item is a name-value pair. Attributes have a single value.&lt;/p&gt;
-- @param StringValue [StringAttributeValue] &lt;p&gt;A string data value.&lt;/p&gt;
-- @param BooleanValue [BooleanAttributeValue] &lt;p&gt;A Boolean data value.&lt;/p&gt;
-- @param DatetimeValue [DatetimeAttributeValue] &lt;p&gt;A date and time value.&lt;/p&gt;
-- @param BinaryValue [BinaryAttributeValue] &lt;p&gt;A binary data value.&lt;/p&gt;
-- @param NumberValue [NumberAttributeValue] &lt;p&gt;A number data value.&lt;/p&gt;
function M.TypedAttributeValue(StringValue, BooleanValue, DatetimeValue, BinaryValue, NumberValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedAttributeValue")
	local t = { 
		["StringValue"] = StringValue,
		["BooleanValue"] = BooleanValue,
		["DatetimeValue"] = DatetimeValue,
		["BinaryValue"] = BinaryValue,
		["NumberValue"] = NumberValue,
	}
	M.AssertTypedAttributeValue(t)
	return t
end

local UpdateSchemaRequest_keys = { "SchemaArn" = true, "Name" = true, nil }

function M.AssertUpdateSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSchemaRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then M.AssertSchemaName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSchemaRequest_keys[k], "UpdateSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSchemaRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the development schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param Name [SchemaName] &lt;p&gt;The name of the schema.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.UpdateSchemaRequest(SchemaArn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSchemaRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["Name"] = Name,
	}
	M.AssertUpdateSchemaRequest(t)
	return t
end

local FacetAttributeUpdate_keys = { "Action" = true, "Attribute" = true, nil }

function M.AssertFacetAttributeUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetAttributeUpdate to be of type 'table'")
	if struct["Action"] then M.AssertUpdateActionType(struct["Action"]) end
	if struct["Attribute"] then M.AssertFacetAttribute(struct["Attribute"]) end
	for k,_ in pairs(struct) do
		assert(FacetAttributeUpdate_keys[k], "FacetAttributeUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetAttributeUpdate
-- &lt;p&gt;A structure that contains information used to update an attribute.&lt;/p&gt;
-- @param Action [UpdateActionType] &lt;p&gt;The action to perform when updating the attribute.&lt;/p&gt;
-- @param Attribute [FacetAttribute] &lt;p&gt;The attribute to update.&lt;/p&gt;
function M.FacetAttributeUpdate(Action, Attribute, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetAttributeUpdate")
	local t = { 
		["Action"] = Action,
		["Attribute"] = Attribute,
	}
	M.AssertFacetAttributeUpdate(t)
	return t
end

local CreateIndexRequest_keys = { "ParentReference" = true, "OrderedIndexedAttributeList" = true, "IsUnique" = true, "DirectoryArn" = true, "LinkName" = true, nil }

function M.AssertCreateIndexRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIndexRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["OrderedIndexedAttributeList"], "Expected key OrderedIndexedAttributeList to exist in table")
	assert(struct["IsUnique"], "Expected key IsUnique to exist in table")
	if struct["ParentReference"] then M.AssertObjectReference(struct["ParentReference"]) end
	if struct["OrderedIndexedAttributeList"] then M.AssertAttributeKeyList(struct["OrderedIndexedAttributeList"]) end
	if struct["IsUnique"] then M.AssertBool(struct["IsUnique"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["LinkName"] then M.AssertLinkName(struct["LinkName"]) end
	for k,_ in pairs(struct) do
		assert(CreateIndexRequest_keys[k], "CreateIndexRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIndexRequest
--  
-- @param ParentReference [ObjectReference] &lt;p&gt;A reference to the parent object that contains the index object.&lt;/p&gt;
-- @param OrderedIndexedAttributeList [AttributeKeyList] &lt;p&gt;Specifies the attributes that should be indexed on. Currently only a single attribute is supported.&lt;/p&gt;
-- @param IsUnique [Bool] &lt;p&gt;Indicates whether the attribute that is being indexed has unique values or not.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory where the index should be created.&lt;/p&gt;
-- @param LinkName [LinkName] &lt;p&gt;The name of the link between the parent object and the index object.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: OrderedIndexedAttributeList
-- Required parameter: IsUnique
function M.CreateIndexRequest(ParentReference, OrderedIndexedAttributeList, IsUnique, DirectoryArn, LinkName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIndexRequest")
	local t = { 
		["ParentReference"] = ParentReference,
		["OrderedIndexedAttributeList"] = OrderedIndexedAttributeList,
		["IsUnique"] = IsUnique,
		["DirectoryArn"] = DirectoryArn,
		["LinkName"] = LinkName,
	}
	M.AssertCreateIndexRequest(t)
	return t
end

local DeleteSchemaResponse_keys = { "SchemaArn" = true, nil }

function M.AssertDeleteSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSchemaResponse to be of type 'table'")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSchemaResponse_keys[k], "DeleteSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSchemaResponse
--  
-- @param SchemaArn [Arn] &lt;p&gt;The input ARN that is returned as part of the response. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
function M.DeleteSchemaResponse(SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSchemaResponse")
	local t = { 
		["SchemaArn"] = SchemaArn,
	}
	M.AssertDeleteSchemaResponse(t)
	return t
end

local Facet_keys = { "Name" = true, "ObjectType" = true, nil }

function M.AssertFacet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Facet to be of type 'table'")
	if struct["Name"] then M.AssertFacetName(struct["Name"]) end
	if struct["ObjectType"] then M.AssertObjectType(struct["ObjectType"]) end
	for k,_ in pairs(struct) do
		assert(Facet_keys[k], "Facet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Facet
-- &lt;p&gt;A structure that contains &lt;code&gt;Name&lt;/code&gt;, &lt;code&gt;ARN&lt;/code&gt;, &lt;code&gt;Attributes&lt;/code&gt;, &lt;a&gt;Rule&lt;/a&gt;s, and &lt;code&gt;ObjectTypes&lt;/code&gt;.&lt;/p&gt;
-- @param Name [FacetName] &lt;p&gt;The name of the &lt;a&gt;Facet&lt;/a&gt;.&lt;/p&gt;
-- @param ObjectType [ObjectType] &lt;p&gt;The object type that is associated with the facet. See &lt;a&gt;CreateFacetRequest$ObjectType&lt;/a&gt; for more details.&lt;/p&gt;
function M.Facet(Name, ObjectType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Facet")
	local t = { 
		["Name"] = Name,
		["ObjectType"] = ObjectType,
	}
	M.AssertFacet(t)
	return t
end

local CreateTypedLinkFacetRequest_keys = { "Facet" = true, "SchemaArn" = true, nil }

function M.AssertCreateTypedLinkFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTypedLinkFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Facet"], "Expected key Facet to exist in table")
	if struct["Facet"] then M.AssertTypedLinkFacet(struct["Facet"]) end
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateTypedLinkFacetRequest_keys[k], "CreateTypedLinkFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTypedLinkFacetRequest
--  
-- @param Facet [TypedLinkFacet] &lt;p&gt; &lt;a&gt;Facet&lt;/a&gt; structure that is associated with the typed link facet.&lt;/p&gt;
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Facet
function M.CreateTypedLinkFacetRequest(Facet, SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTypedLinkFacetRequest")
	local t = { 
		["Facet"] = Facet,
		["SchemaArn"] = SchemaArn,
	}
	M.AssertCreateTypedLinkFacetRequest(t)
	return t
end

local DirectoryDeletedException_keys = { "Message" = true, nil }

function M.AssertDirectoryDeletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryDeletedException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryDeletedException_keys[k], "DirectoryDeletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryDeletedException
-- &lt;p&gt;A directory that has been deleted and to which access has been attempted. Note: The requested resource will eventually cease to exist.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;A directory that has been deleted and to which access has been attempted. Note: The requested resource will eventually cease to exist.&lt;/p&gt;
function M.DirectoryDeletedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryDeletedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDirectoryDeletedException(t)
	return t
end

local ListObjectParentsRequest_keys = { "ConsistencyLevel" = true, "ObjectReference" = true, "NextToken" = true, "MaxResults" = true, "DirectoryArn" = true, nil }

function M.AssertListObjectParentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectParentsRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectParentsRequest_keys[k], "ListObjectParentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectParentsRequest
--  
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;The reference that identifies the object for which parent objects are being listed.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of items to be retrieved in a single call. This is an approximate number.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where the object resides. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListObjectParentsRequest(ConsistencyLevel, ObjectReference, NextToken, MaxResults, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectParentsRequest")
	local t = { 
		["ConsistencyLevel"] = ConsistencyLevel,
		["ObjectReference"] = ObjectReference,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertListObjectParentsRequest(t)
	return t
end

local Directory_keys = { "State" = true, "CreationDateTime" = true, "Name" = true, "DirectoryArn" = true, nil }

function M.AssertDirectory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Directory to be of type 'table'")
	if struct["State"] then M.AssertDirectoryState(struct["State"]) end
	if struct["CreationDateTime"] then M.AssertDate(struct["CreationDateTime"]) end
	if struct["Name"] then M.AssertDirectoryName(struct["Name"]) end
	if struct["DirectoryArn"] then M.AssertDirectoryArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(Directory_keys[k], "Directory contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Directory
-- &lt;p&gt;Directory structure that includes the directory name and directory ARN.&lt;/p&gt;
-- @param State [DirectoryState] &lt;p&gt;The state of the directory. Can be either &lt;code&gt;Enabled&lt;/code&gt;, &lt;code&gt;Disabled&lt;/code&gt;, or &lt;code&gt;Deleted&lt;/code&gt;.&lt;/p&gt;
-- @param CreationDateTime [Date] &lt;p&gt;The date and time when the directory was created.&lt;/p&gt;
-- @param Name [DirectoryName] &lt;p&gt;The name of the directory.&lt;/p&gt;
-- @param DirectoryArn [DirectoryArn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the directory. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
function M.Directory(State, CreationDateTime, Name, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Directory")
	local t = { 
		["State"] = State,
		["CreationDateTime"] = CreationDateTime,
		["Name"] = Name,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertDirectory(t)
	return t
end

local SchemaFacet_keys = { "SchemaArn" = true, "FacetName" = true, nil }

function M.AssertSchemaFacet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaFacet to be of type 'table'")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["FacetName"] then M.AssertFacetName(struct["FacetName"]) end
	for k,_ in pairs(struct) do
		assert(SchemaFacet_keys[k], "SchemaFacet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaFacet
-- &lt;p&gt;A facet.&lt;/p&gt;
-- @param SchemaArn [Arn] &lt;p&gt;The ARN of the schema that contains the facet.&lt;/p&gt;
-- @param FacetName [FacetName] &lt;p&gt;The name of the facet.&lt;/p&gt;
function M.SchemaFacet(SchemaArn, FacetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SchemaFacet")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["FacetName"] = FacetName,
	}
	M.AssertSchemaFacet(t)
	return t
end

local ListObjectAttributesRequest_keys = { "FacetFilter" = true, "MaxResults" = true, "ObjectReference" = true, "DirectoryArn" = true, "NextToken" = true, "ConsistencyLevel" = true, nil }

function M.AssertListObjectAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectAttributesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["FacetFilter"] then M.AssertSchemaFacet(struct["FacetFilter"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectAttributesRequest_keys[k], "ListObjectAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectAttributesRequest
--  
-- @param FacetFilter [SchemaFacet] &lt;p&gt;Used to filter the list of object attributes that are associated with a certain facet.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of items to be retrieved in a single call. This is an approximate number.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;The reference that identifies the object whose attributes will be listed.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where the object resides. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListObjectAttributesRequest(FacetFilter, MaxResults, ObjectReference, DirectoryArn, NextToken, ConsistencyLevel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectAttributesRequest")
	local t = { 
		["FacetFilter"] = FacetFilter,
		["MaxResults"] = MaxResults,
		["ObjectReference"] = ObjectReference,
		["DirectoryArn"] = DirectoryArn,
		["NextToken"] = NextToken,
		["ConsistencyLevel"] = ConsistencyLevel,
	}
	M.AssertListObjectAttributesRequest(t)
	return t
end

local BatchDetachObjectResponse_keys = { "detachedObjectIdentifier" = true, nil }

function M.AssertBatchDetachObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachObjectResponse to be of type 'table'")
	if struct["detachedObjectIdentifier"] then M.AssertObjectIdentifier(struct["detachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(BatchDetachObjectResponse_keys[k], "BatchDetachObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachObjectResponse
-- &lt;p&gt;Represents the output of a &lt;code&gt;DetachObject&lt;/code&gt; response operation.&lt;/p&gt;
-- @param detachedObjectIdentifier [ObjectIdentifier] &lt;p&gt;The &lt;code&gt;ObjectIdentifier&lt;/code&gt; of the detached object.&lt;/p&gt;
function M.BatchDetachObjectResponse(detachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDetachObjectResponse")
	local t = { 
		["detachedObjectIdentifier"] = detachedObjectIdentifier,
	}
	M.AssertBatchDetachObjectResponse(t)
	return t
end

local ListIndexResponse_keys = { "IndexAttachments" = true, "NextToken" = true, nil }

function M.AssertListIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIndexResponse to be of type 'table'")
	if struct["IndexAttachments"] then M.AssertIndexAttachmentList(struct["IndexAttachments"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListIndexResponse_keys[k], "ListIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIndexResponse
--  
-- @param IndexAttachments [IndexAttachmentList] &lt;p&gt;The objects and indexed values attached to the index.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
function M.ListIndexResponse(IndexAttachments, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIndexResponse")
	local t = { 
		["IndexAttachments"] = IndexAttachments,
		["NextToken"] = NextToken,
	}
	M.AssertListIndexResponse(t)
	return t
end

local DetachPolicyResponse_keys = { nil }

function M.AssertDetachPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DetachPolicyResponse_keys[k], "DetachPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachPolicyResponse
--  
function M.DetachPolicyResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachPolicyResponse")
	local t = { 
	}
	M.AssertDetachPolicyResponse(t)
	return t
end

local PublishSchemaRequest_keys = { "DevelopmentSchemaArn" = true, "Version" = true, "Name" = true, nil }

function M.AssertPublishSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishSchemaRequest to be of type 'table'")
	assert(struct["DevelopmentSchemaArn"], "Expected key DevelopmentSchemaArn to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	if struct["DevelopmentSchemaArn"] then M.AssertArn(struct["DevelopmentSchemaArn"]) end
	if struct["Version"] then M.AssertVersion(struct["Version"]) end
	if struct["Name"] then M.AssertSchemaName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(PublishSchemaRequest_keys[k], "PublishSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishSchemaRequest
--  
-- @param DevelopmentSchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the development schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param Version [Version] &lt;p&gt;The version under which the schema will be published.&lt;/p&gt;
-- @param Name [SchemaName] &lt;p&gt;The new name under which the schema will be published. If this is not provided, the development schema is considered.&lt;/p&gt;
-- Required parameter: DevelopmentSchemaArn
-- Required parameter: Version
function M.PublishSchemaRequest(DevelopmentSchemaArn, Version, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishSchemaRequest")
	local t = { 
		["DevelopmentSchemaArn"] = DevelopmentSchemaArn,
		["Version"] = Version,
		["Name"] = Name,
	}
	M.AssertPublishSchemaRequest(t)
	return t
end

local CreateObjectResponse_keys = { "ObjectIdentifier" = true, nil }

function M.AssertCreateObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateObjectResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then M.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(CreateObjectResponse_keys[k], "CreateObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateObjectResponse
--  
-- @param ObjectIdentifier [ObjectIdentifier] &lt;p&gt;The identifier that is associated with the object.&lt;/p&gt;
function M.CreateObjectResponse(ObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateObjectResponse")
	local t = { 
		["ObjectIdentifier"] = ObjectIdentifier,
	}
	M.AssertCreateObjectResponse(t)
	return t
end

local ListFacetAttributesRequest_keys = { "SchemaArn" = true, "NextToken" = true, "Name" = true, "MaxResults" = true, nil }

function M.AssertListFacetAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacetAttributesRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Name"] then M.AssertFacetName(struct["Name"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListFacetAttributesRequest_keys[k], "ListFacetAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacetAttributesRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The ARN of the schema where the facet resides.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param Name [FacetName] &lt;p&gt;The name of the facet whose attributes will be retrieved.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.ListFacetAttributesRequest(SchemaArn, NextToken, Name, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFacetAttributesRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["NextToken"] = NextToken,
		["Name"] = Name,
		["MaxResults"] = MaxResults,
	}
	M.AssertListFacetAttributesRequest(t)
	return t
end

local DeleteObjectRequest_keys = { "ObjectReference" = true, "DirectoryArn" = true, nil }

function M.AssertDeleteObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteObjectRequest_keys[k], "DeleteObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectRequest
--  
-- @param ObjectReference [ObjectReference] &lt;p&gt;A reference that identifies the object.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where the object resides. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.DeleteObjectRequest(ObjectReference, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteObjectRequest")
	local t = { 
		["ObjectReference"] = ObjectReference,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertDeleteObjectRequest(t)
	return t
end

local DetachObjectRequest_keys = { "ParentReference" = true, "LinkName" = true, "DirectoryArn" = true, nil }

function M.AssertDetachObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	if struct["ParentReference"] then M.AssertObjectReference(struct["ParentReference"]) end
	if struct["LinkName"] then M.AssertLinkName(struct["LinkName"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(DetachObjectRequest_keys[k], "DetachObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachObjectRequest
--  
-- @param ParentReference [ObjectReference] &lt;p&gt;The parent reference from which the object with the specified link name is detached.&lt;/p&gt;
-- @param LinkName [LinkName] &lt;p&gt;The link name associated with the object that needs to be detached.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where objects reside. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ParentReference
-- Required parameter: LinkName
function M.DetachObjectRequest(ParentReference, LinkName, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachObjectRequest")
	local t = { 
		["ParentReference"] = ParentReference,
		["LinkName"] = LinkName,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertDetachObjectRequest(t)
	return t
end

local GetFacetRequest_keys = { "SchemaArn" = true, "Name" = true, nil }

function M.AssertGetFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then M.AssertFacetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(GetFacetRequest_keys[k], "GetFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFacetRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Facet&lt;/a&gt;. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param Name [FacetName] &lt;p&gt;The name of the facet to retrieve.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.GetFacetRequest(SchemaArn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFacetRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["Name"] = Name,
	}
	M.AssertGetFacetRequest(t)
	return t
end

local ListDirectoriesResponse_keys = { "Directories" = true, "NextToken" = true, nil }

function M.AssertListDirectoriesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDirectoriesResponse to be of type 'table'")
	assert(struct["Directories"], "Expected key Directories to exist in table")
	if struct["Directories"] then M.AssertDirectoryList(struct["Directories"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDirectoriesResponse_keys[k], "ListDirectoriesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDirectoriesResponse
--  
-- @param Directories [DirectoryList] &lt;p&gt;Lists all directories that are associated with your account in pagination fashion.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- Required parameter: Directories
function M.ListDirectoriesResponse(Directories, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDirectoriesResponse")
	local t = { 
		["Directories"] = Directories,
		["NextToken"] = NextToken,
	}
	M.AssertListDirectoriesResponse(t)
	return t
end

local InvalidTaggingRequestException_keys = { "Message" = true, nil }

function M.AssertInvalidTaggingRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTaggingRequestException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidTaggingRequestException_keys[k], "InvalidTaggingRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTaggingRequestException
-- &lt;p&gt;Can occur for multiple reasons such as when you tag a resource that doesn’t exist or if you specify a higher number of tags for a resource than the allowed limit. Allowed limit is 50 tags per resource.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Can occur for multiple reasons such as when you tag a resource that doesn’t exist or if you specify a higher number of tags for a resource than the allowed limit. Allowed limit is 50 tags per resource.&lt;/p&gt;
function M.InvalidTaggingRequestException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTaggingRequestException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidTaggingRequestException(t)
	return t
end

local CreateDirectoryResponse_keys = { "AppliedSchemaArn" = true, "ObjectIdentifier" = true, "Name" = true, "DirectoryArn" = true, nil }

function M.AssertCreateDirectoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectoryResponse to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ObjectIdentifier"], "Expected key ObjectIdentifier to exist in table")
	assert(struct["AppliedSchemaArn"], "Expected key AppliedSchemaArn to exist in table")
	if struct["AppliedSchemaArn"] then M.AssertArn(struct["AppliedSchemaArn"]) end
	if struct["ObjectIdentifier"] then M.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	if struct["Name"] then M.AssertDirectoryName(struct["Name"]) end
	if struct["DirectoryArn"] then M.AssertDirectoryArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateDirectoryResponse_keys[k], "CreateDirectoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectoryResponse
--  
-- @param AppliedSchemaArn [Arn] &lt;p&gt;The ARN of the published schema in the &lt;a&gt;Directory&lt;/a&gt;. Once a published schema is copied into the directory, it has its own ARN, which is referred to applied schema ARN. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param ObjectIdentifier [ObjectIdentifier] &lt;p&gt;The root object node of the created directory.&lt;/p&gt;
-- @param Name [DirectoryName] &lt;p&gt;The name of the &lt;a&gt;Directory&lt;/a&gt;.&lt;/p&gt;
-- @param DirectoryArn [DirectoryArn] &lt;p&gt;The ARN that is associated with the &lt;a&gt;Directory&lt;/a&gt;. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: Name
-- Required parameter: ObjectIdentifier
-- Required parameter: AppliedSchemaArn
function M.CreateDirectoryResponse(AppliedSchemaArn, ObjectIdentifier, Name, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDirectoryResponse")
	local t = { 
		["AppliedSchemaArn"] = AppliedSchemaArn,
		["ObjectIdentifier"] = ObjectIdentifier,
		["Name"] = Name,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertCreateDirectoryResponse(t)
	return t
end

local ListAttachedIndicesResponse_keys = { "IndexAttachments" = true, "NextToken" = true, nil }

function M.AssertListAttachedIndicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedIndicesResponse to be of type 'table'")
	if struct["IndexAttachments"] then M.AssertIndexAttachmentList(struct["IndexAttachments"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListAttachedIndicesResponse_keys[k], "ListAttachedIndicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedIndicesResponse
--  
-- @param IndexAttachments [IndexAttachmentList] &lt;p&gt;The indices attached to the specified object.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
function M.ListAttachedIndicesResponse(IndexAttachments, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedIndicesResponse")
	local t = { 
		["IndexAttachments"] = IndexAttachments,
		["NextToken"] = NextToken,
	}
	M.AssertListAttachedIndicesResponse(t)
	return t
end

local UntagResourceRequest_keys = { "ResourceArn" = true, "TagKeys" = true, nil }

function M.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceArn"] then M.AssertArn(struct["ResourceArn"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourceRequest_keys[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param ResourceArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;Keys of the tag that need to be removed from the resource.&lt;/p&gt;
-- Required parameter: ResourceArn
-- Required parameter: TagKeys
function M.UntagResourceRequest(ResourceArn, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["TagKeys"] = TagKeys,
	}
	M.AssertUntagResourceRequest(t)
	return t
end

local DirectoryAlreadyExistsException_keys = { "Message" = true, nil }

function M.AssertDirectoryAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryAlreadyExistsException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryAlreadyExistsException_keys[k], "DirectoryAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryAlreadyExistsException
-- &lt;p&gt;Indicates that a &lt;a&gt;Directory&lt;/a&gt; could not be created due to a naming conflict. Choose a different name and try again.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that a &lt;a&gt;Directory&lt;/a&gt; could not be created due to a naming conflict. Choose a different name and try again.&lt;/p&gt;
function M.DirectoryAlreadyExistsException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryAlreadyExistsException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDirectoryAlreadyExistsException(t)
	return t
end

local BatchListObjectChildrenResponse_keys = { "NextToken" = true, "Children" = true, nil }

function M.AssertBatchListObjectChildrenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectChildrenResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Children"] then M.AssertLinkNameToObjectIdentifierMap(struct["Children"]) end
	for k,_ in pairs(struct) do
		assert(BatchListObjectChildrenResponse_keys[k], "BatchListObjectChildrenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectChildrenResponse
-- &lt;p&gt;Represents the output of a &lt;code&gt;ListObjectChildren&lt;/code&gt; response operation.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param Children [LinkNameToObjectIdentifierMap] &lt;p&gt;The children structure, which is a map with the key as the &lt;code&gt;LinkName&lt;/code&gt; and &lt;code&gt;ObjectIdentifier&lt;/code&gt; as the value.&lt;/p&gt;
function M.BatchListObjectChildrenResponse(NextToken, Children, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchListObjectChildrenResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Children"] = Children,
	}
	M.AssertBatchListObjectChildrenResponse(t)
	return t
end

local GetObjectInformationRequest_keys = { "ObjectReference" = true, "ConsistencyLevel" = true, "DirectoryArn" = true, nil }

function M.AssertGetObjectInformationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectInformationRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(GetObjectInformationRequest_keys[k], "GetObjectInformationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectInformationRequest
--  
-- @param ObjectReference [ObjectReference] &lt;p&gt;A reference to the object.&lt;/p&gt;
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;The consistency level at which to retrieve the object information.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory being retrieved.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.GetObjectInformationRequest(ObjectReference, ConsistencyLevel, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectInformationRequest")
	local t = { 
		["ObjectReference"] = ObjectReference,
		["ConsistencyLevel"] = ConsistencyLevel,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertGetObjectInformationRequest(t)
	return t
end

local PublishSchemaResponse_keys = { "PublishedSchemaArn" = true, nil }

function M.AssertPublishSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishSchemaResponse to be of type 'table'")
	if struct["PublishedSchemaArn"] then M.AssertArn(struct["PublishedSchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(PublishSchemaResponse_keys[k], "PublishSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishSchemaResponse
--  
-- @param PublishedSchemaArn [Arn] &lt;p&gt;The ARN that is associated with the published schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
function M.PublishSchemaResponse(PublishedSchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishSchemaResponse")
	local t = { 
		["PublishedSchemaArn"] = PublishedSchemaArn,
	}
	M.AssertPublishSchemaResponse(t)
	return t
end

local InvalidAttachmentException_keys = { "Message" = true, nil }

function M.AssertInvalidAttachmentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAttachmentException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidAttachmentException_keys[k], "InvalidAttachmentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAttachmentException
-- &lt;p&gt;Indicates that an attempt to attach an object with the same link name or to apply a schema with the same name has occurred. Rename the link or the schema and then try again.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that an attempt to attach an object with the same link name or to apply a schema with the same name has occurred. Rename the link or the schema and then try again.&lt;/p&gt;
function M.InvalidAttachmentException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAttachmentException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidAttachmentException(t)
	return t
end

local UpdateObjectAttributesRequest_keys = { "AttributeUpdates" = true, "ObjectReference" = true, "DirectoryArn" = true, nil }

function M.AssertUpdateObjectAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateObjectAttributesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	assert(struct["AttributeUpdates"], "Expected key AttributeUpdates to exist in table")
	if struct["AttributeUpdates"] then M.AssertObjectAttributeUpdateList(struct["AttributeUpdates"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateObjectAttributesRequest_keys[k], "UpdateObjectAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateObjectAttributesRequest
--  
-- @param AttributeUpdates [ObjectAttributeUpdateList] &lt;p&gt;The attributes update structure.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;The reference that identifies the object.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where the object resides. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
-- Required parameter: AttributeUpdates
function M.UpdateObjectAttributesRequest(AttributeUpdates, ObjectReference, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateObjectAttributesRequest")
	local t = { 
		["AttributeUpdates"] = AttributeUpdates,
		["ObjectReference"] = ObjectReference,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertUpdateObjectAttributesRequest(t)
	return t
end

local DetachFromIndexRequest_keys = { "IndexReference" = true, "DirectoryArn" = true, "TargetReference" = true, nil }

function M.AssertDetachFromIndexRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachFromIndexRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["IndexReference"], "Expected key IndexReference to exist in table")
	assert(struct["TargetReference"], "Expected key TargetReference to exist in table")
	if struct["IndexReference"] then M.AssertObjectReference(struct["IndexReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["TargetReference"] then M.AssertObjectReference(struct["TargetReference"]) end
	for k,_ in pairs(struct) do
		assert(DetachFromIndexRequest_keys[k], "DetachFromIndexRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachFromIndexRequest
--  
-- @param IndexReference [ObjectReference] &lt;p&gt;A reference to the index object.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the directory the index and object exist in.&lt;/p&gt;
-- @param TargetReference [ObjectReference] &lt;p&gt;A reference to the object being detached from the index.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: IndexReference
-- Required parameter: TargetReference
function M.DetachFromIndexRequest(IndexReference, DirectoryArn, TargetReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachFromIndexRequest")
	local t = { 
		["IndexReference"] = IndexReference,
		["DirectoryArn"] = DirectoryArn,
		["TargetReference"] = TargetReference,
	}
	M.AssertDetachFromIndexRequest(t)
	return t
end

local ListAppliedSchemaArnsResponse_keys = { "NextToken" = true, "SchemaArns" = true, nil }

function M.AssertListAppliedSchemaArnsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAppliedSchemaArnsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["SchemaArns"] then M.AssertArns(struct["SchemaArns"]) end
	for k,_ in pairs(struct) do
		assert(ListAppliedSchemaArnsResponse_keys[k], "ListAppliedSchemaArnsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAppliedSchemaArnsResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param SchemaArns [Arns] &lt;p&gt;The ARNs of schemas that are applied to the directory.&lt;/p&gt;
function M.ListAppliedSchemaArnsResponse(NextToken, SchemaArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAppliedSchemaArnsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["SchemaArns"] = SchemaArns,
	}
	M.AssertListAppliedSchemaArnsResponse(t)
	return t
end

local ListIncomingTypedLinksRequest_keys = { "FilterAttributeRanges" = true, "MaxResults" = true, "FilterTypedLink" = true, "ObjectReference" = true, "DirectoryArn" = true, "NextToken" = true, "ConsistencyLevel" = true, nil }

function M.AssertListIncomingTypedLinksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIncomingTypedLinksRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["FilterAttributeRanges"] then M.AssertTypedLinkAttributeRangeList(struct["FilterAttributeRanges"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["FilterTypedLink"] then M.AssertTypedLinkSchemaAndFacetName(struct["FilterTypedLink"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	for k,_ in pairs(struct) do
		assert(ListIncomingTypedLinksRequest_keys[k], "ListIncomingTypedLinksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIncomingTypedLinksRequest
--  
-- @param FilterAttributeRanges [TypedLinkAttributeRangeList] &lt;p&gt;Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
-- @param FilterTypedLink [TypedLinkSchemaAndFacetName] &lt;p&gt;Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;Reference that identifies the object whose attributes will be listed.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the directory where you want to list the typed links.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;The consistency level to execute the request at.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListIncomingTypedLinksRequest(FilterAttributeRanges, MaxResults, FilterTypedLink, ObjectReference, DirectoryArn, NextToken, ConsistencyLevel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIncomingTypedLinksRequest")
	local t = { 
		["FilterAttributeRanges"] = FilterAttributeRanges,
		["MaxResults"] = MaxResults,
		["FilterTypedLink"] = FilterTypedLink,
		["ObjectReference"] = ObjectReference,
		["DirectoryArn"] = DirectoryArn,
		["NextToken"] = NextToken,
		["ConsistencyLevel"] = ConsistencyLevel,
	}
	M.AssertListIncomingTypedLinksRequest(t)
	return t
end

local DetachPolicyRequest_keys = { "PolicyReference" = true, "ObjectReference" = true, "DirectoryArn" = true, nil }

function M.AssertDetachPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachPolicyRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["PolicyReference"], "Expected key PolicyReference to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["PolicyReference"] then M.AssertObjectReference(struct["PolicyReference"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(DetachPolicyRequest_keys[k], "DetachPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachPolicyRequest
--  
-- @param PolicyReference [ObjectReference] &lt;p&gt;Reference that identifies the policy object.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;Reference that identifies the object whose policy object will be detached.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where both objects reside. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: PolicyReference
-- Required parameter: ObjectReference
function M.DetachPolicyRequest(PolicyReference, ObjectReference, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachPolicyRequest")
	local t = { 
		["PolicyReference"] = PolicyReference,
		["ObjectReference"] = ObjectReference,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertDetachPolicyRequest(t)
	return t
end

local PutSchemaFromJsonResponse_keys = { "Arn" = true, nil }

function M.AssertPutSchemaFromJsonResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSchemaFromJsonResponse to be of type 'table'")
	if struct["Arn"] then M.AssertArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(PutSchemaFromJsonResponse_keys[k], "PutSchemaFromJsonResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSchemaFromJsonResponse
--  
-- @param Arn [Arn] &lt;p&gt;The ARN of the schema to update.&lt;/p&gt;
function M.PutSchemaFromJsonResponse(Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutSchemaFromJsonResponse")
	local t = { 
		["Arn"] = Arn,
	}
	M.AssertPutSchemaFromJsonResponse(t)
	return t
end

local TypedLinkSpecifier_keys = { "SourceObjectReference" = true, "IdentityAttributeValues" = true, "TargetObjectReference" = true, "TypedLinkFacet" = true, nil }

function M.AssertTypedLinkSpecifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkSpecifier to be of type 'table'")
	assert(struct["TypedLinkFacet"], "Expected key TypedLinkFacet to exist in table")
	assert(struct["SourceObjectReference"], "Expected key SourceObjectReference to exist in table")
	assert(struct["TargetObjectReference"], "Expected key TargetObjectReference to exist in table")
	assert(struct["IdentityAttributeValues"], "Expected key IdentityAttributeValues to exist in table")
	if struct["SourceObjectReference"] then M.AssertObjectReference(struct["SourceObjectReference"]) end
	if struct["IdentityAttributeValues"] then M.AssertAttributeNameAndValueList(struct["IdentityAttributeValues"]) end
	if struct["TargetObjectReference"] then M.AssertObjectReference(struct["TargetObjectReference"]) end
	if struct["TypedLinkFacet"] then M.AssertTypedLinkSchemaAndFacetName(struct["TypedLinkFacet"]) end
	for k,_ in pairs(struct) do
		assert(TypedLinkSpecifier_keys[k], "TypedLinkSpecifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkSpecifier
-- &lt;p&gt;Contains all the information that is used to uniquely identify a typed link. The parameters discussed in this topic are used to uniquely specify the typed link being operated on. The &lt;a&gt;AttachTypedLink&lt;/a&gt; API returns a typed link specifier while the &lt;a&gt;DetachTypedLink&lt;/a&gt; API accepts one as input. Similarly, the &lt;a&gt;ListIncomingTypedLinks&lt;/a&gt; and &lt;a&gt;ListOutgoingTypedLinks&lt;/a&gt; API operations provide typed link specifiers as output. You can also construct a typed link specifier from scratch.&lt;/p&gt;
-- @param SourceObjectReference [ObjectReference] &lt;p&gt;Identifies the source object that the typed link will attach to.&lt;/p&gt;
-- @param IdentityAttributeValues [AttributeNameAndValueList] &lt;p&gt;Identifies the attribute value to update.&lt;/p&gt;
-- @param TargetObjectReference [ObjectReference] &lt;p&gt;Identifies the target object that the typed link will attach to.&lt;/p&gt;
-- @param TypedLinkFacet [TypedLinkSchemaAndFacetName] &lt;p&gt;Identifies the typed link facet that is associated with the typed link.&lt;/p&gt;
-- Required parameter: TypedLinkFacet
-- Required parameter: SourceObjectReference
-- Required parameter: TargetObjectReference
-- Required parameter: IdentityAttributeValues
function M.TypedLinkSpecifier(SourceObjectReference, IdentityAttributeValues, TargetObjectReference, TypedLinkFacet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkSpecifier")
	local t = { 
		["SourceObjectReference"] = SourceObjectReference,
		["IdentityAttributeValues"] = IdentityAttributeValues,
		["TargetObjectReference"] = TargetObjectReference,
		["TypedLinkFacet"] = TypedLinkFacet,
	}
	M.AssertTypedLinkSpecifier(t)
	return t
end

local ObjectAlreadyDetachedException_keys = { "Message" = true, nil }

function M.AssertObjectAlreadyDetachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectAlreadyDetachedException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ObjectAlreadyDetachedException_keys[k], "ObjectAlreadyDetachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectAlreadyDetachedException
-- &lt;p&gt;Indicates that the object is not attached to the index.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that the object is not attached to the index.&lt;/p&gt;
function M.ObjectAlreadyDetachedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectAlreadyDetachedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertObjectAlreadyDetachedException(t)
	return t
end

local ListIndexRequest_keys = { "MaxResults" = true, "RangesOnIndexedValues" = true, "IndexReference" = true, "DirectoryArn" = true, "NextToken" = true, "ConsistencyLevel" = true, nil }

function M.AssertListIndexRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIndexRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["IndexReference"], "Expected key IndexReference to exist in table")
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["RangesOnIndexedValues"] then M.AssertObjectAttributeRangeList(struct["RangesOnIndexedValues"]) end
	if struct["IndexReference"] then M.AssertObjectReference(struct["IndexReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	for k,_ in pairs(struct) do
		assert(ListIndexRequest_keys[k], "ListIndexRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIndexRequest
--  
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve from the index.&lt;/p&gt;
-- @param RangesOnIndexedValues [ObjectAttributeRangeList] &lt;p&gt;Specifies the ranges of indexed values that you want to query.&lt;/p&gt;
-- @param IndexReference [ObjectReference] &lt;p&gt;The reference to the index to list.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory that the index exists in.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;The consistency level to execute the request at.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: IndexReference
function M.ListIndexRequest(MaxResults, RangesOnIndexedValues, IndexReference, DirectoryArn, NextToken, ConsistencyLevel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIndexRequest")
	local t = { 
		["MaxResults"] = MaxResults,
		["RangesOnIndexedValues"] = RangesOnIndexedValues,
		["IndexReference"] = IndexReference,
		["DirectoryArn"] = DirectoryArn,
		["NextToken"] = NextToken,
		["ConsistencyLevel"] = ConsistencyLevel,
	}
	M.AssertListIndexRequest(t)
	return t
end

local CreateTypedLinkFacetResponse_keys = { nil }

function M.AssertCreateTypedLinkFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTypedLinkFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateTypedLinkFacetResponse_keys[k], "CreateTypedLinkFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTypedLinkFacetResponse
--  
function M.CreateTypedLinkFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTypedLinkFacetResponse")
	local t = { 
	}
	M.AssertCreateTypedLinkFacetResponse(t)
	return t
end

local ListPublishedSchemaArnsResponse_keys = { "NextToken" = true, "SchemaArns" = true, nil }

function M.AssertListPublishedSchemaArnsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublishedSchemaArnsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["SchemaArns"] then M.AssertArns(struct["SchemaArns"]) end
	for k,_ in pairs(struct) do
		assert(ListPublishedSchemaArnsResponse_keys[k], "ListPublishedSchemaArnsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublishedSchemaArnsResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param SchemaArns [Arns] &lt;p&gt;The ARNs of published schemas.&lt;/p&gt;
function M.ListPublishedSchemaArnsResponse(NextToken, SchemaArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPublishedSchemaArnsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["SchemaArns"] = SchemaArns,
	}
	M.AssertListPublishedSchemaArnsResponse(t)
	return t
end

local CreateIndexResponse_keys = { "ObjectIdentifier" = true, nil }

function M.AssertCreateIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIndexResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then M.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(CreateIndexResponse_keys[k], "CreateIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIndexResponse
--  
-- @param ObjectIdentifier [ObjectIdentifier] &lt;p&gt;The &lt;code&gt;ObjectIdentifier&lt;/code&gt; of the index created by this operation.&lt;/p&gt;
function M.CreateIndexResponse(ObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIndexResponse")
	local t = { 
		["ObjectIdentifier"] = ObjectIdentifier,
	}
	M.AssertCreateIndexResponse(t)
	return t
end

local BatchAttachObject_keys = { "ParentReference" = true, "LinkName" = true, "ChildReference" = true, nil }

function M.AssertBatchAttachObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAttachObject to be of type 'table'")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["ChildReference"], "Expected key ChildReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	if struct["ParentReference"] then M.AssertObjectReference(struct["ParentReference"]) end
	if struct["LinkName"] then M.AssertLinkName(struct["LinkName"]) end
	if struct["ChildReference"] then M.AssertObjectReference(struct["ChildReference"]) end
	for k,_ in pairs(struct) do
		assert(BatchAttachObject_keys[k], "BatchAttachObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAttachObject
-- &lt;p&gt;Represents the output of an &lt;code&gt;AttachObject&lt;/code&gt; operation.&lt;/p&gt;
-- @param ParentReference [ObjectReference] &lt;p&gt;The parent object reference.&lt;/p&gt;
-- @param LinkName [LinkName] &lt;p&gt;The name of the link.&lt;/p&gt;
-- @param ChildReference [ObjectReference] &lt;p&gt;The child object reference that is to be attached to the object.&lt;/p&gt;
-- Required parameter: ParentReference
-- Required parameter: ChildReference
-- Required parameter: LinkName
function M.BatchAttachObject(ParentReference, LinkName, ChildReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchAttachObject")
	local t = { 
		["ParentReference"] = ParentReference,
		["LinkName"] = LinkName,
		["ChildReference"] = ChildReference,
	}
	M.AssertBatchAttachObject(t)
	return t
end

local FacetAttributeDefinition_keys = { "Rules" = true, "DefaultValue" = true, "Type" = true, "IsImmutable" = true, nil }

function M.AssertFacetAttributeDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetAttributeDefinition to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Rules"] then M.AssertRuleMap(struct["Rules"]) end
	if struct["DefaultValue"] then M.AssertTypedAttributeValue(struct["DefaultValue"]) end
	if struct["Type"] then M.AssertFacetAttributeType(struct["Type"]) end
	if struct["IsImmutable"] then M.AssertBool(struct["IsImmutable"]) end
	for k,_ in pairs(struct) do
		assert(FacetAttributeDefinition_keys[k], "FacetAttributeDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetAttributeDefinition
-- &lt;p&gt;A facet attribute definition. See &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences&quot;&gt;Attribute References&lt;/a&gt; for more information.&lt;/p&gt;
-- @param Rules [RuleMap] &lt;p&gt;Validation rules attached to the attribute definition.&lt;/p&gt;
-- @param DefaultValue [TypedAttributeValue] &lt;p&gt;The default value of the attribute (if configured).&lt;/p&gt;
-- @param Type [FacetAttributeType] &lt;p&gt;The type of the attribute.&lt;/p&gt;
-- @param IsImmutable [Bool] &lt;p&gt;Whether the attribute is mutable or not.&lt;/p&gt;
-- Required parameter: Type
function M.FacetAttributeDefinition(Rules, DefaultValue, Type, IsImmutable, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetAttributeDefinition")
	local t = { 
		["Rules"] = Rules,
		["DefaultValue"] = DefaultValue,
		["Type"] = Type,
		["IsImmutable"] = IsImmutable,
	}
	M.AssertFacetAttributeDefinition(t)
	return t
end

local ListTagsForResourceRequest_keys = { "ResourceArn" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then M.AssertArn(struct["ResourceArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertTagsNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceRequest_keys[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param ResourceArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token. This is for future use. Currently pagination is not supported for tagging.&lt;/p&gt;
-- @param MaxResults [TagsNumberResults] &lt;p&gt;The &lt;code&gt;MaxResults&lt;/code&gt; parameter sets the maximum number of results returned in a single page. This is for future use and is not supported currently.&lt;/p&gt;
-- Required parameter: ResourceArn
function M.ListTagsForResourceRequest(ResourceArn, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListTagsForResourceRequest(t)
	return t
end

local BatchAddFacetToObjectResponse_keys = { nil }

function M.AssertBatchAddFacetToObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAddFacetToObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BatchAddFacetToObjectResponse_keys[k], "BatchAddFacetToObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAddFacetToObjectResponse
-- &lt;p&gt;The result of a batch add facet to object operation.&lt;/p&gt;
function M.BatchAddFacetToObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchAddFacetToObjectResponse")
	local t = { 
	}
	M.AssertBatchAddFacetToObjectResponse(t)
	return t
end

local BatchRemoveFacetFromObjectResponse_keys = { nil }

function M.AssertBatchRemoveFacetFromObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchRemoveFacetFromObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BatchRemoveFacetFromObjectResponse_keys[k], "BatchRemoveFacetFromObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchRemoveFacetFromObjectResponse
-- &lt;p&gt;An empty result that represents success.&lt;/p&gt;
function M.BatchRemoveFacetFromObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchRemoveFacetFromObjectResponse")
	local t = { 
	}
	M.AssertBatchRemoveFacetFromObjectResponse(t)
	return t
end

local AttachPolicyResponse_keys = { nil }

function M.AssertAttachPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AttachPolicyResponse_keys[k], "AttachPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachPolicyResponse
--  
function M.AttachPolicyResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachPolicyResponse")
	local t = { 
	}
	M.AssertAttachPolicyResponse(t)
	return t
end

local PolicyToPath_keys = { "Path" = true, "Policies" = true, nil }

function M.AssertPolicyToPath(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyToPath to be of type 'table'")
	if struct["Path"] then M.AssertPathString(struct["Path"]) end
	if struct["Policies"] then M.AssertPolicyAttachmentList(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(PolicyToPath_keys[k], "PolicyToPath contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyToPath
-- &lt;p&gt;Used when a regular object exists in a &lt;a&gt;Directory&lt;/a&gt; and you want to find all of the policies that are associated with that object and the parent to that object.&lt;/p&gt;
-- @param Path [PathString] &lt;p&gt;The path that is referenced from the root.&lt;/p&gt;
-- @param Policies [PolicyAttachmentList] &lt;p&gt;List of policy objects.&lt;/p&gt;
function M.PolicyToPath(Path, Policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyToPath")
	local t = { 
		["Path"] = Path,
		["Policies"] = Policies,
	}
	M.AssertPolicyToPath(t)
	return t
end

local BatchListObjectChildren_keys = { "ObjectReference" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertBatchListObjectChildren(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectChildren to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(BatchListObjectChildren_keys[k], "BatchListObjectChildren contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectChildren
-- &lt;p&gt;Represents the output of a &lt;code&gt;ListObjectChildren&lt;/code&gt; operation.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;Reference of the object for which child objects are being listed.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;Maximum number of items to be retrieved in a single call. This is an approximate number.&lt;/p&gt;
-- Required parameter: ObjectReference
function M.BatchListObjectChildren(ObjectReference, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchListObjectChildren")
	local t = { 
		["ObjectReference"] = ObjectReference,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertBatchListObjectChildren(t)
	return t
end

local ListPublishedSchemaArnsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListPublishedSchemaArnsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublishedSchemaArnsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListPublishedSchemaArnsRequest_keys[k], "ListPublishedSchemaArnsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublishedSchemaArnsRequest
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
function M.ListPublishedSchemaArnsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPublishedSchemaArnsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListPublishedSchemaArnsRequest(t)
	return t
end

local UpdateTypedLinkFacetResponse_keys = { nil }

function M.AssertUpdateTypedLinkFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTypedLinkFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateTypedLinkFacetResponse_keys[k], "UpdateTypedLinkFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTypedLinkFacetResponse
--  
function M.UpdateTypedLinkFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTypedLinkFacetResponse")
	local t = { 
	}
	M.AssertUpdateTypedLinkFacetResponse(t)
	return t
end

local FacetAlreadyExistsException_keys = { "Message" = true, nil }

function M.AssertFacetAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetAlreadyExistsException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(FacetAlreadyExistsException_keys[k], "FacetAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetAlreadyExistsException
-- &lt;p&gt;A facet with the same name already exists.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;A facet with the same name already exists.&lt;/p&gt;
function M.FacetAlreadyExistsException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetAlreadyExistsException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertFacetAlreadyExistsException(t)
	return t
end

local TagResourceRequest_keys = { "ResourceArn" = true, "Tags" = true, nil }

function M.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceArn"] then M.AssertArn(struct["ResourceArn"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagResourceRequest_keys[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param ResourceArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag key-value pairs.&lt;/p&gt;
-- Required parameter: ResourceArn
-- Required parameter: Tags
function M.TagResourceRequest(ResourceArn, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["ResourceArn"] = ResourceArn,
		["Tags"] = Tags,
	}
	M.AssertTagResourceRequest(t)
	return t
end

local AttachTypedLinkResponse_keys = { "TypedLinkSpecifier" = true, nil }

function M.AssertAttachTypedLinkResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachTypedLinkResponse to be of type 'table'")
	if struct["TypedLinkSpecifier"] then M.AssertTypedLinkSpecifier(struct["TypedLinkSpecifier"]) end
	for k,_ in pairs(struct) do
		assert(AttachTypedLinkResponse_keys[k], "AttachTypedLinkResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachTypedLinkResponse
--  
-- @param TypedLinkSpecifier [TypedLinkSpecifier] &lt;p&gt;Returns a typed link specifier as output.&lt;/p&gt;
function M.AttachTypedLinkResponse(TypedLinkSpecifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachTypedLinkResponse")
	local t = { 
		["TypedLinkSpecifier"] = TypedLinkSpecifier,
	}
	M.AssertAttachTypedLinkResponse(t)
	return t
end

local DisableDirectoryResponse_keys = { "DirectoryArn" = true, nil }

function M.AssertDisableDirectoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableDirectoryResponse to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(DisableDirectoryResponse_keys[k], "DisableDirectoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableDirectoryResponse
--  
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory that has been disabled.&lt;/p&gt;
-- Required parameter: DirectoryArn
function M.DisableDirectoryResponse(DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableDirectoryResponse")
	local t = { 
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertDisableDirectoryResponse(t)
	return t
end

local DetachObjectResponse_keys = { "DetachedObjectIdentifier" = true, nil }

function M.AssertDetachObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachObjectResponse to be of type 'table'")
	if struct["DetachedObjectIdentifier"] then M.AssertObjectIdentifier(struct["DetachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DetachObjectResponse_keys[k], "DetachObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachObjectResponse
--  
-- @param DetachedObjectIdentifier [ObjectIdentifier] &lt;p&gt;The &lt;code&gt;ObjectIdentifier&lt;/code&gt; that was detached from the object.&lt;/p&gt;
function M.DetachObjectResponse(DetachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachObjectResponse")
	local t = { 
		["DetachedObjectIdentifier"] = DetachedObjectIdentifier,
	}
	M.AssertDetachObjectResponse(t)
	return t
end

local BatchListObjectAttributes_keys = { "FacetFilter" = true, "ObjectReference" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertBatchListObjectAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectAttributes to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["FacetFilter"] then M.AssertSchemaFacet(struct["FacetFilter"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(BatchListObjectAttributes_keys[k], "BatchListObjectAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectAttributes
-- &lt;p&gt;Represents the output of a &lt;code&gt;ListObjectAttributes&lt;/code&gt; operation.&lt;/p&gt;
-- @param FacetFilter [SchemaFacet] &lt;p&gt;Used to filter the list of object attributes that are associated with a certain facet.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;Reference of the object whose attributes need to be listed.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of items to be retrieved in a single call. This is an approximate number.&lt;/p&gt;
-- Required parameter: ObjectReference
function M.BatchListObjectAttributes(FacetFilter, ObjectReference, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchListObjectAttributes")
	local t = { 
		["FacetFilter"] = FacetFilter,
		["ObjectReference"] = ObjectReference,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertBatchListObjectAttributes(t)
	return t
end

local GetTypedLinkFacetInformationResponse_keys = { "IdentityAttributeOrder" = true, nil }

function M.AssertGetTypedLinkFacetInformationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTypedLinkFacetInformationResponse to be of type 'table'")
	if struct["IdentityAttributeOrder"] then M.AssertAttributeNameList(struct["IdentityAttributeOrder"]) end
	for k,_ in pairs(struct) do
		assert(GetTypedLinkFacetInformationResponse_keys[k], "GetTypedLinkFacetInformationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTypedLinkFacetInformationResponse
--  
-- @param IdentityAttributeOrder [AttributeNameList] &lt;p&gt;The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed links considers the order that the attributes are defined on the typed link facet. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range. Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls. For more information about identity attributes, see &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink&quot;&gt;Typed link&lt;/a&gt;.&lt;/p&gt;
function M.GetTypedLinkFacetInformationResponse(IdentityAttributeOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTypedLinkFacetInformationResponse")
	local t = { 
		["IdentityAttributeOrder"] = IdentityAttributeOrder,
	}
	M.AssertGetTypedLinkFacetInformationResponse(t)
	return t
end

local UntagResourceResponse_keys = { nil }

function M.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UntagResourceResponse_keys[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
--  
function M.UntagResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceResponse")
	local t = { 
	}
	M.AssertUntagResourceResponse(t)
	return t
end

local GetObjectInformationResponse_keys = { "ObjectIdentifier" = true, "SchemaFacets" = true, nil }

function M.AssertGetObjectInformationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectInformationResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then M.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	if struct["SchemaFacets"] then M.AssertSchemaFacetList(struct["SchemaFacets"]) end
	for k,_ in pairs(struct) do
		assert(GetObjectInformationResponse_keys[k], "GetObjectInformationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectInformationResponse
--  
-- @param ObjectIdentifier [ObjectIdentifier] &lt;p&gt;The &lt;code&gt;ObjectIdentifier&lt;/code&gt; of the specified object.&lt;/p&gt;
-- @param SchemaFacets [SchemaFacetList] &lt;p&gt;The facets attached to the specified object.&lt;/p&gt;
function M.GetObjectInformationResponse(ObjectIdentifier, SchemaFacets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetObjectInformationResponse")
	local t = { 
		["ObjectIdentifier"] = ObjectIdentifier,
		["SchemaFacets"] = SchemaFacets,
	}
	M.AssertGetObjectInformationResponse(t)
	return t
end

local DirectoryNotEnabledException_keys = { "Message" = true, nil }

function M.AssertDirectoryNotEnabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryNotEnabledException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DirectoryNotEnabledException_keys[k], "DirectoryNotEnabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryNotEnabledException
-- &lt;p&gt;An operation can only operate on a directory that is not enabled.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;An operation can only operate on a directory that is not enabled.&lt;/p&gt;
function M.DirectoryNotEnabledException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectoryNotEnabledException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDirectoryNotEnabledException(t)
	return t
end

local CreateSchemaResponse_keys = { "SchemaArn" = true, nil }

function M.AssertCreateSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSchemaResponse to be of type 'table'")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateSchemaResponse_keys[k], "CreateSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSchemaResponse
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
function M.CreateSchemaResponse(SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSchemaResponse")
	local t = { 
		["SchemaArn"] = SchemaArn,
	}
	M.AssertCreateSchemaResponse(t)
	return t
end

local CreateFacetResponse_keys = { nil }

function M.AssertCreateFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateFacetResponse_keys[k], "CreateFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFacetResponse
--  
function M.CreateFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFacetResponse")
	local t = { 
	}
	M.AssertCreateFacetResponse(t)
	return t
end

local GetSchemaAsJsonRequest_keys = { "SchemaArn" = true, nil }

function M.AssertGetSchemaAsJsonRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSchemaAsJsonRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(GetSchemaAsJsonRequest_keys[k], "GetSchemaAsJsonRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSchemaAsJsonRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The ARN of the schema to retrieve.&lt;/p&gt;
-- Required parameter: SchemaArn
function M.GetSchemaAsJsonRequest(SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSchemaAsJsonRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
	}
	M.AssertGetSchemaAsJsonRequest(t)
	return t
end

local DeleteTypedLinkFacetResponse_keys = { nil }

function M.AssertDeleteTypedLinkFacetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTypedLinkFacetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteTypedLinkFacetResponse_keys[k], "DeleteTypedLinkFacetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTypedLinkFacetResponse
--  
function M.DeleteTypedLinkFacetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTypedLinkFacetResponse")
	local t = { 
	}
	M.AssertDeleteTypedLinkFacetResponse(t)
	return t
end

local GetTypedLinkFacetInformationRequest_keys = { "SchemaArn" = true, "Name" = true, nil }

function M.AssertGetTypedLinkFacetInformationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTypedLinkFacetInformationRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then M.AssertTypedLinkName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(GetTypedLinkFacetInformationRequest_keys[k], "GetTypedLinkFacetInformationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTypedLinkFacetInformationRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param Name [TypedLinkName] &lt;p&gt;The unique name of the typed link facet.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.GetTypedLinkFacetInformationRequest(SchemaArn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTypedLinkFacetInformationRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["Name"] = Name,
	}
	M.AssertGetTypedLinkFacetInformationRequest(t)
	return t
end

local ListOutgoingTypedLinksResponse_keys = { "NextToken" = true, "TypedLinkSpecifiers" = true, nil }

function M.AssertListOutgoingTypedLinksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOutgoingTypedLinksResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["TypedLinkSpecifiers"] then M.AssertTypedLinkSpecifierList(struct["TypedLinkSpecifiers"]) end
	for k,_ in pairs(struct) do
		assert(ListOutgoingTypedLinksResponse_keys[k], "ListOutgoingTypedLinksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOutgoingTypedLinksResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param TypedLinkSpecifiers [TypedLinkSpecifierList] &lt;p&gt;Returns a typed link specifier as output.&lt;/p&gt;
function M.ListOutgoingTypedLinksResponse(NextToken, TypedLinkSpecifiers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOutgoingTypedLinksResponse")
	local t = { 
		["NextToken"] = NextToken,
		["TypedLinkSpecifiers"] = TypedLinkSpecifiers,
	}
	M.AssertListOutgoingTypedLinksResponse(t)
	return t
end

local PutSchemaFromJsonRequest_keys = { "Document" = true, "SchemaArn" = true, nil }

function M.AssertPutSchemaFromJsonRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSchemaFromJsonRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Document"], "Expected key Document to exist in table")
	if struct["Document"] then M.AssertSchemaJsonDocument(struct["Document"]) end
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(PutSchemaFromJsonRequest_keys[k], "PutSchemaFromJsonRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSchemaFromJsonRequest
--  
-- @param Document [SchemaJsonDocument] &lt;p&gt;The replacement JSON schema.&lt;/p&gt;
-- @param SchemaArn [Arn] &lt;p&gt;The ARN of the schema to update.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Document
function M.PutSchemaFromJsonRequest(Document, SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutSchemaFromJsonRequest")
	local t = { 
		["Document"] = Document,
		["SchemaArn"] = SchemaArn,
	}
	M.AssertPutSchemaFromJsonRequest(t)
	return t
end

local EnableDirectoryRequest_keys = { "DirectoryArn" = true, nil }

function M.AssertEnableDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(EnableDirectoryRequest_keys[k], "EnableDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableDirectoryRequest
--  
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory to enable.&lt;/p&gt;
-- Required parameter: DirectoryArn
function M.EnableDirectoryRequest(DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableDirectoryRequest")
	local t = { 
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertEnableDirectoryRequest(t)
	return t
end

local IndexedAttributeMissingException_keys = { "Message" = true, nil }

function M.AssertIndexedAttributeMissingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexedAttributeMissingException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(IndexedAttributeMissingException_keys[k], "IndexedAttributeMissingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexedAttributeMissingException
-- &lt;p&gt;An object has been attempted to be attached to an object that does not have the appropriate attribute value.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;An object has been attempted to be attached to an object that does not have the appropriate attribute value.&lt;/p&gt;
function M.IndexedAttributeMissingException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexedAttributeMissingException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertIndexedAttributeMissingException(t)
	return t
end

local ListObjectParentPathsResponse_keys = { "PathToObjectIdentifiersList" = true, "NextToken" = true, nil }

function M.AssertListObjectParentPathsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectParentPathsResponse to be of type 'table'")
	if struct["PathToObjectIdentifiersList"] then M.AssertPathToObjectIdentifiersList(struct["PathToObjectIdentifiersList"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectParentPathsResponse_keys[k], "ListObjectParentPathsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectParentPathsResponse
--  
-- @param PathToObjectIdentifiersList [PathToObjectIdentifiersList] &lt;p&gt;Returns the path to the &lt;code&gt;ObjectIdentifiers&lt;/code&gt; that are associated with the directory.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
function M.ListObjectParentPathsResponse(PathToObjectIdentifiersList, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectParentPathsResponse")
	local t = { 
		["PathToObjectIdentifiersList"] = PathToObjectIdentifiersList,
		["NextToken"] = NextToken,
	}
	M.AssertListObjectParentPathsResponse(t)
	return t
end

local UpdateTypedLinkFacetRequest_keys = { "AttributeUpdates" = true, "SchemaArn" = true, "IdentityAttributeOrder" = true, "Name" = true, nil }

function M.AssertUpdateTypedLinkFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTypedLinkFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["AttributeUpdates"], "Expected key AttributeUpdates to exist in table")
	assert(struct["IdentityAttributeOrder"], "Expected key IdentityAttributeOrder to exist in table")
	if struct["AttributeUpdates"] then M.AssertTypedLinkFacetAttributeUpdateList(struct["AttributeUpdates"]) end
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["IdentityAttributeOrder"] then M.AssertAttributeNameList(struct["IdentityAttributeOrder"]) end
	if struct["Name"] then M.AssertTypedLinkName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTypedLinkFacetRequest_keys[k], "UpdateTypedLinkFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTypedLinkFacetRequest
--  
-- @param AttributeUpdates [TypedLinkFacetAttributeUpdateList] &lt;p&gt;Attributes update structure.&lt;/p&gt;
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param IdentityAttributeOrder [AttributeNameList] &lt;p&gt;The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed links considers the order that the attributes are defined on the typed link facet. When providing ranges to a typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range. Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls. For more information about identity attributes, see &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink&quot;&gt;Typed link&lt;/a&gt;.&lt;/p&gt;
-- @param Name [TypedLinkName] &lt;p&gt;The unique name of the typed link facet.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Name
-- Required parameter: AttributeUpdates
-- Required parameter: IdentityAttributeOrder
function M.UpdateTypedLinkFacetRequest(AttributeUpdates, SchemaArn, IdentityAttributeOrder, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTypedLinkFacetRequest")
	local t = { 
		["AttributeUpdates"] = AttributeUpdates,
		["SchemaArn"] = SchemaArn,
		["IdentityAttributeOrder"] = IdentityAttributeOrder,
		["Name"] = Name,
	}
	M.AssertUpdateTypedLinkFacetRequest(t)
	return t
end

local ListFacetNamesResponse_keys = { "NextToken" = true, "FacetNames" = true, nil }

function M.AssertListFacetNamesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFacetNamesResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["FacetNames"] then M.AssertFacetNameList(struct["FacetNames"]) end
	for k,_ in pairs(struct) do
		assert(ListFacetNamesResponse_keys[k], "ListFacetNamesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFacetNamesResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param FacetNames [FacetNameList] &lt;p&gt;The names of facets that exist within the schema.&lt;/p&gt;
function M.ListFacetNamesResponse(NextToken, FacetNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFacetNamesResponse")
	local t = { 
		["NextToken"] = NextToken,
		["FacetNames"] = FacetNames,
	}
	M.AssertListFacetNamesResponse(t)
	return t
end

local ListTypedLinkFacetAttributesRequest_keys = { "SchemaArn" = true, "NextToken" = true, "Name" = true, "MaxResults" = true, nil }

function M.AssertListTypedLinkFacetAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTypedLinkFacetAttributesRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Name"] then M.AssertTypedLinkName(struct["Name"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListTypedLinkFacetAttributesRequest_keys[k], "ListTypedLinkFacetAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTypedLinkFacetAttributesRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param Name [TypedLinkName] &lt;p&gt;The unique name of the typed link facet.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.ListTypedLinkFacetAttributesRequest(SchemaArn, NextToken, Name, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTypedLinkFacetAttributesRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["NextToken"] = NextToken,
		["Name"] = Name,
		["MaxResults"] = MaxResults,
	}
	M.AssertListTypedLinkFacetAttributesRequest(t)
	return t
end

local TagResourceResponse_keys = { nil }

function M.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TagResourceResponse_keys[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
--  
function M.TagResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceResponse")
	local t = { 
	}
	M.AssertTagResourceResponse(t)
	return t
end

local TypedLinkAttributeDefinition_keys = { "RequiredBehavior" = true, "Name" = true, "IsImmutable" = true, "Rules" = true, "DefaultValue" = true, "Type" = true, nil }

function M.AssertTypedLinkAttributeDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkAttributeDefinition to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["RequiredBehavior"], "Expected key RequiredBehavior to exist in table")
	if struct["RequiredBehavior"] then M.AssertRequiredAttributeBehavior(struct["RequiredBehavior"]) end
	if struct["Name"] then M.AssertAttributeName(struct["Name"]) end
	if struct["IsImmutable"] then M.AssertBool(struct["IsImmutable"]) end
	if struct["Rules"] then M.AssertRuleMap(struct["Rules"]) end
	if struct["DefaultValue"] then M.AssertTypedAttributeValue(struct["DefaultValue"]) end
	if struct["Type"] then M.AssertFacetAttributeType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(TypedLinkAttributeDefinition_keys[k], "TypedLinkAttributeDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkAttributeDefinition
-- &lt;p&gt;A typed link attribute definition.&lt;/p&gt;
-- @param RequiredBehavior [RequiredAttributeBehavior] &lt;p&gt;The required behavior of the &lt;code&gt;TypedLinkAttributeDefinition&lt;/code&gt;.&lt;/p&gt;
-- @param Name [AttributeName] &lt;p&gt;The unique name of the typed link attribute.&lt;/p&gt;
-- @param IsImmutable [Bool] &lt;p&gt;Whether the attribute is mutable or not.&lt;/p&gt;
-- @param Rules [RuleMap] &lt;p&gt;Validation rules that are attached to the attribute definition.&lt;/p&gt;
-- @param DefaultValue [TypedAttributeValue] &lt;p&gt;The default value of the attribute (if configured).&lt;/p&gt;
-- @param Type [FacetAttributeType] &lt;p&gt;The type of the attribute.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: Type
-- Required parameter: RequiredBehavior
function M.TypedLinkAttributeDefinition(RequiredBehavior, Name, IsImmutable, Rules, DefaultValue, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkAttributeDefinition")
	local t = { 
		["RequiredBehavior"] = RequiredBehavior,
		["Name"] = Name,
		["IsImmutable"] = IsImmutable,
		["Rules"] = Rules,
		["DefaultValue"] = DefaultValue,
		["Type"] = Type,
	}
	M.AssertTypedLinkAttributeDefinition(t)
	return t
end

local ListOutgoingTypedLinksRequest_keys = { "FilterAttributeRanges" = true, "MaxResults" = true, "FilterTypedLink" = true, "ObjectReference" = true, "DirectoryArn" = true, "NextToken" = true, "ConsistencyLevel" = true, nil }

function M.AssertListOutgoingTypedLinksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOutgoingTypedLinksRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["FilterAttributeRanges"] then M.AssertTypedLinkAttributeRangeList(struct["FilterAttributeRanges"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["FilterTypedLink"] then M.AssertTypedLinkSchemaAndFacetName(struct["FilterTypedLink"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	for k,_ in pairs(struct) do
		assert(ListOutgoingTypedLinksRequest_keys[k], "ListOutgoingTypedLinksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOutgoingTypedLinksRequest
--  
-- @param FilterAttributeRanges [TypedLinkAttributeRangeList] &lt;p&gt;Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of results to retrieve.&lt;/p&gt;
-- @param FilterTypedLink [TypedLinkSchemaAndFacetName] &lt;p&gt;Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;A reference that identifies the object whose attributes will be listed.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the directory where you want to list the typed links.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;The consistency level to execute the request at.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.ListOutgoingTypedLinksRequest(FilterAttributeRanges, MaxResults, FilterTypedLink, ObjectReference, DirectoryArn, NextToken, ConsistencyLevel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOutgoingTypedLinksRequest")
	local t = { 
		["FilterAttributeRanges"] = FilterAttributeRanges,
		["MaxResults"] = MaxResults,
		["FilterTypedLink"] = FilterTypedLink,
		["ObjectReference"] = ObjectReference,
		["DirectoryArn"] = DirectoryArn,
		["NextToken"] = NextToken,
		["ConsistencyLevel"] = ConsistencyLevel,
	}
	M.AssertListOutgoingTypedLinksRequest(t)
	return t
end

local CreateDirectoryRequest_keys = { "SchemaArn" = true, "Name" = true, nil }

function M.AssertCreateDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDirectoryRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then M.AssertDirectoryName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateDirectoryRequest_keys[k], "CreateDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDirectoryRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the published schema that will be copied into the data &lt;a&gt;Directory&lt;/a&gt;. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param Name [DirectoryName] &lt;p&gt;The name of the &lt;a&gt;Directory&lt;/a&gt;. Should be unique per account, per region.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: SchemaArn
function M.CreateDirectoryRequest(SchemaArn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDirectoryRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["Name"] = Name,
	}
	M.AssertCreateDirectoryRequest(t)
	return t
end

local ListTypedLinkFacetNamesResponse_keys = { "NextToken" = true, "FacetNames" = true, nil }

function M.AssertListTypedLinkFacetNamesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTypedLinkFacetNamesResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["FacetNames"] then M.AssertTypedLinkNameList(struct["FacetNames"]) end
	for k,_ in pairs(struct) do
		assert(ListTypedLinkFacetNamesResponse_keys[k], "ListTypedLinkFacetNamesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTypedLinkFacetNamesResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param FacetNames [TypedLinkNameList] &lt;p&gt;The names of typed link facets that exist within the schema.&lt;/p&gt;
function M.ListTypedLinkFacetNamesResponse(NextToken, FacetNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTypedLinkFacetNamesResponse")
	local t = { 
		["NextToken"] = NextToken,
		["FacetNames"] = FacetNames,
	}
	M.AssertListTypedLinkFacetNamesResponse(t)
	return t
end

local GetDirectoryRequest_keys = { "DirectoryArn" = true, nil }

function M.AssertGetDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then M.AssertDirectoryArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(GetDirectoryRequest_keys[k], "GetDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDirectoryRequest
--  
-- @param DirectoryArn [DirectoryArn] &lt;p&gt;The ARN of the directory.&lt;/p&gt;
-- Required parameter: DirectoryArn
function M.GetDirectoryRequest(DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDirectoryRequest")
	local t = { 
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertGetDirectoryRequest(t)
	return t
end

local BatchAttachObjectResponse_keys = { "attachedObjectIdentifier" = true, nil }

function M.AssertBatchAttachObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAttachObjectResponse to be of type 'table'")
	if struct["attachedObjectIdentifier"] then M.AssertObjectIdentifier(struct["attachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(BatchAttachObjectResponse_keys[k], "BatchAttachObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAttachObjectResponse
-- &lt;p&gt;Represents the output batch &lt;code&gt;AttachObject&lt;/code&gt; response operation.&lt;/p&gt;
-- @param attachedObjectIdentifier [ObjectIdentifier] &lt;p&gt;The &lt;code&gt;ObjectIdentifier&lt;/code&gt; of the object that has been attached.&lt;/p&gt;
function M.BatchAttachObjectResponse(attachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchAttachObjectResponse")
	local t = { 
		["attachedObjectIdentifier"] = attachedObjectIdentifier,
	}
	M.AssertBatchAttachObjectResponse(t)
	return t
end

local BatchWriteOperation_keys = { "DetachObject" = true, "AttachObject" = true, "AddFacetToObject" = true, "RemoveFacetFromObject" = true, "CreateObject" = true, "DeleteObject" = true, "UpdateObjectAttributes" = true, nil }

function M.AssertBatchWriteOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteOperation to be of type 'table'")
	if struct["DetachObject"] then M.AssertBatchDetachObject(struct["DetachObject"]) end
	if struct["AttachObject"] then M.AssertBatchAttachObject(struct["AttachObject"]) end
	if struct["AddFacetToObject"] then M.AssertBatchAddFacetToObject(struct["AddFacetToObject"]) end
	if struct["RemoveFacetFromObject"] then M.AssertBatchRemoveFacetFromObject(struct["RemoveFacetFromObject"]) end
	if struct["CreateObject"] then M.AssertBatchCreateObject(struct["CreateObject"]) end
	if struct["DeleteObject"] then M.AssertBatchDeleteObject(struct["DeleteObject"]) end
	if struct["UpdateObjectAttributes"] then M.AssertBatchUpdateObjectAttributes(struct["UpdateObjectAttributes"]) end
	for k,_ in pairs(struct) do
		assert(BatchWriteOperation_keys[k], "BatchWriteOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteOperation
-- &lt;p&gt;Represents the output of a &lt;code&gt;BatchWrite&lt;/code&gt; operation. &lt;/p&gt;
-- @param DetachObject [BatchDetachObject] &lt;p&gt;Detaches an object from a &lt;a&gt;Directory&lt;/a&gt;.&lt;/p&gt;
-- @param AttachObject [BatchAttachObject] &lt;p&gt;Attaches an object to a &lt;a&gt;Directory&lt;/a&gt;.&lt;/p&gt;
-- @param AddFacetToObject [BatchAddFacetToObject] &lt;p&gt;A batch operation that adds a facet to an object.&lt;/p&gt;
-- @param RemoveFacetFromObject [BatchRemoveFacetFromObject] &lt;p&gt;A batch operation that removes a facet from an object.&lt;/p&gt;
-- @param CreateObject [BatchCreateObject] &lt;p&gt;Creates an object.&lt;/p&gt;
-- @param DeleteObject [BatchDeleteObject] &lt;p&gt;Deletes an object in a &lt;a&gt;Directory&lt;/a&gt;.&lt;/p&gt;
-- @param UpdateObjectAttributes [BatchUpdateObjectAttributes] &lt;p&gt;Updates a given object's attributes.&lt;/p&gt;
function M.BatchWriteOperation(DetachObject, AttachObject, AddFacetToObject, RemoveFacetFromObject, CreateObject, DeleteObject, UpdateObjectAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteOperation")
	local t = { 
		["DetachObject"] = DetachObject,
		["AttachObject"] = AttachObject,
		["AddFacetToObject"] = AddFacetToObject,
		["RemoveFacetFromObject"] = RemoveFacetFromObject,
		["CreateObject"] = CreateObject,
		["DeleteObject"] = DeleteObject,
		["UpdateObjectAttributes"] = UpdateObjectAttributes,
	}
	M.AssertBatchWriteOperation(t)
	return t
end

local GetDirectoryResponse_keys = { "Directory" = true, nil }

function M.AssertGetDirectoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDirectoryResponse to be of type 'table'")
	assert(struct["Directory"], "Expected key Directory to exist in table")
	if struct["Directory"] then M.AssertDirectory(struct["Directory"]) end
	for k,_ in pairs(struct) do
		assert(GetDirectoryResponse_keys[k], "GetDirectoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDirectoryResponse
--  
-- @param Directory [Directory] &lt;p&gt;Metadata about the directory.&lt;/p&gt;
-- Required parameter: Directory
function M.GetDirectoryResponse(Directory, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDirectoryResponse")
	local t = { 
		["Directory"] = Directory,
	}
	M.AssertGetDirectoryResponse(t)
	return t
end

local BatchReadSuccessfulResponse_keys = { "ListObjectAttributes" = true, "ListObjectChildren" = true, nil }

function M.AssertBatchReadSuccessfulResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadSuccessfulResponse to be of type 'table'")
	if struct["ListObjectAttributes"] then M.AssertBatchListObjectAttributesResponse(struct["ListObjectAttributes"]) end
	if struct["ListObjectChildren"] then M.AssertBatchListObjectChildrenResponse(struct["ListObjectChildren"]) end
	for k,_ in pairs(struct) do
		assert(BatchReadSuccessfulResponse_keys[k], "BatchReadSuccessfulResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadSuccessfulResponse
-- &lt;p&gt;Represents the output of a &lt;code&gt;BatchRead&lt;/code&gt; success response operation.&lt;/p&gt;
-- @param ListObjectAttributes [BatchListObjectAttributesResponse] &lt;p&gt;Lists all attributes that are associated with an object.&lt;/p&gt;
-- @param ListObjectChildren [BatchListObjectChildrenResponse] &lt;p&gt;Returns a paginated list of child objects that are associated with a given object.&lt;/p&gt;
function M.BatchReadSuccessfulResponse(ListObjectAttributes, ListObjectChildren, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadSuccessfulResponse")
	local t = { 
		["ListObjectAttributes"] = ListObjectAttributes,
		["ListObjectChildren"] = ListObjectChildren,
	}
	M.AssertBatchReadSuccessfulResponse(t)
	return t
end

local CreateSchemaRequest_keys = { "Name" = true, nil }

function M.AssertCreateSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSchemaRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertSchemaName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateSchemaRequest_keys[k], "CreateSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSchemaRequest
--  
-- @param Name [SchemaName] &lt;p&gt;The name that is associated with the schema. This is unique to each account and in each region.&lt;/p&gt;
-- Required parameter: Name
function M.CreateSchemaRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSchemaRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertCreateSchemaRequest(t)
	return t
end

local BatchReadResponse_keys = { "Responses" = true, nil }

function M.AssertBatchReadResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadResponse to be of type 'table'")
	if struct["Responses"] then M.AssertBatchReadOperationResponseList(struct["Responses"]) end
	for k,_ in pairs(struct) do
		assert(BatchReadResponse_keys[k], "BatchReadResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadResponse
--  
-- @param Responses [BatchReadOperationResponseList] &lt;p&gt;A list of all the responses for each batch read.&lt;/p&gt;
function M.BatchReadResponse(Responses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadResponse")
	local t = { 
		["Responses"] = Responses,
	}
	M.AssertBatchReadResponse(t)
	return t
end

local DeleteTypedLinkFacetRequest_keys = { "SchemaArn" = true, "Name" = true, nil }

function M.AssertDeleteTypedLinkFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTypedLinkFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then M.AssertTypedLinkName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTypedLinkFacetRequest_keys[k], "DeleteTypedLinkFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTypedLinkFacetRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param Name [TypedLinkName] &lt;p&gt;The unique name of the typed link facet.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.DeleteTypedLinkFacetRequest(SchemaArn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTypedLinkFacetRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["Name"] = Name,
	}
	M.AssertDeleteTypedLinkFacetRequest(t)
	return t
end

local ListObjectAttributesResponse_keys = { "Attributes" = true, "NextToken" = true, nil }

function M.AssertListObjectAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectAttributesResponse to be of type 'table'")
	if struct["Attributes"] then M.AssertAttributeKeyAndValueList(struct["Attributes"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListObjectAttributesResponse_keys[k], "ListObjectAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectAttributesResponse
--  
-- @param Attributes [AttributeKeyAndValueList] &lt;p&gt;Attributes map that is associated with the object. &lt;code&gt;AttributeArn&lt;/code&gt; is the key, and attribute value is the value.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
function M.ListObjectAttributesResponse(Attributes, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListObjectAttributesResponse")
	local t = { 
		["Attributes"] = Attributes,
		["NextToken"] = NextToken,
	}
	M.AssertListObjectAttributesResponse(t)
	return t
end

local AttachToIndexRequest_keys = { "IndexReference" = true, "DirectoryArn" = true, "TargetReference" = true, nil }

function M.AssertAttachToIndexRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachToIndexRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["IndexReference"], "Expected key IndexReference to exist in table")
	assert(struct["TargetReference"], "Expected key TargetReference to exist in table")
	if struct["IndexReference"] then M.AssertObjectReference(struct["IndexReference"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["TargetReference"] then M.AssertObjectReference(struct["TargetReference"]) end
	for k,_ in pairs(struct) do
		assert(AttachToIndexRequest_keys[k], "AttachToIndexRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachToIndexRequest
--  
-- @param IndexReference [ObjectReference] &lt;p&gt;A reference to the index that you are attaching the object to.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the directory where the object and index exist.&lt;/p&gt;
-- @param TargetReference [ObjectReference] &lt;p&gt;A reference to the object that you are attaching to the index.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: IndexReference
-- Required parameter: TargetReference
function M.AttachToIndexRequest(IndexReference, DirectoryArn, TargetReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachToIndexRequest")
	local t = { 
		["IndexReference"] = IndexReference,
		["DirectoryArn"] = DirectoryArn,
		["TargetReference"] = TargetReference,
	}
	M.AssertAttachToIndexRequest(t)
	return t
end

local LookupPolicyRequest_keys = { "ObjectReference" = true, "NextToken" = true, "MaxResults" = true, "DirectoryArn" = true, nil }

function M.AssertLookupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupPolicyRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(LookupPolicyRequest_keys[k], "LookupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupPolicyRequest
--  
-- @param ObjectReference [ObjectReference] &lt;p&gt;Reference that identifies the object whose policies will be looked up.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The token to request the next page of results.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of items to be retrieved in a single call. This is an approximate number.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt;. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: ObjectReference
function M.LookupPolicyRequest(ObjectReference, NextToken, MaxResults, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupPolicyRequest")
	local t = { 
		["ObjectReference"] = ObjectReference,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertLookupPolicyRequest(t)
	return t
end

local BatchWriteException_keys = { "Index" = true, "Message" = true, "Type" = true, nil }

function M.AssertBatchWriteException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteException to be of type 'table'")
	if struct["Index"] then M.AssertBatchOperationIndex(struct["Index"]) end
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	if struct["Type"] then M.AssertBatchWriteExceptionType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(BatchWriteException_keys[k], "BatchWriteException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteException
-- &lt;p&gt;A &lt;code&gt;BatchWrite&lt;/code&gt; exception has occurred.&lt;/p&gt;
-- @param Index [BatchOperationIndex] &lt;p&gt;A &lt;code&gt;BatchWrite&lt;/code&gt; exception has occurred.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;A &lt;code&gt;BatchWrite&lt;/code&gt; exception has occurred.&lt;/p&gt;
-- @param Type [BatchWriteExceptionType] &lt;p&gt;A &lt;code&gt;BatchWrite&lt;/code&gt; exception has occurred.&lt;/p&gt;
function M.BatchWriteException(Index, Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteException")
	local t = { 
		["Index"] = Index,
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertBatchWriteException(t)
	return t
end

local BatchReadOperation_keys = { "ListObjectAttributes" = true, "ListObjectChildren" = true, nil }

function M.AssertBatchReadOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadOperation to be of type 'table'")
	if struct["ListObjectAttributes"] then M.AssertBatchListObjectAttributes(struct["ListObjectAttributes"]) end
	if struct["ListObjectChildren"] then M.AssertBatchListObjectChildren(struct["ListObjectChildren"]) end
	for k,_ in pairs(struct) do
		assert(BatchReadOperation_keys[k], "BatchReadOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadOperation
-- &lt;p&gt;Represents the output of a &lt;code&gt;BatchRead&lt;/code&gt; operation.&lt;/p&gt;
-- @param ListObjectAttributes [BatchListObjectAttributes] &lt;p&gt;Lists all attributes that are associated with an object.&lt;/p&gt;
-- @param ListObjectChildren [BatchListObjectChildren] &lt;p&gt;Returns a paginated list of child objects that are associated with a given object.&lt;/p&gt;
function M.BatchReadOperation(ListObjectAttributes, ListObjectChildren, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchReadOperation")
	local t = { 
		["ListObjectAttributes"] = ListObjectAttributes,
		["ListObjectChildren"] = ListObjectChildren,
	}
	M.AssertBatchReadOperation(t)
	return t
end

local AttributeKeyAndValue_keys = { "Value" = true, "Key" = true, nil }

function M.AssertAttributeKeyAndValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeKeyAndValue to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTypedAttributeValue(struct["Value"]) end
	if struct["Key"] then M.AssertAttributeKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(AttributeKeyAndValue_keys[k], "AttributeKeyAndValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeKeyAndValue
-- &lt;p&gt;The combination of an attribute key and an attribute value.&lt;/p&gt;
-- @param Value [TypedAttributeValue] &lt;p&gt;The value of the attribute.&lt;/p&gt;
-- @param Key [AttributeKey] &lt;p&gt;The key of the attribute.&lt;/p&gt;
-- Required parameter: Key
-- Required parameter: Value
function M.AttributeKeyAndValue(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeKeyAndValue")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertAttributeKeyAndValue(t)
	return t
end

local IndexAttachment_keys = { "ObjectIdentifier" = true, "IndexedAttributes" = true, nil }

function M.AssertIndexAttachment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IndexAttachment to be of type 'table'")
	if struct["ObjectIdentifier"] then M.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	if struct["IndexedAttributes"] then M.AssertAttributeKeyAndValueList(struct["IndexedAttributes"]) end
	for k,_ in pairs(struct) do
		assert(IndexAttachment_keys[k], "IndexAttachment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IndexAttachment
-- &lt;p&gt;Represents an index and an attached object.&lt;/p&gt;
-- @param ObjectIdentifier [ObjectIdentifier] &lt;p&gt;The &lt;code&gt;ObjectIdentifier&lt;/code&gt; of the object attached to the index.&lt;/p&gt;
-- @param IndexedAttributes [AttributeKeyAndValueList] &lt;p&gt;The indexed attribute values.&lt;/p&gt;
function M.IndexAttachment(ObjectIdentifier, IndexedAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IndexAttachment")
	local t = { 
		["ObjectIdentifier"] = ObjectIdentifier,
		["IndexedAttributes"] = IndexedAttributes,
	}
	M.AssertIndexAttachment(t)
	return t
end

local BatchCreateObject_keys = { "ObjectAttributeList" = true, "ParentReference" = true, "BatchReferenceName" = true, "SchemaFacet" = true, "LinkName" = true, nil }

function M.AssertBatchCreateObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCreateObject to be of type 'table'")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectAttributeList"], "Expected key ObjectAttributeList to exist in table")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	assert(struct["BatchReferenceName"], "Expected key BatchReferenceName to exist in table")
	if struct["ObjectAttributeList"] then M.AssertAttributeKeyAndValueList(struct["ObjectAttributeList"]) end
	if struct["ParentReference"] then M.AssertObjectReference(struct["ParentReference"]) end
	if struct["BatchReferenceName"] then M.AssertBatchReferenceName(struct["BatchReferenceName"]) end
	if struct["SchemaFacet"] then M.AssertSchemaFacetList(struct["SchemaFacet"]) end
	if struct["LinkName"] then M.AssertLinkName(struct["LinkName"]) end
	for k,_ in pairs(struct) do
		assert(BatchCreateObject_keys[k], "BatchCreateObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCreateObject
-- &lt;p&gt;Represents the output of a &lt;code&gt;CreateObject&lt;/code&gt; operation.&lt;/p&gt;
-- @param ObjectAttributeList [AttributeKeyAndValueList] &lt;p&gt;An attribute map, which contains an attribute ARN as the key and attribute value as the map value.&lt;/p&gt;
-- @param ParentReference [ObjectReference] &lt;p&gt;If specified, the parent reference to which this object will be attached.&lt;/p&gt;
-- @param BatchReferenceName [BatchReferenceName] &lt;p&gt;The batch reference name. See &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#batches&quot;&gt;Batches&lt;/a&gt; for more information.&lt;/p&gt;
-- @param SchemaFacet [SchemaFacetList] &lt;p&gt;A list of &lt;code&gt;FacetArns&lt;/code&gt; that will be associated with the object. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param LinkName [LinkName] &lt;p&gt;The name of the link.&lt;/p&gt;
-- Required parameter: SchemaFacet
-- Required parameter: ObjectAttributeList
-- Required parameter: ParentReference
-- Required parameter: LinkName
-- Required parameter: BatchReferenceName
function M.BatchCreateObject(ObjectAttributeList, ParentReference, BatchReferenceName, SchemaFacet, LinkName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchCreateObject")
	local t = { 
		["ObjectAttributeList"] = ObjectAttributeList,
		["ParentReference"] = ParentReference,
		["BatchReferenceName"] = BatchReferenceName,
		["SchemaFacet"] = SchemaFacet,
		["LinkName"] = LinkName,
	}
	M.AssertBatchCreateObject(t)
	return t
end

local ListDevelopmentSchemaArnsResponse_keys = { "NextToken" = true, "SchemaArns" = true, nil }

function M.AssertListDevelopmentSchemaArnsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDevelopmentSchemaArnsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["SchemaArns"] then M.AssertArns(struct["SchemaArns"]) end
	for k,_ in pairs(struct) do
		assert(ListDevelopmentSchemaArnsResponse_keys[k], "ListDevelopmentSchemaArnsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDevelopmentSchemaArnsResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param SchemaArns [Arns] &lt;p&gt;The ARNs of retrieved development schemas.&lt;/p&gt;
function M.ListDevelopmentSchemaArnsResponse(NextToken, SchemaArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDevelopmentSchemaArnsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["SchemaArns"] = SchemaArns,
	}
	M.AssertListDevelopmentSchemaArnsResponse(t)
	return t
end

local LookupPolicyResponse_keys = { "PolicyToPathList" = true, "NextToken" = true, nil }

function M.AssertLookupPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupPolicyResponse to be of type 'table'")
	if struct["PolicyToPathList"] then M.AssertPolicyToPathList(struct["PolicyToPathList"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(LookupPolicyResponse_keys[k], "LookupPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupPolicyResponse
--  
-- @param PolicyToPathList [PolicyToPathList] &lt;p&gt;Provides list of path to policies. Policies contain &lt;code&gt;PolicyId&lt;/code&gt;, &lt;code&gt;ObjectIdentifier&lt;/code&gt;, and &lt;code&gt;PolicyType&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies&quot;&gt;Policies&lt;/a&gt;.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
function M.LookupPolicyResponse(PolicyToPathList, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupPolicyResponse")
	local t = { 
		["PolicyToPathList"] = PolicyToPathList,
		["NextToken"] = NextToken,
	}
	M.AssertLookupPolicyResponse(t)
	return t
end

local InvalidRuleException_keys = { "Message" = true, nil }

function M.AssertInvalidRuleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRuleException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRuleException_keys[k], "InvalidRuleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRuleException
-- &lt;p&gt;Occurs when any of the rule parameter keys or values are invalid.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Occurs when any of the rule parameter keys or values are invalid.&lt;/p&gt;
function M.InvalidRuleException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRuleException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidRuleException(t)
	return t
end

local ListTagsForResourceResponse_keys = { "NextToken" = true, "Tags" = true, nil }

function M.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceResponse_keys[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The token to use to retrieve the next page of results. This value is null when there are no more results to return.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag key value pairs that are associated with the response.&lt;/p&gt;
function M.ListTagsForResourceResponse(NextToken, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Tags"] = Tags,
	}
	M.AssertListTagsForResourceResponse(t)
	return t
end

local TypedLinkSchemaAndFacetName_keys = { "TypedLinkName" = true, "SchemaArn" = true, nil }

function M.AssertTypedLinkSchemaAndFacetName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkSchemaAndFacetName to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["TypedLinkName"], "Expected key TypedLinkName to exist in table")
	if struct["TypedLinkName"] then M.AssertTypedLinkName(struct["TypedLinkName"]) end
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(TypedLinkSchemaAndFacetName_keys[k], "TypedLinkSchemaAndFacetName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkSchemaAndFacetName
-- &lt;p&gt;Identifies the schema Amazon Resource Name (ARN) and facet name for the typed link.&lt;/p&gt;
-- @param TypedLinkName [TypedLinkName] &lt;p&gt;The unique name of the typed link facet.&lt;/p&gt;
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: TypedLinkName
function M.TypedLinkSchemaAndFacetName(TypedLinkName, SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkSchemaAndFacetName")
	local t = { 
		["TypedLinkName"] = TypedLinkName,
		["SchemaArn"] = SchemaArn,
	}
	M.AssertTypedLinkSchemaAndFacetName(t)
	return t
end

local ListIncomingTypedLinksResponse_keys = { "NextToken" = true, "LinkSpecifiers" = true, nil }

function M.AssertListIncomingTypedLinksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIncomingTypedLinksResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["LinkSpecifiers"] then M.AssertTypedLinkSpecifierList(struct["LinkSpecifiers"]) end
	for k,_ in pairs(struct) do
		assert(ListIncomingTypedLinksResponse_keys[k], "ListIncomingTypedLinksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIncomingTypedLinksResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param LinkSpecifiers [TypedLinkSpecifierList] &lt;p&gt;Returns one or more typed link specifiers as output.&lt;/p&gt;
function M.ListIncomingTypedLinksResponse(NextToken, LinkSpecifiers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIncomingTypedLinksResponse")
	local t = { 
		["NextToken"] = NextToken,
		["LinkSpecifiers"] = LinkSpecifiers,
	}
	M.AssertListIncomingTypedLinksResponse(t)
	return t
end

local BatchDetachObject_keys = { "ParentReference" = true, "LinkName" = true, "BatchReferenceName" = true, nil }

function M.AssertBatchDetachObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachObject to be of type 'table'")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	assert(struct["BatchReferenceName"], "Expected key BatchReferenceName to exist in table")
	if struct["ParentReference"] then M.AssertObjectReference(struct["ParentReference"]) end
	if struct["LinkName"] then M.AssertLinkName(struct["LinkName"]) end
	if struct["BatchReferenceName"] then M.AssertBatchReferenceName(struct["BatchReferenceName"]) end
	for k,_ in pairs(struct) do
		assert(BatchDetachObject_keys[k], "BatchDetachObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachObject
-- &lt;p&gt;Represents the output of a &lt;code&gt;DetachObject&lt;/code&gt; operation.&lt;/p&gt;
-- @param ParentReference [ObjectReference] &lt;p&gt;Parent reference from which the object with the specified link name is detached.&lt;/p&gt;
-- @param LinkName [LinkName] &lt;p&gt;The name of the link.&lt;/p&gt;
-- @param BatchReferenceName [BatchReferenceName] &lt;p&gt;The batch reference name. See &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#batches&quot;&gt;Batches&lt;/a&gt; for more information.&lt;/p&gt;
-- Required parameter: ParentReference
-- Required parameter: LinkName
-- Required parameter: BatchReferenceName
function M.BatchDetachObject(ParentReference, LinkName, BatchReferenceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDetachObject")
	local t = { 
		["ParentReference"] = ParentReference,
		["LinkName"] = LinkName,
		["BatchReferenceName"] = BatchReferenceName,
	}
	M.AssertBatchDetachObject(t)
	return t
end

local CreateFacetRequest_keys = { "Attributes" = true, "SchemaArn" = true, "Name" = true, "ObjectType" = true, nil }

function M.AssertCreateFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ObjectType"], "Expected key ObjectType to exist in table")
	if struct["Attributes"] then M.AssertFacetAttributeList(struct["Attributes"]) end
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then M.AssertFacetName(struct["Name"]) end
	if struct["ObjectType"] then M.AssertObjectType(struct["ObjectType"]) end
	for k,_ in pairs(struct) do
		assert(CreateFacetRequest_keys[k], "CreateFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFacetRequest
--  
-- @param Attributes [FacetAttributeList] &lt;p&gt;The attributes that are associated with the &lt;a&gt;Facet&lt;/a&gt;.&lt;/p&gt;
-- @param SchemaArn [Arn] &lt;p&gt;The schema ARN in which the new &lt;a&gt;Facet&lt;/a&gt; will be created. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param Name [FacetName] &lt;p&gt;The name of the &lt;a&gt;Facet&lt;/a&gt;, which is unique for a given schema.&lt;/p&gt;
-- @param ObjectType [ObjectType] &lt;p&gt;Specifies whether a given object created from this facet is of type node, leaf node, policy or index.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Node: Can have multiple children but one parent.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Leaf node: Cannot have children but can have multiple parents.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Policy: Allows you to store a policy document and policy type. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies&quot;&gt;Policies&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Index: Can be created with the Index API.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: SchemaArn
-- Required parameter: Name
-- Required parameter: ObjectType
function M.CreateFacetRequest(Attributes, SchemaArn, Name, ObjectType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFacetRequest")
	local t = { 
		["Attributes"] = Attributes,
		["SchemaArn"] = SchemaArn,
		["Name"] = Name,
		["ObjectType"] = ObjectType,
	}
	M.AssertCreateFacetRequest(t)
	return t
end

local TypedLinkAttributeRange_keys = { "Range" = true, "AttributeName" = true, nil }

function M.AssertTypedLinkAttributeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkAttributeRange to be of type 'table'")
	assert(struct["Range"], "Expected key Range to exist in table")
	if struct["Range"] then M.AssertTypedAttributeValueRange(struct["Range"]) end
	if struct["AttributeName"] then M.AssertAttributeName(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(TypedLinkAttributeRange_keys[k], "TypedLinkAttributeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkAttributeRange
-- &lt;p&gt;Identifies the range of attributes that are used by a specified filter.&lt;/p&gt;
-- @param Range [TypedAttributeValueRange] &lt;p&gt;The range of attribute values that are being selected.&lt;/p&gt;
-- @param AttributeName [AttributeName] &lt;p&gt;The unique name of the typed link attribute.&lt;/p&gt;
-- Required parameter: Range
function M.TypedLinkAttributeRange(Range, AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkAttributeRange")
	local t = { 
		["Range"] = Range,
		["AttributeName"] = AttributeName,
	}
	M.AssertTypedLinkAttributeRange(t)
	return t
end

local BatchDeleteObject_keys = { "ObjectReference" = true, nil }

function M.AssertBatchDeleteObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteObject to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	for k,_ in pairs(struct) do
		assert(BatchDeleteObject_keys[k], "BatchDeleteObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteObject
-- &lt;p&gt;Represents the output of a &lt;code&gt;DeleteObject&lt;/code&gt; operation.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;The reference that identifies the object.&lt;/p&gt;
-- Required parameter: ObjectReference
function M.BatchDeleteObject(ObjectReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDeleteObject")
	local t = { 
		["ObjectReference"] = ObjectReference,
	}
	M.AssertBatchDeleteObject(t)
	return t
end

local DeleteDirectoryRequest_keys = { "DirectoryArn" = true, nil }

function M.AssertDeleteDirectoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectoryRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDirectoryRequest_keys[k], "DeleteDirectoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectoryRequest
--  
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the directory to delete.&lt;/p&gt;
-- Required parameter: DirectoryArn
function M.DeleteDirectoryRequest(DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDirectoryRequest")
	local t = { 
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertDeleteDirectoryRequest(t)
	return t
end

local BatchListObjectAttributesResponse_keys = { "Attributes" = true, "NextToken" = true, nil }

function M.AssertBatchListObjectAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectAttributesResponse to be of type 'table'")
	if struct["Attributes"] then M.AssertAttributeKeyAndValueList(struct["Attributes"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(BatchListObjectAttributesResponse_keys[k], "BatchListObjectAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectAttributesResponse
-- &lt;p&gt;Represents the output of a &lt;code&gt;ListObjectAttributes&lt;/code&gt; response operation.&lt;/p&gt;
-- @param Attributes [AttributeKeyAndValueList] &lt;p&gt;The attributes map that is associated with the object. &lt;code&gt;AttributeArn&lt;/code&gt; is the key; attribute value is the value.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
function M.BatchListObjectAttributesResponse(Attributes, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchListObjectAttributesResponse")
	local t = { 
		["Attributes"] = Attributes,
		["NextToken"] = NextToken,
	}
	M.AssertBatchListObjectAttributesResponse(t)
	return t
end

local AddFacetToObjectRequest_keys = { "ObjectAttributeList" = true, "ObjectReference" = true, "SchemaFacet" = true, "DirectoryArn" = true, nil }

function M.AssertAddFacetToObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddFacetToObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectAttributeList"] then M.AssertAttributeKeyAndValueList(struct["ObjectAttributeList"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["SchemaFacet"] then M.AssertSchemaFacet(struct["SchemaFacet"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(AddFacetToObjectRequest_keys[k], "AddFacetToObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddFacetToObjectRequest
--  
-- @param ObjectAttributeList [AttributeKeyAndValueList] &lt;p&gt;Attributes on the facet that you are adding to the object.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;A reference to the object you are adding the specified facet to.&lt;/p&gt;
-- @param SchemaFacet [SchemaFacet] &lt;p&gt;Identifiers for the facet that you are adding to the object.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where the object resides. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: SchemaFacet
-- Required parameter: ObjectReference
function M.AddFacetToObjectRequest(ObjectAttributeList, ObjectReference, SchemaFacet, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddFacetToObjectRequest")
	local t = { 
		["ObjectAttributeList"] = ObjectAttributeList,
		["ObjectReference"] = ObjectReference,
		["SchemaFacet"] = SchemaFacet,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertAddFacetToObjectRequest(t)
	return t
end

local ObjectAttributeUpdate_keys = { "ObjectAttributeAction" = true, "ObjectAttributeKey" = true, nil }

function M.AssertObjectAttributeUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectAttributeUpdate to be of type 'table'")
	if struct["ObjectAttributeAction"] then M.AssertObjectAttributeAction(struct["ObjectAttributeAction"]) end
	if struct["ObjectAttributeKey"] then M.AssertAttributeKey(struct["ObjectAttributeKey"]) end
	for k,_ in pairs(struct) do
		assert(ObjectAttributeUpdate_keys[k], "ObjectAttributeUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectAttributeUpdate
-- &lt;p&gt;Structure that contains attribute update information.&lt;/p&gt;
-- @param ObjectAttributeAction [ObjectAttributeAction] &lt;p&gt;The action to perform as part of the attribute update.&lt;/p&gt;
-- @param ObjectAttributeKey [AttributeKey] &lt;p&gt;The key of the attribute being updated.&lt;/p&gt;
function M.ObjectAttributeUpdate(ObjectAttributeAction, ObjectAttributeKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectAttributeUpdate")
	local t = { 
		["ObjectAttributeAction"] = ObjectAttributeAction,
		["ObjectAttributeKey"] = ObjectAttributeKey,
	}
	M.AssertObjectAttributeUpdate(t)
	return t
end

local CannotListParentOfRootException_keys = { "Message" = true, nil }

function M.AssertCannotListParentOfRootException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CannotListParentOfRootException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(CannotListParentOfRootException_keys[k], "CannotListParentOfRootException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CannotListParentOfRootException
-- &lt;p&gt;Cannot list the parents of a &lt;a&gt;Directory&lt;/a&gt; root.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Cannot list the parents of a &lt;a&gt;Directory&lt;/a&gt; root.&lt;/p&gt;
function M.CannotListParentOfRootException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CannotListParentOfRootException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertCannotListParentOfRootException(t)
	return t
end

local ListTypedLinkFacetAttributesResponse_keys = { "Attributes" = true, "NextToken" = true, nil }

function M.AssertListTypedLinkFacetAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTypedLinkFacetAttributesResponse to be of type 'table'")
	if struct["Attributes"] then M.AssertTypedLinkAttributeDefinitionList(struct["Attributes"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListTypedLinkFacetAttributesResponse_keys[k], "ListTypedLinkFacetAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTypedLinkFacetAttributesResponse
--  
-- @param Attributes [TypedLinkAttributeDefinitionList] &lt;p&gt;An ordered set of attributes associate with the typed link.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
function M.ListTypedLinkFacetAttributesResponse(Attributes, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTypedLinkFacetAttributesResponse")
	local t = { 
		["Attributes"] = Attributes,
		["NextToken"] = NextToken,
	}
	M.AssertListTypedLinkFacetAttributesResponse(t)
	return t
end

local DetachFromIndexResponse_keys = { "DetachedObjectIdentifier" = true, nil }

function M.AssertDetachFromIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachFromIndexResponse to be of type 'table'")
	if struct["DetachedObjectIdentifier"] then M.AssertObjectIdentifier(struct["DetachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DetachFromIndexResponse_keys[k], "DetachFromIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachFromIndexResponse
--  
-- @param DetachedObjectIdentifier [ObjectIdentifier] &lt;p&gt;The &lt;code&gt;ObjectIdentifier&lt;/code&gt; of the object that was detached from the index.&lt;/p&gt;
function M.DetachFromIndexResponse(DetachedObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachFromIndexResponse")
	local t = { 
		["DetachedObjectIdentifier"] = DetachedObjectIdentifier,
	}
	M.AssertDetachFromIndexResponse(t)
	return t
end

local AccessDeniedException_keys = { "Message" = true, nil }

function M.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AccessDeniedException_keys[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- &lt;p&gt;Access denied. Check your permissions.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Access denied. Check your permissions.&lt;/p&gt;
function M.AccessDeniedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAccessDeniedException(t)
	return t
end

local NotPolicyException_keys = { "Message" = true, nil }

function M.AssertNotPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotPolicyException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NotPolicyException_keys[k], "NotPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotPolicyException
-- &lt;p&gt;Indicates that the requested operation can only operate on policy objects.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Indicates that the requested operation can only operate on policy objects.&lt;/p&gt;
function M.NotPolicyException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotPolicyException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNotPolicyException(t)
	return t
end

local NotNodeException_keys = { "Message" = true, nil }

function M.AssertNotNodeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotNodeException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NotNodeException_keys[k], "NotNodeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotNodeException
-- &lt;p&gt;Occurs when any invalid operations are performed on an object that is not a node, such as calling &lt;code&gt;ListObjectChildren&lt;/code&gt; for a leaf node object.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;Occurs when any invalid operations are performed on an object that is not a node, such as calling &lt;code&gt;ListObjectChildren&lt;/code&gt; for a leaf node object.&lt;/p&gt;
function M.NotNodeException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotNodeException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNotNodeException(t)
	return t
end

local BatchUpdateObjectAttributesResponse_keys = { "ObjectIdentifier" = true, nil }

function M.AssertBatchUpdateObjectAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUpdateObjectAttributesResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then M.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(BatchUpdateObjectAttributesResponse_keys[k], "BatchUpdateObjectAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUpdateObjectAttributesResponse
-- &lt;p&gt;Represents the output of a &lt;code&gt;BatchUpdate&lt;/code&gt; response operation.&lt;/p&gt;
-- @param ObjectIdentifier [ObjectIdentifier] &lt;p&gt;ID that is associated with the object.&lt;/p&gt;
function M.BatchUpdateObjectAttributesResponse(ObjectIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchUpdateObjectAttributesResponse")
	local t = { 
		["ObjectIdentifier"] = ObjectIdentifier,
	}
	M.AssertBatchUpdateObjectAttributesResponse(t)
	return t
end

local Rule_keys = { "Type" = true, "Parameters" = true, nil }

function M.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	if struct["Type"] then M.AssertRuleType(struct["Type"]) end
	if struct["Parameters"] then M.AssertRuleParameterMap(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(Rule_keys[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
-- &lt;p&gt;Contains an Amazon Resource Name (ARN) and parameters that are associated with the rule.&lt;/p&gt;
-- @param Type [RuleType] &lt;p&gt;The type of attribute validation rule.&lt;/p&gt;
-- @param Parameters [RuleParameterMap] &lt;p&gt;The minimum and maximum parameters that are associated with the rule.&lt;/p&gt;
function M.Rule(Type, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Rule")
	local t = { 
		["Type"] = Type,
		["Parameters"] = Parameters,
	}
	M.AssertRule(t)
	return t
end

local CreateObjectRequest_keys = { "ObjectAttributeList" = true, "ParentReference" = true, "SchemaFacets" = true, "DirectoryArn" = true, "LinkName" = true, nil }

function M.AssertCreateObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateObjectRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["SchemaFacets"], "Expected key SchemaFacets to exist in table")
	if struct["ObjectAttributeList"] then M.AssertAttributeKeyAndValueList(struct["ObjectAttributeList"]) end
	if struct["ParentReference"] then M.AssertObjectReference(struct["ParentReference"]) end
	if struct["SchemaFacets"] then M.AssertSchemaFacetList(struct["SchemaFacets"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	if struct["LinkName"] then M.AssertLinkName(struct["LinkName"]) end
	for k,_ in pairs(struct) do
		assert(CreateObjectRequest_keys[k], "CreateObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateObjectRequest
--  
-- @param ObjectAttributeList [AttributeKeyAndValueList] &lt;p&gt;The attribute map whose attribute ARN contains the key and attribute value as the map value.&lt;/p&gt;
-- @param ParentReference [ObjectReference] &lt;p&gt;If specified, the parent reference to which this object will be attached.&lt;/p&gt;
-- @param SchemaFacets [SchemaFacetList] &lt;p&gt;A list of schema facets to be associated with the object that contains &lt;code&gt;SchemaArn&lt;/code&gt; and facet name. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; in which the object will be created. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param LinkName [LinkName] &lt;p&gt;The name of link that is used to attach this object to a parent.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: SchemaFacets
function M.CreateObjectRequest(ObjectAttributeList, ParentReference, SchemaFacets, DirectoryArn, LinkName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateObjectRequest")
	local t = { 
		["ObjectAttributeList"] = ObjectAttributeList,
		["ParentReference"] = ParentReference,
		["SchemaFacets"] = SchemaFacets,
		["DirectoryArn"] = DirectoryArn,
		["LinkName"] = LinkName,
	}
	M.AssertCreateObjectRequest(t)
	return t
end

local BatchAddFacetToObject_keys = { "ObjectAttributeList" = true, "ObjectReference" = true, "SchemaFacet" = true, nil }

function M.AssertBatchAddFacetToObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAddFacetToObject to be of type 'table'")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectAttributeList"], "Expected key ObjectAttributeList to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectAttributeList"] then M.AssertAttributeKeyAndValueList(struct["ObjectAttributeList"]) end
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["SchemaFacet"] then M.AssertSchemaFacet(struct["SchemaFacet"]) end
	for k,_ in pairs(struct) do
		assert(BatchAddFacetToObject_keys[k], "BatchAddFacetToObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAddFacetToObject
-- &lt;p&gt;Represents the output of a batch add facet to object operation.&lt;/p&gt;
-- @param ObjectAttributeList [AttributeKeyAndValueList] &lt;p&gt;The attributes to set on the object.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;A reference to the object being mutated.&lt;/p&gt;
-- @param SchemaFacet [SchemaFacet] &lt;p&gt;Represents the facet being added to the object.&lt;/p&gt;
-- Required parameter: SchemaFacet
-- Required parameter: ObjectAttributeList
-- Required parameter: ObjectReference
function M.BatchAddFacetToObject(ObjectAttributeList, ObjectReference, SchemaFacet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchAddFacetToObject")
	local t = { 
		["ObjectAttributeList"] = ObjectAttributeList,
		["ObjectReference"] = ObjectReference,
		["SchemaFacet"] = SchemaFacet,
	}
	M.AssertBatchAddFacetToObject(t)
	return t
end

local ResourceNotFoundException_keys = { "Message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;The specified resource could not be found.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;The specified resource could not be found.&lt;/p&gt;
function M.ResourceNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local BatchDeleteObjectResponse_keys = { nil }

function M.AssertBatchDeleteObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteObjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BatchDeleteObjectResponse_keys[k], "BatchDeleteObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteObjectResponse
-- &lt;p&gt;Represents the output of a &lt;code&gt;DeleteObject&lt;/code&gt; response operation.&lt;/p&gt;
function M.BatchDeleteObjectResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchDeleteObjectResponse")
	local t = { 
	}
	M.AssertBatchDeleteObjectResponse(t)
	return t
end

local DeleteDirectoryResponse_keys = { "DirectoryArn" = true, nil }

function M.AssertDeleteDirectoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDirectoryResponse to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDirectoryResponse_keys[k], "DeleteDirectoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDirectoryResponse
--  
-- @param DirectoryArn [Arn] &lt;p&gt;The ARN of the deleted directory.&lt;/p&gt;
-- Required parameter: DirectoryArn
function M.DeleteDirectoryResponse(DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDirectoryResponse")
	local t = { 
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertDeleteDirectoryResponse(t)
	return t
end

local FacetAttributeReference_keys = { "TargetFacetName" = true, "TargetAttributeName" = true, nil }

function M.AssertFacetAttributeReference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FacetAttributeReference to be of type 'table'")
	assert(struct["TargetFacetName"], "Expected key TargetFacetName to exist in table")
	assert(struct["TargetAttributeName"], "Expected key TargetAttributeName to exist in table")
	if struct["TargetFacetName"] then M.AssertFacetName(struct["TargetFacetName"]) end
	if struct["TargetAttributeName"] then M.AssertAttributeName(struct["TargetAttributeName"]) end
	for k,_ in pairs(struct) do
		assert(FacetAttributeReference_keys[k], "FacetAttributeReference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FacetAttributeReference
-- &lt;p&gt;The facet attribute reference that specifies the attribute definition that contains the attribute facet name and attribute name.&lt;/p&gt;
-- @param TargetFacetName [FacetName] &lt;p&gt;The target facet name that is associated with the facet reference. See &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences&quot;&gt;Attribute References&lt;/a&gt; for more information.&lt;/p&gt;
-- @param TargetAttributeName [AttributeName] &lt;p&gt;The target attribute name that is associated with the facet reference. See &lt;a href=&quot;http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences&quot;&gt;Attribute References&lt;/a&gt; for more information.&lt;/p&gt;
-- Required parameter: TargetFacetName
-- Required parameter: TargetAttributeName
function M.FacetAttributeReference(TargetFacetName, TargetAttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FacetAttributeReference")
	local t = { 
		["TargetFacetName"] = TargetFacetName,
		["TargetAttributeName"] = TargetAttributeName,
	}
	M.AssertFacetAttributeReference(t)
	return t
end

local DetachTypedLinkRequest_keys = { "TypedLinkSpecifier" = true, "DirectoryArn" = true, nil }

function M.AssertDetachTypedLinkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachTypedLinkRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["TypedLinkSpecifier"], "Expected key TypedLinkSpecifier to exist in table")
	if struct["TypedLinkSpecifier"] then M.AssertTypedLinkSpecifier(struct["TypedLinkSpecifier"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(DetachTypedLinkRequest_keys[k], "DetachTypedLinkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachTypedLinkRequest
--  
-- @param TypedLinkSpecifier [TypedLinkSpecifier] &lt;p&gt;Used to accept a typed link specifier as input.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the directory where you want to detach the typed link.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: TypedLinkSpecifier
function M.DetachTypedLinkRequest(TypedLinkSpecifier, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachTypedLinkRequest")
	local t = { 
		["TypedLinkSpecifier"] = TypedLinkSpecifier,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertDetachTypedLinkRequest(t)
	return t
end

local ObjectAttributeAction_keys = { "ObjectAttributeActionType" = true, "ObjectAttributeUpdateValue" = true, nil }

function M.AssertObjectAttributeAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectAttributeAction to be of type 'table'")
	if struct["ObjectAttributeActionType"] then M.AssertUpdateActionType(struct["ObjectAttributeActionType"]) end
	if struct["ObjectAttributeUpdateValue"] then M.AssertTypedAttributeValue(struct["ObjectAttributeUpdateValue"]) end
	for k,_ in pairs(struct) do
		assert(ObjectAttributeAction_keys[k], "ObjectAttributeAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectAttributeAction
-- &lt;p&gt;The action to take on the object attribute.&lt;/p&gt;
-- @param ObjectAttributeActionType [UpdateActionType] &lt;p&gt;A type that can be either &lt;code&gt;Update&lt;/code&gt; or &lt;code&gt;Delete&lt;/code&gt;.&lt;/p&gt;
-- @param ObjectAttributeUpdateValue [TypedAttributeValue] &lt;p&gt;The value that you want to update to.&lt;/p&gt;
function M.ObjectAttributeAction(ObjectAttributeActionType, ObjectAttributeUpdateValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ObjectAttributeAction")
	local t = { 
		["ObjectAttributeActionType"] = ObjectAttributeActionType,
		["ObjectAttributeUpdateValue"] = ObjectAttributeUpdateValue,
	}
	M.AssertObjectAttributeAction(t)
	return t
end

local BatchRemoveFacetFromObject_keys = { "ObjectReference" = true, "SchemaFacet" = true, nil }

function M.AssertBatchRemoveFacetFromObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchRemoveFacetFromObject to be of type 'table'")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then M.AssertObjectReference(struct["ObjectReference"]) end
	if struct["SchemaFacet"] then M.AssertSchemaFacet(struct["SchemaFacet"]) end
	for k,_ in pairs(struct) do
		assert(BatchRemoveFacetFromObject_keys[k], "BatchRemoveFacetFromObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchRemoveFacetFromObject
-- &lt;p&gt;A batch operation to remove a facet from an object.&lt;/p&gt;
-- @param ObjectReference [ObjectReference] &lt;p&gt;A reference to the object whose facet will be removed.&lt;/p&gt;
-- @param SchemaFacet [SchemaFacet] &lt;p&gt;The facet to remove from the object.&lt;/p&gt;
-- Required parameter: SchemaFacet
-- Required parameter: ObjectReference
function M.BatchRemoveFacetFromObject(ObjectReference, SchemaFacet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchRemoveFacetFromObject")
	local t = { 
		["ObjectReference"] = ObjectReference,
		["SchemaFacet"] = SchemaFacet,
	}
	M.AssertBatchRemoveFacetFromObject(t)
	return t
end

local ListPolicyAttachmentsRequest_keys = { "ConsistencyLevel" = true, "PolicyReference" = true, "NextToken" = true, "MaxResults" = true, "DirectoryArn" = true, nil }

function M.AssertListPolicyAttachmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyAttachmentsRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["PolicyReference"], "Expected key PolicyReference to exist in table")
	if struct["ConsistencyLevel"] then M.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["PolicyReference"] then M.AssertObjectReference(struct["PolicyReference"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then M.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(ListPolicyAttachmentsRequest_keys[k], "ListPolicyAttachmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyAttachmentsRequest
--  
-- @param ConsistencyLevel [ConsistencyLevel] &lt;p&gt;Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.&lt;/p&gt;
-- @param PolicyReference [ObjectReference] &lt;p&gt;The reference that identifies the policy object.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The pagination token.&lt;/p&gt;
-- @param MaxResults [NumberResults] &lt;p&gt;The maximum number of items to be retrieved in a single call. This is an approximate number.&lt;/p&gt;
-- @param DirectoryArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Directory&lt;/a&gt; where objects reside. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DirectoryArn
-- Required parameter: PolicyReference
function M.ListPolicyAttachmentsRequest(ConsistencyLevel, PolicyReference, NextToken, MaxResults, DirectoryArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyAttachmentsRequest")
	local t = { 
		["ConsistencyLevel"] = ConsistencyLevel,
		["PolicyReference"] = PolicyReference,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["DirectoryArn"] = DirectoryArn,
	}
	M.AssertListPolicyAttachmentsRequest(t)
	return t
end

local DeleteSchemaRequest_keys = { "SchemaArn" = true, nil }

function M.AssertDeleteSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSchemaRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSchemaRequest_keys[k], "DeleteSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSchemaRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the development schema. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SchemaArn
function M.DeleteSchemaRequest(SchemaArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSchemaRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
	}
	M.AssertDeleteSchemaRequest(t)
	return t
end

local DeleteFacetRequest_keys = { "SchemaArn" = true, "Name" = true, nil }

function M.AssertDeleteFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SchemaArn"] then M.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then M.AssertFacetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFacetRequest_keys[k], "DeleteFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFacetRequest
--  
-- @param SchemaArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that is associated with the &lt;a&gt;Facet&lt;/a&gt;. For more information, see &lt;a&gt;arns&lt;/a&gt;.&lt;/p&gt;
-- @param Name [FacetName] &lt;p&gt;The name of the facet to delete.&lt;/p&gt;
-- Required parameter: SchemaArn
-- Required parameter: Name
function M.DeleteFacetRequest(SchemaArn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFacetRequest")
	local t = { 
		["SchemaArn"] = SchemaArn,
		["Name"] = Name,
	}
	M.AssertDeleteFacetRequest(t)
	return t
end

local TypedLinkFacet_keys = { "Attributes" = true, "IdentityAttributeOrder" = true, "Name" = true, nil }

function M.AssertTypedLinkFacet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypedLinkFacet to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	assert(struct["IdentityAttributeOrder"], "Expected key IdentityAttributeOrder to exist in table")
	if struct["Attributes"] then M.AssertTypedLinkAttributeDefinitionList(struct["Attributes"]) end
	if struct["IdentityAttributeOrder"] then M.AssertAttributeNameList(struct["IdentityAttributeOrder"]) end
	if struct["Name"] then M.AssertTypedLinkName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(TypedLinkFacet_keys[k], "TypedLinkFacet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypedLinkFacet
-- &lt;p&gt;Defines the typed links structure and its attributes. To create a typed link facet, use the &lt;a&gt;CreateTypedLinkFacet&lt;/a&gt; API.&lt;/p&gt;
-- @param Attributes [TypedLinkAttributeDefinitionList] &lt;p&gt;A set of key-value pairs associated with the typed link. Typed link attributes are used when you have data values that are related to the link itself, and not to one of the two objects being linked. Identity attributes also serve to distinguish the link from others of the same type between the same objects.&lt;/p&gt;
-- @param IdentityAttributeOrder [AttributeNameList] &lt;p&gt;The set of attributes that distinguish links made from this facet from each other, in the order of significance. Listing typed links can filter on the values of these attributes. See &lt;a&gt;ListOutgoingTypedLinks&lt;/a&gt; and &lt;a&gt;ListIncomingTypeLinks&lt;/a&gt; for details.&lt;/p&gt;
-- @param Name [TypedLinkName] &lt;p&gt;The unique name of the typed link facet.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: Attributes
-- Required parameter: IdentityAttributeOrder
function M.TypedLinkFacet(Attributes, IdentityAttributeOrder, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypedLinkFacet")
	local t = { 
		["Attributes"] = Attributes,
		["IdentityAttributeOrder"] = IdentityAttributeOrder,
		["Name"] = Name,
	}
	M.AssertTypedLinkFacet(t)
	return t
end

local BatchWriteResponse_keys = { "Responses" = true, nil }

function M.AssertBatchWriteResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteResponse to be of type 'table'")
	if struct["Responses"] then M.AssertBatchWriteOperationResponseList(struct["Responses"]) end
	for k,_ in pairs(struct) do
		assert(BatchWriteResponse_keys[k], "BatchWriteResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteResponse
--  
-- @param Responses [BatchWriteOperationResponseList] &lt;p&gt;A list of all the responses for each batch write.&lt;/p&gt;
function M.BatchWriteResponse(Responses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchWriteResponse")
	local t = { 
		["Responses"] = Responses,
	}
	M.AssertBatchWriteResponse(t)
	return t
end

function M.AssertDirectoryArn(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryArn to be of type 'string'")
end

--  
function M.DirectoryArn(str)
	M.AssertDirectoryArn(str)
	return str
end

function M.AssertSchemaJsonDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaJsonDocument to be of type 'string'")
end

--  
function M.SchemaJsonDocument(str)
	M.AssertSchemaJsonDocument(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertBatchReferenceName(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchReferenceName to be of type 'string'")
end

--  
function M.BatchReferenceName(str)
	M.AssertBatchReferenceName(str)
	return str
end

function M.AssertObjectType(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectType to be of type 'string'")
end

--  
function M.ObjectType(str)
	M.AssertObjectType(str)
	return str
end

function M.AssertPathString(str)
	assert(str)
	assert(type(str) == "string", "Expected PathString to be of type 'string'")
end

--  
function M.PathString(str)
	M.AssertPathString(str)
	return str
end

function M.AssertBatchWriteExceptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchWriteExceptionType to be of type 'string'")
end

--  
function M.BatchWriteExceptionType(str)
	M.AssertBatchWriteExceptionType(str)
	return str
end

function M.AssertRuleParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleParameterValue to be of type 'string'")
end

--  
function M.RuleParameterValue(str)
	M.AssertRuleParameterValue(str)
	return str
end

function M.AssertRangeMode(str)
	assert(str)
	assert(type(str) == "string", "Expected RangeMode to be of type 'string'")
end

--  
function M.RangeMode(str)
	M.AssertRangeMode(str)
	return str
end

function M.AssertBatchReadExceptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchReadExceptionType to be of type 'string'")
end

--  
function M.BatchReadExceptionType(str)
	M.AssertBatchReadExceptionType(str)
	return str
end

function M.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
end

--  
function M.Arn(str)
	M.AssertArn(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertNumberAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumberAttributeValue to be of type 'string'")
end

--  
function M.NumberAttributeValue(str)
	M.AssertNumberAttributeValue(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertPolicyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyType to be of type 'string'")
end

--  
function M.PolicyType(str)
	M.AssertPolicyType(str)
	return str
end

function M.AssertRequiredAttributeBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected RequiredAttributeBehavior to be of type 'string'")
end

--  
function M.RequiredAttributeBehavior(str)
	M.AssertRequiredAttributeBehavior(str)
	return str
end

function M.AssertSchemaName(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaName to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z0-9._-]*$"), "Expected string to match pattern '^[a-zA-Z0-9._-]*$'")
end

--  
function M.SchemaName(str)
	M.AssertSchemaName(str)
	return str
end

function M.AssertDirectoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z0-9._-]*$"), "Expected string to match pattern '^[a-zA-Z0-9._-]*$'")
end

--  
function M.DirectoryName(str)
	M.AssertDirectoryName(str)
	return str
end

function M.AssertLinkName(str)
	assert(str)
	assert(type(str) == "string", "Expected LinkName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[^%/%[%]%(%):%{%}#@!?%s%%;]+"), "Expected string to match pattern '[^%/%[%]%(%):%{%}#@!?%s%%;]+'")
end

--  
function M.LinkName(str)
	M.AssertLinkName(str)
	return str
end

function M.AssertFacetAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected FacetAttributeType to be of type 'string'")
end

--  
function M.FacetAttributeType(str)
	M.AssertFacetAttributeType(str)
	return str
end

function M.AssertDirectoryState(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryState to be of type 'string'")
end

--  
function M.DirectoryState(str)
	M.AssertDirectoryState(str)
	return str
end

function M.AssertTypedLinkName(str)
	assert(str)
	assert(type(str) == "string", "Expected TypedLinkName to be of type 'string'")
	assert(str:match("^[a-zA-Z0-9._-]*$"), "Expected string to match pattern '^[a-zA-Z0-9._-]*$'")
end

--  
function M.TypedLinkName(str)
	M.AssertTypedLinkName(str)
	return str
end

function M.AssertConsistencyLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected ConsistencyLevel to be of type 'string'")
end

--  
function M.ConsistencyLevel(str)
	M.AssertConsistencyLevel(str)
	return str
end

function M.AssertRuleType(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleType to be of type 'string'")
end

--  
function M.RuleType(str)
	M.AssertRuleType(str)
	return str
end

function M.AssertObjectIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected ObjectIdentifier to be of type 'string'")
end

--  
function M.ObjectIdentifier(str)
	M.AssertObjectIdentifier(str)
	return str
end

function M.AssertUpdateActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected UpdateActionType to be of type 'string'")
end

--  
function M.UpdateActionType(str)
	M.AssertUpdateActionType(str)
	return str
end

function M.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	M.AssertExceptionMessage(str)
	return str
end

function M.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z0-9._-]*$"), "Expected string to match pattern '^[a-zA-Z0-9._-]*$'")
end

--  
function M.AttributeName(str)
	M.AssertAttributeName(str)
	return str
end

function M.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z0-9._-]*$"), "Expected string to match pattern '^[a-zA-Z0-9._-]*$'")
end

--  
function M.Version(str)
	M.AssertVersion(str)
	return str
end

function M.AssertStringAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StringAttributeValue to be of type 'string'")
end

--  
function M.StringAttributeValue(str)
	M.AssertStringAttributeValue(str)
	return str
end

function M.AssertFacetName(str)
	assert(str)
	assert(type(str) == "string", "Expected FacetName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z0-9._-]*$"), "Expected string to match pattern '^[a-zA-Z0-9._-]*$'")
end

--  
function M.FacetName(str)
	M.AssertFacetName(str)
	return str
end

function M.AssertSelectorObjectReference(str)
	assert(str)
	assert(type(str) == "string", "Expected SelectorObjectReference to be of type 'string'")
end

--  
function M.SelectorObjectReference(str)
	M.AssertSelectorObjectReference(str)
	return str
end

function M.AssertRuleKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleKey to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z0-9._-]*$"), "Expected string to match pattern '^[a-zA-Z0-9._-]*$'")
end

--  
function M.RuleKey(str)
	M.AssertRuleKey(str)
	return str
end

function M.AssertRuleParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleParameterKey to be of type 'string'")
end

--  
function M.RuleParameterKey(str)
	M.AssertRuleParameterKey(str)
	return str
end

function M.AssertTagsNumberResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TagsNumberResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 50, "Expected integer to be min 50")
end

function M.TagsNumberResults(integer)
	M.AssertTagsNumberResults(integer)
	return integer
end

function M.AssertBatchOperationIndex(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BatchOperationIndex to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.BatchOperationIndex(integer)
	M.AssertBatchOperationIndex(integer)
	return integer
end

function M.AssertNumberResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumberResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.NumberResults(integer)
	M.AssertNumberResults(integer)
	return integer
end

function M.AssertBool(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Bool to be of type 'boolean'")
end

function M.Bool(boolean)
	M.AssertBool(boolean)
	return boolean
end

function M.AssertBooleanAttributeValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanAttributeValue to be of type 'boolean'")
end

function M.BooleanAttributeValue(boolean)
	M.AssertBooleanAttributeValue(boolean)
	return boolean
end

function M.AssertObjectIdentifierToLinkNameMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ObjectIdentifierToLinkNameMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertObjectIdentifier(k)
		M.AssertLinkName(v)
	end
end

function M.ObjectIdentifierToLinkNameMap(map)
	M.AssertObjectIdentifierToLinkNameMap(map)
	return map
end

function M.AssertRuleParameterMap(map)
	assert(map)
	assert(type(map) == "table", "Expected RuleParameterMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertRuleParameterKey(k)
		M.AssertRuleParameterValue(v)
	end
end

function M.RuleParameterMap(map)
	M.AssertRuleParameterMap(map)
	return map
end

function M.AssertRuleMap(map)
	assert(map)
	assert(type(map) == "table", "Expected RuleMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertRuleKey(k)
		M.AssertRule(v)
	end
end

function M.RuleMap(map)
	M.AssertRuleMap(map)
	return map
end

function M.AssertLinkNameToObjectIdentifierMap(map)
	assert(map)
	assert(type(map) == "table", "Expected LinkNameToObjectIdentifierMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertLinkName(k)
		M.AssertObjectIdentifier(v)
	end
end

function M.LinkNameToObjectIdentifierMap(map)
	M.AssertLinkNameToObjectIdentifierMap(map)
	return map
end

function M.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	M.AssertDate(timestamp)
	return timestamp
end

function M.AssertDatetimeAttributeValue(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DatetimeAttributeValue to be of type 'string'")
end

function M.DatetimeAttributeValue(timestamp)
	M.AssertDatetimeAttributeValue(timestamp)
	return timestamp
end

function M.AssertBinaryAttributeValue(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BinaryAttributeValue to be of type 'string'")
end

function M.BinaryAttributeValue(blob)
	M.AssertBinaryAttributeValue(blob)
	return blob
end

function M.AssertPolicyToPathList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyToPathList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyToPath(v)
	end
end

--  
-- List of PolicyToPath objects
function M.PolicyToPathList(list)
	M.AssertPolicyToPathList(list)
	return list
end

function M.AssertAttributeNameAndValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameAndValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeNameAndValue(v)
	end
end

--  
-- List of AttributeNameAndValue objects
function M.AttributeNameAndValueList(list)
	M.AssertAttributeNameAndValueList(list)
	return list
end

function M.AssertAttributeKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeKeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeKey(v)
	end
end

--  
-- List of AttributeKey objects
function M.AttributeKeyList(list)
	M.AssertAttributeKeyList(list)
	return list
end

function M.AssertTypedLinkSpecifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypedLinkSpecifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTypedLinkSpecifier(v)
	end
end

--  
-- List of TypedLinkSpecifier objects
function M.TypedLinkSpecifierList(list)
	M.AssertTypedLinkSpecifierList(list)
	return list
end

function M.AssertObjectAttributeUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectAttributeUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertObjectAttributeUpdate(v)
	end
end

--  
-- List of ObjectAttributeUpdate objects
function M.ObjectAttributeUpdateList(list)
	M.AssertObjectAttributeUpdateList(list)
	return list
end

function M.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	M.AssertTagKeyList(list)
	return list
end

function M.AssertObjectAttributeRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectAttributeRangeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertObjectAttributeRange(v)
	end
end

--  
-- List of ObjectAttributeRange objects
function M.ObjectAttributeRangeList(list)
	M.AssertObjectAttributeRangeList(list)
	return list
end

function M.AssertDirectoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDirectory(v)
	end
end

--  
-- List of Directory objects
function M.DirectoryList(list)
	M.AssertDirectoryList(list)
	return list
end

function M.AssertIndexAttachmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected IndexAttachmentList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIndexAttachment(v)
	end
end

--  
-- List of IndexAttachment objects
function M.IndexAttachmentList(list)
	M.AssertIndexAttachmentList(list)
	return list
end

function M.AssertTypedLinkNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypedLinkNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTypedLinkName(v)
	end
end

--  
-- List of TypedLinkName objects
function M.TypedLinkNameList(list)
	M.AssertTypedLinkNameList(list)
	return list
end

function M.AssertFacetAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected FacetAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFacetAttribute(v)
	end
end

--  
-- List of FacetAttribute objects
function M.FacetAttributeList(list)
	M.AssertFacetAttributeList(list)
	return list
end

function M.AssertArns(list)
	assert(list)
	assert(type(list) == "table", "Expected Arns to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.Arns(list)
	M.AssertArns(list)
	return list
end

function M.AssertBatchReadOperationList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchReadOperationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBatchReadOperation(v)
	end
end

--  
-- List of BatchReadOperation objects
function M.BatchReadOperationList(list)
	M.AssertBatchReadOperationList(list)
	return list
end

function M.AssertAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeName(v)
	end
end

--  
-- List of AttributeName objects
function M.AttributeNameList(list)
	M.AssertAttributeNameList(list)
	return list
end

function M.AssertSchemaFacetList(list)
	assert(list)
	assert(type(list) == "table", "Expected SchemaFacetList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSchemaFacet(v)
	end
end

--  
-- List of SchemaFacet objects
function M.SchemaFacetList(list)
	M.AssertSchemaFacetList(list)
	return list
end

function M.AssertFacetAttributeUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected FacetAttributeUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFacetAttributeUpdate(v)
	end
end

--  
-- List of FacetAttributeUpdate objects
function M.FacetAttributeUpdateList(list)
	M.AssertFacetAttributeUpdateList(list)
	return list
end

function M.AssertTypedLinkAttributeRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypedLinkAttributeRangeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTypedLinkAttributeRange(v)
	end
end

--  
-- List of TypedLinkAttributeRange objects
function M.TypedLinkAttributeRangeList(list)
	M.AssertTypedLinkAttributeRangeList(list)
	return list
end

function M.AssertBatchWriteOperationResponseList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchWriteOperationResponseList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBatchWriteOperationResponse(v)
	end
end

--  
-- List of BatchWriteOperationResponse objects
function M.BatchWriteOperationResponseList(list)
	M.AssertBatchWriteOperationResponseList(list)
	return list
end

function M.AssertTypedLinkFacetAttributeUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypedLinkFacetAttributeUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTypedLinkFacetAttributeUpdate(v)
	end
end

--  
-- List of TypedLinkFacetAttributeUpdate objects
function M.TypedLinkFacetAttributeUpdateList(list)
	M.AssertTypedLinkFacetAttributeUpdateList(list)
	return list
end

function M.AssertObjectIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertObjectIdentifier(v)
	end
end

--  
-- List of ObjectIdentifier objects
function M.ObjectIdentifierList(list)
	M.AssertObjectIdentifierList(list)
	return list
end

function M.AssertFacetNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected FacetNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFacetName(v)
	end
end

--  
-- List of FacetName objects
function M.FacetNameList(list)
	M.AssertFacetNameList(list)
	return list
end

function M.AssertBatchReadOperationResponseList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchReadOperationResponseList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBatchReadOperationResponse(v)
	end
end

--  
-- List of BatchReadOperationResponse objects
function M.BatchReadOperationResponseList(list)
	M.AssertBatchReadOperationResponseList(list)
	return list
end

function M.AssertPolicyAttachmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyAttachmentList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyAttachment(v)
	end
end

--  
-- List of PolicyAttachment objects
function M.PolicyAttachmentList(list)
	M.AssertPolicyAttachmentList(list)
	return list
end

function M.AssertTypedLinkAttributeDefinitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypedLinkAttributeDefinitionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTypedLinkAttributeDefinition(v)
	end
end

--  
-- List of TypedLinkAttributeDefinition objects
function M.TypedLinkAttributeDefinitionList(list)
	M.AssertTypedLinkAttributeDefinitionList(list)
	return list
end

function M.AssertAttributeKeyAndValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeKeyAndValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeKeyAndValue(v)
	end
end

--  
-- List of AttributeKeyAndValue objects
function M.AttributeKeyAndValueList(list)
	M.AssertAttributeKeyAndValueList(list)
	return list
end

function M.AssertBatchWriteOperationList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchWriteOperationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBatchWriteOperation(v)
	end
end

--  
-- List of BatchWriteOperation objects
function M.BatchWriteOperationList(list)
	M.AssertBatchWriteOperationList(list)
	return list
end

function M.AssertPathToObjectIdentifiersList(list)
	assert(list)
	assert(type(list) == "table", "Expected PathToObjectIdentifiersList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPathToObjectIdentifiers(v)
	end
end

--  
-- List of PathToObjectIdentifiers objects
function M.PathToObjectIdentifiersList(list)
	M.AssertPathToObjectIdentifiersList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
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
