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

local GetTagValuesOutput_keys = { "PaginationToken" = true, "TagValues" = true, nil }

function M.AssertGetTagValuesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagValuesOutput to be of type 'table'")
	if struct["PaginationToken"] then M.AssertPaginationToken(struct["PaginationToken"]) end
	if struct["TagValues"] then M.AssertTagValuesOutputList(struct["TagValues"]) end
	for k,_ in pairs(struct) do
		assert(GetTagValuesOutput_keys[k], "GetTagValuesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagValuesOutput
--  
-- @param PaginationToken [PaginationToken] &lt;p&gt;A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the &lt;code&gt;PaginationToken&lt;/code&gt; value in a subsequent request.&lt;/p&gt;
-- @param TagValues [TagValuesOutputList] &lt;p&gt;A list of all tag values for the specified key in the AWS account.&lt;/p&gt;
function M.GetTagValuesOutput(PaginationToken, TagValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTagValuesOutput")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["TagValues"] = TagValues,
	}
	M.AssertGetTagValuesOutput(t)
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
-- &lt;p&gt;The request processing failed because of an unknown error, exception, or failure. You can retry the request.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;The request processing failed because of an unknown error, exception, or failure. You can retry the request.&lt;/p&gt;
function M.InternalServiceException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInternalServiceException(t)
	return t
end

local ThrottledException_keys = { "Message" = true, nil }

function M.AssertThrottledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottledException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ThrottledException_keys[k], "ThrottledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottledException
-- &lt;p&gt;The request was denied to limit the frequency of submitted requests.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;The request was denied to limit the frequency of submitted requests.&lt;/p&gt;
function M.ThrottledException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottledException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertThrottledException(t)
	return t
end

local GetResourcesOutput_keys = { "PaginationToken" = true, "ResourceTagMappingList" = true, nil }

function M.AssertGetResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourcesOutput to be of type 'table'")
	if struct["PaginationToken"] then M.AssertPaginationToken(struct["PaginationToken"]) end
	if struct["ResourceTagMappingList"] then M.AssertResourceTagMappingList(struct["ResourceTagMappingList"]) end
	for k,_ in pairs(struct) do
		assert(GetResourcesOutput_keys[k], "GetResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourcesOutput
--  
-- @param PaginationToken [PaginationToken] &lt;p&gt;A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the &lt;code&gt;PaginationToken&lt;/code&gt; value in a subsequent request.&lt;/p&gt;
-- @param ResourceTagMappingList [ResourceTagMappingList] &lt;p&gt;A list of resource ARNs and the tags (keys and values) associated with each.&lt;/p&gt;
function M.GetResourcesOutput(PaginationToken, ResourceTagMappingList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetResourcesOutput")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["ResourceTagMappingList"] = ResourceTagMappingList,
	}
	M.AssertGetResourcesOutput(t)
	return t
end

local GetTagKeysOutput_keys = { "PaginationToken" = true, "TagKeys" = true, nil }

function M.AssertGetTagKeysOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagKeysOutput to be of type 'table'")
	if struct["PaginationToken"] then M.AssertPaginationToken(struct["PaginationToken"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(GetTagKeysOutput_keys[k], "GetTagKeysOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagKeysOutput
--  
-- @param PaginationToken [PaginationToken] &lt;p&gt;A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the &lt;code&gt;PaginationToken&lt;/code&gt; value in a subsequent request.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;A list of all tag keys in the AWS account.&lt;/p&gt;
function M.GetTagKeysOutput(PaginationToken, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTagKeysOutput")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["TagKeys"] = TagKeys,
	}
	M.AssertGetTagKeysOutput(t)
	return t
end

local InvalidParameterException_keys = { "Message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- &lt;p&gt;A parameter is missing or a malformed string or invalid or out-of-range value was supplied for the request parameter.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;A parameter is missing or a malformed string or invalid or out-of-range value was supplied for the request parameter.&lt;/p&gt;
function M.InvalidParameterException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;The metadata that you apply to AWS resources to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-basics&quot;&gt;Tag Basics&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide for Linux Instances&lt;/i&gt;.&lt;/p&gt;
-- @param Value [TagValue] &lt;p&gt;The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).&lt;/p&gt;
-- @param Key [TagKey] &lt;p&gt;One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.&lt;/p&gt;
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local ResourceTagMapping_keys = { "ResourceARN" = true, "Tags" = true, nil }

function M.AssertResourceTagMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTagMapping to be of type 'table'")
	if struct["ResourceARN"] then M.AssertResourceARN(struct["ResourceARN"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ResourceTagMapping_keys[k], "ResourceTagMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTagMapping
-- &lt;p&gt;A list of resource ARNs and the tags (keys and values) that are associated with each.&lt;/p&gt;
-- @param ResourceARN [ResourceARN] &lt;p&gt;An array of resource ARN(s).&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The tags that have been applied to one or more AWS resources.&lt;/p&gt;
function M.ResourceTagMapping(ResourceARN, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceTagMapping")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["Tags"] = Tags,
	}
	M.AssertResourceTagMapping(t)
	return t
end

local TagResourcesOutput_keys = { "FailedResourcesMap" = true, nil }

function M.AssertTagResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourcesOutput to be of type 'table'")
	if struct["FailedResourcesMap"] then M.AssertFailedResourcesMap(struct["FailedResourcesMap"]) end
	for k,_ in pairs(struct) do
		assert(TagResourcesOutput_keys[k], "TagResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourcesOutput
--  
-- @param FailedResourcesMap [FailedResourcesMap] &lt;p&gt;Details of resources that could not be tagged. An error code, status code, and error message are returned for each failed item.&lt;/p&gt;
function M.TagResourcesOutput(FailedResourcesMap, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourcesOutput")
	local t = { 
		["FailedResourcesMap"] = FailedResourcesMap,
	}
	M.AssertTagResourcesOutput(t)
	return t
end

local UntagResourcesInput_keys = { "TagKeys" = true, "ResourceARNList" = true, nil }

function M.AssertUntagResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourcesInput to be of type 'table'")
	assert(struct["ResourceARNList"], "Expected key ResourceARNList to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then M.AssertTagKeyListForUntag(struct["TagKeys"]) end
	if struct["ResourceARNList"] then M.AssertResourceARNList(struct["ResourceARNList"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourcesInput_keys[k], "UntagResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourcesInput
--  
-- @param TagKeys [TagKeyListForUntag] &lt;p&gt;A list of the tag keys that you want to remove from the specified resources.&lt;/p&gt;
-- @param ResourceARNList [ResourceARNList] &lt;p&gt;A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to untag. An ARN can be set to a maximum of 1600 characters. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: ResourceARNList
-- Required parameter: TagKeys
function M.UntagResourcesInput(TagKeys, ResourceARNList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourcesInput")
	local t = { 
		["TagKeys"] = TagKeys,
		["ResourceARNList"] = ResourceARNList,
	}
	M.AssertUntagResourcesInput(t)
	return t
end

local TagFilter_keys = { "Values" = true, "Key" = true, nil }

function M.AssertTagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagFilter to be of type 'table'")
	if struct["Values"] then M.AssertTagValueList(struct["Values"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(TagFilter_keys[k], "TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagFilter
-- &lt;p&gt;A list of tags (keys and values) that are used to specify the associated resources.&lt;/p&gt;
-- @param Values [TagValueList] &lt;p&gt;The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).&lt;/p&gt;
-- @param Key [TagKey] &lt;p&gt;One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.&lt;/p&gt;
function M.TagFilter(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagFilter")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertTagFilter(t)
	return t
end

local UntagResourcesOutput_keys = { "FailedResourcesMap" = true, nil }

function M.AssertUntagResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourcesOutput to be of type 'table'")
	if struct["FailedResourcesMap"] then M.AssertFailedResourcesMap(struct["FailedResourcesMap"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourcesOutput_keys[k], "UntagResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourcesOutput
--  
-- @param FailedResourcesMap [FailedResourcesMap] &lt;p&gt;Details of resources that could not be untagged. An error code, status code, and error message are returned for each failed item.&lt;/p&gt;
function M.UntagResourcesOutput(FailedResourcesMap, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourcesOutput")
	local t = { 
		["FailedResourcesMap"] = FailedResourcesMap,
	}
	M.AssertUntagResourcesOutput(t)
	return t
end

local GetResourcesInput_keys = { "PaginationToken" = true, "TagsPerPage" = true, "TagFilters" = true, "ResourcesPerPage" = true, "ResourceTypeFilters" = true, nil }

function M.AssertGetResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourcesInput to be of type 'table'")
	if struct["PaginationToken"] then M.AssertPaginationToken(struct["PaginationToken"]) end
	if struct["TagsPerPage"] then M.AssertTagsPerPage(struct["TagsPerPage"]) end
	if struct["TagFilters"] then M.AssertTagFilterList(struct["TagFilters"]) end
	if struct["ResourcesPerPage"] then M.AssertResourcesPerPage(struct["ResourcesPerPage"]) end
	if struct["ResourceTypeFilters"] then M.AssertResourceTypeFilterList(struct["ResourceTypeFilters"]) end
	for k,_ in pairs(struct) do
		assert(GetResourcesInput_keys[k], "GetResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourcesInput
--  
-- @param PaginationToken [PaginationToken] &lt;p&gt;A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a &lt;code&gt;PaginationToken&lt;/code&gt;, use that string for this value to request an additional page of data.&lt;/p&gt;
-- @param TagsPerPage [TagsPerPage] &lt;p&gt;A limit that restricts the number of tags (key and value pairs) returned by GetResources in paginated output. A resource with no tags is counted as having one tag (one key and value pair).&lt;/p&gt; &lt;p&gt; &lt;code&gt;GetResources&lt;/code&gt; does not split a resource and its associated tags across pages. If the specified &lt;code&gt;TagsPerPage&lt;/code&gt; would cause such a break, a &lt;code&gt;PaginationToken&lt;/code&gt; is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a &lt;code&gt;TagsPerPage&lt;/code&gt; of &lt;code&gt;100&lt;/code&gt; and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of 3 pages, with the first page displaying the first 10 resources, each with its 10 tags, the second page displaying the next 10 resources each with its 10 tags, and the third page displaying the remaining 2 resources, each with its 10 tags.&lt;/p&gt; &lt;p/&gt; &lt;p&gt;You can set &lt;code&gt;TagsPerPage&lt;/code&gt; to a minimum of 100 items and the maximum of 500 items.&lt;/p&gt;
-- @param TagFilters [TagFilterList] &lt;p&gt;A list of tags (keys and values). A request can include up to 50 keys, and each key can include up to 20 values.&lt;/p&gt; &lt;p&gt;If you specify multiple filters connected by an AND operator in a single request, the response returns only those resources that are associated with every specified filter.&lt;/p&gt; &lt;p&gt;If you specify multiple filters connected by an OR operator in a single request, the response returns all resources that are associated with at least one or possibly more of the specified filters.&lt;/p&gt;
-- @param ResourcesPerPage [ResourcesPerPage] &lt;p&gt;A limit that restricts the number of resources returned by GetResources in paginated output. You can set ResourcesPerPage to a minimum of 1 item and the maximum of 50 items. &lt;/p&gt;
-- @param ResourceTypeFilters [ResourceTypeFilterList] &lt;p&gt;The constraints on the resources that you want returned. The format of each resource type is &lt;code&gt;service[:resourceType]&lt;/code&gt;. For example, specifying a resource type of &lt;code&gt;ec2&lt;/code&gt; returns all tagged Amazon EC2 resources (which includes tagged EC2 instances). Specifying a resource type of &lt;code&gt;ec2:instance&lt;/code&gt; returns only EC2 instances. &lt;/p&gt; &lt;p&gt;The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the &lt;i&gt;AWS General Reference&lt;/i&gt; for the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For a list of service name strings, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces&quot;&gt;AWS Service Namespaces&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For resource type strings, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax&quot;&gt;Example ARNs&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetResourcesInput(PaginationToken, TagsPerPage, TagFilters, ResourcesPerPage, ResourceTypeFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetResourcesInput")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["TagsPerPage"] = TagsPerPage,
		["TagFilters"] = TagFilters,
		["ResourcesPerPage"] = ResourcesPerPage,
		["ResourceTypeFilters"] = ResourceTypeFilters,
	}
	M.AssertGetResourcesInput(t)
	return t
end

local FailureInfo_keys = { "ErrorCode" = true, "ErrorMessage" = true, "StatusCode" = true, nil }

function M.AssertFailureInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailureInfo to be of type 'table'")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["StatusCode"] then M.AssertStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(FailureInfo_keys[k], "FailureInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailureInfo
-- &lt;p&gt;Details of the common errors that all actions return.&lt;/p&gt;
-- @param ErrorCode [ErrorCode] &lt;p&gt;The code of the common error. Valid values include &lt;code&gt;InternalServiceException&lt;/code&gt;, &lt;code&gt;InvalidParameterException&lt;/code&gt;, and any valid error code returned by the AWS service that hosts the resource that you want to tag.&lt;/p&gt;
-- @param ErrorMessage [ErrorMessage] &lt;p&gt;The message of the common error.&lt;/p&gt;
-- @param StatusCode [StatusCode] &lt;p&gt;The HTTP status code of the common error.&lt;/p&gt;
function M.FailureInfo(ErrorCode, ErrorMessage, StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailureInfo")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
		["StatusCode"] = StatusCode,
	}
	M.AssertFailureInfo(t)
	return t
end

local GetTagValuesInput_keys = { "PaginationToken" = true, "Key" = true, nil }

function M.AssertGetTagValuesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagValuesInput to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["PaginationToken"] then M.AssertPaginationToken(struct["PaginationToken"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(GetTagValuesInput_keys[k], "GetTagValuesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagValuesInput
--  
-- @param PaginationToken [PaginationToken] &lt;p&gt;A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.&lt;/p&gt;
-- @param Key [TagKey] &lt;p&gt;The key for which you want to list all existing values in the specified region for the AWS account.&lt;/p&gt;
-- Required parameter: Key
function M.GetTagValuesInput(PaginationToken, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTagValuesInput")
	local t = { 
		["PaginationToken"] = PaginationToken,
		["Key"] = Key,
	}
	M.AssertGetTagValuesInput(t)
	return t
end

local TagResourcesInput_keys = { "ResourceARNList" = true, "Tags" = true, nil }

function M.AssertTagResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourcesInput to be of type 'table'")
	assert(struct["ResourceARNList"], "Expected key ResourceARNList to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceARNList"] then M.AssertResourceARNList(struct["ResourceARNList"]) end
	if struct["Tags"] then M.AssertTagMap(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagResourcesInput_keys[k], "TagResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourcesInput
--  
-- @param ResourceARNList [ResourceARNList] &lt;p&gt;A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to tag. An ARN can be set to a maximum of 1600 characters. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param Tags [TagMap] &lt;p&gt;The tags that you want to add to the specified resources. A tag consists of a key and a value that you define.&lt;/p&gt;
-- Required parameter: ResourceARNList
-- Required parameter: Tags
function M.TagResourcesInput(ResourceARNList, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourcesInput")
	local t = { 
		["ResourceARNList"] = ResourceARNList,
		["Tags"] = Tags,
	}
	M.AssertTagResourcesInput(t)
	return t
end

local GetTagKeysInput_keys = { "PaginationToken" = true, nil }

function M.AssertGetTagKeysInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagKeysInput to be of type 'table'")
	if struct["PaginationToken"] then M.AssertPaginationToken(struct["PaginationToken"]) end
	for k,_ in pairs(struct) do
		assert(GetTagKeysInput_keys[k], "GetTagKeysInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagKeysInput
--  
-- @param PaginationToken [PaginationToken] &lt;p&gt;A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.&lt;/p&gt;
function M.GetTagKeysInput(PaginationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTagKeysInput")
	local t = { 
		["PaginationToken"] = PaginationToken,
	}
	M.AssertGetTagKeysInput(t)
	return t
end

local PaginationTokenExpiredException_keys = { "Message" = true, nil }

function M.AssertPaginationTokenExpiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PaginationTokenExpiredException to be of type 'table'")
	if struct["Message"] then M.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(PaginationTokenExpiredException_keys[k], "PaginationTokenExpiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PaginationTokenExpiredException
-- &lt;p&gt;A &lt;code&gt;PaginationToken&lt;/code&gt; is valid for a maximum of 15 minutes. Your request was denied because the specified &lt;code&gt;PaginationToken&lt;/code&gt; has expired.&lt;/p&gt;
-- @param Message [ExceptionMessage] &lt;p&gt;A &lt;code&gt;PaginationToken&lt;/code&gt; is valid for a maximum of 15 minutes. Your request was denied because the specified &lt;code&gt;PaginationToken&lt;/code&gt; has expired.&lt;/p&gt;
function M.PaginationTokenExpiredException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PaginationTokenExpiredException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertPaginationTokenExpiredException(t)
	return t
end

function M.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.PaginationToken(str)
	M.AssertPaginationToken(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.ExceptionMessage(str)
	M.AssertExceptionMessage(str)
	return str
end

function M.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceARN(str)
	M.AssertResourceARN(str)
	return str
end

function M.AssertAmazonResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected AmazonResourceType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.AmazonResourceType(str)
	M.AssertAmazonResourceType(str)
	return str
end

function M.AssertStatusCode(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected StatusCode to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.StatusCode(integer)
	M.AssertStatusCode(integer)
	return integer
end

function M.AssertTagsPerPage(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TagsPerPage to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TagsPerPage(integer)
	M.AssertTagsPerPage(integer)
	return integer
end

function M.AssertResourcesPerPage(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ResourcesPerPage to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ResourcesPerPage(integer)
	M.AssertResourcesPerPage(integer)
	return integer
end

function M.AssertTagMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TagMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertTagKey(k)
		M.AssertTagValue(v)
	end
end

function M.TagMap(map)
	M.AssertTagMap(map)
	return map
end

function M.AssertFailedResourcesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected FailedResourcesMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertResourceARN(k)
		M.AssertFailureInfo(v)
	end
end

function M.FailedResourcesMap(map)
	M.AssertFailedResourcesMap(map)
	return map
end

function M.AssertTagFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagFilterList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertTagFilter(v)
	end
end

--  
-- List of TagFilter objects
function M.TagFilterList(list)
	M.AssertTagFilterList(list)
	return list
end

function M.AssertTagValuesOutputList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagValuesOutputList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagValue(v)
	end
end

--  
-- List of TagValue objects
function M.TagValuesOutputList(list)
	M.AssertTagValuesOutputList(list)
	return list
end

function M.AssertResourceTypeFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTypeFilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAmazonResourceType(v)
	end
end

--  
-- List of AmazonResourceType objects
function M.ResourceTypeFilterList(list)
	M.AssertResourceTypeFilterList(list)
	return list
end

function M.AssertTagValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagValueList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		M.AssertTagValue(v)
	end
end

--  
-- List of TagValue objects
function M.TagValueList(list)
	M.AssertTagValueList(list)
	return list
end

function M.AssertResourceARNList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceARNList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertResourceARN(v)
	end
end

--  
-- List of ResourceARN objects
function M.ResourceARNList(list)
	M.AssertResourceARNList(list)
	return list
end

function M.AssertResourceTagMappingList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTagMappingList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceTagMapping(v)
	end
end

--  
-- List of ResourceTagMapping objects
function M.ResourceTagMappingList(list)
	M.AssertResourceTagMappingList(list)
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

function M.AssertTagKeyListForUntag(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyListForUntag to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyListForUntag(list)
	M.AssertTagKeyListForUntag(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- GetTagKeys
-- @param GetTagKeysInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetTagKeysAsync(GetTagKeysInput, cb)
	assert(GetTagKeysInput, "You must provide a GetTagKeysInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ResourceGroupsTaggingAPI_20170126.GetTagKeys",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetTagKeysInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TagResources
-- @param TagResourcesInput
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourcesAsync(TagResourcesInput, cb)
	assert(TagResourcesInput, "You must provide a TagResourcesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ResourceGroupsTaggingAPI_20170126.TagResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TagResourcesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UntagResources
-- @param UntagResourcesInput
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourcesAsync(UntagResourcesInput, cb)
	assert(UntagResourcesInput, "You must provide a UntagResourcesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ResourceGroupsTaggingAPI_20170126.UntagResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UntagResourcesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTagValues
-- @param GetTagValuesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetTagValuesAsync(GetTagValuesInput, cb)
	assert(GetTagValuesInput, "You must provide a GetTagValuesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ResourceGroupsTaggingAPI_20170126.GetTagValues",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetTagValuesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetResources
-- @param GetResourcesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetResourcesAsync(GetResourcesInput, cb)
	assert(GetResourcesInput, "You must provide a GetResourcesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "ResourceGroupsTaggingAPI_20170126.GetResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetResourcesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
