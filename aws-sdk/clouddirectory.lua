--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudDirectory (clouddirectory-2017-01-11)

local M = {}

M.metadata = {
	api_version = "2017-01-11",
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
	uid = "clouddirectory-2017-01-11",
}

local keys = {}
local asserts = {}

keys.BatchListObjectPolicies = { ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertBatchListObjectPolicies(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectPolicies to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListObjectPolicies[k], "BatchListObjectPolicies contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectPolicies
-- <p>Returns policies attached to an object in pagination fashion inside a <a>BatchRead</a> operation. For more information, see <a>ListObjectPolicies</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object whose attributes will be listed.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: ObjectReference
-- @return BatchListObjectPolicies structure as a key-value pair table
function M.BatchListObjectPolicies(args)
	assert(args, "You must provide an argument table when creating BatchListObjectPolicies")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertBatchListObjectPolicies(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * SchemaArns [Arns] <p>The ARNs of published schemas.</p>
-- @return ListPublishedSchemaArnsResponse structure as a key-value pair table
function M.ListPublishedSchemaArnsResponse(args)
	assert(args, "You must provide an argument table when creating ListPublishedSchemaArnsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SchemaArns"] = args["SchemaArns"],
	}
	asserts.AssertListPublishedSchemaArnsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Document [SchemaJsonDocument] <p>The JSON representation of the schema document.</p>
-- * Name [SchemaName] <p>The name of the retrieved schema.</p>
-- @return GetSchemaAsJsonResponse structure as a key-value pair table
function M.GetSchemaAsJsonResponse(args)
	assert(args, "You must provide an argument table when creating GetSchemaAsJsonResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Document"] = args["Document"],
		["Name"] = args["Name"],
	}
	asserts.AssertGetSchemaAsJsonResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeKey [AttributeKey] <p>The key of the attribute that the attribute range covers.</p>
-- * Range [TypedAttributeValueRange] <p>The range of attribute values being selected.</p>
-- @return ObjectAttributeRange structure as a key-value pair table
function M.ObjectAttributeRange(args)
	assert(args, "You must provide an argument table when creating ObjectAttributeRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeKey"] = args["AttributeKey"],
		["Range"] = args["Range"],
	}
	asserts.AssertObjectAttributeRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchLookupPolicyResponse = { ["PolicyToPathList"] = true, ["NextToken"] = true, nil }

function asserts.AssertBatchLookupPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchLookupPolicyResponse to be of type 'table'")
	if struct["PolicyToPathList"] then asserts.AssertPolicyToPathList(struct["PolicyToPathList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchLookupPolicyResponse[k], "BatchLookupPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchLookupPolicyResponse
-- <p>Represents the output of a <a>LookupPolicy</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyToPathList [PolicyToPathList] <p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and <code>PolicyType</code>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return BatchLookupPolicyResponse structure as a key-value pair table
function M.BatchLookupPolicyResponse(args)
	assert(args, "You must provide an argument table when creating BatchLookupPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyToPathList"] = args["PolicyToPathList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertBatchLookupPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] <p>An exception message that is associated with the failure.</p>
-- * Type [BatchReadExceptionType] <p>A type of exception, such as <code>InvalidArnException</code>.</p>
-- @return BatchReadException structure as a key-value pair table
function M.BatchReadException(args)
	assert(args, "You must provide an argument table when creating BatchReadException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Type"] = args["Type"],
	}
	asserts.AssertBatchReadException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) of the schema that contains the facet and attribute.</p>
-- * FacetName [FacetName] <p>The name of the facet that the attribute exists within.</p>
-- * Name [AttributeName] <p>The name of the attribute.</p>
-- Required key: SchemaArn
-- Required key: FacetName
-- Required key: Name
-- @return AttributeKey structure as a key-value pair table
function M.AttributeKey(args)
	assert(args, "You must provide an argument table when creating AttributeKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["FacetName"] = args["FacetName"],
		["Name"] = args["Name"],
	}
	asserts.AssertAttributeKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RemoveFacetFromObjectResponse structure as a key-value pair table
function M.RemoveFacetFromObjectResponse(args)
	assert(args, "You must provide an argument table when creating RemoveFacetFromObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRemoveFacetFromObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParentReference [ObjectReference] <p>The parent object reference.</p>
-- * LinkName [LinkName] <p>The link name with which the child object is attached to the parent.</p>
-- * DirectoryArn [Arn] <p>Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where both objects reside. For more information, see <a>arns</a>.</p>
-- * ChildReference [ObjectReference] <p>The child object reference to be attached to the object.</p>
-- Required key: DirectoryArn
-- Required key: ParentReference
-- Required key: ChildReference
-- Required key: LinkName
-- @return AttachObjectRequest structure as a key-value pair table
function M.AttachObjectRequest(args)
	assert(args, "You must provide an argument table when creating AttachObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ParentReference"] = args["ParentReference"],
		["LinkName"] = args["LinkName"],
		["DirectoryArn"] = args["DirectoryArn"],
		["ChildReference"] = args["ChildReference"],
	}
	asserts.AssertAttachObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetLinkAttributes = { ["AttributeNames"] = true, ["TypedLinkSpecifier"] = true, nil }

function asserts.AssertBatchGetLinkAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetLinkAttributes to be of type 'table'")
	assert(struct["TypedLinkSpecifier"], "Expected key TypedLinkSpecifier to exist in table")
	assert(struct["AttributeNames"], "Expected key AttributeNames to exist in table")
	if struct["AttributeNames"] then asserts.AssertAttributeNameList(struct["AttributeNames"]) end
	if struct["TypedLinkSpecifier"] then asserts.AssertTypedLinkSpecifier(struct["TypedLinkSpecifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetLinkAttributes[k], "BatchGetLinkAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetLinkAttributes
-- <p>Retrieves attributes that are associated with a typed link inside a <a>BatchRead</a> operation. For more information, see <a>GetLinkAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeNames [AttributeNameList] <p>A list of attribute names whose values will be retrieved.</p>
-- * TypedLinkSpecifier [TypedLinkSpecifier] <p>Allows a typed link specifier to be accepted as input.</p>
-- Required key: TypedLinkSpecifier
-- Required key: AttributeNames
-- @return BatchGetLinkAttributes structure as a key-value pair table
function M.BatchGetLinkAttributes(args)
	assert(args, "You must provide an argument table when creating BatchGetLinkAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeNames"] = args["AttributeNames"],
		["TypedLinkSpecifier"] = args["TypedLinkSpecifier"],
	}
	asserts.AssertBatchGetLinkAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> into which the schema is copied. For more information, see <a>arns</a>.</p>
-- * PublishedSchemaArn [Arn] <p>Published schema Amazon Resource Name (ARN) that needs to be copied. For more information, see <a>arns</a>.</p>
-- Required key: PublishedSchemaArn
-- Required key: DirectoryArn
-- @return ApplySchemaRequest structure as a key-value pair table
function M.ApplySchemaRequest(args)
	assert(args, "You must provide an argument table when creating ApplySchemaRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["DirectoryArn"] = args["DirectoryArn"],
		["PublishedSchemaArn"] = args["PublishedSchemaArn"],
	}
	asserts.AssertApplySchemaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A range of attribute values. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_range_filters.html">Range Filters</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndMode [RangeMode] <p>The inclusive or exclusive range end.</p>
-- * StartMode [RangeMode] <p>The inclusive or exclusive range start.</p>
-- * StartValue [TypedAttributeValue] <p>The value to start the range at.</p>
-- * EndValue [TypedAttributeValue] <p>The attribute value to terminate the range at.</p>
-- Required key: StartMode
-- Required key: EndMode
-- @return TypedAttributeValueRange structure as a key-value pair table
function M.TypedAttributeValueRange(args)
	assert(args, "You must provide an argument table when creating TypedAttributeValueRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndMode"] = args["EndMode"],
		["StartMode"] = args["StartMode"],
		["StartValue"] = args["StartValue"],
		["EndValue"] = args["EndValue"],
	}
	asserts.AssertTypedAttributeValueRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchAttachToIndexResponse = { ["AttachedObjectIdentifier"] = true, nil }

function asserts.AssertBatchAttachToIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAttachToIndexResponse to be of type 'table'")
	if struct["AttachedObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["AttachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAttachToIndexResponse[k], "BatchAttachToIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAttachToIndexResponse
-- <p>Represents the output of a <a>AttachToIndex</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>
-- @return BatchAttachToIndexResponse structure as a key-value pair table
function M.BatchAttachToIndexResponse(args)
	assert(args, "You must provide an argument table when creating BatchAttachToIndexResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttachedObjectIdentifier"] = args["AttachedObjectIdentifier"],
	}
	asserts.AssertBatchAttachToIndexResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * Children [LinkNameToObjectIdentifierMap] <p>Children structure, which is a map with key as the <code>LinkName</code> and <code>ObjectIdentifier</code> as the value.</p>
-- @return ListObjectChildrenResponse structure as a key-value pair table
function M.ListObjectChildrenResponse(args)
	assert(args, "You must provide an argument table when creating ListObjectChildrenResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Children"] = args["Children"],
	}
	asserts.AssertListObjectChildrenResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * ObjectIdentifiers [ObjectIdentifierList] <p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>
-- @return ListPolicyAttachmentsResponse structure as a key-value pair table
function M.ListPolicyAttachmentsResponse(args)
	assert(args, "You must provide an argument table when creating ListPolicyAttachmentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ObjectIdentifiers"] = args["ObjectIdentifiers"],
	}
	asserts.AssertListPolicyAttachmentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateLinkAttributesResponse = { nil }

function asserts.AssertUpdateLinkAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLinkAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateLinkAttributesResponse[k], "UpdateLinkAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLinkAttributesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateLinkAttributesResponse structure as a key-value pair table
function M.UpdateLinkAttributesResponse(args)
	assert(args, "You must provide an argument table when creating UpdateLinkAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateLinkAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetachTypedLinkResponse = { nil }

function asserts.AssertBatchDetachTypedLinkResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachTypedLinkResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchDetachTypedLinkResponse[k], "BatchDetachTypedLinkResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachTypedLinkResponse
-- <p>Represents the output of a <a>DetachTypedLink</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BatchDetachTypedLinkResponse structure as a key-value pair table
function M.BatchDetachTypedLinkResponse(args)
	assert(args, "You must provide an argument table when creating BatchDetachTypedLinkResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertBatchDetachTypedLinkResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachPolicyRequest = { ["PolicyReference"] = true, ["ObjectReference"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertAttachPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachPolicyRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyReference [ObjectReference] <p>The reference that is associated with the policy object.</p>
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object to which the policy will be attached.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where both objects reside. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: PolicyReference
-- Required key: ObjectReference
-- @return AttachPolicyRequest structure as a key-value pair table
function M.AttachPolicyRequest(args)
	assert(args, "You must provide an argument table when creating AttachPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["PolicyReference"] = args["PolicyReference"],
		["ObjectReference"] = args["ObjectReference"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertAttachPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetLinkAttributesResponse = { ["Attributes"] = true, nil }

function asserts.AssertBatchGetLinkAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetLinkAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributeKeyAndValueList(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetLinkAttributesResponse[k], "BatchGetLinkAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetLinkAttributesResponse
-- <p>Represents the output of a <a>GetLinkAttributes</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeKeyAndValueList] <p>The attributes that are associated with the typed link.</p>
-- @return BatchGetLinkAttributesResponse structure as a key-value pair table
function M.BatchGetLinkAttributesResponse(args)
	assert(args, "You must provide an argument table when creating BatchGetLinkAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertBatchGetLinkAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- @return ListDevelopmentSchemaArnsRequest structure as a key-value pair table
function M.ListDevelopmentSchemaArnsRequest(args)
	assert(args, "You must provide an argument table when creating ListDevelopmentSchemaArnsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListDevelopmentSchemaArnsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Operations [BatchWriteOperationList] <p>A list of operations that are part of the batch.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: Operations
-- @return BatchWriteRequest structure as a key-value pair table
function M.BatchWriteRequest(args)
	assert(args, "You must provide an argument table when creating BatchWriteRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["Operations"] = args["Operations"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertBatchWriteRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains the <code>PolicyType</code>, <code>PolicyId</code>, and the <code>ObjectIdentifier</code> to which it is attached. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyType [PolicyType] <p>The type of policy that can be associated with <code>PolicyAttachment</code>.</p>
-- * ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> that is associated with <code>PolicyAttachment</code>.</p>
-- * PolicyId [ObjectIdentifier] <p>The ID of <code>PolicyAttachment</code>.</p>
-- @return PolicyAttachment structure as a key-value pair table
function M.PolicyAttachment(args)
	assert(args, "You must provide an argument table when creating PolicyAttachment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyType"] = args["PolicyType"],
		["ObjectIdentifier"] = args["ObjectIdentifier"],
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertPolicyAttachment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListPolicyAttachments = { ["PolicyReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertBatchListPolicyAttachments(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListPolicyAttachments to be of type 'table'")
	assert(struct["PolicyReference"], "Expected key PolicyReference to exist in table")
	if struct["PolicyReference"] then asserts.AssertObjectReference(struct["PolicyReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListPolicyAttachments[k], "BatchListPolicyAttachments contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListPolicyAttachments
-- <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached inside a <a>BatchRead</a> operation. For more information, see <a>ListPolicyAttachments</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyReference [ObjectReference] <p>The reference that identifies the policy object.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: PolicyReference
-- @return BatchListPolicyAttachments structure as a key-value pair table
function M.BatchListPolicyAttachments(args)
	assert(args, "You must provide an argument table when creating BatchListPolicyAttachments")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyReference"] = args["PolicyReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertBatchListPolicyAttachments(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>
-- @return AttachToIndexResponse structure as a key-value pair table
function M.AttachToIndexResponse(args)
	assert(args, "You must provide an argument table when creating AttachToIndexResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttachedObjectIdentifier"] = args["AttachedObjectIdentifier"],
	}
	asserts.AssertAttachToIndexResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListObjectParentPathsResponse = { ["PathToObjectIdentifiersList"] = true, ["NextToken"] = true, nil }

function asserts.AssertBatchListObjectParentPathsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectParentPathsResponse to be of type 'table'")
	if struct["PathToObjectIdentifiersList"] then asserts.AssertPathToObjectIdentifiersList(struct["PathToObjectIdentifiersList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListObjectParentPathsResponse[k], "BatchListObjectParentPathsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectParentPathsResponse
-- <p>Represents the output of a <a>ListObjectParentPaths</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PathToObjectIdentifiersList [PathToObjectIdentifiersList] <p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the directory.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return BatchListObjectParentPathsResponse structure as a key-value pair table
function M.BatchListObjectParentPathsResponse(args)
	assert(args, "You must provide an argument table when creating BatchListObjectParentPathsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PathToObjectIdentifiersList"] = args["PathToObjectIdentifiersList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertBatchListObjectParentPathsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceObjectReference [ObjectReference] <p>Identifies the source object that the typed link will attach to.</p>
-- * Attributes [AttributeNameAndValueList] <p>A set of attributes that are associated with the typed link.</p>
-- * TargetObjectReference [ObjectReference] <p>Identifies the target object that the typed link will attach to.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory where you want to attach the typed link.</p>
-- * TypedLinkFacet [TypedLinkSchemaAndFacetName] <p>Identifies the typed link facet that is associated with the typed link.</p>
-- Required key: DirectoryArn
-- Required key: SourceObjectReference
-- Required key: TargetObjectReference
-- Required key: TypedLinkFacet
-- Required key: Attributes
-- @return AttachTypedLinkRequest structure as a key-value pair table
function M.AttachTypedLinkRequest(args)
	assert(args, "You must provide an argument table when creating AttachTypedLinkRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["SourceObjectReference"] = args["SourceObjectReference"],
		["Attributes"] = args["Attributes"],
		["TargetObjectReference"] = args["TargetObjectReference"],
		["DirectoryArn"] = args["DirectoryArn"],
		["TypedLinkFacet"] = args["TypedLinkFacet"],
	}
	asserts.AssertAttachTypedLinkRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectAttributesRequest = { ["AttributeNames"] = true, ["ObjectReference"] = true, ["ConsistencyLevel"] = true, ["DirectoryArn"] = true, ["SchemaFacet"] = true, nil }

function asserts.AssertGetObjectAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectAttributesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["AttributeNames"], "Expected key AttributeNames to exist in table")
	if struct["AttributeNames"] then asserts.AssertAttributeNameList(struct["AttributeNames"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["SchemaFacet"] then asserts.AssertSchemaFacet(struct["SchemaFacet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectAttributesRequest[k], "GetObjectAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectAttributesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeNames [AttributeNameList] <p>List of attribute names whose values will be retrieved.</p>
-- * ObjectReference [ObjectReference] <p>Reference that identifies the object whose attributes will be retrieved.</p>
-- * ConsistencyLevel [ConsistencyLevel] <p>The consistency level at which to retrieve the attributes on an object.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides.</p>
-- * SchemaFacet [SchemaFacet] <p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- Required key: SchemaFacet
-- Required key: AttributeNames
-- @return GetObjectAttributesRequest structure as a key-value pair table
function M.GetObjectAttributesRequest(args)
	assert(args, "You must provide an argument table when creating GetObjectAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-consistency-level"] = args["ConsistencyLevel"],
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["AttributeNames"] = args["AttributeNames"],
		["ObjectReference"] = args["ObjectReference"],
		["ConsistencyLevel"] = args["ConsistencyLevel"],
		["DirectoryArn"] = args["DirectoryArn"],
		["SchemaFacet"] = args["SchemaFacet"],
	}
	asserts.AssertGetObjectAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SuccessfulResponse [BatchReadSuccessfulResponse] <p>Identifies which operation in a batch has succeeded.</p>
-- * ExceptionResponse [BatchReadException] <p>Identifies which operation in a batch has failed.</p>
-- @return BatchReadOperationResponse structure as a key-value pair table
function M.BatchReadOperationResponse(args)
	assert(args, "You must provide an argument table when creating BatchReadOperationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SuccessfulResponse"] = args["SuccessfulResponse"],
		["ExceptionResponse"] = args["ExceptionResponse"],
	}
	asserts.AssertBatchReadOperationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddFacetToObjectResponse structure as a key-value pair table
function M.AddFacetToObjectResponse(args)
	assert(args, "You must provide an argument table when creating AddFacetToObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAddFacetToObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The ARN that is associated with the updated schema. For more information, see <a>arns</a>.</p>
-- @return UpdateSchemaResponse structure as a key-value pair table
function M.UpdateSchemaResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSchemaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
	}
	asserts.AssertUpdateSchemaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteFacetResponse structure as a key-value pair table
function M.DeleteFacetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteFacetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteFacetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceObjectReference [ObjectReference] <p>Identifies the source object that the typed link will attach to.</p>
-- * IdentityAttributeValues [AttributeNameAndValueList] <p>Identifies the attribute value to update.</p>
-- * TargetObjectReference [ObjectReference] <p>Identifies the target object that the typed link will attach to.</p>
-- * TypedLinkFacet [TypedLinkSchemaAndFacetName] <p>Identifies the typed link facet that is associated with the typed link.</p>
-- Required key: TypedLinkFacet
-- Required key: SourceObjectReference
-- Required key: TargetObjectReference
-- Required key: IdentityAttributeValues
-- @return TypedLinkSpecifier structure as a key-value pair table
function M.TypedLinkSpecifier(args)
	assert(args, "You must provide an argument table when creating TypedLinkSpecifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceObjectReference"] = args["SourceObjectReference"],
		["IdentityAttributeValues"] = args["IdentityAttributeValues"],
		["TargetObjectReference"] = args["TargetObjectReference"],
		["TypedLinkFacet"] = args["TypedLinkFacet"],
	}
	asserts.AssertTypedLinkSpecifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchAttachTypedLink = { ["SourceObjectReference"] = true, ["Attributes"] = true, ["TargetObjectReference"] = true, ["TypedLinkFacet"] = true, nil }

function asserts.AssertBatchAttachTypedLink(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAttachTypedLink to be of type 'table'")
	assert(struct["SourceObjectReference"], "Expected key SourceObjectReference to exist in table")
	assert(struct["TargetObjectReference"], "Expected key TargetObjectReference to exist in table")
	assert(struct["TypedLinkFacet"], "Expected key TypedLinkFacet to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["SourceObjectReference"] then asserts.AssertObjectReference(struct["SourceObjectReference"]) end
	if struct["Attributes"] then asserts.AssertAttributeNameAndValueList(struct["Attributes"]) end
	if struct["TargetObjectReference"] then asserts.AssertObjectReference(struct["TargetObjectReference"]) end
	if struct["TypedLinkFacet"] then asserts.AssertTypedLinkSchemaAndFacetName(struct["TypedLinkFacet"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAttachTypedLink[k], "BatchAttachTypedLink contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAttachTypedLink
-- <p>Attaches a typed link to a specified source and target object inside a <a>BatchRead</a> operation. For more information, see <a>AttachTypedLink</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceObjectReference [ObjectReference] <p>Identifies the source object that the typed link will attach to.</p>
-- * Attributes [AttributeNameAndValueList] <p>A set of attributes that are associated with the typed link.</p>
-- * TargetObjectReference [ObjectReference] <p>Identifies the target object that the typed link will attach to.</p>
-- * TypedLinkFacet [TypedLinkSchemaAndFacetName] <p>Identifies the typed link facet that is associated with the typed link.</p>
-- Required key: SourceObjectReference
-- Required key: TargetObjectReference
-- Required key: TypedLinkFacet
-- Required key: Attributes
-- @return BatchAttachTypedLink structure as a key-value pair table
function M.BatchAttachTypedLink(args)
	assert(args, "You must provide an argument table when creating BatchAttachTypedLink")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceObjectReference"] = args["SourceObjectReference"],
		["Attributes"] = args["Attributes"],
		["TargetObjectReference"] = args["TargetObjectReference"],
		["TypedLinkFacet"] = args["TypedLinkFacet"],
	}
	asserts.AssertBatchAttachTypedLink(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [Arn] <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.</p>
-- * Tags [TagList] <p>A list of tag key-value pairs.</p>
-- Required key: ResourceArn
-- Required key: Tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAppliedSchemaArnsRequest = { ["SchemaArn"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertListAppliedSchemaArnsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAppliedSchemaArnsRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAppliedSchemaArnsRequest[k], "ListAppliedSchemaArnsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAppliedSchemaArnsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The response for <code>ListAppliedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- * DirectoryArn [Arn] <p>The ARN of the directory you are listing.</p>
-- Required key: DirectoryArn
-- @return ListAppliedSchemaArnsRequest structure as a key-value pair table
function M.ListAppliedSchemaArnsRequest(args)
	assert(args, "You must provide an argument table when creating ListAppliedSchemaArnsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertListAppliedSchemaArnsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Range [TypedAttributeValueRange] <p>The range of attribute values that are being selected.</p>
-- * AttributeName [AttributeName] <p>The unique name of the typed link attribute.</p>
-- Required key: Range
-- @return TypedLinkAttributeRange structure as a key-value pair table
function M.TypedLinkAttributeRange(args)
	assert(args, "You must provide an argument table when creating TypedLinkAttributeRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Range"] = args["Range"],
		["AttributeName"] = args["AttributeName"],
	}
	asserts.AssertTypedLinkAttributeRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output of a <a>CreateObject</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectIdentifier [ObjectIdentifier] <p>The ID that is associated with the object.</p>
-- @return BatchCreateObjectResponse structure as a key-value pair table
function M.BatchCreateObjectResponse(args)
	assert(args, "You must provide an argument table when creating BatchCreateObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectIdentifier"] = args["ObjectIdentifier"],
	}
	asserts.AssertBatchCreateObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateFacetResponse structure as a key-value pair table
function M.UpdateFacetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateFacetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateFacetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) to retrieve facet names from.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: SchemaArn
-- @return ListFacetNamesRequest structure as a key-value pair table
function M.ListFacetNamesRequest(args)
	assert(args, "You must provide an argument table when creating ListFacetNamesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListFacetNamesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [PathString] <p>The path that is used to identify the object starting from directory root.</p>
-- * ObjectIdentifiers [ObjectIdentifierList] <p>Lists <code>ObjectIdentifiers</code> starting from directory root to the object in the request.</p>
-- @return PathToObjectIdentifiers structure as a key-value pair table
function M.PathToObjectIdentifiers(args)
	assert(args, "You must provide an argument table when creating PathToObjectIdentifiers")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
		["ObjectIdentifiers"] = args["ObjectIdentifiers"],
	}
	asserts.AssertPathToObjectIdentifiers(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetachFromIndex = { ["IndexReference"] = true, ["TargetReference"] = true, nil }

function asserts.AssertBatchDetachFromIndex(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachFromIndex to be of type 'table'")
	assert(struct["IndexReference"], "Expected key IndexReference to exist in table")
	assert(struct["TargetReference"], "Expected key TargetReference to exist in table")
	if struct["IndexReference"] then asserts.AssertObjectReference(struct["IndexReference"]) end
	if struct["TargetReference"] then asserts.AssertObjectReference(struct["TargetReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetachFromIndex[k], "BatchDetachFromIndex contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachFromIndex
-- <p>Detaches the specified object from the specified index inside a <a>BatchRead</a> operation. For more information, see <a>DetachFromIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexReference [ObjectReference] <p>A reference to the index object.</p>
-- * TargetReference [ObjectReference] <p>A reference to the object being detached from the index.</p>
-- Required key: IndexReference
-- Required key: TargetReference
-- @return BatchDetachFromIndex structure as a key-value pair table
function M.BatchDetachFromIndex(args)
	assert(args, "You must provide an argument table when creating BatchDetachFromIndex")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexReference"] = args["IndexReference"],
		["TargetReference"] = args["TargetReference"],
	}
	asserts.AssertBatchDetachFromIndex(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object for which child objects are being listed.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- @return ListObjectChildrenRequest structure as a key-value pair table
function M.ListObjectChildrenRequest(args)
	assert(args, "You must provide an argument table when creating ListObjectChildrenRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-consistency-level"] = args["ConsistencyLevel"],
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ConsistencyLevel"] = args["ConsistencyLevel"],
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertListObjectChildrenRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchWriteOperationResponse = { ["DetachObject"] = true, ["AttachObject"] = true, ["CreateIndex"] = true, ["AddFacetToObject"] = true, ["RemoveFacetFromObject"] = true, ["DetachTypedLink"] = true, ["AttachPolicy"] = true, ["CreateObject"] = true, ["AttachToIndex"] = true, ["UpdateLinkAttributes"] = true, ["DetachFromIndex"] = true, ["AttachTypedLink"] = true, ["DetachPolicy"] = true, ["DeleteObject"] = true, ["UpdateObjectAttributes"] = true, nil }

function asserts.AssertBatchWriteOperationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteOperationResponse to be of type 'table'")
	if struct["DetachObject"] then asserts.AssertBatchDetachObjectResponse(struct["DetachObject"]) end
	if struct["AttachObject"] then asserts.AssertBatchAttachObjectResponse(struct["AttachObject"]) end
	if struct["CreateIndex"] then asserts.AssertBatchCreateIndexResponse(struct["CreateIndex"]) end
	if struct["AddFacetToObject"] then asserts.AssertBatchAddFacetToObjectResponse(struct["AddFacetToObject"]) end
	if struct["RemoveFacetFromObject"] then asserts.AssertBatchRemoveFacetFromObjectResponse(struct["RemoveFacetFromObject"]) end
	if struct["DetachTypedLink"] then asserts.AssertBatchDetachTypedLinkResponse(struct["DetachTypedLink"]) end
	if struct["AttachPolicy"] then asserts.AssertBatchAttachPolicyResponse(struct["AttachPolicy"]) end
	if struct["CreateObject"] then asserts.AssertBatchCreateObjectResponse(struct["CreateObject"]) end
	if struct["AttachToIndex"] then asserts.AssertBatchAttachToIndexResponse(struct["AttachToIndex"]) end
	if struct["UpdateLinkAttributes"] then asserts.AssertBatchUpdateLinkAttributesResponse(struct["UpdateLinkAttributes"]) end
	if struct["DetachFromIndex"] then asserts.AssertBatchDetachFromIndexResponse(struct["DetachFromIndex"]) end
	if struct["AttachTypedLink"] then asserts.AssertBatchAttachTypedLinkResponse(struct["AttachTypedLink"]) end
	if struct["DetachPolicy"] then asserts.AssertBatchDetachPolicyResponse(struct["DetachPolicy"]) end
	if struct["DeleteObject"] then asserts.AssertBatchDeleteObjectResponse(struct["DeleteObject"]) end
	if struct["UpdateObjectAttributes"] then asserts.AssertBatchUpdateObjectAttributesResponse(struct["UpdateObjectAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchWriteOperationResponse[k], "BatchWriteOperationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteOperationResponse
-- <p>Represents the output of a <code>BatchWrite</code> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetachObject [BatchDetachObjectResponse] <p>Detaches an object from a <a>Directory</a>.</p>
-- * AttachObject [BatchAttachObjectResponse] <p>Attaches an object to a <a>Directory</a>.</p>
-- * CreateIndex [BatchCreateIndexResponse] <p>Creates an index object. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm">Indexing and search</a> for more information.</p>
-- * AddFacetToObject [BatchAddFacetToObjectResponse] <p>The result of an add facet to object batch operation.</p>
-- * RemoveFacetFromObject [BatchRemoveFacetFromObjectResponse] <p>The result of a batch remove facet from object operation.</p>
-- * DetachTypedLink [BatchDetachTypedLinkResponse] <p>Detaches a typed link from a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- * AttachPolicy [BatchAttachPolicyResponse] <p>Attaches a policy object to a regular object. An object can have a limited number of attached policies.</p>
-- * CreateObject [BatchCreateObjectResponse] <p>Creates an object in a <a>Directory</a>.</p>
-- * AttachToIndex [BatchAttachToIndexResponse] <p>Attaches the specified object to the specified index.</p>
-- * UpdateLinkAttributes [BatchUpdateLinkAttributesResponse] <p>Represents the output of a <code>BatchWrite</code> response operation.</p>
-- * DetachFromIndex [BatchDetachFromIndexResponse] <p>Detaches the specified object from the specified index.</p>
-- * AttachTypedLink [BatchAttachTypedLinkResponse] <p>Attaches a typed link to a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- * DetachPolicy [BatchDetachPolicyResponse] <p>Detaches a policy from a <a>Directory</a>.</p>
-- * DeleteObject [BatchDeleteObjectResponse] <p>Deletes an object in a <a>Directory</a>.</p>
-- * UpdateObjectAttributes [BatchUpdateObjectAttributesResponse] <p>Updates a given object’s attributes.</p>
-- @return BatchWriteOperationResponse structure as a key-value pair table
function M.BatchWriteOperationResponse(args)
	assert(args, "You must provide an argument table when creating BatchWriteOperationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DetachObject"] = args["DetachObject"],
		["AttachObject"] = args["AttachObject"],
		["CreateIndex"] = args["CreateIndex"],
		["AddFacetToObject"] = args["AddFacetToObject"],
		["RemoveFacetFromObject"] = args["RemoveFacetFromObject"],
		["DetachTypedLink"] = args["DetachTypedLink"],
		["AttachPolicy"] = args["AttachPolicy"],
		["CreateObject"] = args["CreateObject"],
		["AttachToIndex"] = args["AttachToIndex"],
		["UpdateLinkAttributes"] = args["UpdateLinkAttributes"],
		["DetachFromIndex"] = args["DetachFromIndex"],
		["AttachTypedLink"] = args["AttachTypedLink"],
		["DetachPolicy"] = args["DetachPolicy"],
		["DeleteObject"] = args["DeleteObject"],
		["UpdateObjectAttributes"] = args["UpdateObjectAttributes"],
	}
	asserts.AssertBatchWriteOperationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Operations [BatchReadOperationList] <p>A list of operations that are part of the batch.</p>
-- * ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: Operations
-- @return BatchReadRequest structure as a key-value pair table
function M.BatchReadRequest(args)
	assert(args, "You must provide an argument table when creating BatchReadRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-consistency-level"] = args["ConsistencyLevel"],
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["Operations"] = args["Operations"],
		["ConsistencyLevel"] = args["ConsistencyLevel"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertBatchReadRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetObjectInformationResponse = { ["ObjectIdentifier"] = true, ["SchemaFacets"] = true, nil }

function asserts.AssertBatchGetObjectInformationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetObjectInformationResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	if struct["SchemaFacets"] then asserts.AssertSchemaFacetList(struct["SchemaFacets"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetObjectInformationResponse[k], "BatchGetObjectInformationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetObjectInformationResponse
-- <p>Represents the output of a <a>GetObjectInformation</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the specified object.</p>
-- * SchemaFacets [SchemaFacetList] <p>The facets attached to the specified object.</p>
-- @return BatchGetObjectInformationResponse structure as a key-value pair table
function M.BatchGetObjectInformationResponse(args)
	assert(args, "You must provide an argument table when creating BatchGetObjectInformationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectIdentifier"] = args["ObjectIdentifier"],
		["SchemaFacets"] = args["SchemaFacets"],
	}
	asserts.AssertBatchGetObjectInformationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListObjectParents = { ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertBatchListObjectParents(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectParents to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListObjectParents[k], "BatchListObjectParents contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectParents
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] 
-- * NextToken [NextToken] 
-- * MaxResults [NumberResults] 
-- Required key: ObjectReference
-- @return BatchListObjectParents structure as a key-value pair table
function M.BatchListObjectParents(args)
	assert(args, "You must provide an argument table when creating BatchListObjectParents")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertBatchListObjectParents(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value that is associated with the tag.</p>
-- * Key [TagKey] <p>The key that is associated with the tag.</p>
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>. For more information, see <a>arns</a>.</p>
-- * Name [FacetName] <p>The name of the facet to delete.</p>
-- Required key: SchemaArn
-- Required key: Name
-- @return DeleteFacetRequest structure as a key-value pair table
function M.DeleteFacetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFacetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteFacetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [FacetAttributeList] <p>The attributes attached to the facet.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return ListFacetAttributesResponse structure as a key-value pair table
function M.ListFacetAttributesResponse(args)
	assert(args, "You must provide an argument table when creating ListFacetAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListFacetAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpgradeAppliedSchemaRequest = { ["DryRun"] = true, ["DirectoryArn"] = true, ["PublishedSchemaArn"] = true, nil }

function asserts.AssertUpgradeAppliedSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeAppliedSchemaRequest to be of type 'table'")
	assert(struct["PublishedSchemaArn"], "Expected key PublishedSchemaArn to exist in table")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	if struct["DryRun"] then asserts.AssertBool(struct["DryRun"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["PublishedSchemaArn"] then asserts.AssertArn(struct["PublishedSchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradeAppliedSchemaRequest[k], "UpgradeAppliedSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeAppliedSchemaRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DryRun [Bool] <p>Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.</p>
-- * DirectoryArn [Arn] <p>The ARN for the directory to which the upgraded schema will be applied.</p>
-- * PublishedSchemaArn [Arn] <p>The revision of the published schema to upgrade the directory to.</p>
-- Required key: PublishedSchemaArn
-- Required key: DirectoryArn
-- @return UpgradeAppliedSchemaRequest structure as a key-value pair table
function M.UpgradeAppliedSchemaRequest(args)
	assert(args, "You must provide an argument table when creating UpgradeAppliedSchemaRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DryRun"] = args["DryRun"],
		["DirectoryArn"] = args["DirectoryArn"],
		["PublishedSchemaArn"] = args["PublishedSchemaArn"],
	}
	asserts.AssertUpgradeAppliedSchemaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryArn [Arn] <p>The ARN of the directory to disable.</p>
-- Required key: DirectoryArn
-- @return DisableDirectoryRequest structure as a key-value pair table
function M.DisableDirectoryRequest(args)
	assert(args, "You must provide an argument table when creating DisableDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertDisableDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: SchemaArn
-- @return ListTypedLinkFacetNamesRequest structure as a key-value pair table
function M.ListTypedLinkFacetNamesRequest(args)
	assert(args, "You must provide an argument table when creating ListTypedLinkFacetNamesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListTypedLinkFacetNamesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- * ObjectReference [ObjectReference] <p>Reference that identifies the object for which policies will be listed.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where objects reside. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- @return ListObjectPoliciesRequest structure as a key-value pair table
function M.ListObjectPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListObjectPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-consistency-level"] = args["ConsistencyLevel"],
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ConsistencyLevel"] = args["ConsistencyLevel"],
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertListObjectPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Facet [Facet] <p>The <a>Facet</a> structure that is associated with the facet.</p>
-- @return GetFacetResponse structure as a key-value pair table
function M.GetFacetResponse(args)
	assert(args, "You must provide an argument table when creating GetFacetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Facet"] = args["Facet"],
	}
	asserts.AssertGetFacetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetachFromIndexResponse = { ["DetachedObjectIdentifier"] = true, nil }

function asserts.AssertBatchDetachFromIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachFromIndexResponse to be of type 'table'")
	if struct["DetachedObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["DetachedObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetachFromIndexResponse[k], "BatchDetachFromIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachFromIndexResponse
-- <p>Represents the output of a <a>DetachFromIndex</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>
-- @return BatchDetachFromIndexResponse structure as a key-value pair table
function M.BatchDetachFromIndexResponse(args)
	assert(args, "You must provide an argument table when creating BatchDetachFromIndexResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DetachedObjectIdentifier"] = args["DetachedObjectIdentifier"],
	}
	asserts.AssertBatchDetachFromIndexResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpgradePublishedSchemaRequest = { ["DevelopmentSchemaArn"] = true, ["DryRun"] = true, ["MinorVersion"] = true, ["PublishedSchemaArn"] = true, nil }

function asserts.AssertUpgradePublishedSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradePublishedSchemaRequest to be of type 'table'")
	assert(struct["DevelopmentSchemaArn"], "Expected key DevelopmentSchemaArn to exist in table")
	assert(struct["PublishedSchemaArn"], "Expected key PublishedSchemaArn to exist in table")
	assert(struct["MinorVersion"], "Expected key MinorVersion to exist in table")
	if struct["DevelopmentSchemaArn"] then asserts.AssertArn(struct["DevelopmentSchemaArn"]) end
	if struct["DryRun"] then asserts.AssertBool(struct["DryRun"]) end
	if struct["MinorVersion"] then asserts.AssertVersion(struct["MinorVersion"]) end
	if struct["PublishedSchemaArn"] then asserts.AssertArn(struct["PublishedSchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradePublishedSchemaRequest[k], "UpgradePublishedSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradePublishedSchemaRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DevelopmentSchemaArn [Arn] <p>The ARN of the development schema with the changes used for the upgrade.</p>
-- * DryRun [Bool] <p>Used for testing whether the Development schema provided is backwards compatible, or not, with the publish schema provided by the user to be upgraded. If schema compatibility fails, an exception would be thrown else the call would succeed. This parameter is optional and defaults to false.</p>
-- * MinorVersion [Version] <p>Identifies the minor version of the published schema that will be created. This parameter is NOT optional.</p>
-- * PublishedSchemaArn [Arn] <p>The ARN of the published schema to be upgraded.</p>
-- Required key: DevelopmentSchemaArn
-- Required key: PublishedSchemaArn
-- Required key: MinorVersion
-- @return UpgradePublishedSchemaRequest structure as a key-value pair table
function M.UpgradePublishedSchemaRequest(args)
	assert(args, "You must provide an argument table when creating UpgradePublishedSchemaRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DevelopmentSchemaArn"] = args["DevelopmentSchemaArn"],
		["DryRun"] = args["DryRun"],
		["MinorVersion"] = args["MinorVersion"],
		["PublishedSchemaArn"] = args["PublishedSchemaArn"],
	}
	asserts.AssertUpgradePublishedSchemaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Selector [SelectorObjectReference] <p>A path selector supports easy selection of an object by the parent/child links leading to it from the directory root. Use the link names from each parent/child link to construct the path. Path selectors start with a slash (/) and link names are separated by slashes. For more information about paths, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_access_objects.html">Access Objects</a>. You can identify an object in one of the following ways:</p> <ul> <li> <p> <i>$ObjectIdentifier</i> - An object identifier is an opaque string provided by Amazon Cloud Directory. When creating objects, the system will provide you with the identifier of the created object. An object’s identifier is immutable and no two objects will ever share the same object identifier</p> </li> <li> <p> <i>/some/path</i> - Identifies the object based on path</p> </li> <li> <p> <i>#SomeBatchReference</i> - Identifies the object in a batch call</p> </li> </ul>
-- @return ObjectReference structure as a key-value pair table
function M.ObjectReference(args)
	assert(args, "You must provide an argument table when creating ObjectReference")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Selector"] = args["Selector"],
	}
	asserts.AssertObjectReference(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListManagedSchemaArnsRequest = { ["SchemaArn"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListManagedSchemaArnsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListManagedSchemaArnsRequest to be of type 'table'")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListManagedSchemaArnsRequest[k], "ListManagedSchemaArnsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListManagedSchemaArnsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The response for ListManagedSchemaArns. When this parameter is used, all minor version ARNs for a major version are listed.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- @return ListManagedSchemaArnsRequest structure as a key-value pair table
function M.ListManagedSchemaArnsRequest(args)
	assert(args, "You must provide an argument table when creating ListManagedSchemaArnsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListManagedSchemaArnsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AppliedSchemaArn [Arn] <p>The applied schema ARN that is associated with the copied schema in the <a>Directory</a>. You can use this ARN to describe the schema information applied on this directory. For more information, see <a>arns</a>.</p>
-- * DirectoryArn [Arn] <p>The ARN that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- @return ApplySchemaResponse structure as a key-value pair table
function M.ApplySchemaResponse(args)
	assert(args, "You must provide an argument table when creating ApplySchemaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AppliedSchemaArn"] = args["AppliedSchemaArn"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertApplySchemaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeDefinition [FacetAttributeDefinition] <p>A facet attribute consists of either a definition or a reference. This structure contains the attribute definition. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
-- * RequiredBehavior [RequiredAttributeBehavior] <p>The required behavior of the <code>FacetAttribute</code>.</p>
-- * Name [AttributeName] <p>The name of the facet attribute.</p>
-- * AttributeReference [FacetAttributeReference] <p>An attribute reference that is associated with the attribute. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
-- Required key: Name
-- @return FacetAttribute structure as a key-value pair table
function M.FacetAttribute(args)
	assert(args, "You must provide an argument table when creating FacetAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeDefinition"] = args["AttributeDefinition"],
		["RequiredBehavior"] = args["RequiredBehavior"],
		["Name"] = args["Name"],
		["AttributeReference"] = args["AttributeReference"],
	}
	asserts.AssertFacetAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeUpdates [ObjectAttributeUpdateList] <p>Attributes update structure.</p>
-- * ObjectReference [ObjectReference] <p>Reference that identifies the object.</p>
-- Required key: ObjectReference
-- Required key: AttributeUpdates
-- @return BatchUpdateObjectAttributes structure as a key-value pair table
function M.BatchUpdateObjectAttributes(args)
	assert(args, "You must provide an argument table when creating BatchUpdateObjectAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeUpdates"] = args["AttributeUpdates"],
		["ObjectReference"] = args["ObjectReference"],
	}
	asserts.AssertBatchUpdateObjectAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeUpdates [FacetAttributeUpdateList] <p>List of attributes that need to be updated in a given schema <a>Facet</a>. Each attribute is followed by <code>AttributeAction</code>, which specifies the type of update operation to perform. </p>
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>. For more information, see <a>arns</a>.</p>
-- * Name [FacetName] <p>The name of the facet.</p>
-- * ObjectType [ObjectType] <p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>
-- Required key: SchemaArn
-- Required key: Name
-- @return UpdateFacetRequest structure as a key-value pair table
function M.UpdateFacetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFacetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["AttributeUpdates"] = args["AttributeUpdates"],
		["SchemaArn"] = args["SchemaArn"],
		["Name"] = args["Name"],
		["ObjectType"] = args["ObjectType"],
	}
	asserts.AssertUpdateFacetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object whose parent paths are listed.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- * DirectoryArn [Arn] <p>The ARN of the directory to which the parent path applies.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- @return ListObjectParentPathsRequest structure as a key-value pair table
function M.ListObjectParentPathsRequest(args)
	assert(args, "You must provide an argument table when creating ListObjectParentPathsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertListObjectParentPathsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListObjectParentsResponse = { ["ParentLinks"] = true, ["NextToken"] = true, nil }

function asserts.AssertBatchListObjectParentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectParentsResponse to be of type 'table'")
	if struct["ParentLinks"] then asserts.AssertObjectIdentifierAndLinkNameList(struct["ParentLinks"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListObjectParentsResponse[k], "BatchListObjectParentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectParentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParentLinks [ObjectIdentifierAndLinkNameList] 
-- * NextToken [NextToken] 
-- @return BatchListObjectParentsResponse structure as a key-value pair table
function M.BatchListObjectParentsResponse(args)
	assert(args, "You must provide an argument table when creating BatchListObjectParentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParentLinks"] = args["ParentLinks"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertBatchListObjectParentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListObjectParentsResponse = { ["ParentLinks"] = true, ["NextToken"] = true, ["Parents"] = true, nil }

function asserts.AssertListObjectParentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectParentsResponse to be of type 'table'")
	if struct["ParentLinks"] then asserts.AssertObjectIdentifierAndLinkNameList(struct["ParentLinks"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Parents"] then asserts.AssertObjectIdentifierToLinkNameMap(struct["Parents"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectParentsResponse[k], "ListObjectParentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectParentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParentLinks [ObjectIdentifierAndLinkNameList] <p>Returns a list of parent reference and LinkName Tuples.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * Parents [ObjectIdentifierToLinkNameMap] <p>The parent structure, which is a map with key as the <code>ObjectIdentifier</code> and LinkName as the value.</p>
-- @return ListObjectParentsResponse structure as a key-value pair table
function M.ListObjectParentsResponse(args)
	assert(args, "You must provide an argument table when creating ListObjectParentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParentLinks"] = args["ParentLinks"],
		["NextToken"] = args["NextToken"],
		["Parents"] = args["Parents"],
	}
	asserts.AssertListObjectParentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [AttributeName] <p>The attribute name of the typed link.</p>
-- * Value [TypedAttributeValue] <p>The value for the typed link.</p>
-- Required key: AttributeName
-- Required key: Value
-- @return AttributeNameAndValue structure as a key-value pair table
function M.AttributeNameAndValue(args)
	assert(args, "You must provide an argument table when creating AttributeNameAndValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["Value"] = args["Value"],
	}
	asserts.AssertAttributeNameAndValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>A reference to the object to remove the facet from.</p>
-- * SchemaFacet [SchemaFacet] <p>The facet to remove. See <a>SchemaFacet</a> for details.</p>
-- * DirectoryArn [Arn] <p>The ARN of the directory in which the object resides.</p>
-- Required key: DirectoryArn
-- Required key: SchemaFacet
-- Required key: ObjectReference
-- @return RemoveFacetFromObjectRequest structure as a key-value pair table
function M.RemoveFacetFromObjectRequest(args)
	assert(args, "You must provide an argument table when creating RemoveFacetFromObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["SchemaFacet"] = args["SchemaFacet"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertRemoveFacetFromObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LinkAttributeAction = { ["AttributeActionType"] = true, ["AttributeUpdateValue"] = true, nil }

function asserts.AssertLinkAttributeAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LinkAttributeAction to be of type 'table'")
	if struct["AttributeActionType"] then asserts.AssertUpdateActionType(struct["AttributeActionType"]) end
	if struct["AttributeUpdateValue"] then asserts.AssertTypedAttributeValue(struct["AttributeUpdateValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.LinkAttributeAction[k], "LinkAttributeAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LinkAttributeAction
-- <p>The action to take on a typed link attribute value. Updates are only supported for attributes which don’t contribute to link identity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeActionType [UpdateActionType] <p>A type that can be either <code>UPDATE_OR_CREATE</code> or <code>DELETE</code>.</p>
-- * AttributeUpdateValue [TypedAttributeValue] <p>The value that you want to update to.</p>
-- @return LinkAttributeAction structure as a key-value pair table
function M.LinkAttributeAction(args)
	assert(args, "You must provide an argument table when creating LinkAttributeAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeActionType"] = args["AttributeActionType"],
		["AttributeUpdateValue"] = args["AttributeUpdateValue"],
	}
	asserts.AssertLinkAttributeAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchLookupPolicy = { ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertBatchLookupPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchLookupPolicy to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchLookupPolicy[k], "BatchLookupPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchLookupPolicy
-- <p>Lists all policies from the root of the Directory to the object specified inside a <a>BatchRead</a> operation. For more information, see <a>LookupPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>Reference that identifies the object whose policies will be looked up.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: ObjectReference
-- @return BatchLookupPolicy structure as a key-value pair table
function M.BatchLookupPolicy(args)
	assert(args, "You must provide an argument table when creating BatchLookupPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertBatchLookupPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Facet [TypedLinkFacet] <p> <a>Facet</a> structure that is associated with the typed link facet.</p>
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- Required key: SchemaArn
-- Required key: Facet
-- @return CreateTypedLinkFacetRequest structure as a key-value pair table
function M.CreateTypedLinkFacetRequest(args)
	assert(args, "You must provide an argument table when creating CreateTypedLinkFacetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["Facet"] = args["Facet"],
		["SchemaArn"] = args["SchemaArn"],
	}
	asserts.AssertCreateTypedLinkFacetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- * ConsistencyLevel [ConsistencyLevel] <p>The consistency level to use for this operation.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * TargetReference [ObjectReference] <p>A reference to the object that has indices attached.</p>
-- * DirectoryArn [Arn] <p>The ARN of the directory.</p>
-- Required key: DirectoryArn
-- Required key: TargetReference
-- @return ListAttachedIndicesRequest structure as a key-value pair table
function M.ListAttachedIndicesRequest(args)
	assert(args, "You must provide an argument table when creating ListAttachedIndicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-consistency-level"] = args["ConsistencyLevel"],
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["MaxResults"] = args["MaxResults"],
		["ConsistencyLevel"] = args["ConsistencyLevel"],
		["NextToken"] = args["NextToken"],
		["TargetReference"] = args["TargetReference"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertListAttachedIndicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLinkAttributesResponse = { ["Attributes"] = true, nil }

function asserts.AssertGetLinkAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLinkAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributeKeyAndValueList(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLinkAttributesResponse[k], "GetLinkAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLinkAttributesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeKeyAndValueList] <p>The attributes that are associated with the typed link.</p>
-- @return GetLinkAttributesResponse structure as a key-value pair table
function M.GetLinkAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetLinkAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertGetLinkAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListIndexResponse = { ["IndexAttachments"] = true, ["NextToken"] = true, nil }

function asserts.AssertBatchListIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListIndexResponse to be of type 'table'")
	if struct["IndexAttachments"] then asserts.AssertIndexAttachmentList(struct["IndexAttachments"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListIndexResponse[k], "BatchListIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListIndexResponse
-- <p>Represents the output of a <a>ListIndex</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexAttachments [IndexAttachmentList] <p>The objects and indexed values attached to the index.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return BatchListIndexResponse structure as a key-value pair table
function M.BatchListIndexResponse(args)
	assert(args, "You must provide an argument table when creating BatchListIndexResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexAttachments"] = args["IndexAttachments"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertBatchListIndexResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ObjectIdentifierAndLinkNameTuple = { ["LinkName"] = true, ["ObjectIdentifier"] = true, nil }

function asserts.AssertObjectIdentifierAndLinkNameTuple(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectIdentifierAndLinkNameTuple to be of type 'table'")
	if struct["LinkName"] then asserts.AssertLinkName(struct["LinkName"]) end
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectIdentifierAndLinkNameTuple[k], "ObjectIdentifierAndLinkNameTuple contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectIdentifierAndLinkNameTuple
-- <p>A pair of ObjectIdentifier and LinkName.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LinkName [LinkName] <p>The name of the link between the parent and the child object.</p>
-- * ObjectIdentifier [ObjectIdentifier] <p>The ID that is associated with the object.</p>
-- @return ObjectIdentifierAndLinkNameTuple structure as a key-value pair table
function M.ObjectIdentifierAndLinkNameTuple(args)
	assert(args, "You must provide an argument table when creating ObjectIdentifierAndLinkNameTuple")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LinkName"] = args["LinkName"],
		["ObjectIdentifier"] = args["ObjectIdentifier"],
	}
	asserts.AssertObjectIdentifierAndLinkNameTuple(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StringValue [StringAttributeValue] <p>A string data value.</p>
-- * BooleanValue [BooleanAttributeValue] <p>A Boolean data value.</p>
-- * DatetimeValue [DatetimeAttributeValue] <p>A date and time value.</p>
-- * BinaryValue [BinaryAttributeValue] <p>A binary data value.</p>
-- * NumberValue [NumberAttributeValue] <p>A number data value.</p>
-- @return TypedAttributeValue structure as a key-value pair table
function M.TypedAttributeValue(args)
	assert(args, "You must provide an argument table when creating TypedAttributeValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StringValue"] = args["StringValue"],
		["BooleanValue"] = args["BooleanValue"],
		["DatetimeValue"] = args["DatetimeValue"],
		["BinaryValue"] = args["BinaryValue"],
		["NumberValue"] = args["NumberValue"],
	}
	asserts.AssertTypedAttributeValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) of the development schema. For more information, see <a>arns</a>.</p>
-- * Name [SchemaName] <p>The name of the schema.</p>
-- Required key: SchemaArn
-- Required key: Name
-- @return UpdateSchemaRequest structure as a key-value pair table
function M.UpdateSchemaRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSchemaRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateSchemaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [UpdateActionType] <p>The action to perform when updating the attribute.</p>
-- * Attribute [FacetAttribute] <p>The attribute to update.</p>
-- @return FacetAttributeUpdate structure as a key-value pair table
function M.FacetAttributeUpdate(args)
	assert(args, "You must provide an argument table when creating FacetAttributeUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["Attribute"] = args["Attribute"],
	}
	asserts.AssertFacetAttributeUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParentReference [ObjectReference] <p>A reference to the parent object that contains the index object.</p>
-- * OrderedIndexedAttributeList [AttributeKeyList] <p>Specifies the attributes that should be indexed on. Currently only a single attribute is supported.</p>
-- * IsUnique [Bool] <p>Indicates whether the attribute that is being indexed has unique values or not.</p>
-- * DirectoryArn [Arn] <p>The ARN of the directory where the index should be created.</p>
-- * LinkName [LinkName] <p>The name of the link between the parent object and the index object.</p>
-- Required key: DirectoryArn
-- Required key: OrderedIndexedAttributeList
-- Required key: IsUnique
-- @return CreateIndexRequest structure as a key-value pair table
function M.CreateIndexRequest(args)
	assert(args, "You must provide an argument table when creating CreateIndexRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ParentReference"] = args["ParentReference"],
		["OrderedIndexedAttributeList"] = args["OrderedIndexedAttributeList"],
		["IsUnique"] = args["IsUnique"],
		["DirectoryArn"] = args["DirectoryArn"],
		["LinkName"] = args["LinkName"],
	}
	asserts.AssertCreateIndexRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The input ARN that is returned as part of the response. For more information, see <a>arns</a>.</p>
-- @return DeleteSchemaResponse structure as a key-value pair table
function M.DeleteSchemaResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSchemaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
	}
	asserts.AssertDeleteSchemaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Facet = { ["FacetStyle"] = true, ["Name"] = true, ["ObjectType"] = true, nil }

function asserts.AssertFacet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Facet to be of type 'table'")
	if struct["FacetStyle"] then asserts.AssertFacetStyle(struct["FacetStyle"]) end
	if struct["Name"] then asserts.AssertFacetName(struct["Name"]) end
	if struct["ObjectType"] then asserts.AssertObjectType(struct["ObjectType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Facet[k], "Facet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Facet
-- <p>A structure that contains <code>Name</code>, <code>ARN</code>, <code>Attributes</code>, <code> <a>Rule</a>s</code>, and <code>ObjectTypes</code>. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_whatarefacets.html">Facets</a> for more information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FacetStyle [FacetStyle] <p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>
-- * Name [FacetName] <p>The name of the <a>Facet</a>.</p>
-- * ObjectType [ObjectType] <p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>
-- @return Facet structure as a key-value pair table
function M.Facet(args)
	assert(args, "You must provide an argument table when creating Facet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FacetStyle"] = args["FacetStyle"],
		["Name"] = args["Name"],
		["ObjectType"] = args["ObjectType"],
	}
	asserts.AssertFacet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AppliedSchemaArn [Arn] <p>The ARN of the published schema in the <a>Directory</a>. Once a published schema is copied into the directory, it has its own ARN, which is referred to applied schema ARN. For more information, see <a>arns</a>.</p>
-- * ObjectIdentifier [ObjectIdentifier] <p>The root object node of the created directory.</p>
-- * Name [DirectoryName] <p>The name of the <a>Directory</a>.</p>
-- * DirectoryArn [DirectoryArn] <p>The ARN that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: Name
-- Required key: ObjectIdentifier
-- Required key: AppliedSchemaArn
-- @return CreateDirectoryResponse structure as a key-value pair table
function M.CreateDirectoryResponse(args)
	assert(args, "You must provide an argument table when creating CreateDirectoryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AppliedSchemaArn"] = args["AppliedSchemaArn"],
		["ObjectIdentifier"] = args["ObjectIdentifier"],
		["Name"] = args["Name"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertCreateDirectoryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAppliedSchemaVersionResponse = { ["AppliedSchemaArn"] = true, nil }

function asserts.AssertGetAppliedSchemaVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAppliedSchemaVersionResponse to be of type 'table'")
	if struct["AppliedSchemaArn"] then asserts.AssertArn(struct["AppliedSchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAppliedSchemaVersionResponse[k], "GetAppliedSchemaVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAppliedSchemaVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AppliedSchemaArn [Arn] <p>Current applied schema ARN, including the minor version in use if one was provided.</p>
-- @return GetAppliedSchemaVersionResponse structure as a key-value pair table
function M.GetAppliedSchemaVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetAppliedSchemaVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AppliedSchemaArn"] = args["AppliedSchemaArn"],
	}
	asserts.AssertGetAppliedSchemaVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListObjectPoliciesResponse = { ["AttachedPolicyIds"] = true, ["NextToken"] = true, nil }

function asserts.AssertBatchListObjectPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectPoliciesResponse to be of type 'table'")
	if struct["AttachedPolicyIds"] then asserts.AssertObjectIdentifierList(struct["AttachedPolicyIds"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListObjectPoliciesResponse[k], "BatchListObjectPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectPoliciesResponse
-- <p>Represents the output of a <a>ListObjectPolicies</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttachedPolicyIds [ObjectIdentifierList] <p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the object.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return BatchListObjectPoliciesResponse structure as a key-value pair table
function M.BatchListObjectPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating BatchListObjectPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttachedPolicyIds"] = args["AttachedPolicyIds"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertBatchListObjectPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListObjectParentsRequest = { ["MaxResults"] = true, ["IncludeAllLinksToEachParent"] = true, ["ObjectReference"] = true, ["DirectoryArn"] = true, ["NextToken"] = true, ["ConsistencyLevel"] = true, nil }

function asserts.AssertListObjectParentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListObjectParentsRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["IncludeAllLinksToEachParent"] then asserts.AssertBool(struct["IncludeAllLinksToEachParent"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListObjectParentsRequest[k], "ListObjectParentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListObjectParentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- * IncludeAllLinksToEachParent [Bool] <p>When set to True, returns all <a>ListObjectParentsResponse$ParentLinks</a>. There could be multiple links between a parent-child pair.</p>
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object for which parent objects are being listed.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- @return ListObjectParentsRequest structure as a key-value pair table
function M.ListObjectParentsRequest(args)
	assert(args, "You must provide an argument table when creating ListObjectParentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
        ["x-amz-consistency-level"] = args["ConsistencyLevel"],
    }
	local all_args = { 
		["MaxResults"] = args["MaxResults"],
		["IncludeAllLinksToEachParent"] = args["IncludeAllLinksToEachParent"],
		["ObjectReference"] = args["ObjectReference"],
		["DirectoryArn"] = args["DirectoryArn"],
		["NextToken"] = args["NextToken"],
		["ConsistencyLevel"] = args["ConsistencyLevel"],
	}
	asserts.AssertListObjectParentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [DirectoryState] <p>The state of the directory. Can be either <code>Enabled</code>, <code>Disabled</code>, or <code>Deleted</code>.</p>
-- * CreationDateTime [Date] <p>The date and time when the directory was created.</p>
-- * Name [DirectoryName] <p>The name of the directory.</p>
-- * DirectoryArn [DirectoryArn] <p>The Amazon Resource Name (ARN) that is associated with the directory. For more information, see <a>arns</a>.</p>
-- @return Directory structure as a key-value pair table
function M.Directory(args)
	assert(args, "You must provide an argument table when creating Directory")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
		["CreationDateTime"] = args["CreationDateTime"],
		["Name"] = args["Name"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertDirectory(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [PathString] <p>The path that is referenced from the root.</p>
-- * Policies [PolicyAttachmentList] <p>List of policy objects.</p>
-- @return PolicyToPath structure as a key-value pair table
function M.PolicyToPath(args)
	assert(args, "You must provide an argument table when creating PolicyToPath")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
		["Policies"] = args["Policies"],
	}
	asserts.AssertPolicyToPath(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListIndex = { ["NextToken"] = true, ["IndexReference"] = true, ["MaxResults"] = true, ["RangesOnIndexedValues"] = true, nil }

function asserts.AssertBatchListIndex(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListIndex to be of type 'table'")
	assert(struct["IndexReference"], "Expected key IndexReference to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["IndexReference"] then asserts.AssertObjectReference(struct["IndexReference"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	if struct["RangesOnIndexedValues"] then asserts.AssertObjectAttributeRangeList(struct["RangesOnIndexedValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListIndex[k], "BatchListIndex contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListIndex
-- <p>Lists objects attached to the specified index inside a <a>BatchRead</a> operation. For more information, see <a>ListIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * IndexReference [ObjectReference] <p>The reference to the index to list.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- * RangesOnIndexedValues [ObjectAttributeRangeList] <p>Specifies the ranges of indexed values that you want to query.</p>
-- Required key: IndexReference
-- @return BatchListIndex structure as a key-value pair table
function M.BatchListIndex(args)
	assert(args, "You must provide an argument table when creating BatchListIndex")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["IndexReference"] = args["IndexReference"],
		["MaxResults"] = args["MaxResults"],
		["RangesOnIndexedValues"] = args["RangesOnIndexedValues"],
	}
	asserts.AssertBatchListIndex(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The ARN of the schema that contains the facet with no minor component. See <a>arns</a> and <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_inplaceschemaupgrade.html">In-Place Schema Upgrade</a> for a description of when to provide minor versions.</p>
-- * FacetName [FacetName] <p>The name of the facet.</p>
-- @return SchemaFacet structure as a key-value pair table
function M.SchemaFacet(args)
	assert(args, "You must provide an argument table when creating SchemaFacet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["FacetName"] = args["FacetName"],
	}
	asserts.AssertSchemaFacet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FacetFilter [SchemaFacet] <p>Used to filter the list of object attributes that are associated with a certain facet.</p>
-- * MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object whose attributes will be listed.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- @return ListObjectAttributesRequest structure as a key-value pair table
function M.ListObjectAttributesRequest(args)
	assert(args, "You must provide an argument table when creating ListObjectAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
        ["x-amz-consistency-level"] = args["ConsistencyLevel"],
    }
	local all_args = { 
		["FacetFilter"] = args["FacetFilter"],
		["MaxResults"] = args["MaxResults"],
		["ObjectReference"] = args["ObjectReference"],
		["DirectoryArn"] = args["DirectoryArn"],
		["NextToken"] = args["NextToken"],
		["ConsistencyLevel"] = args["ConsistencyLevel"],
	}
	asserts.AssertListObjectAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output of a <a>DetachObject</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * detachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the detached object.</p>
-- @return BatchDetachObjectResponse structure as a key-value pair table
function M.BatchDetachObjectResponse(args)
	assert(args, "You must provide an argument table when creating BatchDetachObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["detachedObjectIdentifier"] = args["detachedObjectIdentifier"],
	}
	asserts.AssertBatchDetachObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexAttachments [IndexAttachmentList] <p>The objects and indexed values attached to the index.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return ListIndexResponse structure as a key-value pair table
function M.ListIndexResponse(args)
	assert(args, "You must provide an argument table when creating ListIndexResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexAttachments"] = args["IndexAttachments"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListIndexResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DetachPolicyResponse structure as a key-value pair table
function M.DetachPolicyResponse(args)
	assert(args, "You must provide an argument table when creating DetachPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDetachPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PublishSchemaRequest = { ["DevelopmentSchemaArn"] = true, ["Version"] = true, ["MinorVersion"] = true, ["Name"] = true, nil }

function asserts.AssertPublishSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishSchemaRequest to be of type 'table'")
	assert(struct["DevelopmentSchemaArn"], "Expected key DevelopmentSchemaArn to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	if struct["DevelopmentSchemaArn"] then asserts.AssertArn(struct["DevelopmentSchemaArn"]) end
	if struct["Version"] then asserts.AssertVersion(struct["Version"]) end
	if struct["MinorVersion"] then asserts.AssertVersion(struct["MinorVersion"]) end
	if struct["Name"] then asserts.AssertSchemaName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublishSchemaRequest[k], "PublishSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishSchemaRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DevelopmentSchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the development schema. For more information, see <a>arns</a>.</p>
-- * Version [Version] <p>The major version under which the schema will be published. Schemas have both a major and minor version associated with them.</p>
-- * MinorVersion [Version] <p>The minor version under which the schema will be published. This parameter is recommended. Schemas have both a major and minor version associated with them.</p>
-- * Name [SchemaName] <p>The new name under which the schema will be published. If this is not provided, the development schema is considered.</p>
-- Required key: DevelopmentSchemaArn
-- Required key: Version
-- @return PublishSchemaRequest structure as a key-value pair table
function M.PublishSchemaRequest(args)
	assert(args, "You must provide an argument table when creating PublishSchemaRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DevelopmentSchemaArn"],
    }
	local all_args = { 
		["DevelopmentSchemaArn"] = args["DevelopmentSchemaArn"],
		["Version"] = args["Version"],
		["MinorVersion"] = args["MinorVersion"],
		["Name"] = args["Name"],
	}
	asserts.AssertPublishSchemaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectIdentifier [ObjectIdentifier] <p>The identifier that is associated with the object.</p>
-- @return CreateObjectResponse structure as a key-value pair table
function M.CreateObjectResponse(args)
	assert(args, "You must provide an argument table when creating CreateObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectIdentifier"] = args["ObjectIdentifier"],
	}
	asserts.AssertCreateObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The ARN of the schema where the facet resides.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * Name [FacetName] <p>The name of the facet whose attributes will be retrieved.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: SchemaArn
-- Required key: Name
-- @return ListFacetAttributesRequest structure as a key-value pair table
function M.ListFacetAttributesRequest(args)
	assert(args, "You must provide an argument table when creating ListFacetAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["NextToken"] = args["NextToken"],
		["Name"] = args["Name"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListFacetAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchCreateIndex = { ["ParentReference"] = true, ["OrderedIndexedAttributeList"] = true, ["BatchReferenceName"] = true, ["IsUnique"] = true, ["LinkName"] = true, nil }

function asserts.AssertBatchCreateIndex(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCreateIndex to be of type 'table'")
	assert(struct["OrderedIndexedAttributeList"], "Expected key OrderedIndexedAttributeList to exist in table")
	assert(struct["IsUnique"], "Expected key IsUnique to exist in table")
	if struct["ParentReference"] then asserts.AssertObjectReference(struct["ParentReference"]) end
	if struct["OrderedIndexedAttributeList"] then asserts.AssertAttributeKeyList(struct["OrderedIndexedAttributeList"]) end
	if struct["BatchReferenceName"] then asserts.AssertBatchReferenceName(struct["BatchReferenceName"]) end
	if struct["IsUnique"] then asserts.AssertBool(struct["IsUnique"]) end
	if struct["LinkName"] then asserts.AssertLinkName(struct["LinkName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchCreateIndex[k], "BatchCreateIndex contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCreateIndex
-- <p>Creates an index object inside of a <a>BatchRead</a> operation. For more information, see <a>CreateIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParentReference [ObjectReference] <p>A reference to the parent object that contains the index object.</p>
-- * OrderedIndexedAttributeList [AttributeKeyList] <p>Specifies the attributes that should be indexed on. Currently only a single attribute is supported.</p>
-- * BatchReferenceName [BatchReferenceName] <p>The batch reference name. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html">Transaction Support</a> for more information.</p>
-- * IsUnique [Bool] <p>Indicates whether the attribute that is being indexed has unique values or not.</p>
-- * LinkName [LinkName] <p>The name of the link between the parent object and the index object.</p>
-- Required key: OrderedIndexedAttributeList
-- Required key: IsUnique
-- @return BatchCreateIndex structure as a key-value pair table
function M.BatchCreateIndex(args)
	assert(args, "You must provide an argument table when creating BatchCreateIndex")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParentReference"] = args["ParentReference"],
		["OrderedIndexedAttributeList"] = args["OrderedIndexedAttributeList"],
		["BatchReferenceName"] = args["BatchReferenceName"],
		["IsUnique"] = args["IsUnique"],
		["LinkName"] = args["LinkName"],
	}
	asserts.AssertBatchCreateIndex(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParentReference [ObjectReference] <p>The parent reference from which the object with the specified link name is detached.</p>
-- * LinkName [LinkName] <p>The link name associated with the object that needs to be detached.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where objects reside. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: ParentReference
-- Required key: LinkName
-- @return DetachObjectRequest structure as a key-value pair table
function M.DetachObjectRequest(args)
	assert(args, "You must provide an argument table when creating DetachObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ParentReference"] = args["ParentReference"],
		["LinkName"] = args["LinkName"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertDetachObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>. For more information, see <a>arns</a>.</p>
-- * Name [FacetName] <p>The name of the facet to retrieve.</p>
-- Required key: SchemaArn
-- Required key: Name
-- @return GetFacetRequest structure as a key-value pair table
function M.GetFacetRequest(args)
	assert(args, "You must provide an argument table when creating GetFacetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["Name"] = args["Name"],
	}
	asserts.AssertGetFacetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAppliedSchemaVersionRequest = { ["SchemaArn"] = true, nil }

function asserts.AssertGetAppliedSchemaVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAppliedSchemaVersionRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAppliedSchemaVersionRequest[k], "GetAppliedSchemaVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAppliedSchemaVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The ARN of the applied schema.</p>
-- Required key: SchemaArn
-- @return GetAppliedSchemaVersionRequest structure as a key-value pair table
function M.GetAppliedSchemaVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetAppliedSchemaVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
	}
	asserts.AssertGetAppliedSchemaVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPublishedSchemaArnsRequest = { ["SchemaArn"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListPublishedSchemaArnsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublishedSchemaArnsRequest to be of type 'table'")
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPublishedSchemaArnsRequest[k], "ListPublishedSchemaArnsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublishedSchemaArnsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The response for <code>ListPublishedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- @return ListPublishedSchemaArnsRequest structure as a key-value pair table
function M.ListPublishedSchemaArnsRequest(args)
	assert(args, "You must provide an argument table when creating ListPublishedSchemaArnsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListPublishedSchemaArnsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [SchemaName] <p>The name that is associated with the schema. This is unique to each account and in each region.</p>
-- Required key: Name
-- @return CreateSchemaRequest structure as a key-value pair table
function M.CreateSchemaRequest(args)
	assert(args, "You must provide an argument table when creating CreateSchemaRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSchemaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexAttachments [IndexAttachmentList] <p>The indices attached to the specified object.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return ListAttachedIndicesResponse structure as a key-value pair table
function M.ListAttachedIndicesResponse(args)
	assert(args, "You must provide an argument table when creating ListAttachedIndicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexAttachments"] = args["IndexAttachments"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListAttachedIndicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [Arn] <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.</p>
-- * TagKeys [TagKeyList] <p>Keys of the tag that need to be removed from the resource.</p>
-- Required key: ResourceArn
-- Required key: TagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpgradePublishedSchemaResponse = { ["UpgradedSchemaArn"] = true, nil }

function asserts.AssertUpgradePublishedSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradePublishedSchemaResponse to be of type 'table'")
	if struct["UpgradedSchemaArn"] then asserts.AssertArn(struct["UpgradedSchemaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradePublishedSchemaResponse[k], "UpgradePublishedSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradePublishedSchemaResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UpgradedSchemaArn [Arn] <p>The ARN of the upgraded schema that is returned as part of the response.</p>
-- @return UpgradePublishedSchemaResponse structure as a key-value pair table
function M.UpgradePublishedSchemaResponse(args)
	assert(args, "You must provide an argument table when creating UpgradePublishedSchemaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UpgradedSchemaArn"] = args["UpgradedSchemaArn"],
	}
	asserts.AssertUpgradePublishedSchemaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output of a <a>ListObjectChildren</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * Children [LinkNameToObjectIdentifierMap] <p>The children structure, which is a map with the key as the <code>LinkName</code> and <code>ObjectIdentifier</code> as the value.</p>
-- @return BatchListObjectChildrenResponse structure as a key-value pair table
function M.BatchListObjectChildrenResponse(args)
	assert(args, "You must provide an argument table when creating BatchListObjectChildrenResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Children"] = args["Children"],
	}
	asserts.AssertBatchListObjectChildrenResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>A reference to the object.</p>
-- * ConsistencyLevel [ConsistencyLevel] <p>The consistency level at which to retrieve the object information.</p>
-- * DirectoryArn [Arn] <p>The ARN of the directory being retrieved.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- @return GetObjectInformationRequest structure as a key-value pair table
function M.GetObjectInformationRequest(args)
	assert(args, "You must provide an argument table when creating GetObjectInformationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-consistency-level"] = args["ConsistencyLevel"],
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["ConsistencyLevel"] = args["ConsistencyLevel"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertGetObjectInformationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PublishedSchemaArn [Arn] <p>The ARN that is associated with the published schema. For more information, see <a>arns</a>.</p>
-- @return PublishSchemaResponse structure as a key-value pair table
function M.PublishSchemaResponse(args)
	assert(args, "You must provide an argument table when creating PublishSchemaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PublishedSchemaArn"] = args["PublishedSchemaArn"],
	}
	asserts.AssertPublishSchemaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchCreateIndexResponse = { ["ObjectIdentifier"] = true, nil }

function asserts.AssertBatchCreateIndexResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCreateIndexResponse to be of type 'table'")
	if struct["ObjectIdentifier"] then asserts.AssertObjectIdentifier(struct["ObjectIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchCreateIndexResponse[k], "BatchCreateIndexResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCreateIndexResponse
-- <p>Represents the output of a <a>CreateIndex</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>
-- @return BatchCreateIndexResponse structure as a key-value pair table
function M.BatchCreateIndexResponse(args)
	assert(args, "You must provide an argument table when creating BatchCreateIndexResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectIdentifier"] = args["ObjectIdentifier"],
	}
	asserts.AssertBatchCreateIndexResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchAttachTypedLinkResponse = { ["TypedLinkSpecifier"] = true, nil }

function asserts.AssertBatchAttachTypedLinkResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAttachTypedLinkResponse to be of type 'table'")
	if struct["TypedLinkSpecifier"] then asserts.AssertTypedLinkSpecifier(struct["TypedLinkSpecifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAttachTypedLinkResponse[k], "BatchAttachTypedLinkResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAttachTypedLinkResponse
-- <p>Represents the output of a <a>AttachTypedLink</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypedLinkSpecifier [TypedLinkSpecifier] <p>Returns a typed link specifier as output.</p>
-- @return BatchAttachTypedLinkResponse structure as a key-value pair table
function M.BatchAttachTypedLinkResponse(args)
	assert(args, "You must provide an argument table when creating BatchAttachTypedLinkResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TypedLinkSpecifier"] = args["TypedLinkSpecifier"],
	}
	asserts.AssertBatchAttachTypedLinkResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeUpdates [ObjectAttributeUpdateList] <p>The attributes update structure.</p>
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- Required key: AttributeUpdates
-- @return UpdateObjectAttributesRequest structure as a key-value pair table
function M.UpdateObjectAttributesRequest(args)
	assert(args, "You must provide an argument table when creating UpdateObjectAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["AttributeUpdates"] = args["AttributeUpdates"],
		["ObjectReference"] = args["ObjectReference"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertUpdateObjectAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexReference [ObjectReference] <p>A reference to the index object.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory the index and object exist in.</p>
-- * TargetReference [ObjectReference] <p>A reference to the object being detached from the index.</p>
-- Required key: DirectoryArn
-- Required key: IndexReference
-- Required key: TargetReference
-- @return DetachFromIndexRequest structure as a key-value pair table
function M.DetachFromIndexRequest(args)
	assert(args, "You must provide an argument table when creating DetachFromIndexRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["IndexReference"] = args["IndexReference"],
		["DirectoryArn"] = args["DirectoryArn"],
		["TargetReference"] = args["TargetReference"],
	}
	asserts.AssertDetachFromIndexRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * SchemaArns [Arns] <p>The ARNs of schemas that are applied to the directory.</p>
-- @return ListAppliedSchemaArnsResponse structure as a key-value pair table
function M.ListAppliedSchemaArnsResponse(args)
	assert(args, "You must provide an argument table when creating ListAppliedSchemaArnsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SchemaArns"] = args["SchemaArns"],
	}
	asserts.AssertListAppliedSchemaArnsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterAttributeRanges [TypedLinkAttributeRangeList] <p>Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- * FilterTypedLink [TypedLinkSchemaAndFacetName] <p>Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.</p>
-- * ObjectReference [ObjectReference] <p>Reference that identifies the object whose attributes will be listed.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed links.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * ConsistencyLevel [ConsistencyLevel] <p>The consistency level to execute the request at.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- @return ListIncomingTypedLinksRequest structure as a key-value pair table
function M.ListIncomingTypedLinksRequest(args)
	assert(args, "You must provide an argument table when creating ListIncomingTypedLinksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["FilterAttributeRanges"] = args["FilterAttributeRanges"],
		["MaxResults"] = args["MaxResults"],
		["FilterTypedLink"] = args["FilterTypedLink"],
		["ObjectReference"] = args["ObjectReference"],
		["DirectoryArn"] = args["DirectoryArn"],
		["NextToken"] = args["NextToken"],
		["ConsistencyLevel"] = args["ConsistencyLevel"],
	}
	asserts.AssertListIncomingTypedLinksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyReference [ObjectReference] <p>Reference that identifies the policy object.</p>
-- * ObjectReference [ObjectReference] <p>Reference that identifies the object whose policy object will be detached.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where both objects reside. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: PolicyReference
-- Required key: ObjectReference
-- @return DetachPolicyRequest structure as a key-value pair table
function M.DetachPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DetachPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["PolicyReference"] = args["PolicyReference"],
		["ObjectReference"] = args["ObjectReference"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertDetachPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [Arn] <p>The ARN of the schema to update.</p>
-- @return PutSchemaFromJsonResponse structure as a key-value pair table
function M.PutSchemaFromJsonResponse(args)
	assert(args, "You must provide an argument table when creating PutSchemaFromJsonResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
	}
	asserts.AssertPutSchemaFromJsonResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxResults [NumberResults] <p>The maximum number of objects in a single page to retrieve from the index during a request. For more information, see <a href="http://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html">Amazon Cloud Directory Limits</a>.</p>
-- * RangesOnIndexedValues [ObjectAttributeRangeList] <p>Specifies the ranges of indexed values that you want to query.</p>
-- * IndexReference [ObjectReference] <p>The reference to the index to list.</p>
-- * DirectoryArn [Arn] <p>The ARN of the directory that the index exists in.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * ConsistencyLevel [ConsistencyLevel] <p>The consistency level to execute the request at.</p>
-- Required key: DirectoryArn
-- Required key: IndexReference
-- @return ListIndexRequest structure as a key-value pair table
function M.ListIndexRequest(args)
	assert(args, "You must provide an argument table when creating ListIndexRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
        ["x-amz-consistency-level"] = args["ConsistencyLevel"],
    }
	local all_args = { 
		["MaxResults"] = args["MaxResults"],
		["RangesOnIndexedValues"] = args["RangesOnIndexedValues"],
		["IndexReference"] = args["IndexReference"],
		["DirectoryArn"] = args["DirectoryArn"],
		["NextToken"] = args["NextToken"],
		["ConsistencyLevel"] = args["ConsistencyLevel"],
	}
	asserts.AssertListIndexRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateTypedLinkFacetResponse structure as a key-value pair table
function M.CreateTypedLinkFacetResponse(args)
	assert(args, "You must provide an argument table when creating CreateTypedLinkFacetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateTypedLinkFacetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Directory [Directory] <p>Metadata about the directory.</p>
-- Required key: Directory
-- @return GetDirectoryResponse structure as a key-value pair table
function M.GetDirectoryResponse(args)
	assert(args, "You must provide an argument table when creating GetDirectoryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Directory"] = args["Directory"],
	}
	asserts.AssertGetDirectoryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>
-- @return CreateIndexResponse structure as a key-value pair table
function M.CreateIndexResponse(args)
	assert(args, "You must provide an argument table when creating CreateIndexResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectIdentifier"] = args["ObjectIdentifier"],
	}
	asserts.AssertCreateIndexResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output of an <a>AttachObject</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParentReference [ObjectReference] <p>The parent object reference.</p>
-- * LinkName [LinkName] <p>The name of the link.</p>
-- * ChildReference [ObjectReference] <p>The child object reference that is to be attached to the object.</p>
-- Required key: ParentReference
-- Required key: ChildReference
-- Required key: LinkName
-- @return BatchAttachObject structure as a key-value pair table
function M.BatchAttachObject(args)
	assert(args, "You must provide an argument table when creating BatchAttachObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParentReference"] = args["ParentReference"],
		["LinkName"] = args["LinkName"],
		["ChildReference"] = args["ChildReference"],
	}
	asserts.AssertBatchAttachObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A facet attribute definition. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [RuleMap] <p>Validation rules attached to the attribute definition.</p>
-- * DefaultValue [TypedAttributeValue] <p>The default value of the attribute (if configured).</p>
-- * Type [FacetAttributeType] <p>The type of the attribute.</p>
-- * IsImmutable [Bool] <p>Whether the attribute is mutable or not.</p>
-- Required key: Type
-- @return FacetAttributeDefinition structure as a key-value pair table
function M.FacetAttributeDefinition(args)
	assert(args, "You must provide an argument table when creating FacetAttributeDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
		["DefaultValue"] = args["DefaultValue"],
		["Type"] = args["Type"],
		["IsImmutable"] = args["IsImmutable"],
	}
	asserts.AssertFacetAttributeDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [Arn] <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.</p>
-- * NextToken [NextToken] <p>The pagination token. This is for future use. Currently pagination is not supported for tagging.</p>
-- * MaxResults [TagsNumberResults] <p>The <code>MaxResults</code> parameter sets the maximum number of results returned in a single page. This is for future use and is not supported currently.</p>
-- Required key: ResourceArn
-- @return ListTagsForResourceRequest structure as a key-value pair table
function M.ListTagsForResourceRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListTagsForResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetObjectAttributesResponse = { ["Attributes"] = true, nil }

function asserts.AssertBatchGetObjectAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetObjectAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributeKeyAndValueList(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetObjectAttributesResponse[k], "BatchGetObjectAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetObjectAttributesResponse
-- <p>Represents the output of a <a>GetObjectAttributes</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeKeyAndValueList] <p>The attribute values that are associated with an object.</p>
-- @return BatchGetObjectAttributesResponse structure as a key-value pair table
function M.BatchGetObjectAttributesResponse(args)
	assert(args, "You must provide an argument table when creating BatchGetObjectAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertBatchGetObjectAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BatchAddFacetToObjectResponse structure as a key-value pair table
function M.BatchAddFacetToObjectResponse(args)
	assert(args, "You must provide an argument table when creating BatchAddFacetToObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertBatchAddFacetToObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetachPolicy = { ["PolicyReference"] = true, ["ObjectReference"] = true, nil }

function asserts.AssertBatchDetachPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachPolicy to be of type 'table'")
	assert(struct["PolicyReference"], "Expected key PolicyReference to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["PolicyReference"] then asserts.AssertObjectReference(struct["PolicyReference"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetachPolicy[k], "BatchDetachPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachPolicy
-- <p>Detaches the specified policy from the specified directory inside a <a>BatchWrite</a> operation. For more information, see <a>DetachPolicy</a> and <a>BatchWriteRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyReference [ObjectReference] <p>Reference that identifies the policy object.</p>
-- * ObjectReference [ObjectReference] <p>Reference that identifies the object whose policy object will be detached.</p>
-- Required key: PolicyReference
-- Required key: ObjectReference
-- @return BatchDetachPolicy structure as a key-value pair table
function M.BatchDetachPolicy(args)
	assert(args, "You must provide an argument table when creating BatchDetachPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyReference"] = args["PolicyReference"],
		["ObjectReference"] = args["ObjectReference"],
	}
	asserts.AssertBatchDetachPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BatchRemoveFacetFromObjectResponse structure as a key-value pair table
function M.BatchRemoveFacetFromObjectResponse(args)
	assert(args, "You must provide an argument table when creating BatchRemoveFacetFromObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertBatchRemoveFacetFromObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AttachPolicyResponse structure as a key-value pair table
function M.AttachPolicyResponse(args)
	assert(args, "You must provide an argument table when creating AttachPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAttachPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * state [DirectoryState] <p>The state of the directories in the list. Can be either Enabled, Disabled, or Deleted.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- @return ListDirectoriesRequest structure as a key-value pair table
function M.ListDirectoriesRequest(args)
	assert(args, "You must provide an argument table when creating ListDirectoriesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["state"] = args["state"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListDirectoriesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetObjectInformation = { ["ObjectReference"] = true, nil }

function asserts.AssertBatchGetObjectInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetObjectInformation to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetObjectInformation[k], "BatchGetObjectInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetObjectInformation
-- <p>Retrieves metadata about an object inside a <a>BatchRead</a> operation. For more information, see <a>GetObjectInformation</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>A reference to the object.</p>
-- Required key: ObjectReference
-- @return BatchGetObjectInformation structure as a key-value pair table
function M.BatchGetObjectInformation(args)
	assert(args, "You must provide an argument table when creating BatchGetObjectInformation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
	}
	asserts.AssertBatchGetObjectInformation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output of a <a>ListObjectChildren</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>Reference of the object for which child objects are being listed.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>Maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- Required key: ObjectReference
-- @return BatchListObjectChildren structure as a key-value pair table
function M.BatchListObjectChildren(args)
	assert(args, "You must provide an argument table when creating BatchListObjectChildren")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertBatchListObjectChildren(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityAttributeOrder [AttributeNameList] <p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed links considers the order that the attributes are defined on the typed link facet. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range. Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls. For more information about identity attributes, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- @return GetTypedLinkFacetInformationResponse structure as a key-value pair table
function M.GetTypedLinkFacetInformationResponse(args)
	assert(args, "You must provide an argument table when creating GetTypedLinkFacetInformationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityAttributeOrder"] = args["IdentityAttributeOrder"],
	}
	asserts.AssertGetTypedLinkFacetInformationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateTypedLinkFacetResponse structure as a key-value pair table
function M.UpdateTypedLinkFacetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateTypedLinkFacetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateTypedLinkFacetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchUpdateLinkAttributes = { ["AttributeUpdates"] = true, ["TypedLinkSpecifier"] = true, nil }

function asserts.AssertBatchUpdateLinkAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUpdateLinkAttributes to be of type 'table'")
	assert(struct["TypedLinkSpecifier"], "Expected key TypedLinkSpecifier to exist in table")
	assert(struct["AttributeUpdates"], "Expected key AttributeUpdates to exist in table")
	if struct["AttributeUpdates"] then asserts.AssertLinkAttributeUpdateList(struct["AttributeUpdates"]) end
	if struct["TypedLinkSpecifier"] then asserts.AssertTypedLinkSpecifier(struct["TypedLinkSpecifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchUpdateLinkAttributes[k], "BatchUpdateLinkAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUpdateLinkAttributes
-- <p>Updates a given typed link’s attributes inside a <a>BatchRead</a> operation. Attributes to be updated must not contribute to the typed link’s identity, as defined by its <code>IdentityAttributeOrder</code>. For more information, see <a>UpdateLinkAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeUpdates [LinkAttributeUpdateList] <p>The attributes update structure.</p>
-- * TypedLinkSpecifier [TypedLinkSpecifier] <p>Allows a typed link specifier to be accepted as input.</p>
-- Required key: TypedLinkSpecifier
-- Required key: AttributeUpdates
-- @return BatchUpdateLinkAttributes structure as a key-value pair table
function M.BatchUpdateLinkAttributes(args)
	assert(args, "You must provide an argument table when creating BatchUpdateLinkAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeUpdates"] = args["AttributeUpdates"],
		["TypedLinkSpecifier"] = args["TypedLinkSpecifier"],
	}
	asserts.AssertBatchUpdateLinkAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListIncomingTypedLinks = { ["FilterTypedLink"] = true, ["ObjectReference"] = true, ["NextToken"] = true, ["FilterAttributeRanges"] = true, ["MaxResults"] = true, nil }

function asserts.AssertBatchListIncomingTypedLinks(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListIncomingTypedLinks to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["FilterTypedLink"] then asserts.AssertTypedLinkSchemaAndFacetName(struct["FilterTypedLink"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["FilterAttributeRanges"] then asserts.AssertTypedLinkAttributeRangeList(struct["FilterAttributeRanges"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListIncomingTypedLinks[k], "BatchListIncomingTypedLinks contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListIncomingTypedLinks
-- <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a> information for an object inside a <a>BatchRead</a> operation. For more information, see <a>ListIncomingTypedLinks</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterTypedLink [TypedLinkSchemaAndFacetName] <p>Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.</p>
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object whose attributes will be listed.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * FilterAttributeRanges [TypedLinkAttributeRangeList] <p>Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: ObjectReference
-- @return BatchListIncomingTypedLinks structure as a key-value pair table
function M.BatchListIncomingTypedLinks(args)
	assert(args, "You must provide an argument table when creating BatchListIncomingTypedLinks")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FilterTypedLink"] = args["FilterTypedLink"],
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["FilterAttributeRanges"] = args["FilterAttributeRanges"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertBatchListIncomingTypedLinks(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [UpdateActionType] <p>The action to perform when updating the attribute.</p>
-- * Attribute [TypedLinkAttributeDefinition] <p>The attribute to update.</p>
-- Required key: Attribute
-- Required key: Action
-- @return TypedLinkFacetAttributeUpdate structure as a key-value pair table
function M.TypedLinkFacetAttributeUpdate(args)
	assert(args, "You must provide an argument table when creating TypedLinkFacetAttributeUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["Attribute"] = args["Attribute"],
	}
	asserts.AssertTypedLinkFacetAttributeUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypedLinkSpecifier [TypedLinkSpecifier] <p>Returns a typed link specifier as output.</p>
-- @return AttachTypedLinkResponse structure as a key-value pair table
function M.AttachTypedLinkResponse(args)
	assert(args, "You must provide an argument table when creating AttachTypedLinkResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TypedLinkSpecifier"] = args["TypedLinkSpecifier"],
	}
	asserts.AssertAttachTypedLinkResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryArn [Arn] <p>The ARN of the directory that has been disabled.</p>
-- Required key: DirectoryArn
-- @return DisableDirectoryResponse structure as a key-value pair table
function M.DisableDirectoryResponse(args)
	assert(args, "You must provide an argument table when creating DisableDirectoryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertDisableDirectoryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> that was detached from the object.</p>
-- @return DetachObjectResponse structure as a key-value pair table
function M.DetachObjectResponse(args)
	assert(args, "You must provide an argument table when creating DetachObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DetachedObjectIdentifier"] = args["DetachedObjectIdentifier"],
	}
	asserts.AssertDetachObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output of a <a>ListObjectAttributes</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FacetFilter [SchemaFacet] <p>Used to filter the list of object attributes that are associated with a certain facet.</p>
-- * ObjectReference [ObjectReference] <p>Reference of the object whose attributes need to be listed.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- Required key: ObjectReference
-- @return BatchListObjectAttributes structure as a key-value pair table
function M.BatchListObjectAttributes(args)
	assert(args, "You must provide an argument table when creating BatchListObjectAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FacetFilter"] = args["FacetFilter"],
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertBatchListObjectAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryArn [Arn] <p>The ARN of the enabled directory.</p>
-- Required key: DirectoryArn
-- @return EnableDirectoryResponse structure as a key-value pair table
function M.EnableDirectoryResponse(args)
	assert(args, "You must provide an argument table when creating EnableDirectoryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertEnableDirectoryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagResourceResponse structure as a key-value pair table
function M.UntagResourceResponse(args)
	assert(args, "You must provide an argument table when creating UntagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUntagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the specified object.</p>
-- * SchemaFacets [SchemaFacetList] <p>The facets attached to the specified object. Although the response does not include minor version information, the most recently applied minor version of each Facet is in effect. See <a>GetAppliedSchemaVersion</a> for details.</p>
-- @return GetObjectInformationResponse structure as a key-value pair table
function M.GetObjectInformationResponse(args)
	assert(args, "You must provide an argument table when creating GetObjectInformationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectIdentifier"] = args["ObjectIdentifier"],
		["SchemaFacets"] = args["SchemaFacets"],
	}
	asserts.AssertGetObjectInformationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListOutgoingTypedLinks = { ["FilterTypedLink"] = true, ["ObjectReference"] = true, ["NextToken"] = true, ["FilterAttributeRanges"] = true, ["MaxResults"] = true, nil }

function asserts.AssertBatchListOutgoingTypedLinks(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListOutgoingTypedLinks to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["FilterTypedLink"] then asserts.AssertTypedLinkSchemaAndFacetName(struct["FilterTypedLink"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["FilterAttributeRanges"] then asserts.AssertTypedLinkAttributeRangeList(struct["FilterAttributeRanges"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListOutgoingTypedLinks[k], "BatchListOutgoingTypedLinks contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListOutgoingTypedLinks
-- <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a> information for an object inside a <a>BatchRead</a> operation. For more information, see <a>ListOutgoingTypedLinks</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterTypedLink [TypedLinkSchemaAndFacetName] <p>Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.</p>
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object whose attributes will be listed.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * FilterAttributeRanges [TypedLinkAttributeRangeList] <p>Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: ObjectReference
-- @return BatchListOutgoingTypedLinks structure as a key-value pair table
function M.BatchListOutgoingTypedLinks(args)
	assert(args, "You must provide an argument table when creating BatchListOutgoingTypedLinks")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FilterTypedLink"] = args["FilterTypedLink"],
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["FilterAttributeRanges"] = args["FilterAttributeRanges"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertBatchListOutgoingTypedLinks(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- @return CreateSchemaResponse structure as a key-value pair table
function M.CreateSchemaResponse(args)
	assert(args, "You must provide an argument table when creating CreateSchemaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
	}
	asserts.AssertCreateSchemaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListManagedSchemaArnsResponse = { ["NextToken"] = true, ["SchemaArns"] = true, nil }

function asserts.AssertListManagedSchemaArnsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListManagedSchemaArnsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SchemaArns"] then asserts.AssertArns(struct["SchemaArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListManagedSchemaArnsResponse[k], "ListManagedSchemaArnsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListManagedSchemaArnsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * SchemaArns [Arns] <p>The ARNs for all AWS managed schemas.</p>
-- @return ListManagedSchemaArnsResponse structure as a key-value pair table
function M.ListManagedSchemaArnsResponse(args)
	assert(args, "You must provide an argument table when creating ListManagedSchemaArnsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SchemaArns"] = args["SchemaArns"],
	}
	asserts.AssertListManagedSchemaArnsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateFacetResponse structure as a key-value pair table
function M.CreateFacetResponse(args)
	assert(args, "You must provide an argument table when creating CreateFacetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateFacetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The ARN of the schema to retrieve.</p>
-- Required key: SchemaArn
-- @return GetSchemaAsJsonRequest structure as a key-value pair table
function M.GetSchemaAsJsonRequest(args)
	assert(args, "You must provide an argument table when creating GetSchemaAsJsonRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
	}
	asserts.AssertGetSchemaAsJsonRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTypedLinkFacetResponse structure as a key-value pair table
function M.DeleteTypedLinkFacetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteTypedLinkFacetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTypedLinkFacetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- * Name [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- Required key: SchemaArn
-- Required key: Name
-- @return GetTypedLinkFacetInformationRequest structure as a key-value pair table
function M.GetTypedLinkFacetInformationRequest(args)
	assert(args, "You must provide an argument table when creating GetTypedLinkFacetInformationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["Name"] = args["Name"],
	}
	asserts.AssertGetTypedLinkFacetInformationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListIncomingTypedLinksResponse = { ["NextToken"] = true, ["LinkSpecifiers"] = true, nil }

function asserts.AssertBatchListIncomingTypedLinksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListIncomingTypedLinksResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["LinkSpecifiers"] then asserts.AssertTypedLinkSpecifierList(struct["LinkSpecifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListIncomingTypedLinksResponse[k], "BatchListIncomingTypedLinksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListIncomingTypedLinksResponse
-- <p>Represents the output of a <a>ListIncomingTypedLinks</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * LinkSpecifiers [TypedLinkSpecifierList] <p>Returns one or more typed link specifiers as output.</p>
-- @return BatchListIncomingTypedLinksResponse structure as a key-value pair table
function M.BatchListIncomingTypedLinksResponse(args)
	assert(args, "You must provide an argument table when creating BatchListIncomingTypedLinksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["LinkSpecifiers"] = args["LinkSpecifiers"],
	}
	asserts.AssertBatchListIncomingTypedLinksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Document [SchemaJsonDocument] <p>The replacement JSON schema.</p>
-- * SchemaArn [Arn] <p>The ARN of the schema to update.</p>
-- Required key: SchemaArn
-- Required key: Document
-- @return PutSchemaFromJsonRequest structure as a key-value pair table
function M.PutSchemaFromJsonRequest(args)
	assert(args, "You must provide an argument table when creating PutSchemaFromJsonRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["Document"] = args["Document"],
		["SchemaArn"] = args["SchemaArn"],
	}
	asserts.AssertPutSchemaFromJsonRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryArn [Arn] <p>The ARN of the directory to enable.</p>
-- Required key: DirectoryArn
-- @return EnableDirectoryRequest structure as a key-value pair table
function M.EnableDirectoryRequest(args)
	assert(args, "You must provide an argument table when creating EnableDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertEnableDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the updated object.</p>
-- @return UpdateObjectAttributesResponse structure as a key-value pair table
function M.UpdateObjectAttributesResponse(args)
	assert(args, "You must provide an argument table when creating UpdateObjectAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectIdentifier"] = args["ObjectIdentifier"],
	}
	asserts.AssertUpdateObjectAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PathToObjectIdentifiersList [PathToObjectIdentifiersList] <p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the directory.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return ListObjectParentPathsResponse structure as a key-value pair table
function M.ListObjectParentPathsResponse(args)
	assert(args, "You must provide an argument table when creating ListObjectParentPathsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PathToObjectIdentifiersList"] = args["PathToObjectIdentifiersList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListObjectParentPathsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateLinkAttributesRequest = { ["AttributeUpdates"] = true, ["TypedLinkSpecifier"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertUpdateLinkAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLinkAttributesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["TypedLinkSpecifier"], "Expected key TypedLinkSpecifier to exist in table")
	assert(struct["AttributeUpdates"], "Expected key AttributeUpdates to exist in table")
	if struct["AttributeUpdates"] then asserts.AssertLinkAttributeUpdateList(struct["AttributeUpdates"]) end
	if struct["TypedLinkSpecifier"] then asserts.AssertTypedLinkSpecifier(struct["TypedLinkSpecifier"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateLinkAttributesRequest[k], "UpdateLinkAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLinkAttributesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeUpdates [LinkAttributeUpdateList] <p>The attributes update structure.</p>
-- * TypedLinkSpecifier [TypedLinkSpecifier] <p>Allows a typed link specifier to be accepted as input.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the Directory where the updated typed link resides. For more information, see <a>arns</a> or <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- Required key: DirectoryArn
-- Required key: TypedLinkSpecifier
-- Required key: AttributeUpdates
-- @return UpdateLinkAttributesRequest structure as a key-value pair table
function M.UpdateLinkAttributesRequest(args)
	assert(args, "You must provide an argument table when creating UpdateLinkAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["AttributeUpdates"] = args["AttributeUpdates"],
		["TypedLinkSpecifier"] = args["TypedLinkSpecifier"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertUpdateLinkAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeUpdates [TypedLinkFacetAttributeUpdateList] <p>Attributes update structure.</p>
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- * IdentityAttributeOrder [AttributeNameList] <p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed links considers the order that the attributes are defined on the typed link facet. When providing ranges to a typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range. Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls. For more information about identity attributes, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- * Name [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- Required key: SchemaArn
-- Required key: Name
-- Required key: AttributeUpdates
-- Required key: IdentityAttributeOrder
-- @return UpdateTypedLinkFacetRequest structure as a key-value pair table
function M.UpdateTypedLinkFacetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateTypedLinkFacetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["AttributeUpdates"] = args["AttributeUpdates"],
		["SchemaArn"] = args["SchemaArn"],
		["IdentityAttributeOrder"] = args["IdentityAttributeOrder"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateTypedLinkFacetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetachPolicyResponse = { nil }

function asserts.AssertBatchDetachPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchDetachPolicyResponse[k], "BatchDetachPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachPolicyResponse
-- <p>Represents the output of a <a>DetachPolicy</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BatchDetachPolicyResponse structure as a key-value pair table
function M.BatchDetachPolicyResponse(args)
	assert(args, "You must provide an argument table when creating BatchDetachPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertBatchDetachPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListPolicyAttachmentsResponse = { ["NextToken"] = true, ["ObjectIdentifiers"] = true, nil }

function asserts.AssertBatchListPolicyAttachmentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListPolicyAttachmentsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ObjectIdentifiers"] then asserts.AssertObjectIdentifierList(struct["ObjectIdentifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListPolicyAttachmentsResponse[k], "BatchListPolicyAttachmentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListPolicyAttachmentsResponse
-- <p>Represents the output of a <a>ListPolicyAttachments</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * ObjectIdentifiers [ObjectIdentifierList] <p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>
-- @return BatchListPolicyAttachmentsResponse structure as a key-value pair table
function M.BatchListPolicyAttachmentsResponse(args)
	assert(args, "You must provide an argument table when creating BatchListPolicyAttachmentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ObjectIdentifiers"] = args["ObjectIdentifiers"],
	}
	asserts.AssertBatchListPolicyAttachmentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * FacetNames [FacetNameList] <p>The names of facets that exist within the schema.</p>
-- @return ListFacetNamesResponse structure as a key-value pair table
function M.ListFacetNamesResponse(args)
	assert(args, "You must provide an argument table when creating ListFacetNamesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["FacetNames"] = args["FacetNames"],
	}
	asserts.AssertListFacetNamesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * Name [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: SchemaArn
-- Required key: Name
-- @return ListTypedLinkFacetAttributesRequest structure as a key-value pair table
function M.ListTypedLinkFacetAttributesRequest(args)
	assert(args, "You must provide an argument table when creating ListTypedLinkFacetAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["NextToken"] = args["NextToken"],
		["Name"] = args["Name"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListTypedLinkFacetAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequiredBehavior [RequiredAttributeBehavior] <p>The required behavior of the <code>TypedLinkAttributeDefinition</code>.</p>
-- * Name [AttributeName] <p>The unique name of the typed link attribute.</p>
-- * IsImmutable [Bool] <p>Whether the attribute is mutable or not.</p>
-- * Rules [RuleMap] <p>Validation rules that are attached to the attribute definition.</p>
-- * DefaultValue [TypedAttributeValue] <p>The default value of the attribute (if configured).</p>
-- * Type [FacetAttributeType] <p>The type of the attribute.</p>
-- Required key: Name
-- Required key: Type
-- Required key: RequiredBehavior
-- @return TypedLinkAttributeDefinition structure as a key-value pair table
function M.TypedLinkAttributeDefinition(args)
	assert(args, "You must provide an argument table when creating TypedLinkAttributeDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RequiredBehavior"] = args["RequiredBehavior"],
		["Name"] = args["Name"],
		["IsImmutable"] = args["IsImmutable"],
		["Rules"] = args["Rules"],
		["DefaultValue"] = args["DefaultValue"],
		["Type"] = args["Type"],
	}
	asserts.AssertTypedLinkAttributeDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterAttributeRanges [TypedLinkAttributeRangeList] <p>Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- * FilterTypedLink [TypedLinkSchemaAndFacetName] <p>Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.</p>
-- * ObjectReference [ObjectReference] <p>A reference that identifies the object whose attributes will be listed.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed links.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * ConsistencyLevel [ConsistencyLevel] <p>The consistency level to execute the request at.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- @return ListOutgoingTypedLinksRequest structure as a key-value pair table
function M.ListOutgoingTypedLinksRequest(args)
	assert(args, "You must provide an argument table when creating ListOutgoingTypedLinksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["FilterAttributeRanges"] = args["FilterAttributeRanges"],
		["MaxResults"] = args["MaxResults"],
		["FilterTypedLink"] = args["FilterTypedLink"],
		["ObjectReference"] = args["ObjectReference"],
		["DirectoryArn"] = args["DirectoryArn"],
		["NextToken"] = args["NextToken"],
		["ConsistencyLevel"] = args["ConsistencyLevel"],
	}
	asserts.AssertListOutgoingTypedLinksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) of the published schema that will be copied into the data <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- * Name [DirectoryName] <p>The name of the <a>Directory</a>. Should be unique per account, per region.</p>
-- Required key: Name
-- Required key: SchemaArn
-- @return CreateDirectoryRequest structure as a key-value pair table
function M.CreateDirectoryRequest(args)
	assert(args, "You must provide an argument table when creating CreateDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * FacetNames [TypedLinkNameList] <p>The names of typed link facets that exist within the schema.</p>
-- @return ListTypedLinkFacetNamesResponse structure as a key-value pair table
function M.ListTypedLinkFacetNamesResponse(args)
	assert(args, "You must provide an argument table when creating ListTypedLinkFacetNamesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["FacetNames"] = args["FacetNames"],
	}
	asserts.AssertListTypedLinkFacetNamesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryArn [DirectoryArn] <p>The ARN of the directory.</p>
-- Required key: DirectoryArn
-- @return GetDirectoryRequest structure as a key-value pair table
function M.GetDirectoryRequest(args)
	assert(args, "You must provide an argument table when creating GetDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertGetDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchAttachPolicy = { ["PolicyReference"] = true, ["ObjectReference"] = true, nil }

function asserts.AssertBatchAttachPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAttachPolicy to be of type 'table'")
	assert(struct["PolicyReference"], "Expected key PolicyReference to exist in table")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["PolicyReference"] then asserts.AssertObjectReference(struct["PolicyReference"]) end
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAttachPolicy[k], "BatchAttachPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAttachPolicy
-- <p>Attaches a policy object to a regular object inside a <a>BatchRead</a> operation. For more information, see <a>AttachPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyReference [ObjectReference] <p>The reference that is associated with the policy object.</p>
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object to which the policy will be attached.</p>
-- Required key: PolicyReference
-- Required key: ObjectReference
-- @return BatchAttachPolicy structure as a key-value pair table
function M.BatchAttachPolicy(args)
	assert(args, "You must provide an argument table when creating BatchAttachPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyReference"] = args["PolicyReference"],
		["ObjectReference"] = args["ObjectReference"],
	}
	asserts.AssertBatchAttachPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output batch <a>AttachObject</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the object that has been attached.</p>
-- @return BatchAttachObjectResponse structure as a key-value pair table
function M.BatchAttachObjectResponse(args)
	assert(args, "You must provide an argument table when creating BatchAttachObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attachedObjectIdentifier"] = args["attachedObjectIdentifier"],
	}
	asserts.AssertBatchAttachObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchWriteOperation = { ["DetachObject"] = true, ["AttachObject"] = true, ["CreateIndex"] = true, ["AddFacetToObject"] = true, ["RemoveFacetFromObject"] = true, ["DetachTypedLink"] = true, ["AttachPolicy"] = true, ["CreateObject"] = true, ["AttachToIndex"] = true, ["UpdateLinkAttributes"] = true, ["DetachFromIndex"] = true, ["AttachTypedLink"] = true, ["DetachPolicy"] = true, ["DeleteObject"] = true, ["UpdateObjectAttributes"] = true, nil }

function asserts.AssertBatchWriteOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchWriteOperation to be of type 'table'")
	if struct["DetachObject"] then asserts.AssertBatchDetachObject(struct["DetachObject"]) end
	if struct["AttachObject"] then asserts.AssertBatchAttachObject(struct["AttachObject"]) end
	if struct["CreateIndex"] then asserts.AssertBatchCreateIndex(struct["CreateIndex"]) end
	if struct["AddFacetToObject"] then asserts.AssertBatchAddFacetToObject(struct["AddFacetToObject"]) end
	if struct["RemoveFacetFromObject"] then asserts.AssertBatchRemoveFacetFromObject(struct["RemoveFacetFromObject"]) end
	if struct["DetachTypedLink"] then asserts.AssertBatchDetachTypedLink(struct["DetachTypedLink"]) end
	if struct["AttachPolicy"] then asserts.AssertBatchAttachPolicy(struct["AttachPolicy"]) end
	if struct["CreateObject"] then asserts.AssertBatchCreateObject(struct["CreateObject"]) end
	if struct["AttachToIndex"] then asserts.AssertBatchAttachToIndex(struct["AttachToIndex"]) end
	if struct["UpdateLinkAttributes"] then asserts.AssertBatchUpdateLinkAttributes(struct["UpdateLinkAttributes"]) end
	if struct["DetachFromIndex"] then asserts.AssertBatchDetachFromIndex(struct["DetachFromIndex"]) end
	if struct["AttachTypedLink"] then asserts.AssertBatchAttachTypedLink(struct["AttachTypedLink"]) end
	if struct["DetachPolicy"] then asserts.AssertBatchDetachPolicy(struct["DetachPolicy"]) end
	if struct["DeleteObject"] then asserts.AssertBatchDeleteObject(struct["DeleteObject"]) end
	if struct["UpdateObjectAttributes"] then asserts.AssertBatchUpdateObjectAttributes(struct["UpdateObjectAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchWriteOperation[k], "BatchWriteOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchWriteOperation
-- <p>Represents the output of a <code>BatchWrite</code> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetachObject [BatchDetachObject] <p>Detaches an object from a <a>Directory</a>.</p>
-- * AttachObject [BatchAttachObject] <p>Attaches an object to a <a>Directory</a>.</p>
-- * CreateIndex [BatchCreateIndex] <p>Creates an index object. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm">Indexing and search</a> for more information.</p>
-- * AddFacetToObject [BatchAddFacetToObject] <p>A batch operation that adds a facet to an object.</p>
-- * RemoveFacetFromObject [BatchRemoveFacetFromObject] <p>A batch operation that removes a facet from an object.</p>
-- * DetachTypedLink [BatchDetachTypedLink] <p>Detaches a typed link from a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- * AttachPolicy [BatchAttachPolicy] <p>Attaches a policy object to a regular object. An object can have a limited number of attached policies.</p>
-- * CreateObject [BatchCreateObject] <p>Creates an object.</p>
-- * AttachToIndex [BatchAttachToIndex] <p>Attaches the specified object to the specified index.</p>
-- * UpdateLinkAttributes [BatchUpdateLinkAttributes] <p>Updates a given object's attributes.</p>
-- * DetachFromIndex [BatchDetachFromIndex] <p>Detaches the specified object from the specified index.</p>
-- * AttachTypedLink [BatchAttachTypedLink] <p>Attaches a typed link to a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- * DetachPolicy [BatchDetachPolicy] <p>Detaches a policy from a <a>Directory</a>.</p>
-- * DeleteObject [BatchDeleteObject] <p>Deletes an object in a <a>Directory</a>.</p>
-- * UpdateObjectAttributes [BatchUpdateObjectAttributes] <p>Updates a given object's attributes.</p>
-- @return BatchWriteOperation structure as a key-value pair table
function M.BatchWriteOperation(args)
	assert(args, "You must provide an argument table when creating BatchWriteOperation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DetachObject"] = args["DetachObject"],
		["AttachObject"] = args["AttachObject"],
		["CreateIndex"] = args["CreateIndex"],
		["AddFacetToObject"] = args["AddFacetToObject"],
		["RemoveFacetFromObject"] = args["RemoveFacetFromObject"],
		["DetachTypedLink"] = args["DetachTypedLink"],
		["AttachPolicy"] = args["AttachPolicy"],
		["CreateObject"] = args["CreateObject"],
		["AttachToIndex"] = args["AttachToIndex"],
		["UpdateLinkAttributes"] = args["UpdateLinkAttributes"],
		["DetachFromIndex"] = args["DetachFromIndex"],
		["AttachTypedLink"] = args["AttachTypedLink"],
		["DetachPolicy"] = args["DetachPolicy"],
		["DeleteObject"] = args["DeleteObject"],
		["UpdateObjectAttributes"] = args["UpdateObjectAttributes"],
	}
	asserts.AssertBatchWriteOperation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryArn [Arn] <p>The ARN of the deleted directory.</p>
-- Required key: DirectoryArn
-- @return DeleteDirectoryResponse structure as a key-value pair table
function M.DeleteDirectoryResponse(args)
	assert(args, "You must provide an argument table when creating DeleteDirectoryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertDeleteDirectoryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListObjectParentPaths = { ["ObjectReference"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertBatchListObjectParentPaths(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListObjectParentPaths to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListObjectParentPaths[k], "BatchListObjectParentPaths contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListObjectParentPaths
-- <p>Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects inside a <a>BatchRead</a> operation. For more information, see <a>ListObjectParentPaths</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object whose attributes will be listed.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: ObjectReference
-- @return BatchListObjectParentPaths structure as a key-value pair table
function M.BatchListObjectParentPaths(args)
	assert(args, "You must provide an argument table when creating BatchListObjectParentPaths")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertBatchListObjectParentPaths(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchReadSuccessfulResponse = { ["GetObjectAttributes"] = true, ["ListObjectAttributes"] = true, ["ListIndex"] = true, ["ListPolicyAttachments"] = true, ["ListObjectParents"] = true, ["GetObjectInformation"] = true, ["LookupPolicy"] = true, ["GetLinkAttributes"] = true, ["ListAttachedIndices"] = true, ["ListObjectChildren"] = true, ["ListOutgoingTypedLinks"] = true, ["ListObjectPolicies"] = true, ["ListObjectParentPaths"] = true, ["ListIncomingTypedLinks"] = true, nil }

function asserts.AssertBatchReadSuccessfulResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadSuccessfulResponse to be of type 'table'")
	if struct["GetObjectAttributes"] then asserts.AssertBatchGetObjectAttributesResponse(struct["GetObjectAttributes"]) end
	if struct["ListObjectAttributes"] then asserts.AssertBatchListObjectAttributesResponse(struct["ListObjectAttributes"]) end
	if struct["ListIndex"] then asserts.AssertBatchListIndexResponse(struct["ListIndex"]) end
	if struct["ListPolicyAttachments"] then asserts.AssertBatchListPolicyAttachmentsResponse(struct["ListPolicyAttachments"]) end
	if struct["ListObjectParents"] then asserts.AssertBatchListObjectParentsResponse(struct["ListObjectParents"]) end
	if struct["GetObjectInformation"] then asserts.AssertBatchGetObjectInformationResponse(struct["GetObjectInformation"]) end
	if struct["LookupPolicy"] then asserts.AssertBatchLookupPolicyResponse(struct["LookupPolicy"]) end
	if struct["GetLinkAttributes"] then asserts.AssertBatchGetLinkAttributesResponse(struct["GetLinkAttributes"]) end
	if struct["ListAttachedIndices"] then asserts.AssertBatchListAttachedIndicesResponse(struct["ListAttachedIndices"]) end
	if struct["ListObjectChildren"] then asserts.AssertBatchListObjectChildrenResponse(struct["ListObjectChildren"]) end
	if struct["ListOutgoingTypedLinks"] then asserts.AssertBatchListOutgoingTypedLinksResponse(struct["ListOutgoingTypedLinks"]) end
	if struct["ListObjectPolicies"] then asserts.AssertBatchListObjectPoliciesResponse(struct["ListObjectPolicies"]) end
	if struct["ListObjectParentPaths"] then asserts.AssertBatchListObjectParentPathsResponse(struct["ListObjectParentPaths"]) end
	if struct["ListIncomingTypedLinks"] then asserts.AssertBatchListIncomingTypedLinksResponse(struct["ListIncomingTypedLinks"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchReadSuccessfulResponse[k], "BatchReadSuccessfulResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadSuccessfulResponse
-- <p>Represents the output of a <code>BatchRead</code> success response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GetObjectAttributes [BatchGetObjectAttributesResponse] <p>Retrieves attributes within a facet that are associated with an object.</p>
-- * ListObjectAttributes [BatchListObjectAttributesResponse] <p>Lists all attributes that are associated with an object.</p>
-- * ListIndex [BatchListIndexResponse] <p>Lists objects attached to the specified index.</p>
-- * ListPolicyAttachments [BatchListPolicyAttachmentsResponse] <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>
-- * ListObjectParents [BatchListObjectParentsResponse] 
-- * GetObjectInformation [BatchGetObjectInformationResponse] <p>Retrieves metadata about an object.</p>
-- * LookupPolicy [BatchLookupPolicyResponse] <p>Lists all policies from the root of the <a>Directory</a> to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code> for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
-- * GetLinkAttributes [BatchGetLinkAttributesResponse] <p>The list of attributes to retrieve from the typed link.</p>
-- * ListAttachedIndices [BatchListAttachedIndicesResponse] <p>Lists indices attached to an object.</p>
-- * ListObjectChildren [BatchListObjectChildrenResponse] <p>Returns a paginated list of child objects that are associated with a given object.</p>
-- * ListOutgoingTypedLinks [BatchListOutgoingTypedLinksResponse] <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a> information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- * ListObjectPolicies [BatchListObjectPoliciesResponse] <p>Returns policies attached to an object in pagination fashion.</p>
-- * ListObjectParentPaths [BatchListObjectParentPathsResponse] <p>Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html">Directory Structure</a>.</p>
-- * ListIncomingTypedLinks [BatchListIncomingTypedLinksResponse] <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a> information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- @return BatchReadSuccessfulResponse structure as a key-value pair table
function M.BatchReadSuccessfulResponse(args)
	assert(args, "You must provide an argument table when creating BatchReadSuccessfulResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GetObjectAttributes"] = args["GetObjectAttributes"],
		["ListObjectAttributes"] = args["ListObjectAttributes"],
		["ListIndex"] = args["ListIndex"],
		["ListPolicyAttachments"] = args["ListPolicyAttachments"],
		["ListObjectParents"] = args["ListObjectParents"],
		["GetObjectInformation"] = args["GetObjectInformation"],
		["LookupPolicy"] = args["LookupPolicy"],
		["GetLinkAttributes"] = args["GetLinkAttributes"],
		["ListAttachedIndices"] = args["ListAttachedIndices"],
		["ListObjectChildren"] = args["ListObjectChildren"],
		["ListOutgoingTypedLinks"] = args["ListOutgoingTypedLinks"],
		["ListObjectPolicies"] = args["ListObjectPolicies"],
		["ListObjectParentPaths"] = args["ListObjectParentPaths"],
		["ListIncomingTypedLinks"] = args["ListIncomingTypedLinks"],
	}
	asserts.AssertBatchReadSuccessfulResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * TypedLinkSpecifiers [TypedLinkSpecifierList] <p>Returns a typed link specifier as output.</p>
-- @return ListOutgoingTypedLinksResponse structure as a key-value pair table
function M.ListOutgoingTypedLinksResponse(args)
	assert(args, "You must provide an argument table when creating ListOutgoingTypedLinksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["TypedLinkSpecifiers"] = args["TypedLinkSpecifiers"],
	}
	asserts.AssertListOutgoingTypedLinksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Responses [BatchReadOperationResponseList] <p>A list of all the responses for each batch read.</p>
-- @return BatchReadResponse structure as a key-value pair table
function M.BatchReadResponse(args)
	assert(args, "You must provide an argument table when creating BatchReadResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Responses"] = args["Responses"],
	}
	asserts.AssertBatchReadResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteObjectResponse structure as a key-value pair table
function M.DeleteObjectResponse(args)
	assert(args, "You must provide an argument table when creating DeleteObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- * Name [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- Required key: SchemaArn
-- Required key: Name
-- @return DeleteTypedLinkFacetRequest structure as a key-value pair table
function M.DeleteTypedLinkFacetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTypedLinkFacetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteTypedLinkFacetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeKeyAndValueList] <p>Attributes map that is associated with the object. <code>AttributeArn</code> is the key, and attribute value is the value.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return ListObjectAttributesResponse structure as a key-value pair table
function M.ListObjectAttributesResponse(args)
	assert(args, "You must provide an argument table when creating ListObjectAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListObjectAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexReference [ObjectReference] <p>A reference to the index that you are attaching the object to.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory where the object and index exist.</p>
-- * TargetReference [ObjectReference] <p>A reference to the object that you are attaching to the index.</p>
-- Required key: DirectoryArn
-- Required key: IndexReference
-- Required key: TargetReference
-- @return AttachToIndexRequest structure as a key-value pair table
function M.AttachToIndexRequest(args)
	assert(args, "You must provide an argument table when creating AttachToIndexRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["IndexReference"] = args["IndexReference"],
		["DirectoryArn"] = args["DirectoryArn"],
		["TargetReference"] = args["TargetReference"],
	}
	asserts.AssertAttachToIndexRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>Reference that identifies the object whose policies will be looked up.</p>
-- * NextToken [NextToken] <p>The token to request the next page of results.</p>
-- * MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- @return LookupPolicyRequest structure as a key-value pair table
function M.LookupPolicyRequest(args)
	assert(args, "You must provide an argument table when creating LookupPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertLookupPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchReadOperation = { ["GetObjectAttributes"] = true, ["ListObjectAttributes"] = true, ["ListIndex"] = true, ["ListPolicyAttachments"] = true, ["ListObjectParents"] = true, ["GetObjectInformation"] = true, ["LookupPolicy"] = true, ["GetLinkAttributes"] = true, ["ListAttachedIndices"] = true, ["ListObjectChildren"] = true, ["ListOutgoingTypedLinks"] = true, ["ListObjectPolicies"] = true, ["ListObjectParentPaths"] = true, ["ListIncomingTypedLinks"] = true, nil }

function asserts.AssertBatchReadOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchReadOperation to be of type 'table'")
	if struct["GetObjectAttributes"] then asserts.AssertBatchGetObjectAttributes(struct["GetObjectAttributes"]) end
	if struct["ListObjectAttributes"] then asserts.AssertBatchListObjectAttributes(struct["ListObjectAttributes"]) end
	if struct["ListIndex"] then asserts.AssertBatchListIndex(struct["ListIndex"]) end
	if struct["ListPolicyAttachments"] then asserts.AssertBatchListPolicyAttachments(struct["ListPolicyAttachments"]) end
	if struct["ListObjectParents"] then asserts.AssertBatchListObjectParents(struct["ListObjectParents"]) end
	if struct["GetObjectInformation"] then asserts.AssertBatchGetObjectInformation(struct["GetObjectInformation"]) end
	if struct["LookupPolicy"] then asserts.AssertBatchLookupPolicy(struct["LookupPolicy"]) end
	if struct["GetLinkAttributes"] then asserts.AssertBatchGetLinkAttributes(struct["GetLinkAttributes"]) end
	if struct["ListAttachedIndices"] then asserts.AssertBatchListAttachedIndices(struct["ListAttachedIndices"]) end
	if struct["ListObjectChildren"] then asserts.AssertBatchListObjectChildren(struct["ListObjectChildren"]) end
	if struct["ListOutgoingTypedLinks"] then asserts.AssertBatchListOutgoingTypedLinks(struct["ListOutgoingTypedLinks"]) end
	if struct["ListObjectPolicies"] then asserts.AssertBatchListObjectPolicies(struct["ListObjectPolicies"]) end
	if struct["ListObjectParentPaths"] then asserts.AssertBatchListObjectParentPaths(struct["ListObjectParentPaths"]) end
	if struct["ListIncomingTypedLinks"] then asserts.AssertBatchListIncomingTypedLinks(struct["ListIncomingTypedLinks"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchReadOperation[k], "BatchReadOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchReadOperation
-- <p>Represents the output of a <code>BatchRead</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GetObjectAttributes [BatchGetObjectAttributes] <p>Retrieves attributes within a facet that are associated with an object.</p>
-- * ListObjectAttributes [BatchListObjectAttributes] <p>Lists all attributes that are associated with an object.</p>
-- * ListIndex [BatchListIndex] <p>Lists objects attached to the specified index.</p>
-- * ListPolicyAttachments [BatchListPolicyAttachments] <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>
-- * ListObjectParents [BatchListObjectParents] 
-- * GetObjectInformation [BatchGetObjectInformation] <p>Retrieves metadata about an object.</p>
-- * LookupPolicy [BatchLookupPolicy] <p>Lists all policies from the root of the <a>Directory</a> to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code> for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
-- * GetLinkAttributes [BatchGetLinkAttributes] <p>Retrieves attributes that are associated with a typed link.</p>
-- * ListAttachedIndices [BatchListAttachedIndices] <p>Lists indices attached to an object.</p>
-- * ListObjectChildren [BatchListObjectChildren] <p>Returns a paginated list of child objects that are associated with a given object.</p>
-- * ListOutgoingTypedLinks [BatchListOutgoingTypedLinks] <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a> information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- * ListObjectPolicies [BatchListObjectPolicies] <p>Returns policies attached to an object in pagination fashion.</p>
-- * ListObjectParentPaths [BatchListObjectParentPaths] <p>Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html">Directory Structure</a>.</p>
-- * ListIncomingTypedLinks [BatchListIncomingTypedLinks] <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a> information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- @return BatchReadOperation structure as a key-value pair table
function M.BatchReadOperation(args)
	assert(args, "You must provide an argument table when creating BatchReadOperation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GetObjectAttributes"] = args["GetObjectAttributes"],
		["ListObjectAttributes"] = args["ListObjectAttributes"],
		["ListIndex"] = args["ListIndex"],
		["ListPolicyAttachments"] = args["ListPolicyAttachments"],
		["ListObjectParents"] = args["ListObjectParents"],
		["GetObjectInformation"] = args["GetObjectInformation"],
		["LookupPolicy"] = args["LookupPolicy"],
		["GetLinkAttributes"] = args["GetLinkAttributes"],
		["ListAttachedIndices"] = args["ListAttachedIndices"],
		["ListObjectChildren"] = args["ListObjectChildren"],
		["ListOutgoingTypedLinks"] = args["ListOutgoingTypedLinks"],
		["ListObjectPolicies"] = args["ListObjectPolicies"],
		["ListObjectParentPaths"] = args["ListObjectParentPaths"],
		["ListIncomingTypedLinks"] = args["ListIncomingTypedLinks"],
	}
	asserts.AssertBatchReadOperation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LinkAttributeUpdate = { ["AttributeKey"] = true, ["AttributeAction"] = true, nil }

function asserts.AssertLinkAttributeUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LinkAttributeUpdate to be of type 'table'")
	if struct["AttributeKey"] then asserts.AssertAttributeKey(struct["AttributeKey"]) end
	if struct["AttributeAction"] then asserts.AssertLinkAttributeAction(struct["AttributeAction"]) end
	for k,_ in pairs(struct) do
		assert(keys.LinkAttributeUpdate[k], "LinkAttributeUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LinkAttributeUpdate
-- <p>Structure that contains attribute update information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeKey [AttributeKey] <p>The key of the attribute being updated.</p>
-- * AttributeAction [LinkAttributeAction] <p>The action to perform as part of the attribute update.</p>
-- @return LinkAttributeUpdate structure as a key-value pair table
function M.LinkAttributeUpdate(args)
	assert(args, "You must provide an argument table when creating LinkAttributeUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeKey"] = args["AttributeKey"],
		["AttributeAction"] = args["AttributeAction"],
	}
	asserts.AssertLinkAttributeUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttachedPolicyIds [ObjectIdentifierList] <p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the object.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return ListObjectPoliciesResponse structure as a key-value pair table
function M.ListObjectPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListObjectPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttachedPolicyIds"] = args["AttachedPolicyIds"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListObjectPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TypedAttributeValue] <p>The value of the attribute.</p>
-- * Key [AttributeKey] <p>The key of the attribute.</p>
-- Required key: Key
-- Required key: Value
-- @return AttributeKeyAndValue structure as a key-value pair table
function M.AttributeKeyAndValue(args)
	assert(args, "You must provide an argument table when creating AttributeKeyAndValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertAttributeKeyAndValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectIdentifier [ObjectIdentifier] <p>In response to <a>ListIndex</a>, the <code>ObjectIdentifier</code> of the object attached to the index. In response to <a>ListAttachedIndices</a>, the <code>ObjectIdentifier</code> of the index attached to the object. This field will always contain the <code>ObjectIdentifier</code> of the object on the opposite side of the attachment specified in the query.</p>
-- * IndexedAttributes [AttributeKeyAndValueList] <p>The indexed attribute values.</p>
-- @return IndexAttachment structure as a key-value pair table
function M.IndexAttachment(args)
	assert(args, "You must provide an argument table when creating IndexAttachment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectIdentifier"] = args["ObjectIdentifier"],
		["IndexedAttributes"] = args["IndexedAttributes"],
	}
	asserts.AssertIndexAttachment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectAttributesResponse = { ["Attributes"] = true, nil }

function asserts.AssertGetObjectAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributeKeyAndValueList(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectAttributesResponse[k], "GetObjectAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectAttributesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeKeyAndValueList] <p>The attributes that are associated with the object.</p>
-- @return GetObjectAttributesResponse structure as a key-value pair table
function M.GetObjectAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetObjectAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertGetObjectAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchAttachPolicyResponse = { nil }

function asserts.AssertBatchAttachPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAttachPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchAttachPolicyResponse[k], "BatchAttachPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAttachPolicyResponse
-- <p>Represents the output of an <a>AttachPolicy</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BatchAttachPolicyResponse structure as a key-value pair table
function M.BatchAttachPolicyResponse(args)
	assert(args, "You must provide an argument table when creating BatchAttachPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertBatchAttachPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * SchemaArns [Arns] <p>The ARNs of retrieved development schemas.</p>
-- @return ListDevelopmentSchemaArnsResponse structure as a key-value pair table
function M.ListDevelopmentSchemaArnsResponse(args)
	assert(args, "You must provide an argument table when creating ListDevelopmentSchemaArnsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SchemaArns"] = args["SchemaArns"],
	}
	asserts.AssertListDevelopmentSchemaArnsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchCreateObject = { ["ObjectAttributeList"] = true, ["ParentReference"] = true, ["BatchReferenceName"] = true, ["SchemaFacet"] = true, ["LinkName"] = true, nil }

function asserts.AssertBatchCreateObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCreateObject to be of type 'table'")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["ObjectAttributeList"], "Expected key ObjectAttributeList to exist in table")
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
-- <p>Represents the output of a <a>CreateObject</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectAttributeList [AttributeKeyAndValueList] <p>An attribute map, which contains an attribute ARN as the key and attribute value as the map value.</p>
-- * ParentReference [ObjectReference] <p>If specified, the parent reference to which this object will be attached.</p>
-- * BatchReferenceName [BatchReferenceName] <p>The batch reference name. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html">Transaction Support</a> for more information.</p>
-- * SchemaFacet [SchemaFacetList] <p>A list of <code>FacetArns</code> that will be associated with the object. For more information, see <a>arns</a>.</p>
-- * LinkName [LinkName] <p>The name of the link.</p>
-- Required key: SchemaFacet
-- Required key: ObjectAttributeList
-- @return BatchCreateObject structure as a key-value pair table
function M.BatchCreateObject(args)
	assert(args, "You must provide an argument table when creating BatchCreateObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectAttributeList"] = args["ObjectAttributeList"],
		["ParentReference"] = args["ParentReference"],
		["BatchReferenceName"] = args["BatchReferenceName"],
		["SchemaFacet"] = args["SchemaFacet"],
		["LinkName"] = args["LinkName"],
	}
	asserts.AssertBatchCreateObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Directories [DirectoryList] <p>Lists all directories that are associated with your account in pagination fashion.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- Required key: Directories
-- @return ListDirectoriesResponse structure as a key-value pair table
function M.ListDirectoriesResponse(args)
	assert(args, "You must provide an argument table when creating ListDirectoriesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Directories"] = args["Directories"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDirectoriesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyToPathList [PolicyToPathList] <p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and <code>PolicyType</code>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return LookupPolicyResponse structure as a key-value pair table
function M.LookupPolicyResponse(args)
	assert(args, "You must provide an argument table when creating LookupPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyToPathList"] = args["PolicyToPathList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertLookupPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLinkAttributesRequest = { ["ConsistencyLevel"] = true, ["AttributeNames"] = true, ["TypedLinkSpecifier"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertGetLinkAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLinkAttributesRequest to be of type 'table'")
	assert(struct["DirectoryArn"], "Expected key DirectoryArn to exist in table")
	assert(struct["TypedLinkSpecifier"], "Expected key TypedLinkSpecifier to exist in table")
	assert(struct["AttributeNames"], "Expected key AttributeNames to exist in table")
	if struct["ConsistencyLevel"] then asserts.AssertConsistencyLevel(struct["ConsistencyLevel"]) end
	if struct["AttributeNames"] then asserts.AssertAttributeNameList(struct["AttributeNames"]) end
	if struct["TypedLinkSpecifier"] then asserts.AssertTypedLinkSpecifier(struct["TypedLinkSpecifier"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLinkAttributesRequest[k], "GetLinkAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLinkAttributesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsistencyLevel [ConsistencyLevel] <p>The consistency level at which to retrieve the attributes on a typed link.</p>
-- * AttributeNames [AttributeNameList] <p>A list of attribute names whose values will be retrieved.</p>
-- * TypedLinkSpecifier [TypedLinkSpecifier] <p>Allows a typed link specifier to be accepted as input.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see <a>arns</a> or <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
-- Required key: DirectoryArn
-- Required key: TypedLinkSpecifier
-- Required key: AttributeNames
-- @return GetLinkAttributesRequest structure as a key-value pair table
function M.GetLinkAttributesRequest(args)
	assert(args, "You must provide an argument table when creating GetLinkAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ConsistencyLevel"] = args["ConsistencyLevel"],
		["AttributeNames"] = args["AttributeNames"],
		["TypedLinkSpecifier"] = args["TypedLinkSpecifier"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertGetLinkAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypedLinkName [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>
-- Required key: SchemaArn
-- Required key: TypedLinkName
-- @return TypedLinkSchemaAndFacetName structure as a key-value pair table
function M.TypedLinkSchemaAndFacetName(args)
	assert(args, "You must provide an argument table when creating TypedLinkSchemaAndFacetName")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TypedLinkName"] = args["TypedLinkName"],
		["SchemaArn"] = args["SchemaArn"],
	}
	asserts.AssertTypedLinkSchemaAndFacetName(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetachTypedLink = { ["TypedLinkSpecifier"] = true, nil }

function asserts.AssertBatchDetachTypedLink(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachTypedLink to be of type 'table'")
	assert(struct["TypedLinkSpecifier"], "Expected key TypedLinkSpecifier to exist in table")
	if struct["TypedLinkSpecifier"] then asserts.AssertTypedLinkSpecifier(struct["TypedLinkSpecifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetachTypedLink[k], "BatchDetachTypedLink contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachTypedLink
-- <p>Detaches a typed link from a specified source and target object inside a <a>BatchRead</a> operation. For more information, see <a>DetachTypedLink</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypedLinkSpecifier [TypedLinkSpecifier] <p>Used to accept a typed link specifier as input.</p>
-- Required key: TypedLinkSpecifier
-- @return BatchDetachTypedLink structure as a key-value pair table
function M.BatchDetachTypedLink(args)
	assert(args, "You must provide an argument table when creating BatchDetachTypedLink")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TypedLinkSpecifier"] = args["TypedLinkSpecifier"],
	}
	asserts.AssertBatchDetachTypedLink(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * LinkSpecifiers [TypedLinkSpecifierList] <p>Returns one or more typed link specifiers as output.</p>
-- @return ListIncomingTypedLinksResponse structure as a key-value pair table
function M.ListIncomingTypedLinksResponse(args)
	assert(args, "You must provide an argument table when creating ListIncomingTypedLinksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["LinkSpecifiers"] = args["LinkSpecifiers"],
	}
	asserts.AssertListIncomingTypedLinksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDetachObject = { ["ParentReference"] = true, ["LinkName"] = true, ["BatchReferenceName"] = true, nil }

function asserts.AssertBatchDetachObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDetachObject to be of type 'table'")
	assert(struct["ParentReference"], "Expected key ParentReference to exist in table")
	assert(struct["LinkName"], "Expected key LinkName to exist in table")
	if struct["ParentReference"] then asserts.AssertObjectReference(struct["ParentReference"]) end
	if struct["LinkName"] then asserts.AssertLinkName(struct["LinkName"]) end
	if struct["BatchReferenceName"] then asserts.AssertBatchReferenceName(struct["BatchReferenceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDetachObject[k], "BatchDetachObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDetachObject
-- <p>Represents the output of a <a>DetachObject</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParentReference [ObjectReference] <p>Parent reference from which the object with the specified link name is detached.</p>
-- * LinkName [LinkName] <p>The name of the link.</p>
-- * BatchReferenceName [BatchReferenceName] <p>The batch reference name. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html">Transaction Support</a> for more information.</p>
-- Required key: ParentReference
-- Required key: LinkName
-- @return BatchDetachObject structure as a key-value pair table
function M.BatchDetachObject(args)
	assert(args, "You must provide an argument table when creating BatchDetachObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParentReference"] = args["ParentReference"],
		["LinkName"] = args["LinkName"],
		["BatchReferenceName"] = args["BatchReferenceName"],
	}
	asserts.AssertBatchDetachObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFacetRequest = { ["Attributes"] = true, ["FacetStyle"] = true, ["SchemaArn"] = true, ["Name"] = true, ["ObjectType"] = true, nil }

function asserts.AssertCreateFacetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFacetRequest to be of type 'table'")
	assert(struct["SchemaArn"], "Expected key SchemaArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Attributes"] then asserts.AssertFacetAttributeList(struct["Attributes"]) end
	if struct["FacetStyle"] then asserts.AssertFacetStyle(struct["FacetStyle"]) end
	if struct["SchemaArn"] then asserts.AssertArn(struct["SchemaArn"]) end
	if struct["Name"] then asserts.AssertFacetName(struct["Name"]) end
	if struct["ObjectType"] then asserts.AssertObjectType(struct["ObjectType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFacetRequest[k], "CreateFacetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFacetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [FacetAttributeList] <p>The attributes that are associated with the <a>Facet</a>.</p>
-- * FacetStyle [FacetStyle] <p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>
-- * SchemaArn [Arn] <p>The schema ARN in which the new <a>Facet</a> will be created. For more information, see <a>arns</a>.</p>
-- * Name [FacetName] <p>The name of the <a>Facet</a>, which is unique for a given schema.</p>
-- * ObjectType [ObjectType] <p>Specifies whether a given object created from this facet is of type node, leaf node, policy or index.</p> <ul> <li> <p>Node: Can have multiple children but one parent.</p> </li> </ul> <ul> <li> <p>Leaf node: Cannot have children but can have multiple parents.</p> </li> </ul> <ul> <li> <p>Policy: Allows you to store a policy document and policy type. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p> </li> </ul> <ul> <li> <p>Index: Can be created with the Index API.</p> </li> </ul>
-- Required key: SchemaArn
-- Required key: Name
-- @return CreateFacetRequest structure as a key-value pair table
function M.CreateFacetRequest(args)
	assert(args, "You must provide an argument table when creating CreateFacetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["FacetStyle"] = args["FacetStyle"],
		["SchemaArn"] = args["SchemaArn"],
		["Name"] = args["Name"],
		["ObjectType"] = args["ObjectType"],
	}
	asserts.AssertCreateFacetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output of a <a>DeleteObject</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>The reference that identifies the object.</p>
-- Required key: ObjectReference
-- @return BatchDeleteObject structure as a key-value pair table
function M.BatchDeleteObject(args)
	assert(args, "You must provide an argument table when creating BatchDeleteObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
	}
	asserts.AssertBatchDeleteObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryArn [Arn] <p>The ARN of the directory to delete.</p>
-- Required key: DirectoryArn
-- @return DeleteDirectoryRequest structure as a key-value pair table
function M.DeleteDirectoryRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDirectoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertDeleteDirectoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>A reference that identifies the object.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: ObjectReference
-- @return DeleteObjectRequest structure as a key-value pair table
function M.DeleteObjectRequest(args)
	assert(args, "You must provide an argument table when creating DeleteObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertDeleteObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output of a <a>ListObjectAttributes</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [AttributeKeyAndValueList] <p>The attributes map that is associated with the object. <code>AttributeArn</code> is the key; attribute value is the value.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return BatchListObjectAttributesResponse structure as a key-value pair table
function M.BatchListObjectAttributesResponse(args)
	assert(args, "You must provide an argument table when creating BatchListObjectAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertBatchListObjectAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectAttributeList [AttributeKeyAndValueList] <p>Attributes on the facet that you are adding to the object.</p>
-- * ObjectReference [ObjectReference] <p>A reference to the object you are adding the specified facet to.</p>
-- * SchemaFacet [SchemaFacet] <p>Identifiers for the facet that you are adding to the object. See <a>SchemaFacet</a> for details.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: SchemaFacet
-- Required key: ObjectReference
-- @return AddFacetToObjectRequest structure as a key-value pair table
function M.AddFacetToObjectRequest(args)
	assert(args, "You must provide an argument table when creating AddFacetToObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ObjectAttributeList"] = args["ObjectAttributeList"],
		["ObjectReference"] = args["ObjectReference"],
		["SchemaFacet"] = args["SchemaFacet"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertAddFacetToObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectAttributeAction [ObjectAttributeAction] <p>The action to perform as part of the attribute update.</p>
-- * ObjectAttributeKey [AttributeKey] <p>The key of the attribute being updated.</p>
-- @return ObjectAttributeUpdate structure as a key-value pair table
function M.ObjectAttributeUpdate(args)
	assert(args, "You must provide an argument table when creating ObjectAttributeUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectAttributeAction"] = args["ObjectAttributeAction"],
		["ObjectAttributeKey"] = args["ObjectAttributeKey"],
	}
	asserts.AssertObjectAttributeUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [TypedLinkAttributeDefinitionList] <p>An ordered set of attributes associate with the typed link.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return ListTypedLinkFacetAttributesResponse structure as a key-value pair table
function M.ListTypedLinkFacetAttributesResponse(args)
	assert(args, "You must provide an argument table when creating ListTypedLinkFacetAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTypedLinkFacetAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetachedObjectIdentifier [ObjectIdentifier] <p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>
-- @return DetachFromIndexResponse structure as a key-value pair table
function M.DetachFromIndexResponse(args)
	assert(args, "You must provide an argument table when creating DetachFromIndexResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DetachedObjectIdentifier"] = args["DetachedObjectIdentifier"],
	}
	asserts.AssertDetachFromIndexResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttachedObjectIdentifier [ObjectIdentifier] <p>The attached <code>ObjectIdentifier</code>, which is the child <code>ObjectIdentifier</code>.</p>
-- @return AttachObjectResponse structure as a key-value pair table
function M.AttachObjectResponse(args)
	assert(args, "You must provide an argument table when creating AttachObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttachedObjectIdentifier"] = args["AttachedObjectIdentifier"],
	}
	asserts.AssertAttachObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagResourceResponse structure as a key-value pair table
function M.TagResourceResponse(args)
	assert(args, "You must provide an argument table when creating TagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectIdentifier [ObjectIdentifier] <p>ID that is associated with the object.</p>
-- @return BatchUpdateObjectAttributesResponse structure as a key-value pair table
function M.BatchUpdateObjectAttributesResponse(args)
	assert(args, "You must provide an argument table when creating BatchUpdateObjectAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectIdentifier"] = args["ObjectIdentifier"],
	}
	asserts.AssertBatchUpdateObjectAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [RuleType] <p>The type of attribute validation rule.</p>
-- * Parameters [RuleParameterMap] <p>The minimum and maximum parameters that are associated with the rule.</p>
-- @return Rule structure as a key-value pair table
function M.Rule(args)
	assert(args, "You must provide an argument table when creating Rule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectAttributeList [AttributeKeyAndValueList] <p>The attribute map whose attribute ARN contains the key and attribute value as the map value.</p>
-- * ParentReference [ObjectReference] <p>If specified, the parent reference to which this object will be attached.</p>
-- * SchemaFacets [SchemaFacetList] <p>A list of schema facets to be associated with the object. Do not provide minor version components. See <a>SchemaFacet</a> for details.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> in which the object will be created. For more information, see <a>arns</a>.</p>
-- * LinkName [LinkName] <p>The name of link that is used to attach this object to a parent.</p>
-- Required key: DirectoryArn
-- Required key: SchemaFacets
-- @return CreateObjectRequest structure as a key-value pair table
function M.CreateObjectRequest(args)
	assert(args, "You must provide an argument table when creating CreateObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ObjectAttributeList"] = args["ObjectAttributeList"],
		["ParentReference"] = args["ParentReference"],
		["SchemaFacets"] = args["SchemaFacets"],
		["DirectoryArn"] = args["DirectoryArn"],
		["LinkName"] = args["LinkName"],
	}
	asserts.AssertCreateObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectAttributeList [AttributeKeyAndValueList] <p>The attributes to set on the object.</p>
-- * ObjectReference [ObjectReference] <p>A reference to the object being mutated.</p>
-- * SchemaFacet [SchemaFacet] <p>Represents the facet being added to the object.</p>
-- Required key: SchemaFacet
-- Required key: ObjectAttributeList
-- Required key: ObjectReference
-- @return BatchAddFacetToObject structure as a key-value pair table
function M.BatchAddFacetToObject(args)
	assert(args, "You must provide an argument table when creating BatchAddFacetToObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectAttributeList"] = args["ObjectAttributeList"],
		["ObjectReference"] = args["ObjectReference"],
		["SchemaFacet"] = args["SchemaFacet"],
	}
	asserts.AssertBatchAddFacetToObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchAttachToIndex = { ["IndexReference"] = true, ["TargetReference"] = true, nil }

function asserts.AssertBatchAttachToIndex(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchAttachToIndex to be of type 'table'")
	assert(struct["IndexReference"], "Expected key IndexReference to exist in table")
	assert(struct["TargetReference"], "Expected key TargetReference to exist in table")
	if struct["IndexReference"] then asserts.AssertObjectReference(struct["IndexReference"]) end
	if struct["TargetReference"] then asserts.AssertObjectReference(struct["TargetReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchAttachToIndex[k], "BatchAttachToIndex contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchAttachToIndex
-- <p>Attaches the specified object to the specified index inside a <a>BatchRead</a> operation. For more information, see <a>AttachToIndex</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexReference [ObjectReference] <p>A reference to the index that you are attaching the object to.</p>
-- * TargetReference [ObjectReference] <p>A reference to the object that you are attaching to the index.</p>
-- Required key: IndexReference
-- Required key: TargetReference
-- @return BatchAttachToIndex structure as a key-value pair table
function M.BatchAttachToIndex(args)
	assert(args, "You must provide an argument table when creating BatchAttachToIndex")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexReference"] = args["IndexReference"],
		["TargetReference"] = args["TargetReference"],
	}
	asserts.AssertBatchAttachToIndex(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetObjectAttributes = { ["ObjectReference"] = true, ["SchemaFacet"] = true, ["AttributeNames"] = true, nil }

function asserts.AssertBatchGetObjectAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetObjectAttributes to be of type 'table'")
	assert(struct["ObjectReference"], "Expected key ObjectReference to exist in table")
	assert(struct["SchemaFacet"], "Expected key SchemaFacet to exist in table")
	assert(struct["AttributeNames"], "Expected key AttributeNames to exist in table")
	if struct["ObjectReference"] then asserts.AssertObjectReference(struct["ObjectReference"]) end
	if struct["SchemaFacet"] then asserts.AssertSchemaFacet(struct["SchemaFacet"]) end
	if struct["AttributeNames"] then asserts.AssertAttributeNameList(struct["AttributeNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetObjectAttributes[k], "BatchGetObjectAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetObjectAttributes
-- <p>Retrieves attributes within a facet that are associated with an object inside an <a>BatchRead</a> operation. For more information, see <a>GetObjectAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>Reference that identifies the object whose attributes will be retrieved.</p>
-- * SchemaFacet [SchemaFacet] <p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>
-- * AttributeNames [AttributeNameList] <p>List of attribute names whose values will be retrieved.</p>
-- Required key: ObjectReference
-- Required key: SchemaFacet
-- Required key: AttributeNames
-- @return BatchGetObjectAttributes structure as a key-value pair table
function M.BatchGetObjectAttributes(args)
	assert(args, "You must provide an argument table when creating BatchGetObjectAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["SchemaFacet"] = args["SchemaFacet"],
		["AttributeNames"] = args["AttributeNames"],
	}
	asserts.AssertBatchGetObjectAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the output of a <a>DeleteObject</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BatchDeleteObjectResponse structure as a key-value pair table
function M.BatchDeleteObjectResponse(args)
	assert(args, "You must provide an argument table when creating BatchDeleteObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertBatchDeleteObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>
-- * Tags [TagList] <p>A list of tag key value pairs that are associated with the response.</p>
-- @return ListTagsForResourceResponse structure as a key-value pair table
function M.ListTagsForResourceResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsForResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListAttachedIndicesResponse = { ["IndexAttachments"] = true, ["NextToken"] = true, nil }

function asserts.AssertBatchListAttachedIndicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListAttachedIndicesResponse to be of type 'table'")
	if struct["IndexAttachments"] then asserts.AssertIndexAttachmentList(struct["IndexAttachments"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListAttachedIndicesResponse[k], "BatchListAttachedIndicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListAttachedIndicesResponse
-- <p>Represents the output of a <a>ListAttachedIndices</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IndexAttachments [IndexAttachmentList] <p>The indices attached to the specified object.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- @return BatchListAttachedIndicesResponse structure as a key-value pair table
function M.BatchListAttachedIndicesResponse(args)
	assert(args, "You must provide an argument table when creating BatchListAttachedIndicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IndexAttachments"] = args["IndexAttachments"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertBatchListAttachedIndicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchUpdateLinkAttributesResponse = { nil }

function asserts.AssertBatchUpdateLinkAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUpdateLinkAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchUpdateLinkAttributesResponse[k], "BatchUpdateLinkAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUpdateLinkAttributesResponse
-- <p>Represents the output of a <a>UpdateLinkAttributes</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BatchUpdateLinkAttributesResponse structure as a key-value pair table
function M.BatchUpdateLinkAttributesResponse(args)
	assert(args, "You must provide an argument table when creating BatchUpdateLinkAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertBatchUpdateLinkAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetFacetName [FacetName] <p>The target facet name that is associated with the facet reference. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
-- * TargetAttributeName [AttributeName] <p>The target attribute name that is associated with the facet reference. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html">Attribute References</a> for more information.</p>
-- Required key: TargetFacetName
-- Required key: TargetAttributeName
-- @return FacetAttributeReference structure as a key-value pair table
function M.FacetAttributeReference(args)
	assert(args, "You must provide an argument table when creating FacetAttributeReference")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetFacetName"] = args["TargetFacetName"],
		["TargetAttributeName"] = args["TargetAttributeName"],
	}
	asserts.AssertFacetAttributeReference(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpgradeAppliedSchemaResponse = { ["UpgradedSchemaArn"] = true, ["DirectoryArn"] = true, nil }

function asserts.AssertUpgradeAppliedSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeAppliedSchemaResponse to be of type 'table'")
	if struct["UpgradedSchemaArn"] then asserts.AssertArn(struct["UpgradedSchemaArn"]) end
	if struct["DirectoryArn"] then asserts.AssertArn(struct["DirectoryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradeAppliedSchemaResponse[k], "UpgradeAppliedSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeAppliedSchemaResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UpgradedSchemaArn [Arn] <p>The ARN of the upgraded schema that is returned as part of the response.</p>
-- * DirectoryArn [Arn] <p>The ARN of the directory that is returned as part of the response.</p>
-- @return UpgradeAppliedSchemaResponse structure as a key-value pair table
function M.UpgradeAppliedSchemaResponse(args)
	assert(args, "You must provide an argument table when creating UpgradeAppliedSchemaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UpgradedSchemaArn"] = args["UpgradedSchemaArn"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertUpgradeAppliedSchemaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypedLinkSpecifier [TypedLinkSpecifier] <p>Used to accept a typed link specifier as input.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) of the directory where you want to detach the typed link.</p>
-- Required key: DirectoryArn
-- Required key: TypedLinkSpecifier
-- @return DetachTypedLinkRequest structure as a key-value pair table
function M.DetachTypedLinkRequest(args)
	assert(args, "You must provide an argument table when creating DetachTypedLinkRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["TypedLinkSpecifier"] = args["TypedLinkSpecifier"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertDetachTypedLinkRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectAttributeActionType [UpdateActionType] <p>A type that can be either <code>Update</code> or <code>Delete</code>.</p>
-- * ObjectAttributeUpdateValue [TypedAttributeValue] <p>The value that you want to update to.</p>
-- @return ObjectAttributeAction structure as a key-value pair table
function M.ObjectAttributeAction(args)
	assert(args, "You must provide an argument table when creating ObjectAttributeAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectAttributeActionType"] = args["ObjectAttributeActionType"],
		["ObjectAttributeUpdateValue"] = args["ObjectAttributeUpdateValue"],
	}
	asserts.AssertObjectAttributeAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectReference [ObjectReference] <p>A reference to the object whose facet will be removed.</p>
-- * SchemaFacet [SchemaFacet] <p>The facet to remove from the object.</p>
-- Required key: SchemaFacet
-- Required key: ObjectReference
-- @return BatchRemoveFacetFromObject structure as a key-value pair table
function M.BatchRemoveFacetFromObject(args)
	assert(args, "You must provide an argument table when creating BatchRemoveFacetFromObject")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectReference"] = args["ObjectReference"],
		["SchemaFacet"] = args["SchemaFacet"],
	}
	asserts.AssertBatchRemoveFacetFromObject(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConsistencyLevel [ConsistencyLevel] <p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>
-- * PolicyReference [ObjectReference] <p>The reference that identifies the policy object.</p>
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * MaxResults [NumberResults] <p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>
-- * DirectoryArn [Arn] <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where objects reside. For more information, see <a>arns</a>.</p>
-- Required key: DirectoryArn
-- Required key: PolicyReference
-- @return ListPolicyAttachmentsRequest structure as a key-value pair table
function M.ListPolicyAttachmentsRequest(args)
	assert(args, "You must provide an argument table when creating ListPolicyAttachmentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-consistency-level"] = args["ConsistencyLevel"],
        ["x-amz-data-partition"] = args["DirectoryArn"],
    }
	local all_args = { 
		["ConsistencyLevel"] = args["ConsistencyLevel"],
		["PolicyReference"] = args["PolicyReference"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["DirectoryArn"] = args["DirectoryArn"],
	}
	asserts.AssertListPolicyAttachmentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SchemaArn [Arn] <p>The Amazon Resource Name (ARN) of the development schema. For more information, see <a>arns</a>.</p>
-- Required key: SchemaArn
-- @return DeleteSchemaRequest structure as a key-value pair table
function M.DeleteSchemaRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSchemaRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-data-partition"] = args["SchemaArn"],
    }
	local all_args = { 
		["SchemaArn"] = args["SchemaArn"],
	}
	asserts.AssertDeleteSchemaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListOutgoingTypedLinksResponse = { ["NextToken"] = true, ["TypedLinkSpecifiers"] = true, nil }

function asserts.AssertBatchListOutgoingTypedLinksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListOutgoingTypedLinksResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["TypedLinkSpecifiers"] then asserts.AssertTypedLinkSpecifierList(struct["TypedLinkSpecifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListOutgoingTypedLinksResponse[k], "BatchListOutgoingTypedLinksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListOutgoingTypedLinksResponse
-- <p>Represents the output of a <a>ListOutgoingTypedLinks</a> response operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * TypedLinkSpecifiers [TypedLinkSpecifierList] <p>Returns a typed link specifier as output.</p>
-- @return BatchListOutgoingTypedLinksResponse structure as a key-value pair table
function M.BatchListOutgoingTypedLinksResponse(args)
	assert(args, "You must provide an argument table when creating BatchListOutgoingTypedLinksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["TypedLinkSpecifiers"] = args["TypedLinkSpecifiers"],
	}
	asserts.AssertBatchListOutgoingTypedLinksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchListAttachedIndices = { ["NextToken"] = true, ["TargetReference"] = true, ["MaxResults"] = true, nil }

function asserts.AssertBatchListAttachedIndices(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchListAttachedIndices to be of type 'table'")
	assert(struct["TargetReference"], "Expected key TargetReference to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["TargetReference"] then asserts.AssertObjectReference(struct["TargetReference"]) end
	if struct["MaxResults"] then asserts.AssertNumberResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchListAttachedIndices[k], "BatchListAttachedIndices contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchListAttachedIndices
-- <p>Lists indices attached to an object inside a <a>BatchRead</a> operation. For more information, see <a>ListAttachedIndices</a> and <a>BatchReadRequest$Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token.</p>
-- * TargetReference [ObjectReference] <p>A reference to the object that has indices attached.</p>
-- * MaxResults [NumberResults] <p>The maximum number of results to retrieve.</p>
-- Required key: TargetReference
-- @return BatchListAttachedIndices structure as a key-value pair table
function M.BatchListAttachedIndices(args)
	assert(args, "You must provide an argument table when creating BatchListAttachedIndices")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["TargetReference"] = args["TargetReference"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertBatchListAttachedIndices(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [TypedLinkAttributeDefinitionList] <p>A set of key-value pairs associated with the typed link. Typed link attributes are used when you have data values that are related to the link itself, and not to one of the two objects being linked. Identity attributes also serve to distinguish the link from others of the same type between the same objects.</p>
-- * IdentityAttributeOrder [AttributeNameList] <p>The set of attributes that distinguish links made from this facet from each other, in the order of significance. Listing typed links can filter on the values of these attributes. See <a>ListOutgoingTypedLinks</a> and <a>ListIncomingTypedLinks</a> for details.</p>
-- * Name [TypedLinkName] <p>The unique name of the typed link facet.</p>
-- Required key: Name
-- Required key: Attributes
-- Required key: IdentityAttributeOrder
-- @return TypedLinkFacet structure as a key-value pair table
function M.TypedLinkFacet(args)
	assert(args, "You must provide an argument table when creating TypedLinkFacet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["IdentityAttributeOrder"] = args["IdentityAttributeOrder"],
		["Name"] = args["Name"],
	}
	asserts.AssertTypedLinkFacet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Responses [BatchWriteOperationResponseList] <p>A list of all the responses for each batch write.</p>
-- @return BatchWriteResponse structure as a key-value pair table
function M.BatchWriteResponse(args)
	assert(args, "You must provide an argument table when creating BatchWriteResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Responses"] = args["Responses"],
	}
	asserts.AssertBatchWriteResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertRuleParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleParameterKey to be of type 'string'")
end

--  
function M.RuleParameterKey(str)
	asserts.AssertRuleParameterKey(str)
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

function asserts.AssertPathString(str)
	assert(str)
	assert(type(str) == "string", "Expected PathString to be of type 'string'")
end

--  
function M.PathString(str)
	asserts.AssertPathString(str)
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

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 230, "Expected string to be max 230 characters")
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

function asserts.AssertPolicyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyType to be of type 'string'")
end

--  
function M.PolicyType(str)
	asserts.AssertPolicyType(str)
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

function asserts.AssertRequiredAttributeBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected RequiredAttributeBehavior to be of type 'string'")
end

--  
function M.RequiredAttributeBehavior(str)
	asserts.AssertRequiredAttributeBehavior(str)
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

function asserts.AssertFacetStyle(str)
	assert(str)
	assert(type(str) == "string", "Expected FacetStyle to be of type 'string'")
end

--  
function M.FacetStyle(str)
	asserts.AssertFacetStyle(str)
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

function asserts.AssertSchemaJsonDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaJsonDocument to be of type 'string'")
end

--  
function M.SchemaJsonDocument(str)
	asserts.AssertSchemaJsonDocument(str)
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
	assert(type(blob) == "string", "Expected BinaryAttributeValue to be of type 'string'")
end

function M.BinaryAttributeValue(blob)
	asserts.AssertBinaryAttributeValue(blob)
	return blob
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

function asserts.AssertObjectIdentifierAndLinkNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ObjectIdentifierAndLinkNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertObjectIdentifierAndLinkNameTuple(v)
	end
end

--  
-- List of ObjectIdentifierAndLinkNameTuple objects
function M.ObjectIdentifierAndLinkNameList(list)
	asserts.AssertObjectIdentifierAndLinkNameList(list)
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

function asserts.AssertLinkAttributeUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected LinkAttributeUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLinkAttributeUpdate(v)
	end
end

--  
-- List of LinkAttributeUpdate objects
function M.LinkAttributeUpdateList(list)
	asserts.AssertLinkAttributeUpdateList(list)
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call ListTypedLinkFacetNames asynchronously, invoking a callback when done
-- @param ListTypedLinkFacetNamesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTypedLinkFacetNamesAsync(ListTypedLinkFacetNamesRequest, cb)
	assert(ListTypedLinkFacetNamesRequest, "You must provide a ListTypedLinkFacetNamesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTypedLinkFacetNames",
	}
	for header,value in pairs(ListTypedLinkFacetNamesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/facet/list", ListTypedLinkFacetNamesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTypedLinkFacetNames synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTypedLinkFacetNamesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTypedLinkFacetNamesSync(ListTypedLinkFacetNamesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTypedLinkFacetNamesAsync(ListTypedLinkFacetNamesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIncomingTypedLinks asynchronously, invoking a callback when done
-- @param ListIncomingTypedLinksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListIncomingTypedLinksAsync(ListIncomingTypedLinksRequest, cb)
	assert(ListIncomingTypedLinksRequest, "You must provide a ListIncomingTypedLinksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListIncomingTypedLinks",
	}
	for header,value in pairs(ListIncomingTypedLinksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/incoming", ListIncomingTypedLinksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListIncomingTypedLinks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIncomingTypedLinksRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListIncomingTypedLinksSync(ListIncomingTypedLinksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIncomingTypedLinksAsync(ListIncomingTypedLinksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDirectories asynchronously, invoking a callback when done
-- @param ListDirectoriesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDirectoriesAsync(ListDirectoriesRequest, cb)
	assert(ListDirectoriesRequest, "You must provide a ListDirectoriesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDirectories",
	}
	for header,value in pairs(ListDirectoriesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/directory/list", ListDirectoriesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDirectories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDirectoriesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDirectoriesSync(ListDirectoriesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDirectoriesAsync(ListDirectoriesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSchema asynchronously, invoking a callback when done
-- @param CreateSchemaRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSchemaAsync(CreateSchemaRequest, cb)
	assert(CreateSchemaRequest, "You must provide a CreateSchemaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateSchema",
	}
	for header,value in pairs(CreateSchemaRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/create", CreateSchemaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSchema synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSchemaRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSchemaSync(CreateSchemaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSchemaAsync(CreateSchemaRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSchema asynchronously, invoking a callback when done
-- @param UpdateSchemaRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSchemaAsync(UpdateSchemaRequest, cb)
	assert(UpdateSchemaRequest, "You must provide a UpdateSchemaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateSchema",
	}
	for header,value in pairs(UpdateSchemaRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/update", UpdateSchemaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSchema synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSchemaRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSchemaSync(UpdateSchemaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSchemaAsync(UpdateSchemaRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateObject asynchronously, invoking a callback when done
-- @param CreateObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateObjectAsync(CreateObjectRequest, cb)
	assert(CreateObjectRequest, "You must provide a CreateObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateObject",
	}
	for header,value in pairs(CreateObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object", CreateObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateObjectSync(CreateObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateObjectAsync(CreateObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableDirectory asynchronously, invoking a callback when done
-- @param EnableDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableDirectoryAsync(EnableDirectoryRequest, cb)
	assert(EnableDirectoryRequest, "You must provide a EnableDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableDirectory",
	}
	for header,value in pairs(EnableDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/directory/enable", EnableDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableDirectoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnableDirectorySync(EnableDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableDirectoryAsync(EnableDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetObjectInformation asynchronously, invoking a callback when done
-- @param GetObjectInformationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetObjectInformationAsync(GetObjectInformationRequest, cb)
	assert(GetObjectInformationRequest, "You must provide a GetObjectInformationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObjectInformation",
	}
	for header,value in pairs(GetObjectInformationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/information", GetObjectInformationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetObjectInformation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetObjectInformationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetObjectInformationSync(GetObjectInformationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectInformationAsync(GetObjectInformationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/tags", ListTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSchemaAsJson asynchronously, invoking a callback when done
-- @param GetSchemaAsJsonRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSchemaAsJsonAsync(GetSchemaAsJsonRequest, cb)
	assert(GetSchemaAsJsonRequest, "You must provide a GetSchemaAsJsonRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSchemaAsJson",
	}
	for header,value in pairs(GetSchemaAsJsonRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/json", GetSchemaAsJsonRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSchemaAsJson synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSchemaAsJsonRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSchemaAsJsonSync(GetSchemaAsJsonRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSchemaAsJsonAsync(GetSchemaAsJsonRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchWrite asynchronously, invoking a callback when done
-- @param BatchWriteRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchWriteAsync(BatchWriteRequest, cb)
	assert(BatchWriteRequest, "You must provide a BatchWriteRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchWrite",
	}
	for header,value in pairs(BatchWriteRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/batchwrite", BatchWriteRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchWrite synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchWriteRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchWriteSync(BatchWriteRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchWriteAsync(BatchWriteRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFacetNames asynchronously, invoking a callback when done
-- @param ListFacetNamesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFacetNamesAsync(ListFacetNamesRequest, cb)
	assert(ListFacetNamesRequest, "You must provide a ListFacetNamesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFacetNames",
	}
	for header,value in pairs(ListFacetNamesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/facet/list", ListFacetNamesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFacetNames synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFacetNamesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListFacetNamesSync(ListFacetNamesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFacetNamesAsync(ListFacetNamesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDirectory asynchronously, invoking a callback when done
-- @param CreateDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDirectoryAsync(CreateDirectoryRequest, cb)
	assert(CreateDirectoryRequest, "You must provide a CreateDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDirectory",
	}
	for header,value in pairs(CreateDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/directory/create", CreateDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDirectoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDirectorySync(CreateDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDirectoryAsync(CreateDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateIndex asynchronously, invoking a callback when done
-- @param CreateIndexRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateIndexAsync(CreateIndexRequest, cb)
	assert(CreateIndexRequest, "You must provide a CreateIndexRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateIndex",
	}
	for header,value in pairs(CreateIndexRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/index", CreateIndexRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateIndex synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateIndexRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateIndexSync(CreateIndexRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateIndexAsync(CreateIndexRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFacet asynchronously, invoking a callback when done
-- @param DeleteFacetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFacetAsync(DeleteFacetRequest, cb)
	assert(DeleteFacetRequest, "You must provide a DeleteFacetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFacet",
	}
	for header,value in pairs(DeleteFacetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/facet/delete", DeleteFacetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFacet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFacetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFacetSync(DeleteFacetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFacetAsync(DeleteFacetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachPolicy asynchronously, invoking a callback when done
-- @param DetachPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachPolicyAsync(DetachPolicyRequest, cb)
	assert(DetachPolicyRequest, "You must provide a DetachPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachPolicy",
	}
	for header,value in pairs(DetachPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/policy/detach", DetachPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetachPolicySync(DetachPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachPolicyAsync(DetachPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachObject asynchronously, invoking a callback when done
-- @param DetachObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachObjectAsync(DetachObjectRequest, cb)
	assert(DetachObjectRequest, "You must provide a DetachObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachObject",
	}
	for header,value in pairs(DetachObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/detach", DetachObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetachObjectSync(DetachObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachObjectAsync(DetachObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListObjectChildren asynchronously, invoking a callback when done
-- @param ListObjectChildrenRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListObjectChildrenAsync(ListObjectChildrenRequest, cb)
	assert(ListObjectChildrenRequest, "You must provide a ListObjectChildrenRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjectChildren",
	}
	for header,value in pairs(ListObjectChildrenRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/children", ListObjectChildrenRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListObjectChildren synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListObjectChildrenRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListObjectChildrenSync(ListObjectChildrenRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectChildrenAsync(ListObjectChildrenRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListObjectAttributes asynchronously, invoking a callback when done
-- @param ListObjectAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListObjectAttributesAsync(ListObjectAttributesRequest, cb)
	assert(ListObjectAttributesRequest, "You must provide a ListObjectAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjectAttributes",
	}
	for header,value in pairs(ListObjectAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/attributes", ListObjectAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListObjectAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListObjectAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListObjectAttributesSync(ListObjectAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectAttributesAsync(ListObjectAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddFacetToObject asynchronously, invoking a callback when done
-- @param AddFacetToObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddFacetToObjectAsync(AddFacetToObjectRequest, cb)
	assert(AddFacetToObjectRequest, "You must provide a AddFacetToObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddFacetToObject",
	}
	for header,value in pairs(AddFacetToObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/facets", AddFacetToObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddFacetToObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddFacetToObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AddFacetToObjectSync(AddFacetToObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddFacetToObjectAsync(AddFacetToObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutSchemaFromJson asynchronously, invoking a callback when done
-- @param PutSchemaFromJsonRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutSchemaFromJsonAsync(PutSchemaFromJsonRequest, cb)
	assert(PutSchemaFromJsonRequest, "You must provide a PutSchemaFromJsonRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutSchemaFromJson",
	}
	for header,value in pairs(PutSchemaFromJsonRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/json", PutSchemaFromJsonRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutSchemaFromJson synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutSchemaFromJsonRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutSchemaFromJsonSync(PutSchemaFromJsonRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutSchemaFromJsonAsync(PutSchemaFromJsonRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateLinkAttributes asynchronously, invoking a callback when done
-- @param UpdateLinkAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateLinkAttributesAsync(UpdateLinkAttributesRequest, cb)
	assert(UpdateLinkAttributesRequest, "You must provide a UpdateLinkAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateLinkAttributes",
	}
	for header,value in pairs(UpdateLinkAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", UpdateLinkAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateLinkAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateLinkAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateLinkAttributesSync(UpdateLinkAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateLinkAttributesAsync(UpdateLinkAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPolicyAttachments asynchronously, invoking a callback when done
-- @param ListPolicyAttachmentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPolicyAttachmentsAsync(ListPolicyAttachmentsRequest, cb)
	assert(ListPolicyAttachmentsRequest, "You must provide a ListPolicyAttachmentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPolicyAttachments",
	}
	for header,value in pairs(ListPolicyAttachmentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/policy/attachment", ListPolicyAttachmentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPolicyAttachments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPolicyAttachmentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPolicyAttachmentsSync(ListPolicyAttachmentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPolicyAttachmentsAsync(ListPolicyAttachmentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFacet asynchronously, invoking a callback when done
-- @param CreateFacetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateFacetAsync(CreateFacetRequest, cb)
	assert(CreateFacetRequest, "You must provide a CreateFacetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateFacet",
	}
	for header,value in pairs(CreateFacetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/facet/create", CreateFacetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFacet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFacetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateFacetSync(CreateFacetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFacetAsync(CreateFacetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListObjectParents asynchronously, invoking a callback when done
-- @param ListObjectParentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListObjectParentsAsync(ListObjectParentsRequest, cb)
	assert(ListObjectParentsRequest, "You must provide a ListObjectParentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjectParents",
	}
	for header,value in pairs(ListObjectParentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/parent", ListObjectParentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListObjectParents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListObjectParentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListObjectParentsSync(ListObjectParentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectParentsAsync(ListObjectParentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchRead asynchronously, invoking a callback when done
-- @param BatchReadRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchReadAsync(BatchReadRequest, cb)
	assert(BatchReadRequest, "You must provide a BatchReadRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchRead",
	}
	for header,value in pairs(BatchReadRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/batchread", BatchReadRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchRead synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchReadRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchReadSync(BatchReadRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchReadAsync(BatchReadRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachTypedLink asynchronously, invoking a callback when done
-- @param DetachTypedLinkRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachTypedLinkAsync(DetachTypedLinkRequest, cb)
	assert(DetachTypedLinkRequest, "You must provide a DetachTypedLinkRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachTypedLink",
	}
	for header,value in pairs(DetachTypedLinkRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/detach", DetachTypedLinkRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachTypedLink synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachTypedLinkRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetachTypedLinkSync(DetachTypedLinkRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachTypedLinkAsync(DetachTypedLinkRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveFacetFromObject asynchronously, invoking a callback when done
-- @param RemoveFacetFromObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveFacetFromObjectAsync(RemoveFacetFromObjectRequest, cb)
	assert(RemoveFacetFromObjectRequest, "You must provide a RemoveFacetFromObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveFacetFromObject",
	}
	for header,value in pairs(RemoveFacetFromObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/facets/delete", RemoveFacetFromObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveFacetFromObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveFacetFromObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveFacetFromObjectSync(RemoveFacetFromObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveFacetFromObjectAsync(RemoveFacetFromObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpgradeAppliedSchema asynchronously, invoking a callback when done
-- @param UpgradeAppliedSchemaRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpgradeAppliedSchemaAsync(UpgradeAppliedSchemaRequest, cb)
	assert(UpgradeAppliedSchemaRequest, "You must provide a UpgradeAppliedSchemaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpgradeAppliedSchema",
	}
	for header,value in pairs(UpgradeAppliedSchemaRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", UpgradeAppliedSchemaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpgradeAppliedSchema synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpgradeAppliedSchemaRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpgradeAppliedSchemaSync(UpgradeAppliedSchemaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpgradeAppliedSchemaAsync(UpgradeAppliedSchemaRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call LookupPolicy asynchronously, invoking a callback when done
-- @param LookupPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.LookupPolicyAsync(LookupPolicyRequest, cb)
	assert(LookupPolicyRequest, "You must provide a LookupPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".LookupPolicy",
	}
	for header,value in pairs(LookupPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/policy/lookup", LookupPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call LookupPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param LookupPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.LookupPolicySync(LookupPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.LookupPolicyAsync(LookupPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListObjectParentPaths asynchronously, invoking a callback when done
-- @param ListObjectParentPathsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListObjectParentPathsAsync(ListObjectParentPathsRequest, cb)
	assert(ListObjectParentPathsRequest, "You must provide a ListObjectParentPathsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjectParentPaths",
	}
	for header,value in pairs(ListObjectParentPathsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/parentpaths", ListObjectParentPathsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListObjectParentPaths synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListObjectParentPathsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListObjectParentPathsSync(ListObjectParentPathsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectParentPathsAsync(ListObjectParentPathsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TagResource",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/tags/add", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAttachedIndices asynchronously, invoking a callback when done
-- @param ListAttachedIndicesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAttachedIndicesAsync(ListAttachedIndicesRequest, cb)
	assert(ListAttachedIndicesRequest, "You must provide a ListAttachedIndicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAttachedIndices",
	}
	for header,value in pairs(ListAttachedIndicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/indices", ListAttachedIndicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAttachedIndices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAttachedIndicesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAttachedIndicesSync(ListAttachedIndicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAttachedIndicesAsync(ListAttachedIndicesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachTypedLink asynchronously, invoking a callback when done
-- @param AttachTypedLinkRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachTypedLinkAsync(AttachTypedLinkRequest, cb)
	assert(AttachTypedLinkRequest, "You must provide a AttachTypedLinkRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachTypedLink",
	}
	for header,value in pairs(AttachTypedLinkRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/attach", AttachTypedLinkRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachTypedLink synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachTypedLinkRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachTypedLinkSync(AttachTypedLinkRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachTypedLinkAsync(AttachTypedLinkRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetObjectAttributes asynchronously, invoking a callback when done
-- @param GetObjectAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetObjectAttributesAsync(GetObjectAttributesRequest, cb)
	assert(GetObjectAttributesRequest, "You must provide a GetObjectAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObjectAttributes",
	}
	for header,value in pairs(GetObjectAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/attributes/get", GetObjectAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetObjectAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetObjectAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetObjectAttributesSync(GetObjectAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectAttributesAsync(GetObjectAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLinkAttributes asynchronously, invoking a callback when done
-- @param GetLinkAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLinkAttributesAsync(GetLinkAttributesRequest, cb)
	assert(GetLinkAttributesRequest, "You must provide a GetLinkAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetLinkAttributes",
	}
	for header,value in pairs(GetLinkAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", GetLinkAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLinkAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLinkAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLinkAttributesSync(GetLinkAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLinkAttributesAsync(GetLinkAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPublishedSchemaArns asynchronously, invoking a callback when done
-- @param ListPublishedSchemaArnsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPublishedSchemaArnsAsync(ListPublishedSchemaArnsRequest, cb)
	assert(ListPublishedSchemaArnsRequest, "You must provide a ListPublishedSchemaArnsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPublishedSchemaArns",
	}
	for header,value in pairs(ListPublishedSchemaArnsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/published", ListPublishedSchemaArnsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPublishedSchemaArns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPublishedSchemaArnsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPublishedSchemaArnsSync(ListPublishedSchemaArnsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPublishedSchemaArnsAsync(ListPublishedSchemaArnsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDirectory asynchronously, invoking a callback when done
-- @param DeleteDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDirectoryAsync(DeleteDirectoryRequest, cb)
	assert(DeleteDirectoryRequest, "You must provide a DeleteDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDirectory",
	}
	for header,value in pairs(DeleteDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/directory", DeleteDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDirectoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDirectorySync(DeleteDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDirectoryAsync(DeleteDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PublishSchema asynchronously, invoking a callback when done
-- @param PublishSchemaRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PublishSchemaAsync(PublishSchemaRequest, cb)
	assert(PublishSchemaRequest, "You must provide a PublishSchemaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PublishSchema",
	}
	for header,value in pairs(PublishSchemaRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/publish", PublishSchemaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PublishSchema synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PublishSchemaRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PublishSchemaSync(PublishSchemaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PublishSchemaAsync(PublishSchemaRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFacet asynchronously, invoking a callback when done
-- @param GetFacetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFacetAsync(GetFacetRequest, cb)
	assert(GetFacetRequest, "You must provide a GetFacetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFacet",
	}
	for header,value in pairs(GetFacetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/facet", GetFacetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFacet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFacetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFacetSync(GetFacetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFacetAsync(GetFacetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSchema asynchronously, invoking a callback when done
-- @param DeleteSchemaRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSchemaAsync(DeleteSchemaRequest, cb)
	assert(DeleteSchemaRequest, "You must provide a DeleteSchemaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSchema",
	}
	for header,value in pairs(DeleteSchemaRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema", DeleteSchemaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSchema synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSchemaRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSchemaSync(DeleteSchemaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSchemaAsync(DeleteSchemaRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachPolicy asynchronously, invoking a callback when done
-- @param AttachPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachPolicyAsync(AttachPolicyRequest, cb)
	assert(AttachPolicyRequest, "You must provide a AttachPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachPolicy",
	}
	for header,value in pairs(AttachPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/policy/attach", AttachPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachPolicySync(AttachPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachPolicyAsync(AttachPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableDirectory asynchronously, invoking a callback when done
-- @param DisableDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableDirectoryAsync(DisableDirectoryRequest, cb)
	assert(DisableDirectoryRequest, "You must provide a DisableDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisableDirectory",
	}
	for header,value in pairs(DisableDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/directory/disable", DisableDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableDirectoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisableDirectorySync(DisableDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableDirectoryAsync(DisableDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFacetAttributes asynchronously, invoking a callback when done
-- @param ListFacetAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFacetAttributesAsync(ListFacetAttributesRequest, cb)
	assert(ListFacetAttributesRequest, "You must provide a ListFacetAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFacetAttributes",
	}
	for header,value in pairs(ListFacetAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/facet/attributes", ListFacetAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFacetAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFacetAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListFacetAttributesSync(ListFacetAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFacetAttributesAsync(ListFacetAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTypedLinkFacet asynchronously, invoking a callback when done
-- @param DeleteTypedLinkFacetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTypedLinkFacetAsync(DeleteTypedLinkFacetRequest, cb)
	assert(DeleteTypedLinkFacetRequest, "You must provide a DeleteTypedLinkFacetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTypedLinkFacet",
	}
	for header,value in pairs(DeleteTypedLinkFacetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", DeleteTypedLinkFacetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTypedLinkFacet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTypedLinkFacetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTypedLinkFacetSync(DeleteTypedLinkFacetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTypedLinkFacetAsync(DeleteTypedLinkFacetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListObjectPolicies asynchronously, invoking a callback when done
-- @param ListObjectPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListObjectPoliciesAsync(ListObjectPoliciesRequest, cb)
	assert(ListObjectPoliciesRequest, "You must provide a ListObjectPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListObjectPolicies",
	}
	for header,value in pairs(ListObjectPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/policy", ListObjectPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListObjectPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListObjectPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListObjectPoliciesSync(ListObjectPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListObjectPoliciesAsync(ListObjectPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachFromIndex asynchronously, invoking a callback when done
-- @param DetachFromIndexRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachFromIndexAsync(DetachFromIndexRequest, cb)
	assert(DetachFromIndexRequest, "You must provide a DetachFromIndexRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachFromIndex",
	}
	for header,value in pairs(DetachFromIndexRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/index/detach", DetachFromIndexRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachFromIndex synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachFromIndexRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetachFromIndexSync(DetachFromIndexRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachFromIndexAsync(DetachFromIndexRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpgradePublishedSchema asynchronously, invoking a callback when done
-- @param UpgradePublishedSchemaRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpgradePublishedSchemaAsync(UpgradePublishedSchemaRequest, cb)
	assert(UpgradePublishedSchemaRequest, "You must provide a UpgradePublishedSchemaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpgradePublishedSchema",
	}
	for header,value in pairs(UpgradePublishedSchemaRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/upgradepublished", UpgradePublishedSchemaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpgradePublishedSchema synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpgradePublishedSchemaRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpgradePublishedSchemaSync(UpgradePublishedSchemaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpgradePublishedSchemaAsync(UpgradePublishedSchemaRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAppliedSchemaArns asynchronously, invoking a callback when done
-- @param ListAppliedSchemaArnsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAppliedSchemaArnsAsync(ListAppliedSchemaArnsRequest, cb)
	assert(ListAppliedSchemaArnsRequest, "You must provide a ListAppliedSchemaArnsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAppliedSchemaArns",
	}
	for header,value in pairs(ListAppliedSchemaArnsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/applied", ListAppliedSchemaArnsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAppliedSchemaArns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAppliedSchemaArnsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAppliedSchemaArnsSync(ListAppliedSchemaArnsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAppliedSchemaArnsAsync(ListAppliedSchemaArnsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAppliedSchemaVersion asynchronously, invoking a callback when done
-- @param GetAppliedSchemaVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAppliedSchemaVersionAsync(GetAppliedSchemaVersionRequest, cb)
	assert(GetAppliedSchemaVersionRequest, "You must provide a GetAppliedSchemaVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAppliedSchemaVersion",
	}
	for header,value in pairs(GetAppliedSchemaVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/getappliedschema", GetAppliedSchemaVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAppliedSchemaVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAppliedSchemaVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAppliedSchemaVersionSync(GetAppliedSchemaVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAppliedSchemaVersionAsync(GetAppliedSchemaVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ApplySchema asynchronously, invoking a callback when done
-- @param ApplySchemaRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ApplySchemaAsync(ApplySchemaRequest, cb)
	assert(ApplySchemaRequest, "You must provide a ApplySchemaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ApplySchema",
	}
	for header,value in pairs(ApplySchemaRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/apply", ApplySchemaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ApplySchema synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ApplySchemaRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ApplySchemaSync(ApplySchemaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ApplySchemaAsync(ApplySchemaRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDevelopmentSchemaArns asynchronously, invoking a callback when done
-- @param ListDevelopmentSchemaArnsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDevelopmentSchemaArnsAsync(ListDevelopmentSchemaArnsRequest, cb)
	assert(ListDevelopmentSchemaArnsRequest, "You must provide a ListDevelopmentSchemaArnsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDevelopmentSchemaArns",
	}
	for header,value in pairs(ListDevelopmentSchemaArnsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/development", ListDevelopmentSchemaArnsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDevelopmentSchemaArns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDevelopmentSchemaArnsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDevelopmentSchemaArnsSync(ListDevelopmentSchemaArnsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDevelopmentSchemaArnsAsync(ListDevelopmentSchemaArnsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDirectory asynchronously, invoking a callback when done
-- @param GetDirectoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDirectoryAsync(GetDirectoryRequest, cb)
	assert(GetDirectoryRequest, "You must provide a GetDirectoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDirectory",
	}
	for header,value in pairs(GetDirectoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/directory/get", GetDirectoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDirectory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDirectoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDirectorySync(GetDirectoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDirectoryAsync(GetDirectoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachObject asynchronously, invoking a callback when done
-- @param AttachObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachObjectAsync(AttachObjectRequest, cb)
	assert(AttachObjectRequest, "You must provide a AttachObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachObject",
	}
	for header,value in pairs(AttachObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/attach", AttachObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachObjectSync(AttachObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachObjectAsync(AttachObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOutgoingTypedLinks asynchronously, invoking a callback when done
-- @param ListOutgoingTypedLinksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOutgoingTypedLinksAsync(ListOutgoingTypedLinksRequest, cb)
	assert(ListOutgoingTypedLinksRequest, "You must provide a ListOutgoingTypedLinksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListOutgoingTypedLinks",
	}
	for header,value in pairs(ListOutgoingTypedLinksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/outgoing", ListOutgoingTypedLinksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOutgoingTypedLinks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOutgoingTypedLinksRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOutgoingTypedLinksSync(ListOutgoingTypedLinksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOutgoingTypedLinksAsync(ListOutgoingTypedLinksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateObjectAttributes asynchronously, invoking a callback when done
-- @param UpdateObjectAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateObjectAttributesAsync(UpdateObjectAttributesRequest, cb)
	assert(UpdateObjectAttributesRequest, "You must provide a UpdateObjectAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateObjectAttributes",
	}
	for header,value in pairs(UpdateObjectAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/update", UpdateObjectAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateObjectAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateObjectAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateObjectAttributesSync(UpdateObjectAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateObjectAttributesAsync(UpdateObjectAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UntagResource",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/tags/remove", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTypedLinkFacet asynchronously, invoking a callback when done
-- @param CreateTypedLinkFacetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTypedLinkFacetAsync(CreateTypedLinkFacetRequest, cb)
	assert(CreateTypedLinkFacetRequest, "You must provide a CreateTypedLinkFacetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTypedLinkFacet",
	}
	for header,value in pairs(CreateTypedLinkFacetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/facet/create", CreateTypedLinkFacetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTypedLinkFacet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTypedLinkFacetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTypedLinkFacetSync(CreateTypedLinkFacetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTypedLinkFacetAsync(CreateTypedLinkFacetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachToIndex asynchronously, invoking a callback when done
-- @param AttachToIndexRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachToIndexAsync(AttachToIndexRequest, cb)
	assert(AttachToIndexRequest, "You must provide a AttachToIndexRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachToIndex",
	}
	for header,value in pairs(AttachToIndexRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/index/attach", AttachToIndexRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachToIndex synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachToIndexRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachToIndexSync(AttachToIndexRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachToIndexAsync(AttachToIndexRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIndex asynchronously, invoking a callback when done
-- @param ListIndexRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListIndexAsync(ListIndexRequest, cb)
	assert(ListIndexRequest, "You must provide a ListIndexRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListIndex",
	}
	for header,value in pairs(ListIndexRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/index/targets", ListIndexRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListIndex synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIndexRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListIndexSync(ListIndexRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIndexAsync(ListIndexRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTypedLinkFacetAttributes asynchronously, invoking a callback when done
-- @param ListTypedLinkFacetAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTypedLinkFacetAttributesAsync(ListTypedLinkFacetAttributesRequest, cb)
	assert(ListTypedLinkFacetAttributesRequest, "You must provide a ListTypedLinkFacetAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTypedLinkFacetAttributes",
	}
	for header,value in pairs(ListTypedLinkFacetAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", ListTypedLinkFacetAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTypedLinkFacetAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTypedLinkFacetAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTypedLinkFacetAttributesSync(ListTypedLinkFacetAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTypedLinkFacetAttributesAsync(ListTypedLinkFacetAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFacet asynchronously, invoking a callback when done
-- @param UpdateFacetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateFacetAsync(UpdateFacetRequest, cb)
	assert(UpdateFacetRequest, "You must provide a UpdateFacetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFacet",
	}
	for header,value in pairs(UpdateFacetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/facet", UpdateFacetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFacet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFacetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateFacetSync(UpdateFacetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFacetAsync(UpdateFacetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTypedLinkFacet asynchronously, invoking a callback when done
-- @param UpdateTypedLinkFacetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTypedLinkFacetAsync(UpdateTypedLinkFacetRequest, cb)
	assert(UpdateTypedLinkFacetRequest, "You must provide a UpdateTypedLinkFacetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateTypedLinkFacet",
	}
	for header,value in pairs(UpdateTypedLinkFacetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/facet", UpdateTypedLinkFacetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTypedLinkFacet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTypedLinkFacetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTypedLinkFacetSync(UpdateTypedLinkFacetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTypedLinkFacetAsync(UpdateTypedLinkFacetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListManagedSchemaArns asynchronously, invoking a callback when done
-- @param ListManagedSchemaArnsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListManagedSchemaArnsAsync(ListManagedSchemaArnsRequest, cb)
	assert(ListManagedSchemaArnsRequest, "You must provide a ListManagedSchemaArnsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListManagedSchemaArns",
	}
	for header,value in pairs(ListManagedSchemaArnsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/schema/managed", ListManagedSchemaArnsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListManagedSchemaArns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListManagedSchemaArnsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListManagedSchemaArnsSync(ListManagedSchemaArnsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListManagedSchemaArnsAsync(ListManagedSchemaArnsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteObject asynchronously, invoking a callback when done
-- @param DeleteObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteObjectAsync(DeleteObjectRequest, cb)
	assert(DeleteObjectRequest, "You must provide a DeleteObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteObject",
	}
	for header,value in pairs(DeleteObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/object/delete", DeleteObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteObjectSync(DeleteObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteObjectAsync(DeleteObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTypedLinkFacetInformation asynchronously, invoking a callback when done
-- @param GetTypedLinkFacetInformationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTypedLinkFacetInformationAsync(GetTypedLinkFacetInformationRequest, cb)
	assert(GetTypedLinkFacetInformationRequest, "You must provide a GetTypedLinkFacetInformationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTypedLinkFacetInformation",
	}
	for header,value in pairs(GetTypedLinkFacetInformationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/amazonclouddirectory/2017-01-11/typedlink/facet/get", GetTypedLinkFacetInformationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTypedLinkFacetInformation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTypedLinkFacetInformationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTypedLinkFacetInformationSync(GetTypedLinkFacetInformationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTypedLinkFacetInformationAsync(GetTypedLinkFacetInformationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
