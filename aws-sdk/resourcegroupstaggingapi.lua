--- GENERATED CODE - DO NOT MODIFY
-- AWS Resource Groups Tagging API (resourcegroupstaggingapi-2017-01-26)

local M = {}

M.metadata = {
	api_version = "2017-01-26",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "tagging",
	service_abbreviation = "",
	service_full_name = "AWS Resource Groups Tagging API",
	signature_version = "v4",
	target_prefix = "ResourceGroupsTaggingAPI_20170126",
	timestamp_format = "",
	global_endpoint = "",
	uid = "resourcegroupstaggingapi-2017-01-26",
}

local keys = {}
local asserts = {}

keys.GetTagValuesOutput = { ["PaginationToken"] = true, ["TagValues"] = true, nil }

function asserts.AssertGetTagValuesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagValuesOutput to be of type 'table'")
	if struct["PaginationToken"] then asserts.AssertPaginationToken(struct["PaginationToken"]) end
	if struct["TagValues"] then asserts.AssertTagValuesOutputList(struct["TagValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTagValuesOutput[k], "GetTagValuesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagValuesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [PaginationToken] <p>A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the <code>PaginationToken</code> value in a subsequent request.</p>
-- * TagValues [TagValuesOutputList] <p>A list of all tag values for the specified key in the AWS account.</p>
-- @return GetTagValuesOutput structure as a key-value pair table
function M.GetTagValuesOutput(args)
	assert(args, "You must provide an argument table when creating GetTagValuesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["TagValues"] = args["TagValues"],
	}
	asserts.AssertGetTagValuesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The request processing failed because of an unknown error, exception, or failure. You can retry the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- @return InternalServiceException structure as a key-value pair table
function M.InternalServiceException(args)
	assert(args, "You must provide an argument table when creating InternalServiceException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServiceException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ThrottledException = { ["Message"] = true, nil }

function asserts.AssertThrottledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottledException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThrottledException[k], "ThrottledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottledException
-- <p>The request was denied to limit the frequency of submitted requests.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- @return ThrottledException structure as a key-value pair table
function M.ThrottledException(args)
	assert(args, "You must provide an argument table when creating ThrottledException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertThrottledException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResourcesOutput = { ["PaginationToken"] = true, ["ResourceTagMappingList"] = true, nil }

function asserts.AssertGetResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourcesOutput to be of type 'table'")
	if struct["PaginationToken"] then asserts.AssertPaginationToken(struct["PaginationToken"]) end
	if struct["ResourceTagMappingList"] then asserts.AssertResourceTagMappingList(struct["ResourceTagMappingList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourcesOutput[k], "GetResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourcesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [PaginationToken] <p>A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the <code>PaginationToken</code> value in a subsequent request.</p>
-- * ResourceTagMappingList [ResourceTagMappingList] <p>A list of resource ARNs and the tags (keys and values) associated with each.</p>
-- @return GetResourcesOutput structure as a key-value pair table
function M.GetResourcesOutput(args)
	assert(args, "You must provide an argument table when creating GetResourcesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["ResourceTagMappingList"] = args["ResourceTagMappingList"],
	}
	asserts.AssertGetResourcesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTagKeysOutput = { ["PaginationToken"] = true, ["TagKeys"] = true, nil }

function asserts.AssertGetTagKeysOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagKeysOutput to be of type 'table'")
	if struct["PaginationToken"] then asserts.AssertPaginationToken(struct["PaginationToken"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTagKeysOutput[k], "GetTagKeysOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagKeysOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [PaginationToken] <p>A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the <code>PaginationToken</code> value in a subsequent request.</p>
-- * TagKeys [TagKeyList] <p>A list of all tag keys in the AWS account.</p>
-- @return GetTagKeysOutput structure as a key-value pair table
function M.GetTagKeysOutput(args)
	assert(args, "You must provide an argument table when creating GetTagKeysOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertGetTagKeysOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidParameterException = { ["Message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>A parameter is missing or a malformed string or invalid or out-of-range value was supplied for the request parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidParameterException(all_args)
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
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>The metadata that you apply to AWS resources to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-basics">Tag Basics</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>
-- * Key [TagKey] <p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>
-- Required key: Key
-- Required key: Value
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

keys.ResourceTagMapping = { ["ResourceARN"] = true, ["Tags"] = true, nil }

function asserts.AssertResourceTagMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTagMapping to be of type 'table'")
	if struct["ResourceARN"] then asserts.AssertResourceARN(struct["ResourceARN"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceTagMapping[k], "ResourceTagMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTagMapping
-- <p>A list of resource ARNs and the tags (keys and values) that are associated with each.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARN [ResourceARN] <p>An array of resource ARN(s).</p>
-- * Tags [TagList] <p>The tags that have been applied to one or more AWS resources.</p>
-- @return ResourceTagMapping structure as a key-value pair table
function M.ResourceTagMapping(args)
	assert(args, "You must provide an argument table when creating ResourceTagMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceARN"] = args["ResourceARN"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertResourceTagMapping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourcesOutput = { ["FailedResourcesMap"] = true, nil }

function asserts.AssertTagResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourcesOutput to be of type 'table'")
	if struct["FailedResourcesMap"] then asserts.AssertFailedResourcesMap(struct["FailedResourcesMap"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourcesOutput[k], "TagResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourcesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedResourcesMap [FailedResourcesMap] <p>Details of resources that could not be tagged. An error code, status code, and error message are returned for each failed item.</p>
-- @return TagResourcesOutput structure as a key-value pair table
function M.TagResourcesOutput(args)
	assert(args, "You must provide an argument table when creating TagResourcesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedResourcesMap"] = args["FailedResourcesMap"],
	}
	asserts.AssertTagResourcesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourcesInput = { ["TagKeys"] = true, ["ResourceARNList"] = true, nil }

function asserts.AssertUntagResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourcesInput to be of type 'table'")
	assert(struct["ResourceARNList"], "Expected key ResourceARNList to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then asserts.AssertTagKeyListForUntag(struct["TagKeys"]) end
	if struct["ResourceARNList"] then asserts.AssertResourceARNList(struct["ResourceARNList"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourcesInput[k], "UntagResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourcesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKeys [TagKeyListForUntag] <p>A list of the tag keys that you want to remove from the specified resources.</p>
-- * ResourceARNList [ResourceARNList] <p>A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to untag. An ARN can be set to a maximum of 1600 characters. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: ResourceARNList
-- Required key: TagKeys
-- @return UntagResourcesInput structure as a key-value pair table
function M.UntagResourcesInput(args)
	assert(args, "You must provide an argument table when creating UntagResourcesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagKeys"] = args["TagKeys"],
		["ResourceARNList"] = args["ResourceARNList"],
	}
	asserts.AssertUntagResourcesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagFilter = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertTagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagFilter to be of type 'table'")
	if struct["Values"] then asserts.AssertTagValueList(struct["Values"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagFilter[k], "TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagFilter
-- <p>A list of tags (keys and values) that are used to specify the associated resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [TagValueList] <p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>
-- * Key [TagKey] <p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>
-- @return TagFilter structure as a key-value pair table
function M.TagFilter(args)
	assert(args, "You must provide an argument table when creating TagFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertTagFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourcesOutput = { ["FailedResourcesMap"] = true, nil }

function asserts.AssertUntagResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourcesOutput to be of type 'table'")
	if struct["FailedResourcesMap"] then asserts.AssertFailedResourcesMap(struct["FailedResourcesMap"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourcesOutput[k], "UntagResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourcesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedResourcesMap [FailedResourcesMap] <p>Details of resources that could not be untagged. An error code, status code, and error message are returned for each failed item.</p>
-- @return UntagResourcesOutput structure as a key-value pair table
function M.UntagResourcesOutput(args)
	assert(args, "You must provide an argument table when creating UntagResourcesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedResourcesMap"] = args["FailedResourcesMap"],
	}
	asserts.AssertUntagResourcesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResourcesInput = { ["PaginationToken"] = true, ["TagsPerPage"] = true, ["TagFilters"] = true, ["ResourcesPerPage"] = true, ["ResourceTypeFilters"] = true, nil }

function asserts.AssertGetResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourcesInput to be of type 'table'")
	if struct["PaginationToken"] then asserts.AssertPaginationToken(struct["PaginationToken"]) end
	if struct["TagsPerPage"] then asserts.AssertTagsPerPage(struct["TagsPerPage"]) end
	if struct["TagFilters"] then asserts.AssertTagFilterList(struct["TagFilters"]) end
	if struct["ResourcesPerPage"] then asserts.AssertResourcesPerPage(struct["ResourcesPerPage"]) end
	if struct["ResourceTypeFilters"] then asserts.AssertResourceTypeFilterList(struct["ResourceTypeFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourcesInput[k], "GetResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourcesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [PaginationToken] <p>A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a <code>PaginationToken</code>, use that string for this value to request an additional page of data.</p>
-- * TagsPerPage [TagsPerPage] <p>A limit that restricts the number of tags (key and value pairs) returned by GetResources in paginated output. A resource with no tags is counted as having one tag (one key and value pair).</p> <p> <code>GetResources</code> does not split a resource and its associated tags across pages. If the specified <code>TagsPerPage</code> would cause such a break, a <code>PaginationToken</code> is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a <code>TagsPerPage</code> of <code>100</code> and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of 3 pages, with the first page displaying the first 10 resources, each with its 10 tags, the second page displaying the next 10 resources each with its 10 tags, and the third page displaying the remaining 2 resources, each with its 10 tags.</p> <p/> <p>You can set <code>TagsPerPage</code> to a minimum of 100 items and the maximum of 500 items.</p>
-- * TagFilters [TagFilterList] <p>A list of tags (keys and values). A request can include up to 50 keys, and each key can include up to 20 values.</p> <p>If you specify multiple filters connected by an AND operator in a single request, the response returns only those resources that are associated with every specified filter.</p> <p>If you specify multiple filters connected by an OR operator in a single request, the response returns all resources that are associated with at least one or possibly more of the specified filters.</p>
-- * ResourcesPerPage [ResourcesPerPage] <p>A limit that restricts the number of resources returned by GetResources in paginated output. You can set ResourcesPerPage to a minimum of 1 item and the maximum of 50 items. </p>
-- * ResourceTypeFilters [ResourceTypeFilterList] <p>The constraints on the resources that you want returned. The format of each resource type is <code>service[:resourceType]</code>. For example, specifying a resource type of <code>ec2</code> returns all tagged Amazon EC2 resources (which includes tagged EC2 instances). Specifying a resource type of <code>ec2:instance</code> returns only EC2 instances. </p> <p>The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the <i>AWS General Reference</i> for the following:</p> <ul> <li> <p>For a list of service name strings, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a>.</p> </li> <li> <p>For resource type strings, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax">Example ARNs</a>.</p> </li> <li> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p> </li> </ul>
-- @return GetResourcesInput structure as a key-value pair table
function M.GetResourcesInput(args)
	assert(args, "You must provide an argument table when creating GetResourcesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["TagsPerPage"] = args["TagsPerPage"],
		["TagFilters"] = args["TagFilters"],
		["ResourcesPerPage"] = args["ResourcesPerPage"],
		["ResourceTypeFilters"] = args["ResourceTypeFilters"],
	}
	asserts.AssertGetResourcesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailureInfo = { ["ErrorCode"] = true, ["ErrorMessage"] = true, ["StatusCode"] = true, nil }

function asserts.AssertFailureInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailureInfo to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["StatusCode"] then asserts.AssertStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailureInfo[k], "FailureInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailureInfo
-- <p>Details of the common errors that all actions return.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] <p>The code of the common error. Valid values include <code>InternalServiceException</code>, <code>InvalidParameterException</code>, and any valid error code returned by the AWS service that hosts the resource that you want to tag.</p>
-- * ErrorMessage [ErrorMessage] <p>The message of the common error.</p>
-- * StatusCode [StatusCode] <p>The HTTP status code of the common error.</p>
-- @return FailureInfo structure as a key-value pair table
function M.FailureInfo(args)
	assert(args, "You must provide an argument table when creating FailureInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertFailureInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTagValuesInput = { ["PaginationToken"] = true, ["Key"] = true, nil }

function asserts.AssertGetTagValuesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagValuesInput to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["PaginationToken"] then asserts.AssertPaginationToken(struct["PaginationToken"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTagValuesInput[k], "GetTagValuesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagValuesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [PaginationToken] <p>A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.</p>
-- * Key [TagKey] <p>The key for which you want to list all existing values in the specified region for the AWS account.</p>
-- Required key: Key
-- @return GetTagValuesInput structure as a key-value pair table
function M.GetTagValuesInput(args)
	assert(args, "You must provide an argument table when creating GetTagValuesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
		["Key"] = args["Key"],
	}
	asserts.AssertGetTagValuesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourcesInput = { ["ResourceARNList"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourcesInput to be of type 'table'")
	assert(struct["ResourceARNList"], "Expected key ResourceARNList to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceARNList"] then asserts.AssertResourceARNList(struct["ResourceARNList"]) end
	if struct["Tags"] then asserts.AssertTagMap(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourcesInput[k], "TagResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourcesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceARNList [ResourceARNList] <p>A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to tag. An ARN can be set to a maximum of 1600 characters. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- * Tags [TagMap] <p>The tags that you want to add to the specified resources. A tag consists of a key and a value that you define.</p>
-- Required key: ResourceARNList
-- Required key: Tags
-- @return TagResourcesInput structure as a key-value pair table
function M.TagResourcesInput(args)
	assert(args, "You must provide an argument table when creating TagResourcesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceARNList"] = args["ResourceARNList"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagResourcesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTagKeysInput = { ["PaginationToken"] = true, nil }

function asserts.AssertGetTagKeysInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagKeysInput to be of type 'table'")
	if struct["PaginationToken"] then asserts.AssertPaginationToken(struct["PaginationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTagKeysInput[k], "GetTagKeysInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagKeysInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PaginationToken [PaginationToken] <p>A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.</p>
-- @return GetTagKeysInput structure as a key-value pair table
function M.GetTagKeysInput(args)
	assert(args, "You must provide an argument table when creating GetTagKeysInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PaginationToken"] = args["PaginationToken"],
	}
	asserts.AssertGetTagKeysInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PaginationTokenExpiredException = { ["Message"] = true, nil }

function asserts.AssertPaginationTokenExpiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PaginationTokenExpiredException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PaginationTokenExpiredException[k], "PaginationTokenExpiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PaginationTokenExpiredException
-- <p>A <code>PaginationToken</code> is valid for a maximum of 15 minutes. Your request was denied because the specified <code>PaginationToken</code> has expired.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ExceptionMessage] 
-- @return PaginationTokenExpiredException structure as a key-value pair table
function M.PaginationTokenExpiredException(args)
	assert(args, "You must provide an argument table when creating PaginationTokenExpiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertPaginationTokenExpiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.ExceptionMessage(str)
	asserts.AssertExceptionMessage(str)
	return str
end

function asserts.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceARN(str)
	asserts.AssertResourceARN(str)
	return str
end

function asserts.AssertAmazonResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected AmazonResourceType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.AmazonResourceType(str)
	asserts.AssertAmazonResourceType(str)
	return str
end

function asserts.AssertStatusCode(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected StatusCode to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.StatusCode(integer)
	asserts.AssertStatusCode(integer)
	return integer
end

function asserts.AssertTagsPerPage(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TagsPerPage to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TagsPerPage(integer)
	asserts.AssertTagsPerPage(integer)
	return integer
end

function asserts.AssertResourcesPerPage(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ResourcesPerPage to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ResourcesPerPage(integer)
	asserts.AssertResourcesPerPage(integer)
	return integer
end

function asserts.AssertTagMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TagMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.TagMap(map)
	asserts.AssertTagMap(map)
	return map
end

function asserts.AssertFailedResourcesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected FailedResourcesMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertResourceARN(k)
		asserts.AssertFailureInfo(v)
	end
end

function M.FailedResourcesMap(map)
	asserts.AssertFailedResourcesMap(map)
	return map
end

function asserts.AssertTagFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagFilterList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagFilter(v)
	end
end

--  
-- List of TagFilter objects
function M.TagFilterList(list)
	asserts.AssertTagFilterList(list)
	return list
end

function asserts.AssertTagValuesOutputList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagValuesOutputList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagValue(v)
	end
end

--  
-- List of TagValue objects
function M.TagValuesOutputList(list)
	asserts.AssertTagValuesOutputList(list)
	return list
end

function asserts.AssertResourceTypeFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTypeFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAmazonResourceType(v)
	end
end

--  
-- List of AmazonResourceType objects
function M.ResourceTypeFilterList(list)
	asserts.AssertResourceTypeFilterList(list)
	return list
end

function asserts.AssertTagValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagValueList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagValue(v)
	end
end

--  
-- List of TagValue objects
function M.TagValueList(list)
	asserts.AssertTagValueList(list)
	return list
end

function asserts.AssertResourceARNList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceARNList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceARN(v)
	end
end

--  
-- List of ResourceARN objects
function M.ResourceARNList(list)
	asserts.AssertResourceARNList(list)
	return list
end

function asserts.AssertResourceTagMappingList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTagMappingList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceTagMapping(v)
	end
end

--  
-- List of ResourceTagMapping objects
function M.ResourceTagMappingList(list)
	asserts.AssertResourceTagMappingList(list)
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

function asserts.AssertTagKeyListForUntag(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyListForUntag to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyListForUntag(list)
	asserts.AssertTagKeyListForUntag(list)
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
			return "tagging.amazonaws.com"
		end
	end
	local ss = { "tagging" }
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
--- Call GetTagKeys asynchronously, invoking a callback when done
-- @param GetTagKeysInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTagKeysAsync(GetTagKeysInput, cb)
	assert(GetTagKeysInput, "You must provide a GetTagKeysInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ResourceGroupsTaggingAPI_20170126.GetTagKeys",
	}
	for header,value in pairs(GetTagKeysInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTagKeysInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTagKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTagKeysInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetTagKeysSync(GetTagKeysInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTagKeysAsync(GetTagKeysInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResources asynchronously, invoking a callback when done
-- @param TagResourcesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourcesAsync(TagResourcesInput, cb)
	assert(TagResourcesInput, "You must provide a TagResourcesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ResourceGroupsTaggingAPI_20170126.TagResources",
	}
	for header,value in pairs(TagResourcesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagResourcesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourcesInput
-- @return response
-- @return error_type
-- @return error_message
function M.TagResourcesSync(TagResourcesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourcesAsync(TagResourcesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResources asynchronously, invoking a callback when done
-- @param UntagResourcesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourcesAsync(UntagResourcesInput, cb)
	assert(UntagResourcesInput, "You must provide a UntagResourcesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ResourceGroupsTaggingAPI_20170126.UntagResources",
	}
	for header,value in pairs(UntagResourcesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagResourcesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourcesInput
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResourcesSync(UntagResourcesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourcesAsync(UntagResourcesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTagValues asynchronously, invoking a callback when done
-- @param GetTagValuesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTagValuesAsync(GetTagValuesInput, cb)
	assert(GetTagValuesInput, "You must provide a GetTagValuesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ResourceGroupsTaggingAPI_20170126.GetTagValues",
	}
	for header,value in pairs(GetTagValuesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTagValuesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTagValues synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTagValuesInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetTagValuesSync(GetTagValuesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTagValuesAsync(GetTagValuesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResources asynchronously, invoking a callback when done
-- @param GetResourcesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetResourcesAsync(GetResourcesInput, cb)
	assert(GetResourcesInput, "You must provide a GetResourcesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "ResourceGroupsTaggingAPI_20170126.GetResources",
	}
	for header,value in pairs(GetResourcesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetResourcesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetResourcesInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetResourcesSync(GetResourcesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResourcesAsync(GetResourcesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
