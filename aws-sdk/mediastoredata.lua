--- GENERATED CODE - DO NOT MODIFY
-- AWS Elemental MediaStore Data Plane (mediastore-data-2017-09-01)

local M = {}

M.metadata = {
	api_version = "2017-09-01",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "data.mediastore",
	service_abbreviation = "MediaStore Data",
	service_full_name = "AWS Elemental MediaStore Data Plane",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "mediastore-data-2017-09-01",
}

local keys = {}
local asserts = {}

keys.DescribeObjectResponse = { ["CacheControl"] = true, ["ContentLength"] = true, ["ETag"] = true, ["ContentType"] = true, ["LastModified"] = true, nil }

function asserts.AssertDescribeObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeObjectResponse to be of type 'table'")
	if struct["CacheControl"] then asserts.AssertStringPrimitive(struct["CacheControl"]) end
	if struct["ContentLength"] then asserts.AssertNonNegativeLong(struct["ContentLength"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["LastModified"] then asserts.AssertTimeStamp(struct["LastModified"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeObjectResponse[k], "DescribeObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeObjectResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheControl [StringPrimitive] <p>An optional <code>CacheControl</code> header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p> <p>Headers with a custom user-defined value are also accepted.</p>
-- * ContentLength [NonNegativeLong] <p>The length of the object in bytes.</p>
-- * ETag [ETag] <p>The ETag that represents a unique instance of the object.</p>
-- * ContentType [ContentType] <p>The content type of the object.</p>
-- * LastModified [TimeStamp] <p>The date and time that the object was last modified.</p>
-- @return DescribeObjectResponse structure as a key-value pair table
function M.DescribeObjectResponse(args)
	assert(args, "You must provide an argument table when creating DescribeObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Cache-Control"] = args["CacheControl"],
        ["Content-Length"] = args["ContentLength"],
        ["ETag"] = args["ETag"],
        ["Content-Type"] = args["ContentType"],
        ["Last-Modified"] = args["LastModified"],
    }
	local all_args = { 
		["CacheControl"] = args["CacheControl"],
		["ContentLength"] = args["ContentLength"],
		["ETag"] = args["ETag"],
		["ContentType"] = args["ContentType"],
		["LastModified"] = args["LastModified"],
	}
	asserts.AssertDescribeObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectRequest = { ["Path"] = true, ["Range"] = true, nil }

function asserts.AssertGetObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectRequest to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	if struct["Path"] then asserts.AssertPathNaming(struct["Path"]) end
	if struct["Range"] then asserts.AssertRangePattern(struct["Range"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectRequest[k], "GetObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [PathNaming] <p>The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;</p> <p>For example, to upload the file <code>mlaw.avi</code> to the folder path <code>premium\canada</code> in the container <code>movies</code>, enter the path <code>premium/canada/mlaw.avi</code>.</p> <p>Do not include the container name in this path.</p> <p>If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing <code>premium/usa</code> subfolder. If you specify <code>premium/canada</code>, the service creates a <code>canada</code> subfolder in the <code>premium</code> folder. You then have two subfolders, <code>usa</code> and <code>canada</code>, in the <code>premium</code> folder. </p> <p>There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore.</p> <p>For more information about folders and how they exist in a container, see the <a href="http://docs.aws.amazon.com/mediastore/latest/ug/">AWS Elemental MediaStore User Guide</a>.</p> <p>The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension. </p>
-- * Range [RangePattern] <p>The range bytes of an object to retrieve. For more information about the <code>Range</code> header, go to <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35</a>.</p>
-- Required key: Path
-- @return GetObjectRequest structure as a key-value pair table
function M.GetObjectRequest(args)
	assert(args, "You must provide an argument table when creating GetObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Path}"] = args["Path"],
    }
    local header_args = { 
        ["Range"] = args["Range"],
    }
	local all_args = { 
		["Path"] = args["Path"],
		["Range"] = args["Range"],
	}
	asserts.AssertGetObjectRequest(all_args)
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

keys.PutObjectRequest = { ["Body"] = true, ["Path"] = true, ["ContentType"] = true, ["StorageClass"] = true, ["CacheControl"] = true, nil }

function asserts.AssertPutObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectRequest to be of type 'table'")
	assert(struct["Body"], "Expected key Body to exist in table")
	assert(struct["Path"], "Expected key Path to exist in table")
	if struct["Body"] then asserts.AssertPayloadBlob(struct["Body"]) end
	if struct["Path"] then asserts.AssertPathNaming(struct["Path"]) end
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	if struct["CacheControl"] then asserts.AssertStringPrimitive(struct["CacheControl"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutObjectRequest[k], "PutObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [PayloadBlob] <p>The bytes to be stored. </p>
-- * Path [PathNaming] <p>The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;</p> <p>For example, to upload the file <code>mlaw.avi</code> to the folder path <code>premium\canada</code> in the container <code>movies</code>, enter the path <code>premium/canada/mlaw.avi</code>.</p> <p>Do not include the container name in this path.</p> <p>If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing <code>premium/usa</code> subfolder. If you specify <code>premium/canada</code>, the service creates a <code>canada</code> subfolder in the <code>premium</code> folder. You then have two subfolders, <code>usa</code> and <code>canada</code>, in the <code>premium</code> folder. </p> <p>There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore.</p> <p>For more information about folders and how they exist in a container, see the <a href="http://docs.aws.amazon.com/mediastore/latest/ug/">AWS Elemental MediaStore User Guide</a>.</p> <p>The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension. </p>
-- * ContentType [ContentType] <p>The content type of the object.</p>
-- * StorageClass [StorageClass] <p>Indicates the storage class of a <code>Put</code> request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.</p>
-- * CacheControl [StringPrimitive] <p>An optional <code>CacheControl</code> header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p> <p>Headers with a custom user-defined value are also accepted.</p>
-- Required key: Body
-- Required key: Path
-- @return PutObjectRequest structure as a key-value pair table
function M.PutObjectRequest(args)
	assert(args, "You must provide an argument table when creating PutObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Path}"] = args["Path"],
    }
    local header_args = { 
        ["Content-Type"] = args["ContentType"],
        ["x-amz-storage-class"] = args["StorageClass"],
        ["Cache-Control"] = args["CacheControl"],
    }
	local all_args = { 
		["Body"] = args["Body"],
		["Path"] = args["Path"],
		["ContentType"] = args["ContentType"],
		["StorageClass"] = args["StorageClass"],
		["CacheControl"] = args["CacheControl"],
	}
	asserts.AssertPutObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListItemsResponse = { ["Items"] = true, ["NextToken"] = true, nil }

function asserts.AssertListItemsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListItemsResponse to be of type 'table'")
	if struct["Items"] then asserts.AssertItemList(struct["Items"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListItemsResponse[k], "ListItemsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListItemsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [ItemList] <p>The metadata entries for the folders and objects at the requested path.</p>
-- * NextToken [PaginationToken] <p>The token that can be used in a request to view the next set of results. For example, you submit a <code>ListItems</code> request that matches 2,000 items with <code>MaxResults</code> set at 500. The service returns the first batch of results (up to 500) and a <code>NextToken</code> value that can be used to fetch the next batch of results.</p>
-- @return ListItemsResponse structure as a key-value pair table
function M.ListItemsResponse(args)
	assert(args, "You must provide an argument table when creating ListItemsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListItemsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Item = { ["ContentType"] = true, ["Name"] = true, ["LastModified"] = true, ["ContentLength"] = true, ["ETag"] = true, ["Type"] = true, nil }

function asserts.AssertItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Item to be of type 'table'")
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["Name"] then asserts.AssertItemName(struct["Name"]) end
	if struct["LastModified"] then asserts.AssertTimeStamp(struct["LastModified"]) end
	if struct["ContentLength"] then asserts.AssertNonNegativeLong(struct["ContentLength"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["Type"] then asserts.AssertItemType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.Item[k], "Item contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Item
-- <p>A metadata entry for a folder or object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentType [ContentType] <p>The content type of the item.</p>
-- * Name [ItemName] <p>The name of the item.</p>
-- * LastModified [TimeStamp] <p>The date and time that the item was last modified.</p>
-- * ContentLength [NonNegativeLong] <p>The length of the item in bytes.</p>
-- * ETag [ETag] <p>The ETag that represents a unique instance of the item.</p>
-- * Type [ItemType] <p>The item type (folder or object).</p>
-- @return Item structure as a key-value pair table
function M.Item(args)
	assert(args, "You must provide an argument table when creating Item")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContentType"] = args["ContentType"],
		["Name"] = args["Name"],
		["LastModified"] = args["LastModified"],
		["ContentLength"] = args["ContentLength"],
		["ETag"] = args["ETag"],
		["Type"] = args["Type"],
	}
	asserts.AssertItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutObjectResponse = { ["ContentSHA256"] = true, ["StorageClass"] = true, ["ETag"] = true, nil }

function asserts.AssertPutObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutObjectResponse to be of type 'table'")
	if struct["ContentSHA256"] then asserts.AssertSHA256Hash(struct["ContentSHA256"]) end
	if struct["StorageClass"] then asserts.AssertStorageClass(struct["StorageClass"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutObjectResponse[k], "PutObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutObjectResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentSHA256 [SHA256Hash] <p>The SHA256 digest of the object that is persisted.</p>
-- * StorageClass [StorageClass] <p>The storage class where the object was persisted. The class should be “Temporal”.</p>
-- * ETag [ETag] <p>Unique identifier of the object in the container.</p>
-- @return PutObjectResponse structure as a key-value pair table
function M.PutObjectResponse(args)
	assert(args, "You must provide an argument table when creating PutObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContentSHA256"] = args["ContentSHA256"],
		["StorageClass"] = args["StorageClass"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertPutObjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeObjectRequest = { ["Path"] = true, nil }

function asserts.AssertDescribeObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeObjectRequest to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	if struct["Path"] then asserts.AssertPathNaming(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeObjectRequest[k], "DescribeObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeObjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [PathNaming] <p>The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;</p>
-- Required key: Path
-- @return DescribeObjectRequest structure as a key-value pair table
function M.DescribeObjectRequest(args)
	assert(args, "You must provide an argument table when creating DescribeObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Path}"] = args["Path"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
	}
	asserts.AssertDescribeObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteObjectRequest = { ["Path"] = true, nil }

function asserts.AssertDeleteObjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteObjectRequest to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	if struct["Path"] then asserts.AssertPathNaming(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteObjectRequest[k], "DeleteObjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteObjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [PathNaming] <p>The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;</p>
-- Required key: Path
-- @return DeleteObjectRequest structure as a key-value pair table
function M.DeleteObjectRequest(args)
	assert(args, "You must provide an argument table when creating DeleteObjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Path}"] = args["Path"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
	}
	asserts.AssertDeleteObjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListItemsRequest = { ["Path"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListItemsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListItemsRequest to be of type 'table'")
	if struct["Path"] then asserts.AssertListPathNaming(struct["Path"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListItemsRequest[k], "ListItemsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListItemsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [ListPathNaming] <p>The path in the container from which to retrieve items. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;</p>
-- * NextToken [PaginationToken] <p>The token that identifies which batch of results that you want to see. For example, you submit a <code>ListItems</code> request with <code>MaxResults</code> set at 500. The service returns the first batch of results (up to 500) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListItems</code> request a second time and specify the <code>NextToken</code> value.</p> <p>Tokens expire after 15 minutes.</p>
-- * MaxResults [ListLimit] <p>The maximum number of results to return per API request. For example, you submit a <code>ListItems</code> request with <code>MaxResults</code> set at 500. Although 2,000 items match your request, the service returns no more than the first 500 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) The service might return fewer results than the <code>MaxResults</code> value.</p> <p>If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 1,000 results per page.</p>
-- @return ListItemsRequest structure as a key-value pair table
function M.ListItemsRequest(args)
	assert(args, "You must provide an argument table when creating ListItemsRequest")
    local query_args = { 
        ["Path"] = args["Path"],
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListItemsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetObjectResponse = { ["Body"] = true, ["ContentType"] = true, ["LastModified"] = true, ["ContentRange"] = true, ["ETag"] = true, ["CacheControl"] = true, ["ContentLength"] = true, ["StatusCode"] = true, nil }

function asserts.AssertGetObjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetObjectResponse to be of type 'table'")
	assert(struct["StatusCode"], "Expected key StatusCode to exist in table")
	if struct["Body"] then asserts.AssertPayloadBlob(struct["Body"]) end
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["LastModified"] then asserts.AssertTimeStamp(struct["LastModified"]) end
	if struct["ContentRange"] then asserts.AssertContentRangePattern(struct["ContentRange"]) end
	if struct["ETag"] then asserts.AssertETag(struct["ETag"]) end
	if struct["CacheControl"] then asserts.AssertStringPrimitive(struct["CacheControl"]) end
	if struct["ContentLength"] then asserts.AssertNonNegativeLong(struct["ContentLength"]) end
	if struct["StatusCode"] then asserts.AssertstatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetObjectResponse[k], "GetObjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetObjectResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [PayloadBlob] <p>The bytes of the object. </p>
-- * ContentType [ContentType] <p>The content type of the object.</p>
-- * LastModified [TimeStamp] <p>The date and time that the object was last modified.</p>
-- * ContentRange [ContentRangePattern] <p>The range of bytes to retrieve.</p>
-- * ETag [ETag] <p>The ETag that represents a unique instance of the object.</p>
-- * CacheControl [StringPrimitive] <p>An optional <code>CacheControl</code> header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP spec at <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p> <p>Headers with a custom user-defined value are also accepted.</p>
-- * ContentLength [NonNegativeLong] <p>The length of the object in bytes.</p>
-- * StatusCode [statusCode] <p>The HTML status code of the request. Status codes ranging from 200 to 299 indicate success. All other status codes indicate the type of error that occurred.</p>
-- Required key: StatusCode
-- @return GetObjectResponse structure as a key-value pair table
function M.GetObjectResponse(args)
	assert(args, "You must provide an argument table when creating GetObjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Content-Type"] = args["ContentType"],
        ["Last-Modified"] = args["LastModified"],
        ["Content-Range"] = args["ContentRange"],
        ["ETag"] = args["ETag"],
        ["Cache-Control"] = args["CacheControl"],
        ["Content-Length"] = args["ContentLength"],
    }
	local all_args = { 
		["Body"] = args["Body"],
		["ContentType"] = args["ContentType"],
		["LastModified"] = args["LastModified"],
		["ContentRange"] = args["ContentRange"],
		["ETag"] = args["ETag"],
		["CacheControl"] = args["CacheControl"],
		["ContentLength"] = args["ContentLength"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertGetObjectResponse(all_args)
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
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageClass to be of type 'string'")
	assert(#str <= 16, "Expected string to be max 16 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StorageClass(str)
	asserts.AssertStorageClass(str)
	return str
end

function asserts.AssertItemName(str)
	assert(str)
	assert(type(str) == "string", "Expected ItemName to be of type 'string'")
end

--  
function M.ItemName(str)
	asserts.AssertItemName(str)
	return str
end

function asserts.AssertItemType(str)
	assert(str)
	assert(type(str) == "string", "Expected ItemType to be of type 'string'")
end

--  
function M.ItemType(str)
	asserts.AssertItemType(str)
	return str
end

function asserts.AssertStringPrimitive(str)
	assert(str)
	assert(type(str) == "string", "Expected StringPrimitive to be of type 'string'")
end

--  
function M.StringPrimitive(str)
	asserts.AssertStringPrimitive(str)
	return str
end

function asserts.AssertListPathNaming(str)
	assert(str)
	assert(type(str) == "string", "Expected ListPathNaming to be of type 'string'")
	assert(#str <= 900, "Expected string to be max 900 characters")
end

--  
function M.ListPathNaming(str)
	asserts.AssertListPathNaming(str)
	return str
end

function asserts.AssertSHA256Hash(str)
	assert(str)
	assert(type(str) == "string", "Expected SHA256Hash to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 64, "Expected string to be min 64 characters")
end

--  
function M.SHA256Hash(str)
	asserts.AssertSHA256Hash(str)
	return str
end

function asserts.AssertPathNaming(str)
	assert(str)
	assert(type(str) == "string", "Expected PathNaming to be of type 'string'")
	assert(#str <= 900, "Expected string to be max 900 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PathNaming(str)
	asserts.AssertPathNaming(str)
	return str
end

function asserts.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
end

--  
function M.ContentType(str)
	asserts.AssertContentType(str)
	return str
end

function asserts.AssertContentRangePattern(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentRangePattern to be of type 'string'")
end

--  
function M.ContentRangePattern(str)
	asserts.AssertContentRangePattern(str)
	return str
end

function asserts.AssertRangePattern(str)
	assert(str)
	assert(type(str) == "string", "Expected RangePattern to be of type 'string'")
end

--  
function M.RangePattern(str)
	asserts.AssertRangePattern(str)
	return str
end

function asserts.AssertETag(str)
	assert(str)
	assert(type(str) == "string", "Expected ETag to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ETag(str)
	asserts.AssertETag(str)
	return str
end

function asserts.AssertNonNegativeLong(long)
	assert(long)
	assert(type(long) == "number", "Expected NonNegativeLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.NonNegativeLong(long)
	asserts.AssertNonNegativeLong(long)
	return long
end

function asserts.AssertListLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListLimit(integer)
	asserts.AssertListLimit(integer)
	return integer
end

function asserts.AssertstatusCode(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected statusCode to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.statusCode(integer)
	asserts.AssertstatusCode(integer)
	return integer
end

function asserts.AssertTimeStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimeStamp to be of type 'string'")
end

function M.TimeStamp(timestamp)
	asserts.AssertTimeStamp(timestamp)
	return timestamp
end

function asserts.AssertPayloadBlob(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected PayloadBlob to be of type 'string'")
end

function M.PayloadBlob(blob)
	asserts.AssertPayloadBlob(blob)
	return blob
end

function asserts.AssertItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected ItemList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertItem(v)
	end
end

--  
-- List of Item objects
function M.ItemList(list)
	asserts.AssertItemList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "data.mediastore.amazonaws.com"
		end
	end
	local ss = { "data.mediastore" }
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
--- Call GetObject asynchronously, invoking a callback when done
-- @param GetObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetObjectAsync(GetObjectRequest, cb)
	assert(GetObjectRequest, "You must provide a GetObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetObject",
	}
	for header,value in pairs(GetObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/{Path+}", GetObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetObjectSync(GetObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetObjectAsync(GetObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeObject asynchronously, invoking a callback when done
-- @param DescribeObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeObjectAsync(DescribeObjectRequest, cb)
	assert(DescribeObjectRequest, "You must provide a DescribeObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeObject",
	}
	for header,value in pairs(DescribeObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "HEAD")
	if request_handler then
		request_handler(settings.uri, "/{Path+}", DescribeObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeObjectSync(DescribeObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeObjectAsync(DescribeObjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutObject asynchronously, invoking a callback when done
-- @param PutObjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutObjectAsync(PutObjectRequest, cb)
	assert(PutObjectRequest, "You must provide a PutObjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutObject",
	}
	for header,value in pairs(PutObjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/{Path+}", PutObjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutObject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutObjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutObjectSync(PutObjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutObjectAsync(PutObjectRequest, function(response, error_type, error_message)
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

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/{Path+}", DeleteObjectRequest, headers, settings, cb)
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

--- Call ListItems asynchronously, invoking a callback when done
-- @param ListItemsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListItemsAsync(ListItemsRequest, cb)
	assert(ListItemsRequest, "You must provide a ListItemsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListItems",
	}
	for header,value in pairs(ListItemsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/", ListItemsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListItems synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListItemsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListItemsSync(ListItemsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListItemsAsync(ListItemsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
