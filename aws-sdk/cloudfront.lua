--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudFront (cloudfront-2017-03-25)

local M = {}

M.metadata = {
	api_version = "2017-03-25",
	json_version = "",
	protocol = "rest-xml",
	checksum_format = "",
	endpoint_prefix = "cloudfront",
	service_abbreviation = "CloudFront",
	service_full_name = "Amazon CloudFront",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "cloudfront.amazonaws.com",
	uid = "cloudfront-2017-03-25",
}

local GetCloudFrontOriginAccessIdentityRequest_keys = { "Id" = true, nil }

function M.AssertGetCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetCloudFrontOriginAccessIdentityRequest_keys[k], "GetCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityRequest
-- &lt;p&gt;The request to get an origin access identity's information.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The identity's ID.&lt;/p&gt;
-- Required parameter: Id
function M.GetCloudFrontOriginAccessIdentityRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCloudFrontOriginAccessIdentityRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetCloudFrontOriginAccessIdentityRequest(t)
	return t
end

local CustomErrorResponse_keys = { "ErrorCode" = true, "ResponsePagePath" = true, "ResponseCode" = true, "ErrorCachingMinTTL" = true, nil }

function M.AssertCustomErrorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomErrorResponse to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then M.Assertinteger(struct["ErrorCode"]) end
	if struct["ResponsePagePath"] then M.Assertstring(struct["ResponsePagePath"]) end
	if struct["ResponseCode"] then M.Assertstring(struct["ResponseCode"]) end
	if struct["ErrorCachingMinTTL"] then M.Assertlong(struct["ErrorCachingMinTTL"]) end
	for k,_ in pairs(struct) do
		assert(CustomErrorResponse_keys[k], "CustomErrorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomErrorResponse
-- &lt;p&gt;A complex type that controls:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;How long CloudFront caches HTTP status codes in the 4xx and 5xx range.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about custom error pages, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html&quot;&gt;Customizing Error Responses&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param ErrorCode [integer] &lt;p&gt;The HTTP status code for which you want to specify a custom error page and/or a caching duration.&lt;/p&gt;
-- @param ResponsePagePath [string] &lt;p&gt;The path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by &lt;code&gt;ErrorCode&lt;/code&gt;, for example, &lt;code&gt;/4xx-errors/403-forbidden.html&lt;/code&gt;. If you want to store your objects and your custom error pages in different locations, your distribution must include a cache behavior for which the following is true:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The value of &lt;code&gt;PathPattern&lt;/code&gt; matches the path to your custom error messages. For example, suppose you saved custom error pages for 4xx errors in an Amazon S3 bucket in a directory named &lt;code&gt;/4xx-errors&lt;/code&gt;. Your distribution must include a cache behavior for which the path pattern routes requests for your custom error pages to that location, for example, &lt;code&gt;/4xx-errors/*&lt;/code&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The value of &lt;code&gt;TargetOriginId&lt;/code&gt; specifies the value of the &lt;code&gt;ID&lt;/code&gt; element for the origin that contains your custom error pages.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you specify a value for &lt;code&gt;ResponsePagePath&lt;/code&gt;, you must also specify a value for &lt;code&gt;ResponseCode&lt;/code&gt;. If you don't want to specify a value, include an empty element, &lt;code&gt;&amp;lt;ResponsePagePath&amp;gt;&lt;/code&gt;, in the XML document.&lt;/p&gt; &lt;p&gt;We recommend that you store custom error pages in an Amazon S3 bucket. If you store custom error pages on an HTTP server and the server starts to return 5xx errors, CloudFront can't get the files that you want to return to viewers because the origin server is unavailable.&lt;/p&gt;
-- @param ResponseCode [string] &lt;p&gt;The HTTP status code that you want CloudFront to return to the viewer along with the custom error page. There are a variety of reasons that you might want CloudFront to return a status code different from the status code that your origin returned to CloudFront, for example:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Some Internet devices (some firewalls and corporate proxies, for example) intercept HTTP 4xx and 5xx and prevent the response from being returned to the viewer. If you substitute &lt;code&gt;200&lt;/code&gt;, the response typically won't be intercepted.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you don't care about distinguishing among different client errors or server errors, you can specify &lt;code&gt;400&lt;/code&gt; or &lt;code&gt;500&lt;/code&gt; as the &lt;code&gt;ResponseCode&lt;/code&gt; for all 4xx or 5xx errors.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You might want to return a &lt;code&gt;200&lt;/code&gt; status code (OK) and static website so your customers don't know that your website is down.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you specify a value for &lt;code&gt;ResponseCode&lt;/code&gt;, you must also specify a value for &lt;code&gt;ResponsePagePath&lt;/code&gt;. If you don't want to specify a value, include an empty element, &lt;code&gt;&amp;lt;ResponseCode&amp;gt;&lt;/code&gt;, in the XML document.&lt;/p&gt;
-- @param ErrorCachingMinTTL [long] &lt;p&gt;The minimum amount of time, in seconds, that you want CloudFront to cache the HTTP status code specified in &lt;code&gt;ErrorCode&lt;/code&gt;. When this time period has elapsed, CloudFront queries your origin to see whether the problem that caused the error has been resolved and the requested object is now available.&lt;/p&gt; &lt;p&gt;If you don't want to specify a value, include an empty element, &lt;code&gt;&amp;lt;ErrorCachingMinTTL&amp;gt;&lt;/code&gt;, in the XML document.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html&quot;&gt;Customizing Error Responses&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: ErrorCode
function M.CustomErrorResponse(ErrorCode, ResponsePagePath, ResponseCode, ErrorCachingMinTTL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomErrorResponse")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["ResponsePagePath"] = ResponsePagePath,
		["ResponseCode"] = ResponseCode,
		["ErrorCachingMinTTL"] = ErrorCachingMinTTL,
	}
	M.AssertCustomErrorResponse(t)
	return t
end

local InvalidArgument_keys = { "Message" = true, nil }

function M.AssertInvalidArgument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgument to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidArgument_keys[k], "InvalidArgument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgument
-- &lt;p&gt;The argument is invalid.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The argument is invalid.&lt;/p&gt;
function M.InvalidArgument(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArgument")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidArgument(t)
	return t
end

local StreamingDistributionAlreadyExists_keys = { "Message" = true, nil }

function M.AssertStreamingDistributionAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionAlreadyExists to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(StreamingDistributionAlreadyExists_keys[k], "StreamingDistributionAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionAlreadyExists
--  
-- @param Message [string]  
function M.StreamingDistributionAlreadyExists(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionAlreadyExists")
	local t = { 
		["Message"] = Message,
	}
	M.AssertStreamingDistributionAlreadyExists(t)
	return t
end

local InvalidWebACLId_keys = { "Message" = true, nil }

function M.AssertInvalidWebACLId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidWebACLId to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidWebACLId_keys[k], "InvalidWebACLId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidWebACLId
--  
-- @param Message [string]  
function M.InvalidWebACLId(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidWebACLId")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidWebACLId(t)
	return t
end

local TooManyQueryStringParameters_keys = { "Message" = true, nil }

function M.AssertTooManyQueryStringParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyQueryStringParameters to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyQueryStringParameters_keys[k], "TooManyQueryStringParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyQueryStringParameters
--  
-- @param Message [string]  
function M.TooManyQueryStringParameters(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyQueryStringParameters")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyQueryStringParameters(t)
	return t
end

local InvalidRelativePath_keys = { "Message" = true, nil }

function M.AssertInvalidRelativePath(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRelativePath to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRelativePath_keys[k], "InvalidRelativePath contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRelativePath
-- &lt;p&gt;The relative path is too big, is not URL-encoded, or does not begin with a slash (/).&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The relative path is too big, is not URL-encoded, or does not begin with a slash (/).&lt;/p&gt;
function M.InvalidRelativePath(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRelativePath")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidRelativePath(t)
	return t
end

local CloudFrontOriginAccessIdentityConfig_keys = { "Comment" = true, "CallerReference" = true, nil }

function M.AssertCloudFrontOriginAccessIdentityConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentityConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	if struct["Comment"] then M.Assertstring(struct["Comment"]) end
	if struct["CallerReference"] then M.Assertstring(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(CloudFrontOriginAccessIdentityConfig_keys[k], "CloudFrontOriginAccessIdentityConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentityConfig
-- &lt;p&gt;Origin access identity configuration. Send a &lt;code&gt;GET&lt;/code&gt; request to the &lt;code&gt;/&lt;i&gt;CloudFront API version&lt;/i&gt;/CloudFront/identity ID/config&lt;/code&gt; resource. &lt;/p&gt;
-- @param Comment [string] &lt;p&gt;Any comments you want to include about the origin access identity. &lt;/p&gt;
-- @param CallerReference [string] &lt;p&gt;A unique number that ensures the request can't be replayed.&lt;/p&gt; &lt;p&gt;If the &lt;code&gt;CallerReference&lt;/code&gt; is new (no matter the content of the &lt;code&gt;CloudFrontOriginAccessIdentityConfig&lt;/code&gt; object), a new origin access identity is created.&lt;/p&gt; &lt;p&gt;If the &lt;code&gt;CallerReference&lt;/code&gt; is a value already sent in a previous identity request, and the content of the &lt;code&gt;CloudFrontOriginAccessIdentityConfig&lt;/code&gt; is identical to the original request (ignoring white space), the response includes the same information returned to the original request. &lt;/p&gt; &lt;p&gt;If the &lt;code&gt;CallerReference&lt;/code&gt; is a value you already sent in a previous request to create an identity, but the content of the &lt;code&gt;CloudFrontOriginAccessIdentityConfig&lt;/code&gt; is different from the original request, CloudFront returns a &lt;code&gt;CloudFrontOriginAccessIdentityAlreadyExists&lt;/code&gt; error. &lt;/p&gt;
-- Required parameter: CallerReference
-- Required parameter: Comment
function M.CloudFrontOriginAccessIdentityConfig(Comment, CallerReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentityConfig")
	local t = { 
		["Comment"] = Comment,
		["CallerReference"] = CallerReference,
	}
	M.AssertCloudFrontOriginAccessIdentityConfig(t)
	return t
end

local ListTagsForResourceResult_keys = { "Tags" = true, nil }

function M.AssertListTagsForResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResult to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceResult_keys[k], "ListTagsForResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResult
-- &lt;p&gt; The returned result of the corresponding request.&lt;/p&gt;
-- @param Tags [Tags] &lt;p&gt; A complex type that contains zero or more &lt;code&gt;Tag&lt;/code&gt; elements.&lt;/p&gt;
-- Required parameter: Tags
function M.ListTagsForResourceResult(Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResult")
	local t = { 
		["Tags"] = Tags,
	}
	M.AssertListTagsForResourceResult(t)
	return t
end

local TooManyDistributionsWithLambdaAssociations_keys = { "Message" = true, nil }

function M.AssertTooManyDistributionsWithLambdaAssociations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyDistributionsWithLambdaAssociations to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyDistributionsWithLambdaAssociations_keys[k], "TooManyDistributionsWithLambdaAssociations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyDistributionsWithLambdaAssociations
-- &lt;p&gt;Processing your request would cause the maximum number of distributions with Lambda function associations per owner to be exceeded.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;Processing your request would cause the maximum number of distributions with Lambda function associations per owner to be exceeded.&lt;/p&gt;
function M.TooManyDistributionsWithLambdaAssociations(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyDistributionsWithLambdaAssociations")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyDistributionsWithLambdaAssociations(t)
	return t
end

local GetDistributionRequest_keys = { "Id" = true, nil }

function M.AssertGetDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetDistributionRequest_keys[k], "GetDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionRequest
-- &lt;p&gt;The request to get a distribution's information.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The distribution's ID.&lt;/p&gt;
-- Required parameter: Id
function M.GetDistributionRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDistributionRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetDistributionRequest(t)
	return t
end

local InvalidMinimumProtocolVersion_keys = { "Message" = true, nil }

function M.AssertInvalidMinimumProtocolVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMinimumProtocolVersion to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidMinimumProtocolVersion_keys[k], "InvalidMinimumProtocolVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMinimumProtocolVersion
--  
-- @param Message [string]  
function M.InvalidMinimumProtocolVersion(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMinimumProtocolVersion")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidMinimumProtocolVersion(t)
	return t
end

local NoSuchCloudFrontOriginAccessIdentity_keys = { "Message" = true, nil }

function M.AssertNoSuchCloudFrontOriginAccessIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchCloudFrontOriginAccessIdentity to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchCloudFrontOriginAccessIdentity_keys[k], "NoSuchCloudFrontOriginAccessIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchCloudFrontOriginAccessIdentity
-- &lt;p&gt;The specified origin access identity does not exist.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The specified origin access identity does not exist.&lt;/p&gt;
function M.NoSuchCloudFrontOriginAccessIdentity(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchCloudFrontOriginAccessIdentity")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNoSuchCloudFrontOriginAccessIdentity(t)
	return t
end

local TooManyLambdaFunctionAssociations_keys = { "Message" = true, nil }

function M.AssertTooManyLambdaFunctionAssociations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyLambdaFunctionAssociations to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyLambdaFunctionAssociations_keys[k], "TooManyLambdaFunctionAssociations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyLambdaFunctionAssociations
-- &lt;p&gt;Your request contains more Lambda function associations than are allowed per distribution.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;Your request contains more Lambda function associations than are allowed per distribution.&lt;/p&gt;
function M.TooManyLambdaFunctionAssociations(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyLambdaFunctionAssociations")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyLambdaFunctionAssociations(t)
	return t
end

local InvalidRequiredProtocol_keys = { "Message" = true, nil }

function M.AssertInvalidRequiredProtocol(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequiredProtocol to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRequiredProtocol_keys[k], "InvalidRequiredProtocol contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequiredProtocol
-- &lt;p&gt;This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the &lt;code&gt;RequiredProtocols&lt;/code&gt; element from your distribution configuration.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the &lt;code&gt;RequiredProtocols&lt;/code&gt; element from your distribution configuration.&lt;/p&gt;
function M.InvalidRequiredProtocol(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequiredProtocol")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidRequiredProtocol(t)
	return t
end

local OriginSslProtocols_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertOriginSslProtocols(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OriginSslProtocols to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then M.AssertSslProtocolsList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(OriginSslProtocols_keys[k], "OriginSslProtocols contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OriginSslProtocols
-- &lt;p&gt;A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin. &lt;/p&gt;
-- @param Items [SslProtocolsList] &lt;p&gt;A list that contains allowed SSL/TLS protocols for this distribution.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of SSL/TLS protocols that you want to allow CloudFront to use when establishing an HTTPS connection with this origin. &lt;/p&gt;
-- Required parameter: Quantity
-- Required parameter: Items
function M.OriginSslProtocols(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OriginSslProtocols")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertOriginSslProtocols(t)
	return t
end

local InvalidationList_keys = { "Items" = true, "NextMarker" = true, "MaxItems" = true, "Marker" = true, "IsTruncated" = true, "Quantity" = true, nil }

function M.AssertInvalidationList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidationList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertInvalidationSummaryList(struct["Items"]) end
	if struct["NextMarker"] then M.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then M.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then M.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(InvalidationList_keys[k], "InvalidationList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidationList
-- &lt;p&gt;The &lt;code&gt;InvalidationList&lt;/code&gt; complex type describes the list of invalidation objects. For more information about invalidation, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html&quot;&gt;Invalidating Objects (Web Distributions Only)&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Items [InvalidationSummaryList] &lt;p&gt;A complex type that contains one &lt;code&gt;InvalidationSummary&lt;/code&gt; element for each invalidation batch created by the current AWS account.&lt;/p&gt;
-- @param NextMarker [string] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value that you can use for the &lt;code&gt;Marker&lt;/code&gt; request parameter to continue listing your invalidation batches where they left off.&lt;/p&gt;
-- @param MaxItems [integer] &lt;p&gt;The value that you provided for the &lt;code&gt;MaxItems&lt;/code&gt; request parameter.&lt;/p&gt;
-- @param Marker [string] &lt;p&gt;The value that you provided for the &lt;code&gt;Marker&lt;/code&gt; request parameter.&lt;/p&gt;
-- @param IsTruncated [boolean] &lt;p&gt;A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more invalidation batches in the list.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of invalidation batches that were created by the current AWS account. &lt;/p&gt;
-- Required parameter: Marker
-- Required parameter: MaxItems
-- Required parameter: IsTruncated
-- Required parameter: Quantity
function M.InvalidationList(Items, NextMarker, MaxItems, Marker, IsTruncated, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidationList")
	local t = { 
		["Items"] = Items,
		["NextMarker"] = NextMarker,
		["MaxItems"] = MaxItems,
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["Quantity"] = Quantity,
	}
	M.AssertInvalidationList(t)
	return t
end

local Origin_keys = { "OriginPath" = true, "DomainName" = true, "CustomOriginConfig" = true, "CustomHeaders" = true, "S3OriginConfig" = true, "Id" = true, nil }

function M.AssertOrigin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Origin to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["OriginPath"] then M.Assertstring(struct["OriginPath"]) end
	if struct["DomainName"] then M.Assertstring(struct["DomainName"]) end
	if struct["CustomOriginConfig"] then M.AssertCustomOriginConfig(struct["CustomOriginConfig"]) end
	if struct["CustomHeaders"] then M.AssertCustomHeaders(struct["CustomHeaders"]) end
	if struct["S3OriginConfig"] then M.AssertS3OriginConfig(struct["S3OriginConfig"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(Origin_keys[k], "Origin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Origin
-- &lt;p&gt;A complex type that describes the Amazon S3 bucket or the HTTP server (for example, a web server) from which CloudFront gets your files. You must create at least one origin.&lt;/p&gt; &lt;p&gt;For the current limit on the number of origins that you can create for a distribution, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront&quot;&gt;Amazon CloudFront Limits&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param OriginPath [string] &lt;p&gt;An optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin. When you include the &lt;code&gt;OriginPath&lt;/code&gt; element, specify the directory name, beginning with a &lt;code&gt;/&lt;/code&gt;. CloudFront appends the directory name to the value of &lt;code&gt;DomainName&lt;/code&gt;, for example, &lt;code&gt;example.com/production&lt;/code&gt;. Do not include a &lt;code&gt;/&lt;/code&gt; at the end of the directory name.&lt;/p&gt; &lt;p&gt;For example, suppose you've specified the following values for your distribution:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DomainName&lt;/code&gt;: An Amazon S3 bucket named &lt;code&gt;myawsbucket&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;OriginPath&lt;/code&gt;: &lt;code&gt;/production&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CNAME&lt;/code&gt;: &lt;code&gt;example.com&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;When a user enters &lt;code&gt;example.com/index.html&lt;/code&gt; in a browser, CloudFront sends a request to Amazon S3 for &lt;code&gt;myawsbucket/production/index.html&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;When a user enters &lt;code&gt;example.com/acme/index.html&lt;/code&gt; in a browser, CloudFront sends a request to Amazon S3 for &lt;code&gt;myawsbucket/production/acme/index.html&lt;/code&gt;.&lt;/p&gt;
-- @param DomainName [string] &lt;p&gt; &lt;b&gt;Amazon S3 origins&lt;/b&gt;: The DNS name of the Amazon S3 bucket from which you want CloudFront to get objects for this origin, for example, &lt;code&gt;myawsbucket.s3.amazonaws.com&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Constraints for Amazon S3 origins: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If you configured Amazon S3 Transfer Acceleration for your bucket, do not specify the &lt;code&gt;s3-accelerate&lt;/code&gt; endpoint for &lt;code&gt;DomainName&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The bucket name must be between 3 and 63 characters long (inclusive).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The bucket name must contain only lowercase characters, numbers, periods, underscores, and dashes.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The bucket name must not contain adjacent periods.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Custom Origins&lt;/b&gt;: The DNS domain name for the HTTP server from which you want CloudFront to get objects for this origin, for example, &lt;code&gt;www.example.com&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;Constraints for custom origins:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DomainName&lt;/code&gt; must be a valid DNS name that contains only a-z, A-Z, 0-9, dot (.), hyphen (-), or underscore (_) characters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The name cannot exceed 128 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param CustomOriginConfig [CustomOriginConfig] &lt;p&gt;A complex type that contains information about a custom origin. If the origin is an Amazon S3 bucket, use the &lt;code&gt;S3OriginConfig&lt;/code&gt; element instead.&lt;/p&gt;
-- @param CustomHeaders [CustomHeaders] &lt;p&gt;A complex type that contains names and values for the custom headers that you want.&lt;/p&gt;
-- @param S3OriginConfig [S3OriginConfig] &lt;p&gt;A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the &lt;code&gt;CustomOriginConfig&lt;/code&gt; element instead.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;A unique identifier for the origin. The value of &lt;code&gt;Id&lt;/code&gt; must be unique within the distribution.&lt;/p&gt; &lt;p&gt;When you specify the value of &lt;code&gt;TargetOriginId&lt;/code&gt; for the default cache behavior or for another cache behavior, you indicate the origin to which you want the cache behavior to route requests by specifying the value of the &lt;code&gt;Id&lt;/code&gt; element for that origin. When a request matches the path pattern for that cache behavior, CloudFront routes the request to the specified origin. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior&quot;&gt;Cache Behavior Settings&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: DomainName
function M.Origin(OriginPath, DomainName, CustomOriginConfig, CustomHeaders, S3OriginConfig, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Origin")
	local t = { 
		["OriginPath"] = OriginPath,
		["DomainName"] = DomainName,
		["CustomOriginConfig"] = CustomOriginConfig,
		["CustomHeaders"] = CustomHeaders,
		["S3OriginConfig"] = S3OriginConfig,
		["Id"] = Id,
	}
	M.AssertOrigin(t)
	return t
end

local UpdateCloudFrontOriginAccessIdentityResult_keys = { "CloudFrontOriginAccessIdentity" = true, "ETag" = true, nil }

function M.AssertUpdateCloudFrontOriginAccessIdentityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCloudFrontOriginAccessIdentityResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentity"] then M.AssertCloudFrontOriginAccessIdentity(struct["CloudFrontOriginAccessIdentity"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(UpdateCloudFrontOriginAccessIdentityResult_keys[k], "UpdateCloudFrontOriginAccessIdentityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCloudFrontOriginAccessIdentityResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param CloudFrontOriginAccessIdentity [CloudFrontOriginAccessIdentity] &lt;p&gt;The origin access identity's information.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the configuration. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
function M.UpdateCloudFrontOriginAccessIdentityResult(CloudFrontOriginAccessIdentity, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCloudFrontOriginAccessIdentityResult")
	local t = { 
		["CloudFrontOriginAccessIdentity"] = CloudFrontOriginAccessIdentity,
		["ETag"] = ETag,
	}
	M.AssertUpdateCloudFrontOriginAccessIdentityResult(t)
	return t
end

local DistributionConfigWithTags_keys = { "DistributionConfig" = true, "Tags" = true, nil }

function M.AssertDistributionConfigWithTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionConfigWithTags to be of type 'table'")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["DistributionConfig"] then M.AssertDistributionConfig(struct["DistributionConfig"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(DistributionConfigWithTags_keys[k], "DistributionConfigWithTags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionConfigWithTags
-- &lt;p&gt;A distribution Configuration and a list of tags to be associated with the distribution.&lt;/p&gt;
-- @param DistributionConfig [DistributionConfig] &lt;p&gt;A distribution configuration.&lt;/p&gt;
-- @param Tags [Tags] &lt;p&gt;A complex type that contains zero or more &lt;code&gt;Tag&lt;/code&gt; elements.&lt;/p&gt;
-- Required parameter: DistributionConfig
-- Required parameter: Tags
function M.DistributionConfigWithTags(DistributionConfig, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionConfigWithTags")
	local t = { 
		["DistributionConfig"] = DistributionConfig,
		["Tags"] = Tags,
	}
	M.AssertDistributionConfigWithTags(t)
	return t
end

local GetCloudFrontOriginAccessIdentityConfigResult_keys = { "CloudFrontOriginAccessIdentityConfig" = true, "ETag" = true, nil }

function M.AssertGetCloudFrontOriginAccessIdentityConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityConfigResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentityConfig"] then M.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(GetCloudFrontOriginAccessIdentityConfigResult_keys[k], "GetCloudFrontOriginAccessIdentityConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityConfigResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] &lt;p&gt;The origin access identity's configuration information. &lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the configuration. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
function M.GetCloudFrontOriginAccessIdentityConfigResult(CloudFrontOriginAccessIdentityConfig, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCloudFrontOriginAccessIdentityConfigResult")
	local t = { 
		["CloudFrontOriginAccessIdentityConfig"] = CloudFrontOriginAccessIdentityConfig,
		["ETag"] = ETag,
	}
	M.AssertGetCloudFrontOriginAccessIdentityConfigResult(t)
	return t
end

local InvalidForwardCookies_keys = { "Message" = true, nil }

function M.AssertInvalidForwardCookies(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidForwardCookies to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidForwardCookies_keys[k], "InvalidForwardCookies contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidForwardCookies
-- &lt;p&gt;Your request contains forward cookies option which doesn't match with the expectation for the &lt;code&gt;whitelisted&lt;/code&gt; list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;Your request contains forward cookies option which doesn't match with the expectation for the &lt;code&gt;whitelisted&lt;/code&gt; list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.&lt;/p&gt;
function M.InvalidForwardCookies(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidForwardCookies")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidForwardCookies(t)
	return t
end

local Headers_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertHeaders(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Headers to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertHeaderList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(Headers_keys[k], "Headers contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Headers
-- &lt;p&gt;A complex type that specifies the headers that you want CloudFront to forward to the origin for this cache behavior.&lt;/p&gt; &lt;p&gt;For the headers that you specify, CloudFront also caches separate versions of a specified object based on the header values in viewer requests. For example, suppose viewer requests for &lt;code&gt;logo.jpg&lt;/code&gt; contain a custom &lt;code&gt;Product&lt;/code&gt; header that has a value of either &lt;code&gt;Acme&lt;/code&gt; or &lt;code&gt;Apex&lt;/code&gt;, and you configure CloudFront to cache your content based on values in the &lt;code&gt;Product&lt;/code&gt; header. CloudFront forwards the &lt;code&gt;Product&lt;/code&gt; header to the origin and caches the response from the origin once for each header value. For more information about caching based on header values, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html&quot;&gt;How CloudFront Forwards and Caches Headers&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Items [HeaderList] &lt;p&gt;A complex type that contains one &lt;code&gt;Name&lt;/code&gt; element for each header that you want CloudFront to forward to the origin and to vary on for this cache behavior. If &lt;code&gt;Quantity&lt;/code&gt; is &lt;code&gt;0&lt;/code&gt;, omit &lt;code&gt;Items&lt;/code&gt;.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of different headers that you want CloudFront to forward to the origin for this cache behavior. You can configure each cache behavior in a web distribution to do one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Forward all headers to your origin&lt;/b&gt;: Specify &lt;code&gt;1&lt;/code&gt; for &lt;code&gt;Quantity&lt;/code&gt; and &lt;code&gt;*&lt;/code&gt; for &lt;code&gt;Name&lt;/code&gt;.&lt;/p&gt; &lt;important&gt; &lt;p&gt;If you configure CloudFront to forward all headers to your origin, CloudFront doesn't cache the objects associated with this cache behavior. Instead, it sends every request to the origin.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;Forward a whitelist of headers you specify&lt;/i&gt;: Specify the number of headers that you want to forward, and specify the header names in &lt;code&gt;Name&lt;/code&gt; elements. CloudFront caches your objects based on the values in all of the specified headers. CloudFront also forwards the headers that it forwards by default, but it caches your objects based only on the headers that you specify. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Forward only the default headers&lt;/b&gt;: Specify &lt;code&gt;0&lt;/code&gt; for &lt;code&gt;Quantity&lt;/code&gt; and omit &lt;code&gt;Items&lt;/code&gt;. In this configuration, CloudFront doesn't cache based on the values in the request headers.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: Quantity
function M.Headers(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Headers")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertHeaders(t)
	return t
end

local GetCloudFrontOriginAccessIdentityConfigRequest_keys = { "Id" = true, nil }

function M.AssertGetCloudFrontOriginAccessIdentityConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetCloudFrontOriginAccessIdentityConfigRequest_keys[k], "GetCloudFrontOriginAccessIdentityConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityConfigRequest
-- &lt;p&gt;The origin access identity's configuration information. For more information, see &lt;a&gt;CloudFrontOriginAccessIdentityConfigComplexType&lt;/a&gt;.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The identity's ID. &lt;/p&gt;
-- Required parameter: Id
function M.GetCloudFrontOriginAccessIdentityConfigRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCloudFrontOriginAccessIdentityConfigRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetCloudFrontOriginAccessIdentityConfigRequest(t)
	return t
end

local DistributionConfig_keys = { "Comment" = true, "CacheBehaviors" = true, "IsIPV6Enabled" = true, "Logging" = true, "WebACLId" = true, "Origins" = true, "DefaultRootObject" = true, "PriceClass" = true, "Enabled" = true, "DefaultCacheBehavior" = true, "CallerReference" = true, "ViewerCertificate" = true, "CustomErrorResponses" = true, "HttpVersion" = true, "Restrictions" = true, "Aliases" = true, nil }

function M.AssertDistributionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["Origins"], "Expected key Origins to exist in table")
	assert(struct["DefaultCacheBehavior"], "Expected key DefaultCacheBehavior to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Comment"] then M.Assertstring(struct["Comment"]) end
	if struct["CacheBehaviors"] then M.AssertCacheBehaviors(struct["CacheBehaviors"]) end
	if struct["IsIPV6Enabled"] then M.Assertboolean(struct["IsIPV6Enabled"]) end
	if struct["Logging"] then M.AssertLoggingConfig(struct["Logging"]) end
	if struct["WebACLId"] then M.Assertstring(struct["WebACLId"]) end
	if struct["Origins"] then M.AssertOrigins(struct["Origins"]) end
	if struct["DefaultRootObject"] then M.Assertstring(struct["DefaultRootObject"]) end
	if struct["PriceClass"] then M.AssertPriceClass(struct["PriceClass"]) end
	if struct["Enabled"] then M.Assertboolean(struct["Enabled"]) end
	if struct["DefaultCacheBehavior"] then M.AssertDefaultCacheBehavior(struct["DefaultCacheBehavior"]) end
	if struct["CallerReference"] then M.Assertstring(struct["CallerReference"]) end
	if struct["ViewerCertificate"] then M.AssertViewerCertificate(struct["ViewerCertificate"]) end
	if struct["CustomErrorResponses"] then M.AssertCustomErrorResponses(struct["CustomErrorResponses"]) end
	if struct["HttpVersion"] then M.AssertHttpVersion(struct["HttpVersion"]) end
	if struct["Restrictions"] then M.AssertRestrictions(struct["Restrictions"]) end
	if struct["Aliases"] then M.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(DistributionConfig_keys[k], "DistributionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionConfig
-- &lt;p&gt;A distribution configuration.&lt;/p&gt;
-- @param Comment [string] &lt;p&gt;Any comments you want to include about the distribution.&lt;/p&gt; &lt;p&gt;If you don't want to specify a comment, include an empty &lt;code&gt;Comment&lt;/code&gt; element.&lt;/p&gt; &lt;p&gt;To delete an existing comment, update the distribution configuration and include an empty &lt;code&gt;Comment&lt;/code&gt; element.&lt;/p&gt; &lt;p&gt;To add or change a comment, update the distribution configuration and specify the new comment.&lt;/p&gt;
-- @param CacheBehaviors [CacheBehaviors] &lt;p&gt;A complex type that contains zero or more &lt;code&gt;CacheBehavior&lt;/code&gt; elements. &lt;/p&gt;
-- @param IsIPV6Enabled [boolean] &lt;p&gt;If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your distribution, specify &lt;code&gt;true&lt;/code&gt;. If you specify &lt;code&gt;false&lt;/code&gt;, CloudFront responds to IPv6 DNS requests with the DNS response code &lt;code&gt;NOERROR&lt;/code&gt; and with no IP addresses. This allows viewers to submit a second request, for an IPv4 address for your distribution. &lt;/p&gt; &lt;p&gt;In general, you should enable IPv6 if you have users on IPv6 networks who want to access your content. However, if you're using signed URLs or signed cookies to restrict access to your content, and if you're using a custom policy that includes the &lt;code&gt;IpAddress&lt;/code&gt; parameter to restrict the IP addresses that can access your content, do not enable IPv6. If you want to restrict access to some content by IP address and not restrict access to other content (or restrict access but not by IP address), you can create two distributions. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html&quot;&gt;Creating a Signed URL Using a Custom Policy&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;If you're using an Amazon Route 53 alias resource record set to route traffic to your CloudFront distribution, you need to create a second alias resource record set when both of the following are true:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You enable IPv6 for the distribution&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You're using alternate domain names in the URLs for your objects&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html&quot;&gt;Routing Traffic to an Amazon CloudFront Web Distribution by Using Your Domain Name&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;If you created a CNAME resource record set, either with Amazon Route 53 or with another DNS service, you don't need to make any changes. A CNAME record will route traffic to your distribution regardless of the IP address format of the viewer request.&lt;/p&gt;
-- @param Logging [LoggingConfig] &lt;p&gt;A complex type that controls whether access logs are written for the distribution.&lt;/p&gt; &lt;p&gt;For more information about logging, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html&quot;&gt;Access Logs&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param WebACLId [string] &lt;p&gt;A unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution.&lt;/p&gt; &lt;p&gt;AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to CloudFront, and lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, CloudFront responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page when a request is blocked. For more information about AWS WAF, see the &lt;a href=&quot;http://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html&quot;&gt;AWS WAF Developer Guide&lt;/a&gt;. &lt;/p&gt;
-- @param Origins [Origins] &lt;p&gt;A complex type that contains information about origins for this distribution. &lt;/p&gt;
-- @param DefaultRootObject [string] &lt;p&gt;The object that you want CloudFront to request from your origin (for example, &lt;code&gt;index.html&lt;/code&gt;) when a viewer requests the root URL for your distribution (&lt;code&gt;http://www.example.com&lt;/code&gt;) instead of an object in your distribution (&lt;code&gt;http://www.example.com/product-description.html&lt;/code&gt;). Specifying a default root object avoids exposing the contents of your distribution.&lt;/p&gt; &lt;p&gt;Specify only the object name, for example, &lt;code&gt;index.html&lt;/code&gt;. Do not add a &lt;code&gt;/&lt;/code&gt; before the object name.&lt;/p&gt; &lt;p&gt;If you don't want to specify a default root object when you create a distribution, include an empty &lt;code&gt;DefaultRootObject&lt;/code&gt; element.&lt;/p&gt; &lt;p&gt;To delete the default root object from an existing distribution, update the distribution configuration and include an empty &lt;code&gt;DefaultRootObject&lt;/code&gt; element.&lt;/p&gt; &lt;p&gt;To replace the default root object, update the distribution configuration and specify the new object.&lt;/p&gt; &lt;p&gt;For more information about the default root object, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html&quot;&gt;Creating a Default Root Object&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param PriceClass [PriceClass] &lt;p&gt;The price class that corresponds with the maximum price that you want to pay for CloudFront service. If you specify &lt;code&gt;PriceClass_All&lt;/code&gt;, CloudFront responds to requests for your objects from all CloudFront edge locations.&lt;/p&gt; &lt;p&gt;If you specify a price class other than &lt;code&gt;PriceClass_All&lt;/code&gt;, CloudFront serves your objects from the CloudFront edge location that has the lowest latency among the edge locations in your price class. Viewers who are in or near regions that are excluded from your specified price class may encounter slower performance.&lt;/p&gt; &lt;p&gt;For more information about price classes, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html&quot;&gt;Choosing the Price Class for a CloudFront Distribution&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;. For information about CloudFront pricing, including how price classes map to CloudFront regions, see &lt;a href=&quot;https://aws.amazon.com/cloudfront/pricing/&quot;&gt;Amazon CloudFront Pricing&lt;/a&gt;.&lt;/p&gt;
-- @param Enabled [boolean] &lt;p&gt;From this field, you can enable or disable the selected distribution.&lt;/p&gt; &lt;p&gt;If you specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt; but you specify values for &lt;code&gt;Bucket&lt;/code&gt; and &lt;code&gt;Prefix&lt;/code&gt;, the values are automatically deleted.&lt;/p&gt;
-- @param DefaultCacheBehavior [DefaultCacheBehavior] &lt;p&gt;A complex type that describes the default cache behavior if you do not specify a &lt;code&gt;CacheBehavior&lt;/code&gt; element or if files don't match any of the values of &lt;code&gt;PathPattern&lt;/code&gt; in &lt;code&gt;CacheBehavior&lt;/code&gt; elements. You must create exactly one default cache behavior.&lt;/p&gt;
-- @param CallerReference [string] &lt;p&gt;A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;CallerReference&lt;/code&gt; is new (regardless of the content of the &lt;code&gt;DistributionConfig&lt;/code&gt; object), CloudFront creates a new distribution.&lt;/p&gt; &lt;p&gt;If &lt;code&gt;CallerReference&lt;/code&gt; is a value you already sent in a previous request to create a distribution, and if the content of the &lt;code&gt;DistributionConfig&lt;/code&gt; is identical to the original request (ignoring white space), CloudFront returns the same the response that it returned to the original request.&lt;/p&gt; &lt;p&gt;If &lt;code&gt;CallerReference&lt;/code&gt; is a value you already sent in a previous request to create a distribution but the content of the &lt;code&gt;DistributionConfig&lt;/code&gt; is different from the original request, CloudFront returns a &lt;code&gt;DistributionAlreadyExists&lt;/code&gt; error.&lt;/p&gt;
-- @param ViewerCertificate [ViewerCertificate] &lt;p&gt;A distribution configuration.&lt;/p&gt;
-- @param CustomErrorResponses [CustomErrorResponses] &lt;p&gt;A complex type that controls the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;How long CloudFront caches HTTP status codes in the 4xx and 5xx range.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about custom error pages, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html&quot;&gt;Customizing Error Responses&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param HttpVersion [HttpVersion] &lt;p&gt;(Optional) Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is http2. Viewers that don't support HTTP/2 automatically use an earlier HTTP version.&lt;/p&gt; &lt;p&gt;For viewers and CloudFront to use HTTP/2, viewers must support TLS 1.2 or later, and must support Server Name Identification (SNI).&lt;/p&gt; &lt;p&gt;In general, configuring CloudFront to communicate with viewers using HTTP/2 reduces latency. You can improve performance by optimizing for HTTP/2. For more information, do an Internet search for &quot;http/2 optimization.&quot; &lt;/p&gt;
-- @param Restrictions [Restrictions] &lt;p&gt;A distribution configuration.&lt;/p&gt;
-- @param Aliases [Aliases] &lt;p&gt;A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.&lt;/p&gt;
-- Required parameter: CallerReference
-- Required parameter: Origins
-- Required parameter: DefaultCacheBehavior
-- Required parameter: Comment
-- Required parameter: Enabled
function M.DistributionConfig(Comment, CacheBehaviors, IsIPV6Enabled, Logging, WebACLId, Origins, DefaultRootObject, PriceClass, Enabled, DefaultCacheBehavior, CallerReference, ViewerCertificate, CustomErrorResponses, HttpVersion, Restrictions, Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionConfig")
	local t = { 
		["Comment"] = Comment,
		["CacheBehaviors"] = CacheBehaviors,
		["IsIPV6Enabled"] = IsIPV6Enabled,
		["Logging"] = Logging,
		["WebACLId"] = WebACLId,
		["Origins"] = Origins,
		["DefaultRootObject"] = DefaultRootObject,
		["PriceClass"] = PriceClass,
		["Enabled"] = Enabled,
		["DefaultCacheBehavior"] = DefaultCacheBehavior,
		["CallerReference"] = CallerReference,
		["ViewerCertificate"] = ViewerCertificate,
		["CustomErrorResponses"] = CustomErrorResponses,
		["HttpVersion"] = HttpVersion,
		["Restrictions"] = Restrictions,
		["Aliases"] = Aliases,
	}
	M.AssertDistributionConfig(t)
	return t
end

local CustomErrorResponses_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertCustomErrorResponses(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomErrorResponses to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertCustomErrorResponseList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(CustomErrorResponses_keys[k], "CustomErrorResponses contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomErrorResponses
-- &lt;p&gt;A complex type that controls:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;How long CloudFront caches HTTP status codes in the 4xx and 5xx range.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about custom error pages, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html&quot;&gt;Customizing Error Responses&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Items [CustomErrorResponseList] &lt;p&gt;A complex type that contains a &lt;code&gt;CustomErrorResponse&lt;/code&gt; element for each HTTP status code for which you want to specify a custom error page and/or a caching duration. &lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of HTTP status codes for which you want to specify a custom error page and/or a caching duration. If &lt;code&gt;Quantity&lt;/code&gt; is &lt;code&gt;0&lt;/code&gt;, you can omit &lt;code&gt;Items&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Quantity
function M.CustomErrorResponses(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomErrorResponses")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertCustomErrorResponses(t)
	return t
end

local CloudFrontOriginAccessIdentity_keys = { "CloudFrontOriginAccessIdentityConfig" = true, "S3CanonicalUserId" = true, "Id" = true, nil }

function M.AssertCloudFrontOriginAccessIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentity to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["S3CanonicalUserId"], "Expected key S3CanonicalUserId to exist in table")
	if struct["CloudFrontOriginAccessIdentityConfig"] then M.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	if struct["S3CanonicalUserId"] then M.Assertstring(struct["S3CanonicalUserId"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(CloudFrontOriginAccessIdentity_keys[k], "CloudFrontOriginAccessIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentity
-- &lt;p&gt;CloudFront origin access identity.&lt;/p&gt;
-- @param CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] &lt;p&gt;The current configuration information for the identity. &lt;/p&gt;
-- @param S3CanonicalUserId [string] &lt;p&gt;The Amazon S3 canonical user ID for the origin access identity, used when giving the origin access identity read permission to an object in Amazon S3. &lt;/p&gt;
-- @param Id [string] &lt;p&gt;The ID for the origin access identity. For example: &lt;code&gt;E74FTE3AJFJ256A&lt;/code&gt;. &lt;/p&gt;
-- Required parameter: Id
-- Required parameter: S3CanonicalUserId
function M.CloudFrontOriginAccessIdentity(CloudFrontOriginAccessIdentityConfig, S3CanonicalUserId, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentity")
	local t = { 
		["CloudFrontOriginAccessIdentityConfig"] = CloudFrontOriginAccessIdentityConfig,
		["S3CanonicalUserId"] = S3CanonicalUserId,
		["Id"] = Id,
	}
	M.AssertCloudFrontOriginAccessIdentity(t)
	return t
end

local MissingBody_keys = { "Message" = true, nil }

function M.AssertMissingBody(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingBody to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(MissingBody_keys[k], "MissingBody contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingBody
-- &lt;p&gt;This operation requires a body. Ensure that the body is present and the Content-Type header is set.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;This operation requires a body. Ensure that the body is present and the Content-Type header is set.&lt;/p&gt;
function M.MissingBody(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingBody")
	local t = { 
		["Message"] = Message,
	}
	M.AssertMissingBody(t)
	return t
end

local S3OriginConfig_keys = { "OriginAccessIdentity" = true, nil }

function M.AssertS3OriginConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3OriginConfig to be of type 'table'")
	assert(struct["OriginAccessIdentity"], "Expected key OriginAccessIdentity to exist in table")
	if struct["OriginAccessIdentity"] then M.Assertstring(struct["OriginAccessIdentity"]) end
	for k,_ in pairs(struct) do
		assert(S3OriginConfig_keys[k], "S3OriginConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3OriginConfig
-- &lt;p&gt;A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the &lt;code&gt;CustomOriginConfig&lt;/code&gt; element instead.&lt;/p&gt;
-- @param OriginAccessIdentity [string] &lt;p&gt;The CloudFront origin access identity to associate with the origin. Use an origin access identity to configure the origin so that viewers can &lt;i&gt;only&lt;/i&gt; access objects in an Amazon S3 bucket through CloudFront. The format of the value is:&lt;/p&gt; &lt;p&gt;origin-access-identity/cloudfront/&lt;i&gt;ID-of-origin-access-identity&lt;/i&gt; &lt;/p&gt; &lt;p&gt;where &lt;code&gt; &lt;i&gt;ID-of-origin-access-identity&lt;/i&gt; &lt;/code&gt; is the value that CloudFront returned in the &lt;code&gt;ID&lt;/code&gt; element when you created the origin access identity.&lt;/p&gt; &lt;p&gt;If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty &lt;code&gt;OriginAccessIdentity&lt;/code&gt; element.&lt;/p&gt; &lt;p&gt;To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty &lt;code&gt;OriginAccessIdentity&lt;/code&gt; element.&lt;/p&gt; &lt;p&gt;To replace the origin access identity, update the distribution configuration and specify the new origin access identity.&lt;/p&gt; &lt;p&gt;For more information about the origin access identity, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html&quot;&gt;Serving Private Content through CloudFront&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: OriginAccessIdentity
function M.S3OriginConfig(OriginAccessIdentity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3OriginConfig")
	local t = { 
		["OriginAccessIdentity"] = OriginAccessIdentity,
	}
	M.AssertS3OriginConfig(t)
	return t
end

local StreamingDistributionNotDisabled_keys = { "Message" = true, nil }

function M.AssertStreamingDistributionNotDisabled(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionNotDisabled to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(StreamingDistributionNotDisabled_keys[k], "StreamingDistributionNotDisabled contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionNotDisabled
--  
-- @param Message [string]  
function M.StreamingDistributionNotDisabled(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionNotDisabled")
	local t = { 
		["Message"] = Message,
	}
	M.AssertStreamingDistributionNotDisabled(t)
	return t
end

local CNAMEAlreadyExists_keys = { "Message" = true, nil }

function M.AssertCNAMEAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CNAMEAlreadyExists to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(CNAMEAlreadyExists_keys[k], "CNAMEAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CNAMEAlreadyExists
--  
-- @param Message [string]  
function M.CNAMEAlreadyExists(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CNAMEAlreadyExists")
	local t = { 
		["Message"] = Message,
	}
	M.AssertCNAMEAlreadyExists(t)
	return t
end

local TooManyCacheBehaviors_keys = { "Message" = true, nil }

function M.AssertTooManyCacheBehaviors(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyCacheBehaviors to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyCacheBehaviors_keys[k], "TooManyCacheBehaviors contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyCacheBehaviors
-- &lt;p&gt;You cannot create more cache behaviors for the distribution.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;You cannot create more cache behaviors for the distribution.&lt;/p&gt;
function M.TooManyCacheBehaviors(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyCacheBehaviors")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyCacheBehaviors(t)
	return t
end

local InvalidTTLOrder_keys = { "Message" = true, nil }

function M.AssertInvalidTTLOrder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTTLOrder to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidTTLOrder_keys[k], "InvalidTTLOrder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTTLOrder
--  
-- @param Message [string]  
function M.InvalidTTLOrder(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTTLOrder")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidTTLOrder(t)
	return t
end

local TooManyDistributions_keys = { "Message" = true, nil }

function M.AssertTooManyDistributions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyDistributions to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyDistributions_keys[k], "TooManyDistributions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyDistributions
-- &lt;p&gt;Processing your request would cause you to exceed the maximum number of distributions allowed.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;Processing your request would cause you to exceed the maximum number of distributions allowed.&lt;/p&gt;
function M.TooManyDistributions(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyDistributions")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyDistributions(t)
	return t
end

local InvalidLocationCode_keys = { "Message" = true, nil }

function M.AssertInvalidLocationCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLocationCode to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidLocationCode_keys[k], "InvalidLocationCode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLocationCode
--  
-- @param Message [string]  
function M.InvalidLocationCode(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLocationCode")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidLocationCode(t)
	return t
end

local DefaultCacheBehavior_keys = { "TrustedSigners" = true, "LambdaFunctionAssociations" = true, "TargetOriginId" = true, "ViewerProtocolPolicy" = true, "ForwardedValues" = true, "MaxTTL" = true, "SmoothStreaming" = true, "DefaultTTL" = true, "AllowedMethods" = true, "MinTTL" = true, "Compress" = true, nil }

function M.AssertDefaultCacheBehavior(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultCacheBehavior to be of type 'table'")
	assert(struct["TargetOriginId"], "Expected key TargetOriginId to exist in table")
	assert(struct["ForwardedValues"], "Expected key ForwardedValues to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["ViewerProtocolPolicy"], "Expected key ViewerProtocolPolicy to exist in table")
	assert(struct["MinTTL"], "Expected key MinTTL to exist in table")
	if struct["TrustedSigners"] then M.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["LambdaFunctionAssociations"] then M.AssertLambdaFunctionAssociations(struct["LambdaFunctionAssociations"]) end
	if struct["TargetOriginId"] then M.Assertstring(struct["TargetOriginId"]) end
	if struct["ViewerProtocolPolicy"] then M.AssertViewerProtocolPolicy(struct["ViewerProtocolPolicy"]) end
	if struct["ForwardedValues"] then M.AssertForwardedValues(struct["ForwardedValues"]) end
	if struct["MaxTTL"] then M.Assertlong(struct["MaxTTL"]) end
	if struct["SmoothStreaming"] then M.Assertboolean(struct["SmoothStreaming"]) end
	if struct["DefaultTTL"] then M.Assertlong(struct["DefaultTTL"]) end
	if struct["AllowedMethods"] then M.AssertAllowedMethods(struct["AllowedMethods"]) end
	if struct["MinTTL"] then M.Assertlong(struct["MinTTL"]) end
	if struct["Compress"] then M.Assertboolean(struct["Compress"]) end
	for k,_ in pairs(struct) do
		assert(DefaultCacheBehavior_keys[k], "DefaultCacheBehavior contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultCacheBehavior
-- &lt;p&gt;A complex type that describes the default cache behavior if you do not specify a &lt;code&gt;CacheBehavior&lt;/code&gt; element or if files don't match any of the values of &lt;code&gt;PathPattern&lt;/code&gt; in &lt;code&gt;CacheBehavior&lt;/code&gt; elements. You must create exactly one default cache behavior.&lt;/p&gt;
-- @param TrustedSigners [TrustedSigners] &lt;p&gt;A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.&lt;/p&gt; &lt;p&gt;If you want to require signed URLs in requests for objects in the target origin that match the &lt;code&gt;PathPattern&lt;/code&gt; for this cache behavior, specify &lt;code&gt;true&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt;, and specify the applicable values for &lt;code&gt;Quantity&lt;/code&gt; and &lt;code&gt;Items&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html&quot;&gt;Serving Private Content through CloudFront&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;If you don't want to require signed URLs in requests for objects that match &lt;code&gt;PathPattern&lt;/code&gt;, specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt; and &lt;code&gt;0&lt;/code&gt; for &lt;code&gt;Quantity&lt;/code&gt;. Omit &lt;code&gt;Items&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;To add, change, or remove one or more trusted signers, change &lt;code&gt;Enabled&lt;/code&gt; to &lt;code&gt;true&lt;/code&gt; (if it's currently &lt;code&gt;false&lt;/code&gt;), change &lt;code&gt;Quantity&lt;/code&gt; as applicable, and specify all of the trusted signers that you want to include in the updated distribution.&lt;/p&gt;
-- @param LambdaFunctionAssociations [LambdaFunctionAssociations] &lt;p&gt;A complex type that contains zero or more Lambda function associations for a cache behavior.&lt;/p&gt;
-- @param TargetOriginId [string] &lt;p&gt;The value of &lt;code&gt;ID&lt;/code&gt; for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.&lt;/p&gt;
-- @param ViewerProtocolPolicy [ViewerProtocolPolicy] &lt;p&gt;The protocol that viewers can use to access the files in the origin specified by &lt;code&gt;TargetOriginId&lt;/code&gt; when a request matches the path pattern in &lt;code&gt;PathPattern&lt;/code&gt;. You can specify the following options:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;allow-all&lt;/code&gt;: Viewers can use HTTP or HTTPS.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;redirect-to-https&lt;/code&gt;: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;https-only&lt;/code&gt;: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden).&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about requiring the HTTPS protocol, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html&quot;&gt;Using an HTTPS Connection to Access Your Objects&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html&quot;&gt;Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param ForwardedValues [ForwardedValues] &lt;p&gt;A complex type that specifies how CloudFront handles query strings and cookies.&lt;/p&gt;
-- @param MaxTTL [long] &lt;p&gt;A complex type that describes the default cache behavior if you do not specify a &lt;code&gt;CacheBehavior&lt;/code&gt; element or if files don't match any of the values of &lt;code&gt;PathPattern&lt;/code&gt; in &lt;code&gt;CacheBehavior&lt;/code&gt; elements. You must create exactly one default cache behavior.&lt;/p&gt;
-- @param SmoothStreaming [boolean] &lt;p&gt;Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify &lt;code&gt;true&lt;/code&gt;; if not, specify &lt;code&gt;false&lt;/code&gt;. If you specify &lt;code&gt;true&lt;/code&gt; for &lt;code&gt;SmoothStreaming&lt;/code&gt;, you can still distribute other content using this cache behavior if the content matches the value of &lt;code&gt;PathPattern&lt;/code&gt;. &lt;/p&gt;
-- @param DefaultTTL [long] &lt;p&gt;The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as &lt;code&gt;Cache-Control max-age&lt;/code&gt;, &lt;code&gt;Cache-Control s-maxage&lt;/code&gt;, and &lt;code&gt;Expires&lt;/code&gt; to objects. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html&quot;&gt;Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param AllowedMethods [AllowedMethods] &lt;p&gt;A complex type that describes the default cache behavior if you do not specify a &lt;code&gt;CacheBehavior&lt;/code&gt; element or if files don't match any of the values of &lt;code&gt;PathPattern&lt;/code&gt; in &lt;code&gt;CacheBehavior&lt;/code&gt; elements. You must create exactly one default cache behavior.&lt;/p&gt;
-- @param MinTTL [long] &lt;p&gt;The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html&quot;&gt;Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;You must specify &lt;code&gt;0&lt;/code&gt; for &lt;code&gt;MinTTL&lt;/code&gt; if you configure CloudFront to forward all headers to your origin (under &lt;code&gt;Headers&lt;/code&gt;, if you specify &lt;code&gt;1&lt;/code&gt; for &lt;code&gt;Quantity&lt;/code&gt; and &lt;code&gt;*&lt;/code&gt; for &lt;code&gt;Name&lt;/code&gt;).&lt;/p&gt;
-- @param Compress [boolean] &lt;p&gt;Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify &lt;code&gt;true&lt;/code&gt;; if not, specify &lt;code&gt;false&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html&quot;&gt;Serving Compressed Files&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: TargetOriginId
-- Required parameter: ForwardedValues
-- Required parameter: TrustedSigners
-- Required parameter: ViewerProtocolPolicy
-- Required parameter: MinTTL
function M.DefaultCacheBehavior(TrustedSigners, LambdaFunctionAssociations, TargetOriginId, ViewerProtocolPolicy, ForwardedValues, MaxTTL, SmoothStreaming, DefaultTTL, AllowedMethods, MinTTL, Compress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultCacheBehavior")
	local t = { 
		["TrustedSigners"] = TrustedSigners,
		["LambdaFunctionAssociations"] = LambdaFunctionAssociations,
		["TargetOriginId"] = TargetOriginId,
		["ViewerProtocolPolicy"] = ViewerProtocolPolicy,
		["ForwardedValues"] = ForwardedValues,
		["MaxTTL"] = MaxTTL,
		["SmoothStreaming"] = SmoothStreaming,
		["DefaultTTL"] = DefaultTTL,
		["AllowedMethods"] = AllowedMethods,
		["MinTTL"] = MinTTL,
		["Compress"] = Compress,
	}
	M.AssertDefaultCacheBehavior(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt; A complex type that contains &lt;code&gt;Tag&lt;/code&gt; key and &lt;code&gt;Tag&lt;/code&gt; value.&lt;/p&gt;
-- @param Value [TagValue] &lt;p&gt; A string that contains an optional &lt;code&gt;Tag&lt;/code&gt; value.&lt;/p&gt; &lt;p&gt;The string length should be between 0 and 256 characters. Valid characters include &lt;code&gt;a-z&lt;/code&gt;, &lt;code&gt;A-Z&lt;/code&gt;, &lt;code&gt;0-9&lt;/code&gt;, space, and the special characters &lt;code&gt;_ - . : / = + @&lt;/code&gt;.&lt;/p&gt;
-- @param Key [TagKey] &lt;p&gt; A string that contains &lt;code&gt;Tag&lt;/code&gt; key.&lt;/p&gt; &lt;p&gt;The string length should be between 1 and 128 characters. Valid characters include &lt;code&gt;a-z&lt;/code&gt;, &lt;code&gt;A-Z&lt;/code&gt;, &lt;code&gt;0-9&lt;/code&gt;, space, and the special characters &lt;code&gt;_ - . : / = + @&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Key
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local CachedMethods_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertCachedMethods(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CachedMethods to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then M.AssertMethodsList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(CachedMethods_keys[k], "CachedMethods contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CachedMethods
-- &lt;p&gt;A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;CloudFront caches responses to &lt;code&gt;GET&lt;/code&gt; and &lt;code&gt;HEAD&lt;/code&gt; requests.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;CloudFront caches responses to &lt;code&gt;GET&lt;/code&gt;, &lt;code&gt;HEAD&lt;/code&gt;, and &lt;code&gt;OPTIONS&lt;/code&gt; requests.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly. &lt;/p&gt;
-- @param Items [MethodsList] &lt;p&gt;A complex type that contains the HTTP methods that you want CloudFront to cache responses to.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of HTTP methods for which you want CloudFront to cache responses. Valid values are &lt;code&gt;2&lt;/code&gt; (for caching responses to &lt;code&gt;GET&lt;/code&gt; and &lt;code&gt;HEAD&lt;/code&gt; requests) and &lt;code&gt;3&lt;/code&gt; (for caching responses to &lt;code&gt;GET&lt;/code&gt;, &lt;code&gt;HEAD&lt;/code&gt;, and &lt;code&gt;OPTIONS&lt;/code&gt; requests).&lt;/p&gt;
-- Required parameter: Quantity
-- Required parameter: Items
function M.CachedMethods(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CachedMethods")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertCachedMethods(t)
	return t
end

local AllowedMethods_keys = { "Items" = true, "CachedMethods" = true, "Quantity" = true, nil }

function M.AssertAllowedMethods(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllowedMethods to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then M.AssertMethodsList(struct["Items"]) end
	if struct["CachedMethods"] then M.AssertCachedMethods(struct["CachedMethods"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(AllowedMethods_keys[k], "AllowedMethods contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllowedMethods
-- &lt;p&gt;A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;CloudFront forwards only &lt;code&gt;GET&lt;/code&gt; and &lt;code&gt;HEAD&lt;/code&gt; requests.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;CloudFront forwards only &lt;code&gt;GET&lt;/code&gt;, &lt;code&gt;HEAD&lt;/code&gt;, and &lt;code&gt;OPTIONS&lt;/code&gt; requests.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;CloudFront forwards &lt;code&gt;GET, HEAD, OPTIONS, PUT, PATCH, POST&lt;/code&gt;, and &lt;code&gt;DELETE&lt;/code&gt; requests.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.&lt;/p&gt;
-- @param Items [MethodsList] &lt;p&gt;A complex type that contains the HTTP methods that you want CloudFront to process and forward to your origin.&lt;/p&gt;
-- @param CachedMethods [CachedMethods] &lt;p&gt;A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;CloudFront forwards only &lt;code&gt;GET&lt;/code&gt; and &lt;code&gt;HEAD&lt;/code&gt; requests.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;CloudFront forwards only &lt;code&gt;GET&lt;/code&gt;, &lt;code&gt;HEAD&lt;/code&gt;, and &lt;code&gt;OPTIONS&lt;/code&gt; requests.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;CloudFront forwards &lt;code&gt;GET, HEAD, OPTIONS, PUT, PATCH, POST&lt;/code&gt;, and &lt;code&gt;DELETE&lt;/code&gt; requests.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of HTTP methods that you want CloudFront to forward to your origin. Valid values are 2 (for &lt;code&gt;GET&lt;/code&gt; and &lt;code&gt;HEAD&lt;/code&gt; requests), 3 (for &lt;code&gt;GET&lt;/code&gt;, &lt;code&gt;HEAD&lt;/code&gt;, and &lt;code&gt;OPTIONS&lt;/code&gt; requests) and 7 (for &lt;code&gt;GET, HEAD, OPTIONS, PUT, PATCH, POST&lt;/code&gt;, and &lt;code&gt;DELETE&lt;/code&gt; requests).&lt;/p&gt;
-- Required parameter: Quantity
-- Required parameter: Items
function M.AllowedMethods(Items, CachedMethods, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllowedMethods")
	local t = { 
		["Items"] = Items,
		["CachedMethods"] = CachedMethods,
		["Quantity"] = Quantity,
	}
	M.AssertAllowedMethods(t)
	return t
end

local ListInvalidationsResult_keys = { "InvalidationList" = true, nil }

function M.AssertListInvalidationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInvalidationsResult to be of type 'table'")
	if struct["InvalidationList"] then M.AssertInvalidationList(struct["InvalidationList"]) end
	for k,_ in pairs(struct) do
		assert(ListInvalidationsResult_keys[k], "ListInvalidationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInvalidationsResult
-- &lt;p&gt;The returned result of the corresponding request. &lt;/p&gt;
-- @param InvalidationList [InvalidationList] &lt;p&gt;Information about invalidation batches. &lt;/p&gt;
function M.ListInvalidationsResult(InvalidationList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInvalidationsResult")
	local t = { 
		["InvalidationList"] = InvalidationList,
	}
	M.AssertListInvalidationsResult(t)
	return t
end

local InvalidOrigin_keys = { "Message" = true, nil }

function M.AssertInvalidOrigin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOrigin to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidOrigin_keys[k], "InvalidOrigin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOrigin
-- &lt;p&gt;The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.&lt;/p&gt;
function M.InvalidOrigin(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOrigin")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidOrigin(t)
	return t
end

local TooManyInvalidationsInProgress_keys = { "Message" = true, nil }

function M.AssertTooManyInvalidationsInProgress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyInvalidationsInProgress to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyInvalidationsInProgress_keys[k], "TooManyInvalidationsInProgress contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyInvalidationsInProgress
-- &lt;p&gt;You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.&lt;/p&gt;
function M.TooManyInvalidationsInProgress(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyInvalidationsInProgress")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyInvalidationsInProgress(t)
	return t
end

local NoSuchStreamingDistribution_keys = { "Message" = true, nil }

function M.AssertNoSuchStreamingDistribution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchStreamingDistribution to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchStreamingDistribution_keys[k], "NoSuchStreamingDistribution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchStreamingDistribution
-- &lt;p&gt;The specified streaming distribution does not exist.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The specified streaming distribution does not exist.&lt;/p&gt;
function M.NoSuchStreamingDistribution(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchStreamingDistribution")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNoSuchStreamingDistribution(t)
	return t
end

local UpdateDistributionRequest_keys = { "Id" = true, "DistributionConfig" = true, "IfMatch" = true, nil }

function M.AssertUpdateDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDistributionRequest to be of type 'table'")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["DistributionConfig"] then M.AssertDistributionConfig(struct["DistributionConfig"]) end
	if struct["IfMatch"] then M.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDistributionRequest_keys[k], "UpdateDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDistributionRequest
-- &lt;p&gt;The request to update a distribution.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The distribution's id.&lt;/p&gt;
-- @param DistributionConfig [DistributionConfig] &lt;p&gt;The distribution's configuration information.&lt;/p&gt;
-- @param IfMatch [string] &lt;p&gt;The value of the &lt;code&gt;ETag&lt;/code&gt; header that you received when retrieving the distribution's configuration. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: DistributionConfig
-- Required parameter: Id
function M.UpdateDistributionRequest(Id, DistributionConfig, IfMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDistributionRequest")
	local t = { 
		["Id"] = Id,
		["DistributionConfig"] = DistributionConfig,
		["IfMatch"] = IfMatch,
	}
	M.AssertUpdateDistributionRequest(t)
	return t
end

local ViewerCertificate_keys = { "Certificate" = true, "CloudFrontDefaultCertificate" = true, "ACMCertificateArn" = true, "SSLSupportMethod" = true, "IAMCertificateId" = true, "CertificateSource" = true, "MinimumProtocolVersion" = true, nil }

function M.AssertViewerCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ViewerCertificate to be of type 'table'")
	if struct["Certificate"] then M.Assertstring(struct["Certificate"]) end
	if struct["CloudFrontDefaultCertificate"] then M.Assertboolean(struct["CloudFrontDefaultCertificate"]) end
	if struct["ACMCertificateArn"] then M.Assertstring(struct["ACMCertificateArn"]) end
	if struct["SSLSupportMethod"] then M.AssertSSLSupportMethod(struct["SSLSupportMethod"]) end
	if struct["IAMCertificateId"] then M.Assertstring(struct["IAMCertificateId"]) end
	if struct["CertificateSource"] then M.AssertCertificateSource(struct["CertificateSource"]) end
	if struct["MinimumProtocolVersion"] then M.AssertMinimumProtocolVersion(struct["MinimumProtocolVersion"]) end
	for k,_ in pairs(struct) do
		assert(ViewerCertificate_keys[k], "ViewerCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ViewerCertificate
-- &lt;p&gt;A complex type that specifies the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Which SSL/TLS certificate to use when viewers request objects using HTTPS&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Whether you want CloudFront to use dedicated IP addresses or SNI when you're using alternate domain names in your object names&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The minimum protocol version that you want CloudFront to use when communicating with viewers&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html&quot;&gt;Using an HTTPS Connection to Access Your Objects&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Certificate [string] &lt;p&gt;Include one of these values to specify the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Whether you want viewers to use HTTP or HTTPS to request your objects.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you want viewers to use HTTPS, whether you're using an alternate domain name such as example.com or the CloudFront domain name for your distribution, such as &lt;code&gt;d111111abcdef8.cloudfront.net&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you're using an alternate domain name, whether AWS Certificate Manager (ACM) provided the certificate, or you purchased a certificate from a third-party certificate authority and imported it into ACM or uploaded it to the IAM certificate store.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;You must specify one (and only one) of the three values. Do not specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;CloudFrontDefaultCertificate&lt;/code&gt;.&lt;/p&gt; &lt;p&gt; &lt;b&gt;If you want viewers to use HTTP to request your objects&lt;/b&gt;: Specify the following value:&lt;/p&gt; &lt;p&gt; &lt;code&gt;&amp;lt;CloudFrontDefaultCertificate&amp;gt;true&amp;lt;CloudFrontDefaultCertificate&amp;gt;&lt;/code&gt; &lt;/p&gt; &lt;p&gt;In addition, specify &lt;code&gt;allow-all&lt;/code&gt; for &lt;code&gt;ViewerProtocolPolicy&lt;/code&gt; for all of your cache behaviors.&lt;/p&gt; &lt;p&gt; &lt;b&gt;If you want viewers to use HTTPS to request your objects&lt;/b&gt;: Choose the type of certificate that you want to use based on whether you're using an alternate domain name for your objects or the CloudFront domain name:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;If you're using an alternate domain name, such as example.com&lt;/b&gt;: Specify one of the following values, depending on whether ACM provided your certificate or you purchased your certificate from third-party certificate authority:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;&amp;lt;ACMCertificateArn&amp;gt;ARN for ACM SSL/TLS certificate&amp;lt;ACMCertificateArn&amp;gt;&lt;/code&gt; where ARN for ACM SSL/TLS certificate is the ARN for the ACM SSL/TLS certificate that you want to use for this distribution.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;&amp;lt;IAMCertificateId&amp;gt;IAM certificate ID&amp;lt;IAMCertificateId&amp;gt;&lt;/code&gt; where IAM certificate ID is the ID that IAM returned when you added the certificate to the IAM certificate store.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you specify &lt;code&gt;ACMCertificateArn&lt;/code&gt; or &lt;code&gt;IAMCertificateId&lt;/code&gt;, you must also specify a value for &lt;code&gt;SSLSupportMethod&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you choose to use an ACM certificate or a certificate in the IAM certificate store, we recommend that you use only an alternate domain name in your object URLs (&lt;code&gt;https://example.com/logo.jpg&lt;/code&gt;). If you use the domain name that is associated with your CloudFront distribution (&lt;code&gt;https://d111111abcdef8.cloudfront.net/logo.jpg&lt;/code&gt;) and the viewer supports &lt;code&gt;SNI&lt;/code&gt;, then CloudFront behaves normally. However, if the browser does not support SNI, the user's experience depends on the value that you choose for &lt;code&gt;SSLSupportMethod&lt;/code&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;vip&lt;/code&gt;: The viewer displays a warning because there is a mismatch between the CloudFront domain name and the domain name in your SSL/TLS certificate.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sni-only&lt;/code&gt;: CloudFront drops the connection with the browser without returning the object.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;If you're using the CloudFront domain name for your distribution, such as &lt;code&gt;d111111abcdef8.cloudfront.net&lt;/code&gt; &lt;/b&gt;: Specify the following value:&lt;/p&gt; &lt;p&gt; &lt;code&gt; &amp;lt;CloudFrontDefaultCertificate&amp;gt;true&amp;lt;CloudFrontDefaultCertificate&amp;gt; &lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you want viewers to use HTTPS, you must also specify one of the following values in your cache behaviors:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt; &amp;lt;ViewerProtocolPolicy&amp;gt;https-only&amp;lt;ViewerProtocolPolicy&amp;gt; &lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt; &amp;lt;ViewerProtocolPolicy&amp;gt;redirect-to-https&amp;lt;ViewerProtocolPolicy&amp;gt; &lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;You can also optionally require that CloudFront use HTTPS to communicate with your origin by specifying one of the following values for the applicable origins:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt; &amp;lt;OriginProtocolPolicy&amp;gt;https-only&amp;lt;OriginProtocolPolicy&amp;gt; &lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt; &amp;lt;OriginProtocolPolicy&amp;gt;match-viewer&amp;lt;OriginProtocolPolicy&amp;gt; &lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS&quot;&gt;Using Alternate Domain Names and HTTPS&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param CloudFrontDefaultCertificate [boolean] &lt;p&gt;A complex type that specifies the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Which SSL/TLS certificate to use when viewers request objects using HTTPS&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Whether you want CloudFront to use dedicated IP addresses or SNI when you're using alternate domain names in your object names&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The minimum protocol version that you want CloudFront to use when communicating with viewers&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html&quot;&gt;Using an HTTPS Connection to Access Your Objects&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param ACMCertificateArn [string] &lt;p&gt;A complex type that specifies the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Which SSL/TLS certificate to use when viewers request objects using HTTPS&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Whether you want CloudFront to use dedicated IP addresses or SNI when you're using alternate domain names in your object names&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The minimum protocol version that you want CloudFront to use when communicating with viewers&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html&quot;&gt;Using an HTTPS Connection to Access Your Objects&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param SSLSupportMethod [SSLSupportMethod] &lt;p&gt;If you specify a value for &lt;code&gt;ACMCertificateArn&lt;/code&gt; or for &lt;code&gt;IAMCertificateId&lt;/code&gt;, you must also specify how you want CloudFront to serve HTTPS requests: using a method that works for all clients or one that works for most clients:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;vip&lt;/code&gt;: CloudFront uses dedicated IP addresses for your content and can respond to HTTPS requests from any viewer. However, you will incur additional monthly charges.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sni-only&lt;/code&gt;: CloudFront can respond to HTTPS requests from viewers that support Server Name Indication (SNI). All modern browsers support SNI, but some browsers still in use don't support SNI. If some of your users' browsers don't support SNI, we recommend that you do one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Use the &lt;code&gt;vip&lt;/code&gt; option (dedicated IP addresses) instead of &lt;code&gt;sni-only&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Use the CloudFront SSL/TLS certificate instead of a custom certificate. This requires that you use the CloudFront domain name of your distribution in the URLs for your objects, for example, &lt;code&gt;https://d111111abcdef8.cloudfront.net/logo.png&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you can control which browser your users use, upgrade the browser to one that supports SNI.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Use HTTP instead of HTTPS.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Do not specify a value for &lt;code&gt;SSLSupportMethod&lt;/code&gt; if you specified &lt;code&gt;&amp;lt;CloudFrontDefaultCertificate&amp;gt;true&amp;lt;CloudFrontDefaultCertificate&amp;gt;&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS.html&quot;&gt;Using Alternate Domain Names and HTTPS&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param IAMCertificateId [string] &lt;p&gt;A complex type that specifies the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Which SSL/TLS certificate to use when viewers request objects using HTTPS&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Whether you want CloudFront to use dedicated IP addresses or SNI when you're using alternate domain names in your object names&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The minimum protocol version that you want CloudFront to use when communicating with viewers&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html&quot;&gt;Using an HTTPS Connection to Access Your Objects&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param CertificateSource [CertificateSource] &lt;note&gt; &lt;p&gt;This field is deprecated. You can use one of the following: &lt;code&gt;[ACMCertificateArn&lt;/code&gt;, &lt;code&gt;IAMCertificateId&lt;/code&gt;, or &lt;code&gt;CloudFrontDefaultCertificate]&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param MinimumProtocolVersion [MinimumProtocolVersion] &lt;p&gt;Specify the minimum version of the SSL/TLS protocol that you want CloudFront to use for HTTPS connections between viewers and CloudFront: &lt;code&gt;SSLv3&lt;/code&gt; or &lt;code&gt;TLSv1&lt;/code&gt;. CloudFront serves your objects only to viewers that support SSL/TLS version that you specify and later versions. The &lt;code&gt;TLSv1&lt;/code&gt; protocol is more secure, so we recommend that you specify &lt;code&gt;SSLv3&lt;/code&gt; only if your users are using browsers or devices that don't support &lt;code&gt;TLSv1&lt;/code&gt;. Note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If you specify &amp;lt;CloudFrontDefaultCertificate&amp;gt;true&amp;lt;CloudFrontDefaultCertificate&amp;gt;, the minimum SSL protocol version is &lt;code&gt;TLSv1&lt;/code&gt; and can't be changed.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you're using a custom certificate (if you specify a value for &lt;code&gt;ACMCertificateArn&lt;/code&gt; or for &lt;code&gt;IAMCertificateId&lt;/code&gt;) and if you're using SNI (if you specify &lt;code&gt;sni-only&lt;/code&gt; for &lt;code&gt;SSLSupportMethod&lt;/code&gt;), you must specify &lt;code&gt;TLSv1&lt;/code&gt; for &lt;code&gt;MinimumProtocolVersion&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.ViewerCertificate(Certificate, CloudFrontDefaultCertificate, ACMCertificateArn, SSLSupportMethod, IAMCertificateId, CertificateSource, MinimumProtocolVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ViewerCertificate")
	local t = { 
		["Certificate"] = Certificate,
		["CloudFrontDefaultCertificate"] = CloudFrontDefaultCertificate,
		["ACMCertificateArn"] = ACMCertificateArn,
		["SSLSupportMethod"] = SSLSupportMethod,
		["IAMCertificateId"] = IAMCertificateId,
		["CertificateSource"] = CertificateSource,
		["MinimumProtocolVersion"] = MinimumProtocolVersion,
	}
	M.AssertViewerCertificate(t)
	return t
end

local InconsistentQuantities_keys = { "Message" = true, nil }

function M.AssertInconsistentQuantities(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InconsistentQuantities to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InconsistentQuantities_keys[k], "InconsistentQuantities contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InconsistentQuantities
-- &lt;p&gt;The value of &lt;code&gt;Quantity&lt;/code&gt; and the size of &lt;code&gt;Items&lt;/code&gt; do not match.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The value of &lt;code&gt;Quantity&lt;/code&gt; and the size of &lt;code&gt;Items&lt;/code&gt; do not match.&lt;/p&gt;
function M.InconsistentQuantities(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InconsistentQuantities")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInconsistentQuantities(t)
	return t
end

local StreamingDistribution_keys = { "Status" = true, "DomainName" = true, "StreamingDistributionConfig" = true, "ActiveTrustedSigners" = true, "LastModifiedTime" = true, "Id" = true, "ARN" = true, nil }

function M.AssertStreamingDistribution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistribution to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ActiveTrustedSigners"], "Expected key ActiveTrustedSigners to exist in table")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	if struct["Status"] then M.Assertstring(struct["Status"]) end
	if struct["DomainName"] then M.Assertstring(struct["DomainName"]) end
	if struct["StreamingDistributionConfig"] then M.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	if struct["ActiveTrustedSigners"] then M.AssertActiveTrustedSigners(struct["ActiveTrustedSigners"]) end
	if struct["LastModifiedTime"] then M.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["ARN"] then M.Assertstring(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(StreamingDistribution_keys[k], "StreamingDistribution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistribution
-- &lt;p&gt;A streaming distribution. &lt;/p&gt;
-- @param Status [string] &lt;p&gt;The current status of the RTMP distribution. When the status is &lt;code&gt;Deployed&lt;/code&gt;, the distribution's information is propagated to all CloudFront edge locations.&lt;/p&gt;
-- @param DomainName [string] &lt;p&gt;The domain name that corresponds to the streaming distribution. For example: &lt;code&gt;s5c39gqb8ow64r.cloudfront.net&lt;/code&gt;. &lt;/p&gt;
-- @param StreamingDistributionConfig [StreamingDistributionConfig] &lt;p&gt;The current configuration information for the RTMP distribution.&lt;/p&gt;
-- @param ActiveTrustedSigners [ActiveTrustedSigners] &lt;p&gt;A complex type that lists the AWS accounts, if any, that you included in the &lt;code&gt;TrustedSigners&lt;/code&gt; complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.&lt;/p&gt; &lt;p&gt;The &lt;code&gt;Signer&lt;/code&gt; complex type lists the AWS account number of the trusted signer or &lt;code&gt;self&lt;/code&gt; if the signer is the AWS account that created the distribution. The &lt;code&gt;Signer&lt;/code&gt; element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no &lt;code&gt;KeyPairId&lt;/code&gt; element appears for a &lt;code&gt;Signer&lt;/code&gt;, that signer can't create signed URLs.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html&quot;&gt;Serving Private Content through CloudFront&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;. &lt;/p&gt;
-- @param LastModifiedTime [timestamp] &lt;p&gt;The date and time that the distribution was last modified. &lt;/p&gt;
-- @param Id [string] &lt;p&gt;The identifier for the RTMP distribution. For example: &lt;code&gt;EGTXBD79EXAMPLE&lt;/code&gt;.&lt;/p&gt;
-- @param ARN [string] &lt;p&gt;A streaming distribution. &lt;/p&gt;
-- Required parameter: Id
-- Required parameter: ARN
-- Required parameter: Status
-- Required parameter: DomainName
-- Required parameter: ActiveTrustedSigners
-- Required parameter: StreamingDistributionConfig
function M.StreamingDistribution(Status, DomainName, StreamingDistributionConfig, ActiveTrustedSigners, LastModifiedTime, Id, ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistribution")
	local t = { 
		["Status"] = Status,
		["DomainName"] = DomainName,
		["StreamingDistributionConfig"] = StreamingDistributionConfig,
		["ActiveTrustedSigners"] = ActiveTrustedSigners,
		["LastModifiedTime"] = LastModifiedTime,
		["Id"] = Id,
		["ARN"] = ARN,
	}
	M.AssertStreamingDistribution(t)
	return t
end

local InvalidProtocolSettings_keys = { "Message" = true, nil }

function M.AssertInvalidProtocolSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidProtocolSettings to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidProtocolSettings_keys[k], "InvalidProtocolSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidProtocolSettings
-- &lt;p&gt;You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support Server Name Indication (SNI).&lt;/p&gt;
-- @param Message [string] &lt;p&gt;You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support Server Name Indication (SNI).&lt;/p&gt;
function M.InvalidProtocolSettings(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidProtocolSettings")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidProtocolSettings(t)
	return t
end

local NoSuchOrigin_keys = { "Message" = true, nil }

function M.AssertNoSuchOrigin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchOrigin to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchOrigin_keys[k], "NoSuchOrigin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchOrigin
-- &lt;p&gt;No origin exists with the specified &lt;code&gt;Origin Id&lt;/code&gt;. &lt;/p&gt;
-- @param Message [string] &lt;p&gt;No origin exists with the specified &lt;code&gt;Origin Id&lt;/code&gt;. &lt;/p&gt;
function M.NoSuchOrigin(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchOrigin")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNoSuchOrigin(t)
	return t
end

local ListCloudFrontOriginAccessIdentitiesRequest_keys = { "Marker" = true, "MaxItems" = true, nil }

function M.AssertListCloudFrontOriginAccessIdentitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCloudFrontOriginAccessIdentitiesRequest to be of type 'table'")
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then M.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListCloudFrontOriginAccessIdentitiesRequest_keys[k], "ListCloudFrontOriginAccessIdentitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCloudFrontOriginAccessIdentitiesRequest
-- &lt;p&gt;The request to list origin access identities. &lt;/p&gt;
-- @param Marker [string] &lt;p&gt;Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the &lt;code&gt;Marker&lt;/code&gt; to the value of the &lt;code&gt;NextMarker&lt;/code&gt; from the current page's response (which is also the ID of the last identity on that page).&lt;/p&gt;
-- @param MaxItems [string] &lt;p&gt;The maximum number of origin access identities you want in the response body. &lt;/p&gt;
function M.ListCloudFrontOriginAccessIdentitiesRequest(Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCloudFrontOriginAccessIdentitiesRequest")
	local t = { 
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListCloudFrontOriginAccessIdentitiesRequest(t)
	return t
end

local GetStreamingDistributionConfigResult_keys = { "ETag" = true, "StreamingDistributionConfig" = true, nil }

function M.AssertGetStreamingDistributionConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionConfigResult to be of type 'table'")
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	if struct["StreamingDistributionConfig"] then M.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(GetStreamingDistributionConfigResult_keys[k], "GetStreamingDistributionConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionConfigResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the configuration. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;. &lt;/p&gt;
-- @param StreamingDistributionConfig [StreamingDistributionConfig] &lt;p&gt;The streaming distribution's configuration information.&lt;/p&gt;
function M.GetStreamingDistributionConfigResult(ETag, StreamingDistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStreamingDistributionConfigResult")
	local t = { 
		["ETag"] = ETag,
		["StreamingDistributionConfig"] = StreamingDistributionConfig,
	}
	M.AssertGetStreamingDistributionConfigResult(t)
	return t
end

local DistributionAlreadyExists_keys = { "Message" = true, nil }

function M.AssertDistributionAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionAlreadyExists to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DistributionAlreadyExists_keys[k], "DistributionAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionAlreadyExists
-- &lt;p&gt;The caller reference you attempted to create the distribution with is associated with another distribution.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The caller reference you attempted to create the distribution with is associated with another distribution.&lt;/p&gt;
function M.DistributionAlreadyExists(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionAlreadyExists")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDistributionAlreadyExists(t)
	return t
end

local CreateDistributionResult_keys = { "Distribution" = true, "ETag" = true, "Location" = true, nil }

function M.AssertCreateDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionResult to be of type 'table'")
	if struct["Distribution"] then M.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	if struct["Location"] then M.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(CreateDistributionResult_keys[k], "CreateDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param Distribution [Distribution] &lt;p&gt;The distribution's information.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the distribution created.&lt;/p&gt;
-- @param Location [string] &lt;p&gt;The fully qualified URI of the new distribution resource just created. For example: &lt;code&gt;https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5&lt;/code&gt;.&lt;/p&gt;
function M.CreateDistributionResult(Distribution, ETag, Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDistributionResult")
	local t = { 
		["Distribution"] = Distribution,
		["ETag"] = ETag,
		["Location"] = Location,
	}
	M.AssertCreateDistributionResult(t)
	return t
end

local InvalidOriginReadTimeout_keys = { "Message" = true, nil }

function M.AssertInvalidOriginReadTimeout(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOriginReadTimeout to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidOriginReadTimeout_keys[k], "InvalidOriginReadTimeout contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOriginReadTimeout
--  
-- @param Message [string]  
function M.InvalidOriginReadTimeout(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOriginReadTimeout")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidOriginReadTimeout(t)
	return t
end

local InvalidationSummary_keys = { "Status" = true, "Id" = true, "CreateTime" = true, nil }

function M.AssertInvalidationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidationSummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["CreateTime"], "Expected key CreateTime to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.Assertstring(struct["Status"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["CreateTime"] then M.Asserttimestamp(struct["CreateTime"]) end
	for k,_ in pairs(struct) do
		assert(InvalidationSummary_keys[k], "InvalidationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidationSummary
-- &lt;p&gt;A summary of an invalidation request.&lt;/p&gt;
-- @param Status [string] &lt;p&gt;The status of an invalidation request.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The unique ID for an invalidation request.&lt;/p&gt;
-- @param CreateTime [timestamp] &lt;p&gt;A summary of an invalidation request.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: CreateTime
-- Required parameter: Status
function M.InvalidationSummary(Status, Id, CreateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidationSummary")
	local t = { 
		["Status"] = Status,
		["Id"] = Id,
		["CreateTime"] = CreateTime,
	}
	M.AssertInvalidationSummary(t)
	return t
end

local InvalidResponseCode_keys = { "Message" = true, nil }

function M.AssertInvalidResponseCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResponseCode to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidResponseCode_keys[k], "InvalidResponseCode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResponseCode
--  
-- @param Message [string]  
function M.InvalidResponseCode(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResponseCode")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidResponseCode(t)
	return t
end

local DistributionList_keys = { "Items" = true, "NextMarker" = true, "MaxItems" = true, "Marker" = true, "IsTruncated" = true, "Quantity" = true, nil }

function M.AssertDistributionList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertDistributionSummaryList(struct["Items"]) end
	if struct["NextMarker"] then M.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then M.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then M.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(DistributionList_keys[k], "DistributionList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionList
-- &lt;p&gt;A distribution list.&lt;/p&gt;
-- @param Items [DistributionSummaryList] &lt;p&gt;A complex type that contains one &lt;code&gt;DistributionSummary&lt;/code&gt; element for each distribution that was created by the current AWS account.&lt;/p&gt;
-- @param NextMarker [string] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value you can use for the &lt;code&gt;Marker&lt;/code&gt; request parameter to continue listing your distributions where they left off. &lt;/p&gt;
-- @param MaxItems [integer] &lt;p&gt;The value you provided for the &lt;code&gt;MaxItems&lt;/code&gt; request parameter.&lt;/p&gt;
-- @param Marker [string] &lt;p&gt;The value you provided for the &lt;code&gt;Marker&lt;/code&gt; request parameter.&lt;/p&gt;
-- @param IsTruncated [boolean] &lt;p&gt;A flag that indicates whether more distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more distributions in the list.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of distributions that were created by the current AWS account. &lt;/p&gt;
-- Required parameter: Marker
-- Required parameter: MaxItems
-- Required parameter: IsTruncated
-- Required parameter: Quantity
function M.DistributionList(Items, NextMarker, MaxItems, Marker, IsTruncated, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionList")
	local t = { 
		["Items"] = Items,
		["NextMarker"] = NextMarker,
		["MaxItems"] = MaxItems,
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["Quantity"] = Quantity,
	}
	M.AssertDistributionList(t)
	return t
end

local StreamingDistributionSummary_keys = { "Status" = true, "S3Origin" = true, "DomainName" = true, "Enabled" = true, "PriceClass" = true, "TrustedSigners" = true, "Comment" = true, "LastModifiedTime" = true, "Id" = true, "ARN" = true, "Aliases" = true, nil }

function M.AssertStreamingDistributionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionSummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["S3Origin"], "Expected key S3Origin to exist in table")
	assert(struct["Aliases"], "Expected key Aliases to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	assert(struct["PriceClass"], "Expected key PriceClass to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Status"] then M.Assertstring(struct["Status"]) end
	if struct["S3Origin"] then M.AssertS3Origin(struct["S3Origin"]) end
	if struct["DomainName"] then M.Assertstring(struct["DomainName"]) end
	if struct["Enabled"] then M.Assertboolean(struct["Enabled"]) end
	if struct["PriceClass"] then M.AssertPriceClass(struct["PriceClass"]) end
	if struct["TrustedSigners"] then M.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["Comment"] then M.Assertstring(struct["Comment"]) end
	if struct["LastModifiedTime"] then M.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["ARN"] then M.Assertstring(struct["ARN"]) end
	if struct["Aliases"] then M.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(StreamingDistributionSummary_keys[k], "StreamingDistributionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionSummary
-- &lt;p&gt; A summary of the information for an Amazon CloudFront streaming distribution.&lt;/p&gt;
-- @param Status [string] &lt;p&gt; Indicates the current status of the distribution. When the status is &lt;code&gt;Deployed&lt;/code&gt;, the distribution's information is fully propagated throughout the Amazon CloudFront system.&lt;/p&gt;
-- @param S3Origin [S3Origin] &lt;p&gt;A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.&lt;/p&gt;
-- @param DomainName [string] &lt;p&gt;The domain name corresponding to the distribution. For example: &lt;code&gt;d604721fxaaqy9.cloudfront.net&lt;/code&gt;.&lt;/p&gt;
-- @param Enabled [boolean] &lt;p&gt;Whether the distribution is enabled to accept end user requests for content.&lt;/p&gt;
-- @param PriceClass [PriceClass] &lt;p&gt; A summary of the information for an Amazon CloudFront streaming distribution.&lt;/p&gt;
-- @param TrustedSigners [TrustedSigners] &lt;p&gt;A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content. If you want to require signed URLs in requests for objects in the target origin that match the &lt;code&gt;PathPattern&lt;/code&gt; for this cache behavior, specify &lt;code&gt;true&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt;, and specify the applicable values for &lt;code&gt;Quantity&lt;/code&gt; and &lt;code&gt;Items&lt;/code&gt;.If you don't want to require signed URLs in requests for objects that match &lt;code&gt;PathPattern&lt;/code&gt;, specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt; and &lt;code&gt;0&lt;/code&gt; for &lt;code&gt;Quantity&lt;/code&gt;. Omit &lt;code&gt;Items&lt;/code&gt;. To add, change, or remove one or more trusted signers, change &lt;code&gt;Enabled&lt;/code&gt; to &lt;code&gt;true&lt;/code&gt; (if it's currently &lt;code&gt;false&lt;/code&gt;), change &lt;code&gt;Quantity&lt;/code&gt; as applicable, and specify all of the trusted signers that you want to include in the updated distribution.&lt;/p&gt;
-- @param Comment [string] &lt;p&gt;The comment originally specified when this distribution was created.&lt;/p&gt;
-- @param LastModifiedTime [timestamp] &lt;p&gt;The date and time the distribution was last modified.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The identifier for the distribution. For example: &lt;code&gt;EDFDVBD632BHDS5&lt;/code&gt;.&lt;/p&gt;
-- @param ARN [string] &lt;p&gt; The ARN (Amazon Resource Name) for the streaming distribution. For example: &lt;code&gt;arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5&lt;/code&gt;, where &lt;code&gt;123456789012&lt;/code&gt; is your AWS account ID.&lt;/p&gt;
-- @param Aliases [Aliases] &lt;p&gt;A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: ARN
-- Required parameter: Status
-- Required parameter: LastModifiedTime
-- Required parameter: DomainName
-- Required parameter: S3Origin
-- Required parameter: Aliases
-- Required parameter: TrustedSigners
-- Required parameter: Comment
-- Required parameter: PriceClass
-- Required parameter: Enabled
function M.StreamingDistributionSummary(Status, S3Origin, DomainName, Enabled, PriceClass, TrustedSigners, Comment, LastModifiedTime, Id, ARN, Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionSummary")
	local t = { 
		["Status"] = Status,
		["S3Origin"] = S3Origin,
		["DomainName"] = DomainName,
		["Enabled"] = Enabled,
		["PriceClass"] = PriceClass,
		["TrustedSigners"] = TrustedSigners,
		["Comment"] = Comment,
		["LastModifiedTime"] = LastModifiedTime,
		["Id"] = Id,
		["ARN"] = ARN,
		["Aliases"] = Aliases,
	}
	M.AssertStreamingDistributionSummary(t)
	return t
end

local GetDistributionConfigRequest_keys = { "Id" = true, nil }

function M.AssertGetDistributionConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetDistributionConfigRequest_keys[k], "GetDistributionConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionConfigRequest
-- &lt;p&gt;The request to get a distribution configuration.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The distribution's ID.&lt;/p&gt;
-- Required parameter: Id
function M.GetDistributionConfigRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDistributionConfigRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetDistributionConfigRequest(t)
	return t
end

local TooManyCertificates_keys = { "Message" = true, nil }

function M.AssertTooManyCertificates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyCertificates to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyCertificates_keys[k], "TooManyCertificates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyCertificates
-- &lt;p&gt;You cannot create anymore custom SSL/TLS certificates.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;You cannot create anymore custom SSL/TLS certificates.&lt;/p&gt;
function M.TooManyCertificates(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyCertificates")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyCertificates(t)
	return t
end

local PreconditionFailed_keys = { "Message" = true, nil }

function M.AssertPreconditionFailed(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreconditionFailed to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(PreconditionFailed_keys[k], "PreconditionFailed contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreconditionFailed
-- &lt;p&gt;The precondition given in one or more of the request-header fields evaluated to &lt;code&gt;false&lt;/code&gt;. &lt;/p&gt;
-- @param Message [string] &lt;p&gt;The precondition given in one or more of the request-header fields evaluated to &lt;code&gt;false&lt;/code&gt;. &lt;/p&gt;
function M.PreconditionFailed(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PreconditionFailed")
	local t = { 
		["Message"] = Message,
	}
	M.AssertPreconditionFailed(t)
	return t
end

local Origins_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertOrigins(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Origins to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertOriginList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(Origins_keys[k], "Origins contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Origins
-- &lt;p&gt;A complex type that contains information about origins for this distribution. &lt;/p&gt;
-- @param Items [OriginList] &lt;p&gt;A complex type that contains origins for this distribution.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of origins for this distribution.&lt;/p&gt;
-- Required parameter: Quantity
function M.Origins(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Origins")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertOrigins(t)
	return t
end

local GetInvalidationResult_keys = { "Invalidation" = true, nil }

function M.AssertGetInvalidationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInvalidationResult to be of type 'table'")
	if struct["Invalidation"] then M.AssertInvalidation(struct["Invalidation"]) end
	for k,_ in pairs(struct) do
		assert(GetInvalidationResult_keys[k], "GetInvalidationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInvalidationResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param Invalidation [Invalidation] &lt;p&gt;The invalidation's information. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html&quot;&gt;Invalidation Complex Type&lt;/a&gt;. &lt;/p&gt;
function M.GetInvalidationResult(Invalidation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInvalidationResult")
	local t = { 
		["Invalidation"] = Invalidation,
	}
	M.AssertGetInvalidationResult(t)
	return t
end

local TooManyStreamingDistributions_keys = { "Message" = true, nil }

function M.AssertTooManyStreamingDistributions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyStreamingDistributions to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyStreamingDistributions_keys[k], "TooManyStreamingDistributions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyStreamingDistributions
-- &lt;p&gt;Processing your request would cause you to exceed the maximum number of streaming distributions allowed.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;Processing your request would cause you to exceed the maximum number of streaming distributions allowed.&lt;/p&gt;
function M.TooManyStreamingDistributions(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyStreamingDistributions")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyStreamingDistributions(t)
	return t
end

local CookieNames_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertCookieNames(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CookieNames to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertCookieNameList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(CookieNames_keys[k], "CookieNames contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CookieNames
-- &lt;p&gt;A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html&quot;&gt;How CloudFront Forwards, Caches, and Logs Cookies&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Items [CookieNameList] &lt;p&gt;A complex type that contains one &lt;code&gt;Name&lt;/code&gt; element for each cookie that you want CloudFront to forward to the origin for this cache behavior.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of different cookies that you want CloudFront to forward to the origin for this cache behavior.&lt;/p&gt;
-- Required parameter: Quantity
function M.CookieNames(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CookieNames")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertCookieNames(t)
	return t
end

local ListDistributionsByWebACLIdResult_keys = { "DistributionList" = true, nil }

function M.AssertListDistributionsByWebACLIdResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsByWebACLIdResult to be of type 'table'")
	if struct["DistributionList"] then M.AssertDistributionList(struct["DistributionList"]) end
	for k,_ in pairs(struct) do
		assert(ListDistributionsByWebACLIdResult_keys[k], "ListDistributionsByWebACLIdResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsByWebACLIdResult
-- &lt;p&gt;The response to a request to list the distributions that are associated with a specified AWS WAF web ACL. &lt;/p&gt;
-- @param DistributionList [DistributionList] &lt;p&gt;The &lt;code&gt;DistributionList&lt;/code&gt; type. &lt;/p&gt;
function M.ListDistributionsByWebACLIdResult(DistributionList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDistributionsByWebACLIdResult")
	local t = { 
		["DistributionList"] = DistributionList,
	}
	M.AssertListDistributionsByWebACLIdResult(t)
	return t
end

local Signer_keys = { "KeyPairIds" = true, "AwsAccountNumber" = true, nil }

function M.AssertSigner(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Signer to be of type 'table'")
	if struct["KeyPairIds"] then M.AssertKeyPairIds(struct["KeyPairIds"]) end
	if struct["AwsAccountNumber"] then M.Assertstring(struct["AwsAccountNumber"]) end
	for k,_ in pairs(struct) do
		assert(Signer_keys[k], "Signer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Signer
-- &lt;p&gt;A complex type that lists the AWS accounts that were included in the &lt;code&gt;TrustedSigners&lt;/code&gt; complex type, as well as their active CloudFront key pair IDs, if any. &lt;/p&gt;
-- @param KeyPairIds [KeyPairIds] &lt;p&gt;A complex type that lists the active CloudFront key pairs, if any, that are associated with &lt;code&gt;AwsAccountNumber&lt;/code&gt;.&lt;/p&gt;
-- @param AwsAccountNumber [string] &lt;p&gt;An AWS account that is included in the &lt;code&gt;TrustedSigners&lt;/code&gt; complex type for this RTMP distribution. Valid values include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;self&lt;/code&gt;, which is the AWS account used to create the distribution.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;An AWS account number.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.Signer(KeyPairIds, AwsAccountNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Signer")
	local t = { 
		["KeyPairIds"] = KeyPairIds,
		["AwsAccountNumber"] = AwsAccountNumber,
	}
	M.AssertSigner(t)
	return t
end

local Distribution_keys = { "Status" = true, "DomainName" = true, "InProgressInvalidationBatches" = true, "DistributionConfig" = true, "ActiveTrustedSigners" = true, "LastModifiedTime" = true, "Id" = true, "ARN" = true, nil }

function M.AssertDistribution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Distribution to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	assert(struct["InProgressInvalidationBatches"], "Expected key InProgressInvalidationBatches to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ActiveTrustedSigners"], "Expected key ActiveTrustedSigners to exist in table")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	if struct["Status"] then M.Assertstring(struct["Status"]) end
	if struct["DomainName"] then M.Assertstring(struct["DomainName"]) end
	if struct["InProgressInvalidationBatches"] then M.Assertinteger(struct["InProgressInvalidationBatches"]) end
	if struct["DistributionConfig"] then M.AssertDistributionConfig(struct["DistributionConfig"]) end
	if struct["ActiveTrustedSigners"] then M.AssertActiveTrustedSigners(struct["ActiveTrustedSigners"]) end
	if struct["LastModifiedTime"] then M.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["ARN"] then M.Assertstring(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(Distribution_keys[k], "Distribution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Distribution
-- &lt;p&gt;The distribution's information.&lt;/p&gt;
-- @param Status [string] &lt;p&gt;This response element indicates the current status of the distribution. When the status is &lt;code&gt;Deployed&lt;/code&gt;, the distribution's information is fully propagated to all CloudFront edge locations. &lt;/p&gt;
-- @param DomainName [string] &lt;p&gt;The domain name corresponding to the distribution. For example: &lt;code&gt;d604721fxaaqy9.cloudfront.net&lt;/code&gt;. &lt;/p&gt;
-- @param InProgressInvalidationBatches [integer] &lt;p&gt;The number of invalidation batches currently in progress. &lt;/p&gt;
-- @param DistributionConfig [DistributionConfig] &lt;p&gt;The current configuration information for the distribution. Send a &lt;code&gt;GET&lt;/code&gt; request to the &lt;code&gt;/&lt;i&gt;CloudFront API version&lt;/i&gt;/distribution ID/config&lt;/code&gt; resource.&lt;/p&gt;
-- @param ActiveTrustedSigners [ActiveTrustedSigners] &lt;p&gt;CloudFront automatically adds this element to the response only if you've set up the distribution to serve private content with signed URLs. The element lists the key pair IDs that CloudFront is aware of for each trusted signer. The &lt;code&gt;Signer&lt;/code&gt; child element lists the AWS account number of the trusted signer (or an empty &lt;code&gt;Self&lt;/code&gt; element if the signer is you). The &lt;code&gt;Signer&lt;/code&gt; element also includes the IDs of any active key pairs associated with the trusted signer's AWS account. If no &lt;code&gt;KeyPairId&lt;/code&gt; element appears for a &lt;code&gt;Signer&lt;/code&gt;, that signer can't create working signed URLs.&lt;/p&gt;
-- @param LastModifiedTime [timestamp] &lt;p&gt;The date and time the distribution was last modified. &lt;/p&gt;
-- @param Id [string] &lt;p&gt;The identifier for the distribution. For example: &lt;code&gt;EDFDVBD632BHDS5&lt;/code&gt;. &lt;/p&gt;
-- @param ARN [string] &lt;p&gt;The ARN (Amazon Resource Name) for the distribution. For example: &lt;code&gt;arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5&lt;/code&gt;, where &lt;code&gt;123456789012&lt;/code&gt; is your AWS account ID.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: ARN
-- Required parameter: Status
-- Required parameter: LastModifiedTime
-- Required parameter: InProgressInvalidationBatches
-- Required parameter: DomainName
-- Required parameter: ActiveTrustedSigners
-- Required parameter: DistributionConfig
function M.Distribution(Status, DomainName, InProgressInvalidationBatches, DistributionConfig, ActiveTrustedSigners, LastModifiedTime, Id, ARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Distribution")
	local t = { 
		["Status"] = Status,
		["DomainName"] = DomainName,
		["InProgressInvalidationBatches"] = InProgressInvalidationBatches,
		["DistributionConfig"] = DistributionConfig,
		["ActiveTrustedSigners"] = ActiveTrustedSigners,
		["LastModifiedTime"] = LastModifiedTime,
		["Id"] = Id,
		["ARN"] = ARN,
	}
	M.AssertDistribution(t)
	return t
end

local InvalidOriginAccessIdentity_keys = { "Message" = true, nil }

function M.AssertInvalidOriginAccessIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOriginAccessIdentity to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidOriginAccessIdentity_keys[k], "InvalidOriginAccessIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOriginAccessIdentity
-- &lt;p&gt;The origin access identity is not valid or doesn't exist.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The origin access identity is not valid or doesn't exist.&lt;/p&gt;
function M.InvalidOriginAccessIdentity(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOriginAccessIdentity")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidOriginAccessIdentity(t)
	return t
end

local InvalidDefaultRootObject_keys = { "Message" = true, nil }

function M.AssertInvalidDefaultRootObject(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDefaultRootObject to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidDefaultRootObject_keys[k], "InvalidDefaultRootObject contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDefaultRootObject
-- &lt;p&gt;The default root object file name is too big or contains an invalid character.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The default root object file name is too big or contains an invalid character.&lt;/p&gt;
function M.InvalidDefaultRootObject(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDefaultRootObject")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidDefaultRootObject(t)
	return t
end

local CloudFrontOriginAccessIdentityInUse_keys = { "Message" = true, nil }

function M.AssertCloudFrontOriginAccessIdentityInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentityInUse to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(CloudFrontOriginAccessIdentityInUse_keys[k], "CloudFrontOriginAccessIdentityInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentityInUse
--  
-- @param Message [string]  
function M.CloudFrontOriginAccessIdentityInUse(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentityInUse")
	local t = { 
		["Message"] = Message,
	}
	M.AssertCloudFrontOriginAccessIdentityInUse(t)
	return t
end

local TrustedSigners_keys = { "Items" = true, "Enabled" = true, "Quantity" = true, nil }

function M.AssertTrustedSigners(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedSigners to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertAwsAccountNumberList(struct["Items"]) end
	if struct["Enabled"] then M.Assertboolean(struct["Enabled"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(TrustedSigners_keys[k], "TrustedSigners contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedSigners
-- &lt;p&gt;A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.&lt;/p&gt; &lt;p&gt;If you want to require signed URLs in requests for objects in the target origin that match the &lt;code&gt;PathPattern&lt;/code&gt; for this cache behavior, specify &lt;code&gt;true&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt;, and specify the applicable values for &lt;code&gt;Quantity&lt;/code&gt; and &lt;code&gt;Items&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html&quot;&gt;Serving Private Content through CloudFront&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;If you don't want to require signed URLs in requests for objects that match &lt;code&gt;PathPattern&lt;/code&gt;, specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt; and &lt;code&gt;0&lt;/code&gt; for &lt;code&gt;Quantity&lt;/code&gt;. Omit &lt;code&gt;Items&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;To add, change, or remove one or more trusted signers, change &lt;code&gt;Enabled&lt;/code&gt; to &lt;code&gt;true&lt;/code&gt; (if it's currently &lt;code&gt;false&lt;/code&gt;), change &lt;code&gt;Quantity&lt;/code&gt; as applicable, and specify all of the trusted signers that you want to include in the updated distribution.&lt;/p&gt; &lt;p&gt;For more information about updating the distribution configuration, see &lt;a&gt;DistributionConfig&lt;/a&gt; .&lt;/p&gt;
-- @param Items [AwsAccountNumberList] &lt;p&gt; &lt;b&gt;Optional&lt;/b&gt;: A complex type that contains trusted signers for this cache behavior. If &lt;code&gt;Quantity&lt;/code&gt; is &lt;code&gt;0&lt;/code&gt;, you can omit &lt;code&gt;Items&lt;/code&gt;.&lt;/p&gt;
-- @param Enabled [boolean] &lt;p&gt;Specifies whether you want to require viewers to use signed URLs to access the files specified by &lt;code&gt;PathPattern&lt;/code&gt; and &lt;code&gt;TargetOriginId&lt;/code&gt;.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of trusted signers for this cache behavior.&lt;/p&gt;
-- Required parameter: Enabled
-- Required parameter: Quantity
function M.TrustedSigners(Items, Enabled, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedSigners")
	local t = { 
		["Items"] = Items,
		["Enabled"] = Enabled,
		["Quantity"] = Quantity,
	}
	M.AssertTrustedSigners(t)
	return t
end

local TooManyOrigins_keys = { "Message" = true, nil }

function M.AssertTooManyOrigins(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyOrigins to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyOrigins_keys[k], "TooManyOrigins contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyOrigins
-- &lt;p&gt;You cannot create more origins for the distribution.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;You cannot create more origins for the distribution.&lt;/p&gt;
function M.TooManyOrigins(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyOrigins")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyOrigins(t)
	return t
end

local CloudFrontOriginAccessIdentitySummary_keys = { "Comment" = true, "S3CanonicalUserId" = true, "Id" = true, nil }

function M.AssertCloudFrontOriginAccessIdentitySummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentitySummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["S3CanonicalUserId"], "Expected key S3CanonicalUserId to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	if struct["Comment"] then M.Assertstring(struct["Comment"]) end
	if struct["S3CanonicalUserId"] then M.Assertstring(struct["S3CanonicalUserId"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(CloudFrontOriginAccessIdentitySummary_keys[k], "CloudFrontOriginAccessIdentitySummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentitySummary
-- &lt;p&gt;Summary of the information about a CloudFront origin access identity.&lt;/p&gt;
-- @param Comment [string] &lt;p&gt;The comment for this origin access identity, as originally specified when created.&lt;/p&gt;
-- @param S3CanonicalUserId [string] &lt;p&gt;The Amazon S3 canonical user ID for the origin access identity, which you use when giving the origin access identity read permission to an object in Amazon S3.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The ID for the origin access identity. For example: &lt;code&gt;E74FTE3AJFJ256A&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: S3CanonicalUserId
-- Required parameter: Comment
function M.CloudFrontOriginAccessIdentitySummary(Comment, S3CanonicalUserId, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentitySummary")
	local t = { 
		["Comment"] = Comment,
		["S3CanonicalUserId"] = S3CanonicalUserId,
		["Id"] = Id,
	}
	M.AssertCloudFrontOriginAccessIdentitySummary(t)
	return t
end

local CreateDistributionRequest_keys = { "DistributionConfig" = true, nil }

function M.AssertCreateDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionRequest to be of type 'table'")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	if struct["DistributionConfig"] then M.AssertDistributionConfig(struct["DistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(CreateDistributionRequest_keys[k], "CreateDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionRequest
-- &lt;p&gt;The request to create a new distribution.&lt;/p&gt;
-- @param DistributionConfig [DistributionConfig] &lt;p&gt;The distribution's configuration information.&lt;/p&gt;
-- Required parameter: DistributionConfig
function M.CreateDistributionRequest(DistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDistributionRequest")
	local t = { 
		["DistributionConfig"] = DistributionConfig,
	}
	M.AssertCreateDistributionRequest(t)
	return t
end

local UntagResourceRequest_keys = { "TagKeys" = true, "Resource" = true, nil }

function M.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then M.AssertTagKeys(struct["TagKeys"]) end
	if struct["Resource"] then M.AssertResourceARN(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourceRequest_keys[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
-- &lt;p&gt; The request to remove tags from a CloudFront resource.&lt;/p&gt;
-- @param TagKeys [TagKeys] &lt;p&gt; A complex type that contains zero or more &lt;code&gt;Tag&lt;/code&gt; key elements.&lt;/p&gt;
-- @param Resource [ResourceARN] &lt;p&gt; An ARN of a CloudFront resource.&lt;/p&gt;
-- Required parameter: Resource
-- Required parameter: TagKeys
function M.UntagResourceRequest(TagKeys, Resource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["TagKeys"] = TagKeys,
		["Resource"] = Resource,
	}
	M.AssertUntagResourceRequest(t)
	return t
end

local CloudFrontOriginAccessIdentityAlreadyExists_keys = { "Message" = true, nil }

function M.AssertCloudFrontOriginAccessIdentityAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentityAlreadyExists to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(CloudFrontOriginAccessIdentityAlreadyExists_keys[k], "CloudFrontOriginAccessIdentityAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentityAlreadyExists
-- &lt;p&gt;If the &lt;code&gt;CallerReference&lt;/code&gt; is a value you already sent in a previous request to create an identity but the content of the &lt;code&gt;CloudFrontOriginAccessIdentityConfig&lt;/code&gt; is different from the original request, CloudFront returns a &lt;code&gt;CloudFrontOriginAccessIdentityAlreadyExists&lt;/code&gt; error. &lt;/p&gt;
-- @param Message [string] &lt;p&gt;If the &lt;code&gt;CallerReference&lt;/code&gt; is a value you already sent in a previous request to create an identity but the content of the &lt;code&gt;CloudFrontOriginAccessIdentityConfig&lt;/code&gt; is different from the original request, CloudFront returns a &lt;code&gt;CloudFrontOriginAccessIdentityAlreadyExists&lt;/code&gt; error. &lt;/p&gt;
function M.CloudFrontOriginAccessIdentityAlreadyExists(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentityAlreadyExists")
	local t = { 
		["Message"] = Message,
	}
	M.AssertCloudFrontOriginAccessIdentityAlreadyExists(t)
	return t
end

local InvalidTagging_keys = { "Message" = true, nil }

function M.AssertInvalidTagging(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagging to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidTagging_keys[k], "InvalidTagging contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagging
--  
-- @param Message [string]  
function M.InvalidTagging(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagging")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidTagging(t)
	return t
end

local Aliases_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertAliases(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Aliases to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertAliasList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(Aliases_keys[k], "Aliases contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Aliases
-- &lt;p&gt;A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution. &lt;/p&gt;
-- @param Items [AliasList] &lt;p&gt;A complex type that contains the CNAME aliases, if any, that you want to associate with this distribution.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of CNAME aliases, if any, that you want to associate with this distribution.&lt;/p&gt;
-- Required parameter: Quantity
function M.Aliases(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Aliases")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertAliases(t)
	return t
end

local Invalidation_keys = { "Status" = true, "InvalidationBatch" = true, "Id" = true, "CreateTime" = true, nil }

function M.AssertInvalidation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Invalidation to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["CreateTime"], "Expected key CreateTime to exist in table")
	assert(struct["InvalidationBatch"], "Expected key InvalidationBatch to exist in table")
	if struct["Status"] then M.Assertstring(struct["Status"]) end
	if struct["InvalidationBatch"] then M.AssertInvalidationBatch(struct["InvalidationBatch"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["CreateTime"] then M.Asserttimestamp(struct["CreateTime"]) end
	for k,_ in pairs(struct) do
		assert(Invalidation_keys[k], "Invalidation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Invalidation
-- &lt;p&gt;An invalidation. &lt;/p&gt;
-- @param Status [string] &lt;p&gt;The status of the invalidation request. When the invalidation batch is finished, the status is &lt;code&gt;Completed&lt;/code&gt;.&lt;/p&gt;
-- @param InvalidationBatch [InvalidationBatch] &lt;p&gt;The current invalidation information for the batch request. &lt;/p&gt;
-- @param Id [string] &lt;p&gt;The identifier for the invalidation request. For example: &lt;code&gt;IDFDVBD632BHDS5&lt;/code&gt;.&lt;/p&gt;
-- @param CreateTime [timestamp] &lt;p&gt;The date and time the invalidation request was first made. &lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Status
-- Required parameter: CreateTime
-- Required parameter: InvalidationBatch
function M.Invalidation(Status, InvalidationBatch, Id, CreateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Invalidation")
	local t = { 
		["Status"] = Status,
		["InvalidationBatch"] = InvalidationBatch,
		["Id"] = Id,
		["CreateTime"] = CreateTime,
	}
	M.AssertInvalidation(t)
	return t
end

local InvalidHeadersForS3Origin_keys = { "Message" = true, nil }

function M.AssertInvalidHeadersForS3Origin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidHeadersForS3Origin to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidHeadersForS3Origin_keys[k], "InvalidHeadersForS3Origin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidHeadersForS3Origin
--  
-- @param Message [string]  
function M.InvalidHeadersForS3Origin(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidHeadersForS3Origin")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidHeadersForS3Origin(t)
	return t
end

local ListStreamingDistributionsRequest_keys = { "Marker" = true, "MaxItems" = true, nil }

function M.AssertListStreamingDistributionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamingDistributionsRequest to be of type 'table'")
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then M.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListStreamingDistributionsRequest_keys[k], "ListStreamingDistributionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamingDistributionsRequest
-- &lt;p&gt;The request to list your streaming distributions. &lt;/p&gt;
-- @param Marker [string] &lt;p&gt;The value that you provided for the &lt;code&gt;Marker&lt;/code&gt; request parameter.&lt;/p&gt;
-- @param MaxItems [string] &lt;p&gt;The value that you provided for the &lt;code&gt;MaxItems&lt;/code&gt; request parameter.&lt;/p&gt;
function M.ListStreamingDistributionsRequest(Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamingDistributionsRequest")
	local t = { 
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListStreamingDistributionsRequest(t)
	return t
end

local LambdaFunctionAssociations_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertLambdaFunctionAssociations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionAssociations to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertLambdaFunctionAssociationList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionAssociations_keys[k], "LambdaFunctionAssociations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionAssociations
-- &lt;p&gt;A complex type that specifies a list of Lambda functions associations for a cache behavior.&lt;/p&gt; &lt;p&gt;If you want to invoke one or more Lambda functions triggered by requests that match the &lt;code&gt;PathPattern&lt;/code&gt; of the cache behavior, specify the applicable values for &lt;code&gt;Quantity&lt;/code&gt; and &lt;code&gt;Items&lt;/code&gt;. Note that there can be up to 4 &lt;code&gt;LambdaFunctionAssociation&lt;/code&gt; items in this list (one for each possible value of &lt;code&gt;EventType&lt;/code&gt;) and each &lt;code&gt;EventType&lt;/code&gt; can be associated with the Lambda function only once.&lt;/p&gt; &lt;p&gt;If you don't want to invoke any Lambda functions for the requests that match &lt;code&gt;PathPattern&lt;/code&gt;, specify &lt;code&gt;0&lt;/code&gt; for &lt;code&gt;Quantity&lt;/code&gt; and omit &lt;code&gt;Items&lt;/code&gt;. &lt;/p&gt;
-- @param Items [LambdaFunctionAssociationList] &lt;p&gt; &lt;b&gt;Optional&lt;/b&gt;: A complex type that contains &lt;code&gt;LambdaFunctionAssociation&lt;/code&gt; items for this cache behavior. If &lt;code&gt;Quantity&lt;/code&gt; is &lt;code&gt;0&lt;/code&gt;, you can omit &lt;code&gt;Items&lt;/code&gt;.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of Lambda function associations for this cache behavior.&lt;/p&gt;
-- Required parameter: Quantity
function M.LambdaFunctionAssociations(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionAssociations")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertLambdaFunctionAssociations(t)
	return t
end

local NoSuchResource_keys = { "Message" = true, nil }

function M.AssertNoSuchResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchResource to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchResource_keys[k], "NoSuchResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchResource
--  
-- @param Message [string]  
function M.NoSuchResource(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchResource")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNoSuchResource(t)
	return t
end

local ListTagsForResourceRequest_keys = { "Resource" = true, nil }

function M.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	if struct["Resource"] then M.AssertResourceARN(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceRequest_keys[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
-- &lt;p&gt; The request to list tags for a CloudFront resource.&lt;/p&gt;
-- @param Resource [ResourceARN] &lt;p&gt; An ARN of a CloudFront resource.&lt;/p&gt;
-- Required parameter: Resource
function M.ListTagsForResourceRequest(Resource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["Resource"] = Resource,
	}
	M.AssertListTagsForResourceRequest(t)
	return t
end

local CreateInvalidationResult_keys = { "Invalidation" = true, "Location" = true, nil }

function M.AssertCreateInvalidationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInvalidationResult to be of type 'table'")
	if struct["Invalidation"] then M.AssertInvalidation(struct["Invalidation"]) end
	if struct["Location"] then M.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(CreateInvalidationResult_keys[k], "CreateInvalidationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInvalidationResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param Invalidation [Invalidation] &lt;p&gt;The invalidation's information.&lt;/p&gt;
-- @param Location [string] &lt;p&gt;The fully qualified URI of the distribution and invalidation batch request, including the &lt;code&gt;Invalidation ID&lt;/code&gt;.&lt;/p&gt;
function M.CreateInvalidationResult(Invalidation, Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInvalidationResult")
	local t = { 
		["Invalidation"] = Invalidation,
		["Location"] = Location,
	}
	M.AssertCreateInvalidationResult(t)
	return t
end

local CacheBehaviors_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertCacheBehaviors(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheBehaviors to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertCacheBehaviorList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(CacheBehaviors_keys[k], "CacheBehaviors contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheBehaviors
-- &lt;p&gt;A complex type that contains zero or more &lt;code&gt;CacheBehavior&lt;/code&gt; elements. &lt;/p&gt;
-- @param Items [CacheBehaviorList] &lt;p&gt;Optional: A complex type that contains cache behaviors for this distribution. If &lt;code&gt;Quantity&lt;/code&gt; is &lt;code&gt;0&lt;/code&gt;, you can omit &lt;code&gt;Items&lt;/code&gt;.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of cache behaviors for this distribution. &lt;/p&gt;
-- Required parameter: Quantity
function M.CacheBehaviors(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheBehaviors")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertCacheBehaviors(t)
	return t
end

local TagKeys_keys = { "Items" = true, nil }

function M.AssertTagKeys(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagKeys to be of type 'table'")
	if struct["Items"] then M.AssertTagKeyList(struct["Items"]) end
	for k,_ in pairs(struct) do
		assert(TagKeys_keys[k], "TagKeys contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagKeys
-- &lt;p&gt; A complex type that contains zero or more &lt;code&gt;Tag&lt;/code&gt; elements.&lt;/p&gt;
-- @param Items [TagKeyList] &lt;p&gt; A complex type that contains &lt;code&gt;Tag&lt;/code&gt; key elements.&lt;/p&gt;
function M.TagKeys(Items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagKeys")
	local t = { 
		["Items"] = Items,
	}
	M.AssertTagKeys(t)
	return t
end

local OriginCustomHeader_keys = { "HeaderName" = true, "HeaderValue" = true, nil }

function M.AssertOriginCustomHeader(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OriginCustomHeader to be of type 'table'")
	assert(struct["HeaderName"], "Expected key HeaderName to exist in table")
	assert(struct["HeaderValue"], "Expected key HeaderValue to exist in table")
	if struct["HeaderName"] then M.Assertstring(struct["HeaderName"]) end
	if struct["HeaderValue"] then M.Assertstring(struct["HeaderValue"]) end
	for k,_ in pairs(struct) do
		assert(OriginCustomHeader_keys[k], "OriginCustomHeader contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OriginCustomHeader
-- &lt;p&gt;A complex type that contains &lt;code&gt;HeaderName&lt;/code&gt; and &lt;code&gt;HeaderValue&lt;/code&gt; elements, if any, for this distribution. &lt;/p&gt;
-- @param HeaderName [string] &lt;p&gt;The name of a header that you want CloudFront to forward to your origin. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html&quot;&gt;Forwarding Custom Headers to Your Origin (Web Distributions Only)&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param HeaderValue [string] &lt;p&gt;The value for the header that you specified in the &lt;code&gt;HeaderName&lt;/code&gt; field.&lt;/p&gt;
-- Required parameter: HeaderName
-- Required parameter: HeaderValue
function M.OriginCustomHeader(HeaderName, HeaderValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OriginCustomHeader")
	local t = { 
		["HeaderName"] = HeaderName,
		["HeaderValue"] = HeaderValue,
	}
	M.AssertOriginCustomHeader(t)
	return t
end

local Tags_keys = { "Items" = true, nil }

function M.AssertTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tags to be of type 'table'")
	if struct["Items"] then M.AssertTagList(struct["Items"]) end
	for k,_ in pairs(struct) do
		assert(Tags_keys[k], "Tags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tags
-- &lt;p&gt; A complex type that contains zero or more &lt;code&gt;Tag&lt;/code&gt; elements.&lt;/p&gt;
-- @param Items [TagList] &lt;p&gt; A complex type that contains &lt;code&gt;Tag&lt;/code&gt; elements.&lt;/p&gt;
function M.Tags(Items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tags")
	local t = { 
		["Items"] = Items,
	}
	M.AssertTags(t)
	return t
end

local CloudFrontOriginAccessIdentityList_keys = { "Items" = true, "NextMarker" = true, "MaxItems" = true, "Marker" = true, "IsTruncated" = true, "Quantity" = true, nil }

function M.AssertCloudFrontOriginAccessIdentityList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentityList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertCloudFrontOriginAccessIdentitySummaryList(struct["Items"]) end
	if struct["NextMarker"] then M.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then M.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then M.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(CloudFrontOriginAccessIdentityList_keys[k], "CloudFrontOriginAccessIdentityList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentityList
-- &lt;p&gt;Lists the origin access identities for CloudFront.Send a &lt;code&gt;GET&lt;/code&gt; request to the &lt;code&gt;/&lt;i&gt;CloudFront API version&lt;/i&gt;/origin-access-identity/cloudfront&lt;/code&gt; resource. The response includes a &lt;code&gt;CloudFrontOriginAccessIdentityList&lt;/code&gt; element with zero or more &lt;code&gt;CloudFrontOriginAccessIdentitySummary&lt;/code&gt; child elements. By default, your entire list of origin access identities is returned in one single page. If the list is long, you can paginate it using the &lt;code&gt;MaxItems&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; parameters.&lt;/p&gt;
-- @param Items [CloudFrontOriginAccessIdentitySummaryList] &lt;p&gt;A complex type that contains one &lt;code&gt;CloudFrontOriginAccessIdentitySummary&lt;/code&gt; element for each origin access identity that was created by the current AWS account.&lt;/p&gt;
-- @param NextMarker [string] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value you can use for the &lt;code&gt;Marker&lt;/code&gt; request parameter to continue listing your origin access identities where they left off. &lt;/p&gt;
-- @param MaxItems [integer] &lt;p&gt;The maximum number of origin access identities you want in the response body. &lt;/p&gt;
-- @param Marker [string] &lt;p&gt;Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the &lt;code&gt;Marker&lt;/code&gt; to the value of the &lt;code&gt;NextMarker&lt;/code&gt; from the current page's response (which is also the ID of the last identity on that page). &lt;/p&gt;
-- @param IsTruncated [boolean] &lt;p&gt;A flag that indicates whether more origin access identities remain to be listed. If your results were truncated, you can make a follow-up pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items in the list.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of CloudFront origin access identities that were created by the current AWS account. &lt;/p&gt;
-- Required parameter: Marker
-- Required parameter: MaxItems
-- Required parameter: IsTruncated
-- Required parameter: Quantity
function M.CloudFrontOriginAccessIdentityList(Items, NextMarker, MaxItems, Marker, IsTruncated, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudFrontOriginAccessIdentityList")
	local t = { 
		["Items"] = Items,
		["NextMarker"] = NextMarker,
		["MaxItems"] = MaxItems,
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["Quantity"] = Quantity,
	}
	M.AssertCloudFrontOriginAccessIdentityList(t)
	return t
end

local InvalidGeoRestrictionParameter_keys = { "Message" = true, nil }

function M.AssertInvalidGeoRestrictionParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGeoRestrictionParameter to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidGeoRestrictionParameter_keys[k], "InvalidGeoRestrictionParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGeoRestrictionParameter
--  
-- @param Message [string]  
function M.InvalidGeoRestrictionParameter(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidGeoRestrictionParameter")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidGeoRestrictionParameter(t)
	return t
end

local NoSuchInvalidation_keys = { "Message" = true, nil }

function M.AssertNoSuchInvalidation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchInvalidation to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchInvalidation_keys[k], "NoSuchInvalidation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchInvalidation
-- &lt;p&gt;The specified invalidation does not exist.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The specified invalidation does not exist.&lt;/p&gt;
function M.NoSuchInvalidation(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchInvalidation")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNoSuchInvalidation(t)
	return t
end

local InvalidIfMatchVersion_keys = { "Message" = true, nil }

function M.AssertInvalidIfMatchVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIfMatchVersion to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidIfMatchVersion_keys[k], "InvalidIfMatchVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIfMatchVersion
-- &lt;p&gt;The &lt;code&gt;If-Match&lt;/code&gt; version is missing or not valid for the distribution.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The &lt;code&gt;If-Match&lt;/code&gt; version is missing or not valid for the distribution.&lt;/p&gt;
function M.InvalidIfMatchVersion(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIfMatchVersion")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidIfMatchVersion(t)
	return t
end

local TagResourceRequest_keys = { "Resource" = true, "Tags" = true, nil }

function M.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Resource"] then M.AssertResourceARN(struct["Resource"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagResourceRequest_keys[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
-- &lt;p&gt; The request to add tags to a CloudFront resource.&lt;/p&gt;
-- @param Resource [ResourceARN] &lt;p&gt; An ARN of a CloudFront resource.&lt;/p&gt;
-- @param Tags [Tags] &lt;p&gt; A complex type that contains zero or more &lt;code&gt;Tag&lt;/code&gt; elements.&lt;/p&gt;
-- Required parameter: Resource
-- Required parameter: Tags
function M.TagResourceRequest(Resource, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["Resource"] = Resource,
		["Tags"] = Tags,
	}
	M.AssertTagResourceRequest(t)
	return t
end

local GetDistributionConfigResult_keys = { "ETag" = true, "DistributionConfig" = true, nil }

function M.AssertGetDistributionConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionConfigResult to be of type 'table'")
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	if struct["DistributionConfig"] then M.AssertDistributionConfig(struct["DistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(GetDistributionConfigResult_keys[k], "GetDistributionConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionConfigResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the configuration. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
-- @param DistributionConfig [DistributionConfig] &lt;p&gt;The distribution's configuration information.&lt;/p&gt;
function M.GetDistributionConfigResult(ETag, DistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDistributionConfigResult")
	local t = { 
		["ETag"] = ETag,
		["DistributionConfig"] = DistributionConfig,
	}
	M.AssertGetDistributionConfigResult(t)
	return t
end

local CreateStreamingDistributionRequest_keys = { "StreamingDistributionConfig" = true, nil }

function M.AssertCreateStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionRequest to be of type 'table'")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	if struct["StreamingDistributionConfig"] then M.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(CreateStreamingDistributionRequest_keys[k], "CreateStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionRequest
-- &lt;p&gt;The request to create a new streaming distribution.&lt;/p&gt;
-- @param StreamingDistributionConfig [StreamingDistributionConfig] &lt;p&gt;The streaming distribution's configuration information.&lt;/p&gt;
-- Required parameter: StreamingDistributionConfig
function M.CreateStreamingDistributionRequest(StreamingDistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingDistributionRequest")
	local t = { 
		["StreamingDistributionConfig"] = StreamingDistributionConfig,
	}
	M.AssertCreateStreamingDistributionRequest(t)
	return t
end

local InvalidQueryStringParameters_keys = { "Message" = true, nil }

function M.AssertInvalidQueryStringParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidQueryStringParameters to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidQueryStringParameters_keys[k], "InvalidQueryStringParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidQueryStringParameters
--  
-- @param Message [string]  
function M.InvalidQueryStringParameters(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidQueryStringParameters")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidQueryStringParameters(t)
	return t
end

local CreateStreamingDistributionWithTagsResult_keys = { "StreamingDistribution" = true, "Location" = true, "ETag" = true, nil }

function M.AssertCreateStreamingDistributionWithTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionWithTagsResult to be of type 'table'")
	if struct["StreamingDistribution"] then M.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["Location"] then M.Assertstring(struct["Location"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(CreateStreamingDistributionWithTagsResult_keys[k], "CreateStreamingDistributionWithTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionWithTagsResult
-- &lt;p&gt;The returned result of the corresponding request. &lt;/p&gt;
-- @param StreamingDistribution [StreamingDistribution] &lt;p&gt;The streaming distribution's information. &lt;/p&gt;
-- @param Location [string] &lt;p&gt;The fully qualified URI of the new streaming distribution resource just created. For example:&lt;code&gt; https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8&lt;/code&gt;.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The returned result of the corresponding request. &lt;/p&gt;
function M.CreateStreamingDistributionWithTagsResult(StreamingDistribution, Location, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingDistributionWithTagsResult")
	local t = { 
		["StreamingDistribution"] = StreamingDistribution,
		["Location"] = Location,
		["ETag"] = ETag,
	}
	M.AssertCreateStreamingDistributionWithTagsResult(t)
	return t
end

local ListDistributionsRequest_keys = { "Marker" = true, "MaxItems" = true, nil }

function M.AssertListDistributionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsRequest to be of type 'table'")
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then M.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListDistributionsRequest_keys[k], "ListDistributionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsRequest
-- &lt;p&gt;The request to list your distributions. &lt;/p&gt;
-- @param Marker [string] &lt;p&gt;Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the &lt;code&gt;Marker&lt;/code&gt; to the value of the &lt;code&gt;NextMarker&lt;/code&gt; from the current page's response (which is also the ID of the last distribution on that page).&lt;/p&gt;
-- @param MaxItems [string] &lt;p&gt;The maximum number of distributions you want in the response body.&lt;/p&gt;
function M.ListDistributionsRequest(Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDistributionsRequest")
	local t = { 
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListDistributionsRequest(t)
	return t
end

local StreamingDistributionList_keys = { "Items" = true, "NextMarker" = true, "MaxItems" = true, "Marker" = true, "IsTruncated" = true, "Quantity" = true, nil }

function M.AssertStreamingDistributionList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertStreamingDistributionSummaryList(struct["Items"]) end
	if struct["NextMarker"] then M.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then M.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then M.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(StreamingDistributionList_keys[k], "StreamingDistributionList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionList
-- &lt;p&gt;A streaming distribution list. &lt;/p&gt;
-- @param Items [StreamingDistributionSummaryList] &lt;p&gt;A complex type that contains one &lt;code&gt;StreamingDistributionSummary&lt;/code&gt; element for each distribution that was created by the current AWS account.&lt;/p&gt;
-- @param NextMarker [string] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value you can use for the &lt;code&gt;Marker&lt;/code&gt; request parameter to continue listing your RTMP distributions where they left off. &lt;/p&gt;
-- @param MaxItems [integer] &lt;p&gt;The value you provided for the &lt;code&gt;MaxItems&lt;/code&gt; request parameter. &lt;/p&gt;
-- @param Marker [string] &lt;p&gt;The value you provided for the &lt;code&gt;Marker&lt;/code&gt; request parameter. &lt;/p&gt;
-- @param IsTruncated [boolean] &lt;p&gt;A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more distributions in the list. &lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of streaming distributions that were created by the current AWS account. &lt;/p&gt;
-- Required parameter: Marker
-- Required parameter: MaxItems
-- Required parameter: IsTruncated
-- Required parameter: Quantity
function M.StreamingDistributionList(Items, NextMarker, MaxItems, Marker, IsTruncated, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionList")
	local t = { 
		["Items"] = Items,
		["NextMarker"] = NextMarker,
		["MaxItems"] = MaxItems,
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["Quantity"] = Quantity,
	}
	M.AssertStreamingDistributionList(t)
	return t
end

local GetStreamingDistributionConfigRequest_keys = { "Id" = true, nil }

function M.AssertGetStreamingDistributionConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetStreamingDistributionConfigRequest_keys[k], "GetStreamingDistributionConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionConfigRequest
-- &lt;p&gt;To request to get a streaming distribution configuration.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The streaming distribution's ID.&lt;/p&gt;
-- Required parameter: Id
function M.GetStreamingDistributionConfigRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStreamingDistributionConfigRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetStreamingDistributionConfigRequest(t)
	return t
end

local Restrictions_keys = { "GeoRestriction" = true, nil }

function M.AssertRestrictions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Restrictions to be of type 'table'")
	assert(struct["GeoRestriction"], "Expected key GeoRestriction to exist in table")
	if struct["GeoRestriction"] then M.AssertGeoRestriction(struct["GeoRestriction"]) end
	for k,_ in pairs(struct) do
		assert(Restrictions_keys[k], "Restrictions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Restrictions
-- &lt;p&gt;A complex type that identifies ways in which you want to restrict distribution of your content.&lt;/p&gt;
-- @param GeoRestriction [GeoRestriction] &lt;p&gt;A complex type that identifies ways in which you want to restrict distribution of your content.&lt;/p&gt;
-- Required parameter: GeoRestriction
function M.Restrictions(GeoRestriction, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Restrictions")
	local t = { 
		["GeoRestriction"] = GeoRestriction,
	}
	M.AssertRestrictions(t)
	return t
end

local InvalidViewerCertificate_keys = { "Message" = true, nil }

function M.AssertInvalidViewerCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidViewerCertificate to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidViewerCertificate_keys[k], "InvalidViewerCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidViewerCertificate
--  
-- @param Message [string]  
function M.InvalidViewerCertificate(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidViewerCertificate")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidViewerCertificate(t)
	return t
end

local TooManyStreamingDistributionCNAMEs_keys = { "Message" = true, nil }

function M.AssertTooManyStreamingDistributionCNAMEs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyStreamingDistributionCNAMEs to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyStreamingDistributionCNAMEs_keys[k], "TooManyStreamingDistributionCNAMEs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyStreamingDistributionCNAMEs
--  
-- @param Message [string]  
function M.TooManyStreamingDistributionCNAMEs(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyStreamingDistributionCNAMEs")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyStreamingDistributionCNAMEs(t)
	return t
end

local TrustedSignerDoesNotExist_keys = { "Message" = true, nil }

function M.AssertTrustedSignerDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedSignerDoesNotExist to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TrustedSignerDoesNotExist_keys[k], "TrustedSignerDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedSignerDoesNotExist
-- &lt;p&gt;One or more of your trusted signers do not exist.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;One or more of your trusted signers do not exist.&lt;/p&gt;
function M.TrustedSignerDoesNotExist(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrustedSignerDoesNotExist")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTrustedSignerDoesNotExist(t)
	return t
end

local TooManyOriginCustomHeaders_keys = { "Message" = true, nil }

function M.AssertTooManyOriginCustomHeaders(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyOriginCustomHeaders to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyOriginCustomHeaders_keys[k], "TooManyOriginCustomHeaders contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyOriginCustomHeaders
--  
-- @param Message [string]  
function M.TooManyOriginCustomHeaders(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyOriginCustomHeaders")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyOriginCustomHeaders(t)
	return t
end

local ListDistributionsResult_keys = { "DistributionList" = true, nil }

function M.AssertListDistributionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsResult to be of type 'table'")
	if struct["DistributionList"] then M.AssertDistributionList(struct["DistributionList"]) end
	for k,_ in pairs(struct) do
		assert(ListDistributionsResult_keys[k], "ListDistributionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsResult
-- &lt;p&gt;The returned result of the corresponding request. &lt;/p&gt;
-- @param DistributionList [DistributionList] &lt;p&gt;The &lt;code&gt;DistributionList&lt;/code&gt; type. &lt;/p&gt;
function M.ListDistributionsResult(DistributionList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDistributionsResult")
	local t = { 
		["DistributionList"] = DistributionList,
	}
	M.AssertListDistributionsResult(t)
	return t
end

local InvalidationBatch_keys = { "Paths" = true, "CallerReference" = true, nil }

function M.AssertInvalidationBatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidationBatch to be of type 'table'")
	assert(struct["Paths"], "Expected key Paths to exist in table")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	if struct["Paths"] then M.AssertPaths(struct["Paths"]) end
	if struct["CallerReference"] then M.Assertstring(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(InvalidationBatch_keys[k], "InvalidationBatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidationBatch
-- &lt;p&gt;An invalidation batch.&lt;/p&gt;
-- @param Paths [Paths] &lt;p&gt;A complex type that contains information about the objects that you want to invalidate. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects&quot;&gt;Specifying the Objects to Invalidate&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;. &lt;/p&gt;
-- @param CallerReference [string] &lt;p&gt;A value that you specify to uniquely identify an invalidation request. CloudFront uses the value to prevent you from accidentally resubmitting an identical request. Whenever you create a new invalidation request, you must specify a new value for &lt;code&gt;CallerReference&lt;/code&gt; and change other values in the request as applicable. One way to ensure that the value of &lt;code&gt;CallerReference&lt;/code&gt; is unique is to use a &lt;code&gt;timestamp&lt;/code&gt;, for example, &lt;code&gt;20120301090000&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you make a second invalidation request with the same value for &lt;code&gt;CallerReference&lt;/code&gt;, and if the rest of the request is the same, CloudFront doesn't create a new invalidation request. Instead, CloudFront returns information about the invalidation request that you previously created with the same &lt;code&gt;CallerReference&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If &lt;code&gt;CallerReference&lt;/code&gt; is a value you already sent in a previous invalidation batch request but the content of any &lt;code&gt;Path&lt;/code&gt; is different from the original request, CloudFront returns an &lt;code&gt;InvalidationBatchAlreadyExists&lt;/code&gt; error.&lt;/p&gt;
-- Required parameter: Paths
-- Required parameter: CallerReference
function M.InvalidationBatch(Paths, CallerReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidationBatch")
	local t = { 
		["Paths"] = Paths,
		["CallerReference"] = CallerReference,
	}
	M.AssertInvalidationBatch(t)
	return t
end

local GetDistributionResult_keys = { "Distribution" = true, "ETag" = true, nil }

function M.AssertGetDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionResult to be of type 'table'")
	if struct["Distribution"] then M.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(GetDistributionResult_keys[k], "GetDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param Distribution [Distribution] &lt;p&gt;The distribution's information.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the distribution's information. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
function M.GetDistributionResult(Distribution, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDistributionResult")
	local t = { 
		["Distribution"] = Distribution,
		["ETag"] = ETag,
	}
	M.AssertGetDistributionResult(t)
	return t
end

local UpdateStreamingDistributionRequest_keys = { "IfMatch" = true, "Id" = true, "StreamingDistributionConfig" = true, nil }

function M.AssertUpdateStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStreamingDistributionRequest to be of type 'table'")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["IfMatch"] then M.Assertstring(struct["IfMatch"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["StreamingDistributionConfig"] then M.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(UpdateStreamingDistributionRequest_keys[k], "UpdateStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStreamingDistributionRequest
-- &lt;p&gt;The request to update a streaming distribution.&lt;/p&gt;
-- @param IfMatch [string] &lt;p&gt;The value of the &lt;code&gt;ETag&lt;/code&gt; header that you received when retrieving the streaming distribution's configuration. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The streaming distribution's id.&lt;/p&gt;
-- @param StreamingDistributionConfig [StreamingDistributionConfig] &lt;p&gt;The streaming distribution's configuration information.&lt;/p&gt;
-- Required parameter: StreamingDistributionConfig
-- Required parameter: Id
function M.UpdateStreamingDistributionRequest(IfMatch, Id, StreamingDistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStreamingDistributionRequest")
	local t = { 
		["IfMatch"] = IfMatch,
		["Id"] = Id,
		["StreamingDistributionConfig"] = StreamingDistributionConfig,
	}
	M.AssertUpdateStreamingDistributionRequest(t)
	return t
end

local ListCloudFrontOriginAccessIdentitiesResult_keys = { "CloudFrontOriginAccessIdentityList" = true, nil }

function M.AssertListCloudFrontOriginAccessIdentitiesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCloudFrontOriginAccessIdentitiesResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentityList"] then M.AssertCloudFrontOriginAccessIdentityList(struct["CloudFrontOriginAccessIdentityList"]) end
	for k,_ in pairs(struct) do
		assert(ListCloudFrontOriginAccessIdentitiesResult_keys[k], "ListCloudFrontOriginAccessIdentitiesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCloudFrontOriginAccessIdentitiesResult
-- &lt;p&gt;The returned result of the corresponding request. &lt;/p&gt;
-- @param CloudFrontOriginAccessIdentityList [CloudFrontOriginAccessIdentityList] &lt;p&gt;The &lt;code&gt;CloudFrontOriginAccessIdentityList&lt;/code&gt; type. &lt;/p&gt;
function M.ListCloudFrontOriginAccessIdentitiesResult(CloudFrontOriginAccessIdentityList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCloudFrontOriginAccessIdentitiesResult")
	local t = { 
		["CloudFrontOriginAccessIdentityList"] = CloudFrontOriginAccessIdentityList,
	}
	M.AssertListCloudFrontOriginAccessIdentitiesResult(t)
	return t
end

local CreateInvalidationRequest_keys = { "InvalidationBatch" = true, "DistributionId" = true, nil }

function M.AssertCreateInvalidationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInvalidationRequest to be of type 'table'")
	assert(struct["DistributionId"], "Expected key DistributionId to exist in table")
	assert(struct["InvalidationBatch"], "Expected key InvalidationBatch to exist in table")
	if struct["InvalidationBatch"] then M.AssertInvalidationBatch(struct["InvalidationBatch"]) end
	if struct["DistributionId"] then M.Assertstring(struct["DistributionId"]) end
	for k,_ in pairs(struct) do
		assert(CreateInvalidationRequest_keys[k], "CreateInvalidationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInvalidationRequest
-- &lt;p&gt;The request to create an invalidation.&lt;/p&gt;
-- @param InvalidationBatch [InvalidationBatch] &lt;p&gt;The batch information for the invalidation.&lt;/p&gt;
-- @param DistributionId [string] &lt;p&gt;The distribution's id.&lt;/p&gt;
-- Required parameter: DistributionId
-- Required parameter: InvalidationBatch
function M.CreateInvalidationRequest(InvalidationBatch, DistributionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInvalidationRequest")
	local t = { 
		["InvalidationBatch"] = InvalidationBatch,
		["DistributionId"] = DistributionId,
	}
	M.AssertCreateInvalidationRequest(t)
	return t
end

local TooManyDistributionCNAMEs_keys = { "Message" = true, nil }

function M.AssertTooManyDistributionCNAMEs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyDistributionCNAMEs to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyDistributionCNAMEs_keys[k], "TooManyDistributionCNAMEs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyDistributionCNAMEs
-- &lt;p&gt;Your request contains more CNAMEs than are allowed per distribution.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;Your request contains more CNAMEs than are allowed per distribution.&lt;/p&gt;
function M.TooManyDistributionCNAMEs(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyDistributionCNAMEs")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyDistributionCNAMEs(t)
	return t
end

local TooManyHeadersInForwardedValues_keys = { "Message" = true, nil }

function M.AssertTooManyHeadersInForwardedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyHeadersInForwardedValues to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyHeadersInForwardedValues_keys[k], "TooManyHeadersInForwardedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyHeadersInForwardedValues
--  
-- @param Message [string]  
function M.TooManyHeadersInForwardedValues(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyHeadersInForwardedValues")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyHeadersInForwardedValues(t)
	return t
end

local DistributionSummary_keys = { "Status" = true, "CacheBehaviors" = true, "Restrictions" = true, "Origins" = true, "DomainName" = true, "WebACLId" = true, "PriceClass" = true, "Enabled" = true, "DefaultCacheBehavior" = true, "IsIPV6Enabled" = true, "Comment" = true, "ViewerCertificate" = true, "CustomErrorResponses" = true, "LastModifiedTime" = true, "HttpVersion" = true, "Id" = true, "ARN" = true, "Aliases" = true, nil }

function M.AssertDistributionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionSummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["Aliases"], "Expected key Aliases to exist in table")
	assert(struct["Origins"], "Expected key Origins to exist in table")
	assert(struct["DefaultCacheBehavior"], "Expected key DefaultCacheBehavior to exist in table")
	assert(struct["CacheBehaviors"], "Expected key CacheBehaviors to exist in table")
	assert(struct["CustomErrorResponses"], "Expected key CustomErrorResponses to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	assert(struct["PriceClass"], "Expected key PriceClass to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["ViewerCertificate"], "Expected key ViewerCertificate to exist in table")
	assert(struct["Restrictions"], "Expected key Restrictions to exist in table")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	assert(struct["HttpVersion"], "Expected key HttpVersion to exist in table")
	assert(struct["IsIPV6Enabled"], "Expected key IsIPV6Enabled to exist in table")
	if struct["Status"] then M.Assertstring(struct["Status"]) end
	if struct["CacheBehaviors"] then M.AssertCacheBehaviors(struct["CacheBehaviors"]) end
	if struct["Restrictions"] then M.AssertRestrictions(struct["Restrictions"]) end
	if struct["Origins"] then M.AssertOrigins(struct["Origins"]) end
	if struct["DomainName"] then M.Assertstring(struct["DomainName"]) end
	if struct["WebACLId"] then M.Assertstring(struct["WebACLId"]) end
	if struct["PriceClass"] then M.AssertPriceClass(struct["PriceClass"]) end
	if struct["Enabled"] then M.Assertboolean(struct["Enabled"]) end
	if struct["DefaultCacheBehavior"] then M.AssertDefaultCacheBehavior(struct["DefaultCacheBehavior"]) end
	if struct["IsIPV6Enabled"] then M.Assertboolean(struct["IsIPV6Enabled"]) end
	if struct["Comment"] then M.Assertstring(struct["Comment"]) end
	if struct["ViewerCertificate"] then M.AssertViewerCertificate(struct["ViewerCertificate"]) end
	if struct["CustomErrorResponses"] then M.AssertCustomErrorResponses(struct["CustomErrorResponses"]) end
	if struct["LastModifiedTime"] then M.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["HttpVersion"] then M.AssertHttpVersion(struct["HttpVersion"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["ARN"] then M.Assertstring(struct["ARN"]) end
	if struct["Aliases"] then M.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(DistributionSummary_keys[k], "DistributionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionSummary
-- &lt;p&gt;A summary of the information about a CloudFront distribution.&lt;/p&gt;
-- @param Status [string] &lt;p&gt;The current status of the distribution. When the status is &lt;code&gt;Deployed&lt;/code&gt;, the distribution's information is propagated to all CloudFront edge locations.&lt;/p&gt;
-- @param CacheBehaviors [CacheBehaviors] &lt;p&gt;A complex type that contains zero or more &lt;code&gt;CacheBehavior&lt;/code&gt; elements.&lt;/p&gt;
-- @param Restrictions [Restrictions] &lt;p&gt;A summary of the information about a CloudFront distribution.&lt;/p&gt;
-- @param Origins [Origins] &lt;p&gt;A complex type that contains information about origins for this distribution.&lt;/p&gt;
-- @param DomainName [string] &lt;p&gt;The domain name that corresponds to the distribution. For example: &lt;code&gt;d604721fxaaqy9.cloudfront.net&lt;/code&gt;.&lt;/p&gt;
-- @param WebACLId [string] &lt;p&gt;The Web ACL Id (if any) associated with the distribution.&lt;/p&gt;
-- @param PriceClass [PriceClass] &lt;p&gt;A summary of the information about a CloudFront distribution.&lt;/p&gt;
-- @param Enabled [boolean] &lt;p&gt;Whether the distribution is enabled to accept user requests for content.&lt;/p&gt;
-- @param DefaultCacheBehavior [DefaultCacheBehavior] &lt;p&gt;A complex type that describes the default cache behavior if you do not specify a &lt;code&gt;CacheBehavior&lt;/code&gt; element or if files don't match any of the values of &lt;code&gt;PathPattern&lt;/code&gt; in &lt;code&gt;CacheBehavior&lt;/code&gt; elements. You must create exactly one default cache behavior.&lt;/p&gt;
-- @param IsIPV6Enabled [boolean] &lt;p&gt;Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your distribution.&lt;/p&gt;
-- @param Comment [string] &lt;p&gt;The comment originally specified when this distribution was created.&lt;/p&gt;
-- @param ViewerCertificate [ViewerCertificate] &lt;p&gt;A summary of the information about a CloudFront distribution.&lt;/p&gt;
-- @param CustomErrorResponses [CustomErrorResponses] &lt;p&gt;A complex type that contains zero or more &lt;code&gt;CustomErrorResponses&lt;/code&gt; elements.&lt;/p&gt;
-- @param LastModifiedTime [timestamp] &lt;p&gt;The date and time the distribution was last modified.&lt;/p&gt;
-- @param HttpVersion [HttpVersion] &lt;p&gt; Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is &lt;code&gt;http2&lt;/code&gt;. Viewers that don't support &lt;code&gt;HTTP/2&lt;/code&gt; will automatically use an earlier version.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The identifier for the distribution. For example: &lt;code&gt;EDFDVBD632BHDS5&lt;/code&gt;.&lt;/p&gt;
-- @param ARN [string] &lt;p&gt;The ARN (Amazon Resource Name) for the distribution. For example: &lt;code&gt;arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5&lt;/code&gt;, where &lt;code&gt;123456789012&lt;/code&gt; is your AWS account ID.&lt;/p&gt;
-- @param Aliases [Aliases] &lt;p&gt;A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: ARN
-- Required parameter: Status
-- Required parameter: LastModifiedTime
-- Required parameter: DomainName
-- Required parameter: Aliases
-- Required parameter: Origins
-- Required parameter: DefaultCacheBehavior
-- Required parameter: CacheBehaviors
-- Required parameter: CustomErrorResponses
-- Required parameter: Comment
-- Required parameter: PriceClass
-- Required parameter: Enabled
-- Required parameter: ViewerCertificate
-- Required parameter: Restrictions
-- Required parameter: WebACLId
-- Required parameter: HttpVersion
-- Required parameter: IsIPV6Enabled
function M.DistributionSummary(Status, CacheBehaviors, Restrictions, Origins, DomainName, WebACLId, PriceClass, Enabled, DefaultCacheBehavior, IsIPV6Enabled, Comment, ViewerCertificate, CustomErrorResponses, LastModifiedTime, HttpVersion, Id, ARN, Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionSummary")
	local t = { 
		["Status"] = Status,
		["CacheBehaviors"] = CacheBehaviors,
		["Restrictions"] = Restrictions,
		["Origins"] = Origins,
		["DomainName"] = DomainName,
		["WebACLId"] = WebACLId,
		["PriceClass"] = PriceClass,
		["Enabled"] = Enabled,
		["DefaultCacheBehavior"] = DefaultCacheBehavior,
		["IsIPV6Enabled"] = IsIPV6Enabled,
		["Comment"] = Comment,
		["ViewerCertificate"] = ViewerCertificate,
		["CustomErrorResponses"] = CustomErrorResponses,
		["LastModifiedTime"] = LastModifiedTime,
		["HttpVersion"] = HttpVersion,
		["Id"] = Id,
		["ARN"] = ARN,
		["Aliases"] = Aliases,
	}
	M.AssertDistributionSummary(t)
	return t
end

local StreamingDistributionConfig_keys = { "S3Origin" = true, "Comment" = true, "Logging" = true, "PriceClass" = true, "Enabled" = true, "TrustedSigners" = true, "CallerReference" = true, "Aliases" = true, nil }

function M.AssertStreamingDistributionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["S3Origin"], "Expected key S3Origin to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["S3Origin"] then M.AssertS3Origin(struct["S3Origin"]) end
	if struct["Comment"] then M.Assertstring(struct["Comment"]) end
	if struct["Logging"] then M.AssertStreamingLoggingConfig(struct["Logging"]) end
	if struct["PriceClass"] then M.AssertPriceClass(struct["PriceClass"]) end
	if struct["Enabled"] then M.Assertboolean(struct["Enabled"]) end
	if struct["TrustedSigners"] then M.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["CallerReference"] then M.Assertstring(struct["CallerReference"]) end
	if struct["Aliases"] then M.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(StreamingDistributionConfig_keys[k], "StreamingDistributionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionConfig
-- &lt;p&gt;The RTMP distribution's configuration information.&lt;/p&gt;
-- @param S3Origin [S3Origin] &lt;p&gt;A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution. &lt;/p&gt;
-- @param Comment [string] &lt;p&gt;Any comments you want to include about the streaming distribution. &lt;/p&gt;
-- @param Logging [StreamingLoggingConfig] &lt;p&gt;A complex type that controls whether access logs are written for the streaming distribution. &lt;/p&gt;
-- @param PriceClass [PriceClass] &lt;p&gt;A complex type that contains information about price class for this streaming distribution. &lt;/p&gt;
-- @param Enabled [boolean] &lt;p&gt;Whether the streaming distribution is enabled to accept user requests for content.&lt;/p&gt;
-- @param TrustedSigners [TrustedSigners] &lt;p&gt;A complex type that specifies any AWS accounts that you want to permit to create signed URLs for private content. If you want the distribution to use signed URLs, include this element; if you want the distribution to use public URLs, remove this element. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html&quot;&gt;Serving Private Content through CloudFront&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;. &lt;/p&gt;
-- @param CallerReference [string] &lt;p&gt;A unique number that ensures that the request can't be replayed. If the &lt;code&gt;CallerReference&lt;/code&gt; is new (no matter the content of the &lt;code&gt;StreamingDistributionConfig&lt;/code&gt; object), a new streaming distribution is created. If the &lt;code&gt;CallerReference&lt;/code&gt; is a value that you already sent in a previous request to create a streaming distribution, and the content of the &lt;code&gt;StreamingDistributionConfig&lt;/code&gt; is identical to the original request (ignoring white space), the response includes the same information returned to the original request. If the &lt;code&gt;CallerReference&lt;/code&gt; is a value that you already sent in a previous request to create a streaming distribution but the content of the &lt;code&gt;StreamingDistributionConfig&lt;/code&gt; is different from the original request, CloudFront returns a &lt;code&gt;DistributionAlreadyExists&lt;/code&gt; error. &lt;/p&gt;
-- @param Aliases [Aliases] &lt;p&gt;A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution. &lt;/p&gt;
-- Required parameter: CallerReference
-- Required parameter: S3Origin
-- Required parameter: Comment
-- Required parameter: TrustedSigners
-- Required parameter: Enabled
function M.StreamingDistributionConfig(S3Origin, Comment, Logging, PriceClass, Enabled, TrustedSigners, CallerReference, Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionConfig")
	local t = { 
		["S3Origin"] = S3Origin,
		["Comment"] = Comment,
		["Logging"] = Logging,
		["PriceClass"] = PriceClass,
		["Enabled"] = Enabled,
		["TrustedSigners"] = TrustedSigners,
		["CallerReference"] = CallerReference,
		["Aliases"] = Aliases,
	}
	M.AssertStreamingDistributionConfig(t)
	return t
end

local CreateDistributionWithTagsRequest_keys = { "DistributionConfigWithTags" = true, nil }

function M.AssertCreateDistributionWithTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionWithTagsRequest to be of type 'table'")
	assert(struct["DistributionConfigWithTags"], "Expected key DistributionConfigWithTags to exist in table")
	if struct["DistributionConfigWithTags"] then M.AssertDistributionConfigWithTags(struct["DistributionConfigWithTags"]) end
	for k,_ in pairs(struct) do
		assert(CreateDistributionWithTagsRequest_keys[k], "CreateDistributionWithTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionWithTagsRequest
-- &lt;p&gt;The request to create a new distribution with tags. &lt;/p&gt;
-- @param DistributionConfigWithTags [DistributionConfigWithTags] &lt;p&gt;The distribution's configuration information. &lt;/p&gt;
-- Required parameter: DistributionConfigWithTags
function M.CreateDistributionWithTagsRequest(DistributionConfigWithTags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDistributionWithTagsRequest")
	local t = { 
		["DistributionConfigWithTags"] = DistributionConfigWithTags,
	}
	M.AssertCreateDistributionWithTagsRequest(t)
	return t
end

local DeleteStreamingDistributionRequest_keys = { "Id" = true, "IfMatch" = true, nil }

function M.AssertDeleteStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStreamingDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then M.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(DeleteStreamingDistributionRequest_keys[k], "DeleteStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStreamingDistributionRequest
-- &lt;p&gt;The request to delete a streaming distribution.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The distribution ID. &lt;/p&gt;
-- @param IfMatch [string] &lt;p&gt;The value of the &lt;code&gt;ETag&lt;/code&gt; header that you received when you disabled the streaming distribution. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Id
function M.DeleteStreamingDistributionRequest(Id, IfMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStreamingDistributionRequest")
	local t = { 
		["Id"] = Id,
		["IfMatch"] = IfMatch,
	}
	M.AssertDeleteStreamingDistributionRequest(t)
	return t
end

local StreamingLoggingConfig_keys = { "Bucket" = true, "Prefix" = true, "Enabled" = true, nil }

function M.AssertStreamingLoggingConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingLoggingConfig to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	if struct["Bucket"] then M.Assertstring(struct["Bucket"]) end
	if struct["Prefix"] then M.Assertstring(struct["Prefix"]) end
	if struct["Enabled"] then M.Assertboolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(StreamingLoggingConfig_keys[k], "StreamingLoggingConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingLoggingConfig
-- &lt;p&gt;A complex type that controls whether access logs are written for this streaming distribution.&lt;/p&gt;
-- @param Bucket [string] &lt;p&gt;The Amazon S3 bucket to store the access logs in, for example, &lt;code&gt;myawslogbucket.s3.amazonaws.com&lt;/code&gt;.&lt;/p&gt;
-- @param Prefix [string] &lt;p&gt;An optional string that you want CloudFront to prefix to the access log &lt;code&gt;filenames&lt;/code&gt; for this streaming distribution, for example, &lt;code&gt;myprefix/&lt;/code&gt;. If you want to enable logging, but you do not want to specify a prefix, you still must include an empty &lt;code&gt;Prefix&lt;/code&gt; element in the &lt;code&gt;Logging&lt;/code&gt; element.&lt;/p&gt;
-- @param Enabled [boolean] &lt;p&gt;Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you do not want to enable logging when you create a streaming distribution or if you want to disable logging for an existing streaming distribution, specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt;, and specify &lt;code&gt;empty Bucket&lt;/code&gt; and &lt;code&gt;Prefix&lt;/code&gt; elements. If you specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt; but you specify values for &lt;code&gt;Bucket&lt;/code&gt; and &lt;code&gt;Prefix&lt;/code&gt;, the values are automatically deleted. &lt;/p&gt;
-- Required parameter: Enabled
-- Required parameter: Bucket
-- Required parameter: Prefix
function M.StreamingLoggingConfig(Bucket, Prefix, Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingLoggingConfig")
	local t = { 
		["Bucket"] = Bucket,
		["Prefix"] = Prefix,
		["Enabled"] = Enabled,
	}
	M.AssertStreamingLoggingConfig(t)
	return t
end

local CacheBehavior_keys = { "TrustedSigners" = true, "LambdaFunctionAssociations" = true, "TargetOriginId" = true, "ViewerProtocolPolicy" = true, "ForwardedValues" = true, "MaxTTL" = true, "PathPattern" = true, "SmoothStreaming" = true, "DefaultTTL" = true, "AllowedMethods" = true, "MinTTL" = true, "Compress" = true, nil }

function M.AssertCacheBehavior(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheBehavior to be of type 'table'")
	assert(struct["PathPattern"], "Expected key PathPattern to exist in table")
	assert(struct["TargetOriginId"], "Expected key TargetOriginId to exist in table")
	assert(struct["ForwardedValues"], "Expected key ForwardedValues to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["ViewerProtocolPolicy"], "Expected key ViewerProtocolPolicy to exist in table")
	assert(struct["MinTTL"], "Expected key MinTTL to exist in table")
	if struct["TrustedSigners"] then M.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["LambdaFunctionAssociations"] then M.AssertLambdaFunctionAssociations(struct["LambdaFunctionAssociations"]) end
	if struct["TargetOriginId"] then M.Assertstring(struct["TargetOriginId"]) end
	if struct["ViewerProtocolPolicy"] then M.AssertViewerProtocolPolicy(struct["ViewerProtocolPolicy"]) end
	if struct["ForwardedValues"] then M.AssertForwardedValues(struct["ForwardedValues"]) end
	if struct["MaxTTL"] then M.Assertlong(struct["MaxTTL"]) end
	if struct["PathPattern"] then M.Assertstring(struct["PathPattern"]) end
	if struct["SmoothStreaming"] then M.Assertboolean(struct["SmoothStreaming"]) end
	if struct["DefaultTTL"] then M.Assertlong(struct["DefaultTTL"]) end
	if struct["AllowedMethods"] then M.AssertAllowedMethods(struct["AllowedMethods"]) end
	if struct["MinTTL"] then M.Assertlong(struct["MinTTL"]) end
	if struct["Compress"] then M.Assertboolean(struct["Compress"]) end
	for k,_ in pairs(struct) do
		assert(CacheBehavior_keys[k], "CacheBehavior contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheBehavior
-- &lt;p&gt;A complex type that describes how CloudFront processes requests.&lt;/p&gt; &lt;p&gt;You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to distribute objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.&lt;/p&gt; &lt;p&gt;For the current limit on the number of cache behaviors that you can add to a distribution, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront&quot;&gt;Amazon CloudFront Limits&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;If you don't want to specify any cache behaviors, include only an empty &lt;code&gt;CacheBehaviors&lt;/code&gt; element. Don't include an empty &lt;code&gt;CacheBehavior&lt;/code&gt; element, or CloudFront returns a &lt;code&gt;MalformedXML&lt;/code&gt; error.&lt;/p&gt; &lt;p&gt;To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty &lt;code&gt;CacheBehaviors&lt;/code&gt; element.&lt;/p&gt; &lt;p&gt;To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.&lt;/p&gt; &lt;p&gt;For more information about cache behaviors, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior&quot;&gt;Cache Behaviors&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param TrustedSigners [TrustedSigners] &lt;p&gt;A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.&lt;/p&gt; &lt;p&gt;If you want to require signed URLs in requests for objects in the target origin that match the &lt;code&gt;PathPattern&lt;/code&gt; for this cache behavior, specify &lt;code&gt;true&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt;, and specify the applicable values for &lt;code&gt;Quantity&lt;/code&gt; and &lt;code&gt;Items&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html&quot;&gt;Serving Private Content through CloudFront&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;If you don't want to require signed URLs in requests for objects that match &lt;code&gt;PathPattern&lt;/code&gt;, specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt; and &lt;code&gt;0&lt;/code&gt; for &lt;code&gt;Quantity&lt;/code&gt;. Omit &lt;code&gt;Items&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;To add, change, or remove one or more trusted signers, change &lt;code&gt;Enabled&lt;/code&gt; to &lt;code&gt;true&lt;/code&gt; (if it's currently &lt;code&gt;false&lt;/code&gt;), change &lt;code&gt;Quantity&lt;/code&gt; as applicable, and specify all of the trusted signers that you want to include in the updated distribution.&lt;/p&gt;
-- @param LambdaFunctionAssociations [LambdaFunctionAssociations] &lt;p&gt;A complex type that contains zero or more Lambda function associations for a cache behavior.&lt;/p&gt;
-- @param TargetOriginId [string] &lt;p&gt;The value of &lt;code&gt;ID&lt;/code&gt; for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior.&lt;/p&gt;
-- @param ViewerProtocolPolicy [ViewerProtocolPolicy] &lt;p&gt;The protocol that viewers can use to access the files in the origin specified by &lt;code&gt;TargetOriginId&lt;/code&gt; when a request matches the path pattern in &lt;code&gt;PathPattern&lt;/code&gt;. You can specify the following options:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;allow-all&lt;/code&gt;: Viewers can use HTTP or HTTPS.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;redirect-to-https&lt;/code&gt;: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;https-only&lt;/code&gt;: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden). &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about requiring the HTTPS protocol, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html&quot;&gt;Using an HTTPS Connection to Access Your Objects&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html&quot;&gt;Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param ForwardedValues [ForwardedValues] &lt;p&gt;A complex type that specifies how CloudFront handles query strings and cookies.&lt;/p&gt;
-- @param MaxTTL [long] &lt;p&gt;The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as &lt;code&gt;Cache-Control max-age&lt;/code&gt;, &lt;code&gt;Cache-Control s-maxage&lt;/code&gt;, and &lt;code&gt;Expires&lt;/code&gt; to objects. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html&quot;&gt;Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param PathPattern [string] &lt;p&gt;The pattern (for example, &lt;code&gt;images/*.jpg&lt;/code&gt;) that specifies which requests to apply the behavior to. When CloudFront receives a viewer request, the requested path is compared with path patterns in the order in which cache behaviors are listed in the distribution.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You can optionally include a slash (&lt;code&gt;/&lt;/code&gt;) at the beginning of the path pattern. For example, &lt;code&gt;/images/*.jpg&lt;/code&gt;. CloudFront behavior is the same with or without the leading &lt;code&gt;/&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The path pattern for the default cache behavior is &lt;code&gt;*&lt;/code&gt; and cannot be changed. If the request for an object does not match the path pattern for any cache behaviors, CloudFront applies the behavior in the default cache behavior.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern&quot;&gt;Path Pattern&lt;/a&gt; in the &lt;i&gt; Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param SmoothStreaming [boolean] &lt;p&gt;Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify &lt;code&gt;true&lt;/code&gt;; if not, specify &lt;code&gt;false&lt;/code&gt;. If you specify &lt;code&gt;true&lt;/code&gt; for &lt;code&gt;SmoothStreaming&lt;/code&gt;, you can still distribute other content using this cache behavior if the content matches the value of &lt;code&gt;PathPattern&lt;/code&gt;. &lt;/p&gt;
-- @param DefaultTTL [long] &lt;p&gt;The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as &lt;code&gt;Cache-Control max-age&lt;/code&gt;, &lt;code&gt;Cache-Control s-maxage&lt;/code&gt;, and &lt;code&gt;Expires&lt;/code&gt; to objects. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html&quot;&gt;Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param AllowedMethods [AllowedMethods] &lt;p&gt;A complex type that describes how CloudFront processes requests.&lt;/p&gt; &lt;p&gt;You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to distribute objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.&lt;/p&gt; &lt;p&gt;For the current limit on the number of cache behaviors that you can add to a distribution, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront&quot;&gt;Amazon CloudFront Limits&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;If you don't want to specify any cache behaviors, include only an empty &lt;code&gt;CacheBehaviors&lt;/code&gt; element. Don't include an empty &lt;code&gt;CacheBehavior&lt;/code&gt; element, or CloudFront returns a &lt;code&gt;MalformedXML&lt;/code&gt; error.&lt;/p&gt; &lt;p&gt;To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty &lt;code&gt;CacheBehaviors&lt;/code&gt; element.&lt;/p&gt; &lt;p&gt;To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.&lt;/p&gt; &lt;p&gt;For more information about cache behaviors, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior&quot;&gt;Cache Behaviors&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param MinTTL [long] &lt;p&gt;The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html&quot;&gt;Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;You must specify &lt;code&gt;0&lt;/code&gt; for &lt;code&gt;MinTTL&lt;/code&gt; if you configure CloudFront to forward all headers to your origin (under &lt;code&gt;Headers&lt;/code&gt;, if you specify &lt;code&gt;1&lt;/code&gt; for &lt;code&gt;Quantity&lt;/code&gt; and &lt;code&gt;*&lt;/code&gt; for &lt;code&gt;Name&lt;/code&gt;).&lt;/p&gt;
-- @param Compress [boolean] &lt;p&gt;Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify true; if not, specify false. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html&quot;&gt;Serving Compressed Files&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: PathPattern
-- Required parameter: TargetOriginId
-- Required parameter: ForwardedValues
-- Required parameter: TrustedSigners
-- Required parameter: ViewerProtocolPolicy
-- Required parameter: MinTTL
function M.CacheBehavior(TrustedSigners, LambdaFunctionAssociations, TargetOriginId, ViewerProtocolPolicy, ForwardedValues, MaxTTL, PathPattern, SmoothStreaming, DefaultTTL, AllowedMethods, MinTTL, Compress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheBehavior")
	local t = { 
		["TrustedSigners"] = TrustedSigners,
		["LambdaFunctionAssociations"] = LambdaFunctionAssociations,
		["TargetOriginId"] = TargetOriginId,
		["ViewerProtocolPolicy"] = ViewerProtocolPolicy,
		["ForwardedValues"] = ForwardedValues,
		["MaxTTL"] = MaxTTL,
		["PathPattern"] = PathPattern,
		["SmoothStreaming"] = SmoothStreaming,
		["DefaultTTL"] = DefaultTTL,
		["AllowedMethods"] = AllowedMethods,
		["MinTTL"] = MinTTL,
		["Compress"] = Compress,
	}
	M.AssertCacheBehavior(t)
	return t
end

local BatchTooLarge_keys = { "Message" = true, nil }

function M.AssertBatchTooLarge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchTooLarge to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(BatchTooLarge_keys[k], "BatchTooLarge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchTooLarge
--  
-- @param Message [string]  
function M.BatchTooLarge(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchTooLarge")
	local t = { 
		["Message"] = Message,
	}
	M.AssertBatchTooLarge(t)
	return t
end

local S3Origin_keys = { "OriginAccessIdentity" = true, "DomainName" = true, nil }

function M.AssertS3Origin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Origin to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["OriginAccessIdentity"], "Expected key OriginAccessIdentity to exist in table")
	if struct["OriginAccessIdentity"] then M.Assertstring(struct["OriginAccessIdentity"]) end
	if struct["DomainName"] then M.Assertstring(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(S3Origin_keys[k], "S3Origin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Origin
-- &lt;p&gt;A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.&lt;/p&gt;
-- @param OriginAccessIdentity [string] &lt;p&gt;The CloudFront origin access identity to associate with the RTMP distribution. Use an origin access identity to configure the distribution so that end users can only access objects in an Amazon S3 bucket through CloudFront.&lt;/p&gt; &lt;p&gt;If you want end users to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty &lt;code&gt;OriginAccessIdentity&lt;/code&gt; element.&lt;/p&gt; &lt;p&gt;To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty &lt;code&gt;OriginAccessIdentity&lt;/code&gt; element.&lt;/p&gt; &lt;p&gt;To replace the origin access identity, update the distribution configuration and specify the new origin access identity.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html&quot;&gt;Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content&lt;/a&gt; in the &lt;i&gt;Amazon Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param DomainName [string] &lt;p&gt;The DNS name of the Amazon S3 origin. &lt;/p&gt;
-- Required parameter: DomainName
-- Required parameter: OriginAccessIdentity
function M.S3Origin(OriginAccessIdentity, DomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Origin")
	local t = { 
		["OriginAccessIdentity"] = OriginAccessIdentity,
		["DomainName"] = DomainName,
	}
	M.AssertS3Origin(t)
	return t
end

local Paths_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertPaths(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Paths to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertPathList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(Paths_keys[k], "Paths contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Paths
-- &lt;p&gt;A complex type that contains information about the objects that you want to invalidate. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects&quot;&gt;Specifying the Objects to Invalidate&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;. &lt;/p&gt;
-- @param Items [PathList] &lt;p&gt;A complex type that contains a list of the paths that you want to invalidate.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of objects that you want to invalidate.&lt;/p&gt;
-- Required parameter: Quantity
function M.Paths(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Paths")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertPaths(t)
	return t
end

local UpdateDistributionResult_keys = { "Distribution" = true, "ETag" = true, nil }

function M.AssertUpdateDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDistributionResult to be of type 'table'")
	if struct["Distribution"] then M.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDistributionResult_keys[k], "UpdateDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDistributionResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param Distribution [Distribution] &lt;p&gt;The distribution's information.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the configuration. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
function M.UpdateDistributionResult(Distribution, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDistributionResult")
	local t = { 
		["Distribution"] = Distribution,
		["ETag"] = ETag,
	}
	M.AssertUpdateDistributionResult(t)
	return t
end

local KeyPairIds_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertKeyPairIds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPairIds to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertKeyPairIdList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(KeyPairIds_keys[k], "KeyPairIds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPairIds
-- &lt;p&gt;A complex type that lists the active CloudFront key pairs, if any, that are associated with &lt;code&gt;AwsAccountNumber&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;For more information, see &lt;a&gt;ActiveTrustedSigners&lt;/a&gt;.&lt;/p&gt;
-- @param Items [KeyPairIdList] &lt;p&gt;A complex type that lists the active CloudFront key pairs, if any, that are associated with &lt;code&gt;AwsAccountNumber&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a&gt;ActiveTrustedSigners&lt;/a&gt;.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of active CloudFront key pairs for &lt;code&gt;AwsAccountNumber&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a&gt;ActiveTrustedSigners&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: Quantity
function M.KeyPairIds(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyPairIds")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertKeyPairIds(t)
	return t
end

local TooManyCookieNamesInWhiteList_keys = { "Message" = true, nil }

function M.AssertTooManyCookieNamesInWhiteList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyCookieNamesInWhiteList to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyCookieNamesInWhiteList_keys[k], "TooManyCookieNamesInWhiteList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyCookieNamesInWhiteList
-- &lt;p&gt;Your request contains more cookie names in the whitelist than are allowed per cache behavior.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;Your request contains more cookie names in the whitelist than are allowed per cache behavior.&lt;/p&gt;
function M.TooManyCookieNamesInWhiteList(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyCookieNamesInWhiteList")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyCookieNamesInWhiteList(t)
	return t
end

local CreateDistributionWithTagsResult_keys = { "Distribution" = true, "ETag" = true, "Location" = true, nil }

function M.AssertCreateDistributionWithTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionWithTagsResult to be of type 'table'")
	if struct["Distribution"] then M.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	if struct["Location"] then M.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(CreateDistributionWithTagsResult_keys[k], "CreateDistributionWithTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionWithTagsResult
-- &lt;p&gt;The returned result of the corresponding request. &lt;/p&gt;
-- @param Distribution [Distribution] &lt;p&gt;The distribution's information. &lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the distribution created.&lt;/p&gt;
-- @param Location [string] &lt;p&gt;The fully qualified URI of the new distribution resource just created. For example: &lt;code&gt;https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5&lt;/code&gt;. &lt;/p&gt;
function M.CreateDistributionWithTagsResult(Distribution, ETag, Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDistributionWithTagsResult")
	local t = { 
		["Distribution"] = Distribution,
		["ETag"] = ETag,
		["Location"] = Location,
	}
	M.AssertCreateDistributionWithTagsResult(t)
	return t
end

local CreateCloudFrontOriginAccessIdentityResult_keys = { "CloudFrontOriginAccessIdentity" = true, "ETag" = true, "Location" = true, nil }

function M.AssertCreateCloudFrontOriginAccessIdentityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCloudFrontOriginAccessIdentityResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentity"] then M.AssertCloudFrontOriginAccessIdentity(struct["CloudFrontOriginAccessIdentity"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	if struct["Location"] then M.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(CreateCloudFrontOriginAccessIdentityResult_keys[k], "CreateCloudFrontOriginAccessIdentityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCloudFrontOriginAccessIdentityResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param CloudFrontOriginAccessIdentity [CloudFrontOriginAccessIdentity] &lt;p&gt;The origin access identity's information.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the origin access identity created.&lt;/p&gt;
-- @param Location [string] &lt;p&gt;The fully qualified URI of the new origin access identity just created. For example: &lt;code&gt;https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/E74FTE3AJFJ256A&lt;/code&gt;.&lt;/p&gt;
function M.CreateCloudFrontOriginAccessIdentityResult(CloudFrontOriginAccessIdentity, ETag, Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCloudFrontOriginAccessIdentityResult")
	local t = { 
		["CloudFrontOriginAccessIdentity"] = CloudFrontOriginAccessIdentity,
		["ETag"] = ETag,
		["Location"] = Location,
	}
	M.AssertCreateCloudFrontOriginAccessIdentityResult(t)
	return t
end

local QueryStringCacheKeys_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertQueryStringCacheKeys(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryStringCacheKeys to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertQueryStringCacheKeysList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(QueryStringCacheKeys_keys[k], "QueryStringCacheKeys contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryStringCacheKeys
--  
-- @param Items [QueryStringCacheKeysList] &lt;p&gt;(Optional) A list that contains the query string parameters that you want CloudFront to use as a basis for caching for this cache behavior. If &lt;code&gt;Quantity&lt;/code&gt; is 0, you can omit &lt;code&gt;Items&lt;/code&gt;. &lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of &lt;code&gt;whitelisted&lt;/code&gt; query string parameters for this cache behavior.&lt;/p&gt;
-- Required parameter: Quantity
function M.QueryStringCacheKeys(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryStringCacheKeys")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertQueryStringCacheKeys(t)
	return t
end

local IllegalUpdate_keys = { "Message" = true, nil }

function M.AssertIllegalUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IllegalUpdate to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(IllegalUpdate_keys[k], "IllegalUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IllegalUpdate
-- &lt;p&gt;Origin and &lt;code&gt;CallerReference&lt;/code&gt; cannot be updated. &lt;/p&gt;
-- @param Message [string] &lt;p&gt;Origin and &lt;code&gt;CallerReference&lt;/code&gt; cannot be updated. &lt;/p&gt;
function M.IllegalUpdate(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IllegalUpdate")
	local t = { 
		["Message"] = Message,
	}
	M.AssertIllegalUpdate(t)
	return t
end

local CustomHeaders_keys = { "Items" = true, "Quantity" = true, nil }

function M.AssertCustomHeaders(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomHeaders to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertOriginCustomHeadersList(struct["Items"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(CustomHeaders_keys[k], "CustomHeaders contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomHeaders
-- &lt;p&gt;A complex type that contains the list of Custom Headers for each origin. &lt;/p&gt;
-- @param Items [OriginCustomHeadersList] &lt;p&gt; &lt;b&gt;Optional&lt;/b&gt;: A list that contains one &lt;code&gt;OriginCustomHeader&lt;/code&gt; element for each custom header that you want CloudFront to forward to the origin. If Quantity is &lt;code&gt;0&lt;/code&gt;, omit &lt;code&gt;Items&lt;/code&gt;.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;The number of custom headers, if any, for this distribution.&lt;/p&gt;
-- Required parameter: Quantity
function M.CustomHeaders(Items, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomHeaders")
	local t = { 
		["Items"] = Items,
		["Quantity"] = Quantity,
	}
	M.AssertCustomHeaders(t)
	return t
end

local GetStreamingDistributionRequest_keys = { "Id" = true, nil }

function M.AssertGetStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetStreamingDistributionRequest_keys[k], "GetStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionRequest
-- &lt;p&gt;The request to get a streaming distribution's information.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The streaming distribution's ID.&lt;/p&gt;
-- Required parameter: Id
function M.GetStreamingDistributionRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStreamingDistributionRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetStreamingDistributionRequest(t)
	return t
end

local ActiveTrustedSigners_keys = { "Items" = true, "Enabled" = true, "Quantity" = true, nil }

function M.AssertActiveTrustedSigners(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActiveTrustedSigners to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertSignerList(struct["Items"]) end
	if struct["Enabled"] then M.Assertboolean(struct["Enabled"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(ActiveTrustedSigners_keys[k], "ActiveTrustedSigners contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActiveTrustedSigners
-- &lt;p&gt;A complex type that lists the AWS accounts, if any, that you included in the &lt;code&gt;TrustedSigners&lt;/code&gt; complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.&lt;/p&gt; &lt;p&gt;The &lt;code&gt;Signer&lt;/code&gt; complex type lists the AWS account number of the trusted signer or &lt;code&gt;self&lt;/code&gt; if the signer is the AWS account that created the distribution. The &lt;code&gt;Signer&lt;/code&gt; element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no &lt;code&gt;KeyPairId&lt;/code&gt; element appears for a &lt;code&gt;Signer&lt;/code&gt;, that signer can't create signed URLs. &lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html&quot;&gt;Serving Private Content through CloudFront&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Items [SignerList] &lt;p&gt;A complex type that contains one &lt;code&gt;Signer&lt;/code&gt; complex type for each trusted signer that is specified in the &lt;code&gt;TrustedSigners&lt;/code&gt; complex type.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a&gt;ActiveTrustedSigners&lt;/a&gt;. &lt;/p&gt;
-- @param Enabled [boolean] &lt;p&gt;Enabled is &lt;code&gt;true&lt;/code&gt; if any of the AWS accounts listed in the &lt;code&gt;TrustedSigners&lt;/code&gt; complex type for this RTMP distribution have active CloudFront key pairs. If not, &lt;code&gt;Enabled&lt;/code&gt; is &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a&gt;ActiveTrustedSigners&lt;/a&gt;.&lt;/p&gt;
-- @param Quantity [integer] &lt;p&gt;A complex type that contains one &lt;code&gt;Signer&lt;/code&gt; complex type for each trusted signer specified in the &lt;code&gt;TrustedSigners&lt;/code&gt; complex type.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a&gt;ActiveTrustedSigners&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: Enabled
-- Required parameter: Quantity
function M.ActiveTrustedSigners(Items, Enabled, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActiveTrustedSigners")
	local t = { 
		["Items"] = Items,
		["Enabled"] = Enabled,
		["Quantity"] = Quantity,
	}
	M.AssertActiveTrustedSigners(t)
	return t
end

local TooManyCloudFrontOriginAccessIdentities_keys = { "Message" = true, nil }

function M.AssertTooManyCloudFrontOriginAccessIdentities(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyCloudFrontOriginAccessIdentities to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyCloudFrontOriginAccessIdentities_keys[k], "TooManyCloudFrontOriginAccessIdentities contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyCloudFrontOriginAccessIdentities
-- &lt;p&gt;Processing your request would cause you to exceed the maximum number of origin access identities allowed.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;Processing your request would cause you to exceed the maximum number of origin access identities allowed.&lt;/p&gt;
function M.TooManyCloudFrontOriginAccessIdentities(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyCloudFrontOriginAccessIdentities")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyCloudFrontOriginAccessIdentities(t)
	return t
end

local CreateStreamingDistributionWithTagsRequest_keys = { "StreamingDistributionConfigWithTags" = true, nil }

function M.AssertCreateStreamingDistributionWithTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionWithTagsRequest to be of type 'table'")
	assert(struct["StreamingDistributionConfigWithTags"], "Expected key StreamingDistributionConfigWithTags to exist in table")
	if struct["StreamingDistributionConfigWithTags"] then M.AssertStreamingDistributionConfigWithTags(struct["StreamingDistributionConfigWithTags"]) end
	for k,_ in pairs(struct) do
		assert(CreateStreamingDistributionWithTagsRequest_keys[k], "CreateStreamingDistributionWithTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionWithTagsRequest
-- &lt;p&gt;The request to create a new streaming distribution with tags.&lt;/p&gt;
-- @param StreamingDistributionConfigWithTags [StreamingDistributionConfigWithTags] &lt;p&gt; The streaming distribution's configuration information. &lt;/p&gt;
-- Required parameter: StreamingDistributionConfigWithTags
function M.CreateStreamingDistributionWithTagsRequest(StreamingDistributionConfigWithTags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingDistributionWithTagsRequest")
	local t = { 
		["StreamingDistributionConfigWithTags"] = StreamingDistributionConfigWithTags,
	}
	M.AssertCreateStreamingDistributionWithTagsRequest(t)
	return t
end

local AccessDenied_keys = { "Message" = true, nil }

function M.AssertAccessDenied(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDenied to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AccessDenied_keys[k], "AccessDenied contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDenied
-- &lt;p&gt;Access denied.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;Access denied.&lt;/p&gt;
function M.AccessDenied(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDenied")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAccessDenied(t)
	return t
end

local LoggingConfig_keys = { "Bucket" = true, "Prefix" = true, "Enabled" = true, "IncludeCookies" = true, nil }

function M.AssertLoggingConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingConfig to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["IncludeCookies"], "Expected key IncludeCookies to exist in table")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	if struct["Bucket"] then M.Assertstring(struct["Bucket"]) end
	if struct["Prefix"] then M.Assertstring(struct["Prefix"]) end
	if struct["Enabled"] then M.Assertboolean(struct["Enabled"]) end
	if struct["IncludeCookies"] then M.Assertboolean(struct["IncludeCookies"]) end
	for k,_ in pairs(struct) do
		assert(LoggingConfig_keys[k], "LoggingConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingConfig
-- &lt;p&gt;A complex type that controls whether access logs are written for the distribution.&lt;/p&gt;
-- @param Bucket [string] &lt;p&gt;The Amazon S3 bucket to store the access logs in, for example, &lt;code&gt;myawslogbucket.s3.amazonaws.com&lt;/code&gt;.&lt;/p&gt;
-- @param Prefix [string] &lt;p&gt;An optional string that you want CloudFront to prefix to the access log &lt;code&gt;filenames&lt;/code&gt; for this distribution, for example, &lt;code&gt;myprefix/&lt;/code&gt;. If you want to enable logging, but you do not want to specify a prefix, you still must include an empty &lt;code&gt;Prefix&lt;/code&gt; element in the &lt;code&gt;Logging&lt;/code&gt; element.&lt;/p&gt;
-- @param Enabled [boolean] &lt;p&gt;Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you do not want to enable logging when you create a distribution or if you want to disable logging for an existing distribution, specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt;, and specify empty &lt;code&gt;Bucket&lt;/code&gt; and &lt;code&gt;Prefix&lt;/code&gt; elements. If you specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;Enabled&lt;/code&gt; but you specify values for &lt;code&gt;Bucket&lt;/code&gt;, &lt;code&gt;prefix&lt;/code&gt;, and &lt;code&gt;IncludeCookies&lt;/code&gt;, the values are automatically deleted.&lt;/p&gt;
-- @param IncludeCookies [boolean] &lt;p&gt;Specifies whether you want CloudFront to include cookies in access logs, specify &lt;code&gt;true&lt;/code&gt; for &lt;code&gt;IncludeCookies&lt;/code&gt;. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you do not want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify &lt;code&gt;false&lt;/code&gt; for &lt;code&gt;IncludeCookies&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Enabled
-- Required parameter: IncludeCookies
-- Required parameter: Bucket
-- Required parameter: Prefix
function M.LoggingConfig(Bucket, Prefix, Enabled, IncludeCookies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoggingConfig")
	local t = { 
		["Bucket"] = Bucket,
		["Prefix"] = Prefix,
		["Enabled"] = Enabled,
		["IncludeCookies"] = IncludeCookies,
	}
	M.AssertLoggingConfig(t)
	return t
end

local ForwardedValues_keys = { "Headers" = true, "Cookies" = true, "QueryStringCacheKeys" = true, "QueryString" = true, nil }

function M.AssertForwardedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForwardedValues to be of type 'table'")
	assert(struct["QueryString"], "Expected key QueryString to exist in table")
	assert(struct["Cookies"], "Expected key Cookies to exist in table")
	if struct["Headers"] then M.AssertHeaders(struct["Headers"]) end
	if struct["Cookies"] then M.AssertCookiePreference(struct["Cookies"]) end
	if struct["QueryStringCacheKeys"] then M.AssertQueryStringCacheKeys(struct["QueryStringCacheKeys"]) end
	if struct["QueryString"] then M.Assertboolean(struct["QueryString"]) end
	for k,_ in pairs(struct) do
		assert(ForwardedValues_keys[k], "ForwardedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForwardedValues
-- &lt;p&gt;A complex type that specifies how CloudFront handles query strings and cookies.&lt;/p&gt;
-- @param Headers [Headers] &lt;p&gt;A complex type that specifies the &lt;code&gt;Headers&lt;/code&gt;, if any, that you want CloudFront to vary upon for this cache behavior. &lt;/p&gt;
-- @param Cookies [CookiePreference] &lt;p&gt;A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html&quot;&gt;How CloudFront Forwards, Caches, and Logs Cookies&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param QueryStringCacheKeys [QueryStringCacheKeys] &lt;p&gt;A complex type that contains information about the query string parameters that you want CloudFront to use for caching for this cache behavior.&lt;/p&gt;
-- @param QueryString [boolean] &lt;p&gt;Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior and cache based on the query string parameters. CloudFront behavior depends on the value of &lt;code&gt;QueryString&lt;/code&gt; and on the values that you specify for &lt;code&gt;QueryStringCacheKeys&lt;/code&gt;, if any:&lt;/p&gt; &lt;p&gt;If you specify true for &lt;code&gt;QueryString&lt;/code&gt; and you don't specify any values for &lt;code&gt;QueryStringCacheKeys&lt;/code&gt;, CloudFront forwards all query string parameters to the origin and caches based on all query string parameters. Depending on how many query string parameters and values you have, this can adversely affect performance because CloudFront must forward more requests to the origin.&lt;/p&gt; &lt;p&gt;If you specify true for &lt;code&gt;QueryString&lt;/code&gt; and you specify one or more values for &lt;code&gt;QueryStringCacheKeys&lt;/code&gt;, CloudFront forwards all query string parameters to the origin, but it only caches based on the query string parameters that you specify.&lt;/p&gt; &lt;p&gt;If you specify false for &lt;code&gt;QueryString&lt;/code&gt;, CloudFront doesn't forward any query string parameters to the origin, and doesn't cache based on query string parameters.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html&quot;&gt;Configuring CloudFront to Cache Based on Query String Parameters&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: QueryString
-- Required parameter: Cookies
function M.ForwardedValues(Headers, Cookies, QueryStringCacheKeys, QueryString, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ForwardedValues")
	local t = { 
		["Headers"] = Headers,
		["Cookies"] = Cookies,
		["QueryStringCacheKeys"] = QueryStringCacheKeys,
		["QueryString"] = QueryString,
	}
	M.AssertForwardedValues(t)
	return t
end

local TooManyTrustedSigners_keys = { "Message" = true, nil }

function M.AssertTooManyTrustedSigners(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTrustedSigners to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyTrustedSigners_keys[k], "TooManyTrustedSigners contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTrustedSigners
-- &lt;p&gt;Your request contains more trusted signers than are allowed per distribution.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;Your request contains more trusted signers than are allowed per distribution.&lt;/p&gt;
function M.TooManyTrustedSigners(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTrustedSigners")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyTrustedSigners(t)
	return t
end

local ListInvalidationsRequest_keys = { "Marker" = true, "DistributionId" = true, "MaxItems" = true, nil }

function M.AssertListInvalidationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInvalidationsRequest to be of type 'table'")
	assert(struct["DistributionId"], "Expected key DistributionId to exist in table")
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["DistributionId"] then M.Assertstring(struct["DistributionId"]) end
	if struct["MaxItems"] then M.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListInvalidationsRequest_keys[k], "ListInvalidationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInvalidationsRequest
-- &lt;p&gt;The request to list invalidations. &lt;/p&gt;
-- @param Marker [string] &lt;p&gt;Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set &lt;code&gt;Marker&lt;/code&gt; to the value of the &lt;code&gt;NextMarker&lt;/code&gt; from the current page's response. This value is the same as the ID of the last invalidation batch on that page. &lt;/p&gt;
-- @param DistributionId [string] &lt;p&gt;The distribution's ID.&lt;/p&gt;
-- @param MaxItems [string] &lt;p&gt;The maximum number of invalidation batches that you want in the response body.&lt;/p&gt;
-- Required parameter: DistributionId
function M.ListInvalidationsRequest(Marker, DistributionId, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInvalidationsRequest")
	local t = { 
		["Marker"] = Marker,
		["DistributionId"] = DistributionId,
		["MaxItems"] = MaxItems,
	}
	M.AssertListInvalidationsRequest(t)
	return t
end

local InvalidErrorCode_keys = { "Message" = true, nil }

function M.AssertInvalidErrorCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidErrorCode to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidErrorCode_keys[k], "InvalidErrorCode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidErrorCode
--  
-- @param Message [string]  
function M.InvalidErrorCode(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidErrorCode")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidErrorCode(t)
	return t
end

local UpdateCloudFrontOriginAccessIdentityRequest_keys = { "CloudFrontOriginAccessIdentityConfig" = true, "Id" = true, "IfMatch" = true, nil }

function M.AssertUpdateCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["CloudFrontOriginAccessIdentityConfig"], "Expected key CloudFrontOriginAccessIdentityConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["CloudFrontOriginAccessIdentityConfig"] then M.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then M.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(UpdateCloudFrontOriginAccessIdentityRequest_keys[k], "UpdateCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCloudFrontOriginAccessIdentityRequest
-- &lt;p&gt;The request to update an origin access identity.&lt;/p&gt;
-- @param CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] &lt;p&gt;The identity's configuration information.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The identity's id.&lt;/p&gt;
-- @param IfMatch [string] &lt;p&gt;The value of the &lt;code&gt;ETag&lt;/code&gt; header that you received when retrieving the identity's configuration. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: CloudFrontOriginAccessIdentityConfig
-- Required parameter: Id
function M.UpdateCloudFrontOriginAccessIdentityRequest(CloudFrontOriginAccessIdentityConfig, Id, IfMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCloudFrontOriginAccessIdentityRequest")
	local t = { 
		["CloudFrontOriginAccessIdentityConfig"] = CloudFrontOriginAccessIdentityConfig,
		["Id"] = Id,
		["IfMatch"] = IfMatch,
	}
	M.AssertUpdateCloudFrontOriginAccessIdentityRequest(t)
	return t
end

local DistributionNotDisabled_keys = { "Message" = true, nil }

function M.AssertDistributionNotDisabled(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionNotDisabled to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DistributionNotDisabled_keys[k], "DistributionNotDisabled contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionNotDisabled
--  
-- @param Message [string]  
function M.DistributionNotDisabled(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DistributionNotDisabled")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDistributionNotDisabled(t)
	return t
end

local LambdaFunctionAssociation_keys = { "EventType" = true, "LambdaFunctionARN" = true, nil }

function M.AssertLambdaFunctionAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionAssociation to be of type 'table'")
	if struct["EventType"] then M.AssertEventType(struct["EventType"]) end
	if struct["LambdaFunctionARN"] then M.Assertstring(struct["LambdaFunctionARN"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionAssociation_keys[k], "LambdaFunctionAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionAssociation
-- &lt;p&gt;A complex type that contains a Lambda function association.&lt;/p&gt;
-- @param EventType [EventType] &lt;p&gt;Specifies the event type that triggers a Lambda function invocation. Valid values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;viewer-request&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;origin-request&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;viewer-response&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;origin-response&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param LambdaFunctionARN [string] &lt;p&gt;The ARN of the Lambda function.&lt;/p&gt;
function M.LambdaFunctionAssociation(EventType, LambdaFunctionARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionAssociation")
	local t = { 
		["EventType"] = EventType,
		["LambdaFunctionARN"] = LambdaFunctionARN,
	}
	M.AssertLambdaFunctionAssociation(t)
	return t
end

local StreamingDistributionConfigWithTags_keys = { "Tags" = true, "StreamingDistributionConfig" = true, nil }

function M.AssertStreamingDistributionConfigWithTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionConfigWithTags to be of type 'table'")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	if struct["StreamingDistributionConfig"] then M.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(StreamingDistributionConfigWithTags_keys[k], "StreamingDistributionConfigWithTags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionConfigWithTags
-- &lt;p&gt;A streaming distribution Configuration and a list of tags to be associated with the streaming distribution.&lt;/p&gt;
-- @param Tags [Tags] &lt;p&gt;A complex type that contains zero or more &lt;code&gt;Tag&lt;/code&gt; elements.&lt;/p&gt;
-- @param StreamingDistributionConfig [StreamingDistributionConfig] &lt;p&gt;A streaming distribution Configuration.&lt;/p&gt;
-- Required parameter: StreamingDistributionConfig
-- Required parameter: Tags
function M.StreamingDistributionConfigWithTags(Tags, StreamingDistributionConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StreamingDistributionConfigWithTags")
	local t = { 
		["Tags"] = Tags,
		["StreamingDistributionConfig"] = StreamingDistributionConfig,
	}
	M.AssertStreamingDistributionConfigWithTags(t)
	return t
end

local UpdateStreamingDistributionResult_keys = { "StreamingDistribution" = true, "ETag" = true, nil }

function M.AssertUpdateStreamingDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStreamingDistributionResult to be of type 'table'")
	if struct["StreamingDistribution"] then M.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(UpdateStreamingDistributionResult_keys[k], "UpdateStreamingDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStreamingDistributionResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param StreamingDistribution [StreamingDistribution] &lt;p&gt;The streaming distribution's information.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the configuration. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
function M.UpdateStreamingDistributionResult(StreamingDistribution, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStreamingDistributionResult")
	local t = { 
		["StreamingDistribution"] = StreamingDistribution,
		["ETag"] = ETag,
	}
	M.AssertUpdateStreamingDistributionResult(t)
	return t
end

local DeleteDistributionRequest_keys = { "Id" = true, "IfMatch" = true, nil }

function M.AssertDeleteDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then M.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDistributionRequest_keys[k], "DeleteDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDistributionRequest
-- &lt;p&gt;This action deletes a web distribution. To delete a web distribution using the CloudFront API, perform the following steps.&lt;/p&gt; &lt;p&gt; &lt;b&gt;To delete a web distribution using the CloudFront API:&lt;/b&gt; &lt;/p&gt; &lt;ol&gt; &lt;li&gt; &lt;p&gt;Disable the web distribution &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Submit a &lt;code&gt;GET Distribution Config&lt;/code&gt; request to get the current configuration and the &lt;code&gt;Etag&lt;/code&gt; header for the distribution.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Update the XML document that was returned in the response to your &lt;code&gt;GET Distribution Config&lt;/code&gt; request to change the value of &lt;code&gt;Enabled&lt;/code&gt; to &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Submit a &lt;code&gt;PUT Distribution Config&lt;/code&gt; request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Set the value of the HTTP &lt;code&gt;If-Match&lt;/code&gt; header to the value of the &lt;code&gt;ETag&lt;/code&gt; header that CloudFront returned when you submitted the &lt;code&gt;GET Distribution Config&lt;/code&gt; request in Step 2.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Review the response to the &lt;code&gt;PUT Distribution Config&lt;/code&gt; request to confirm that the distribution was successfully disabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Submit a &lt;code&gt;GET Distribution&lt;/code&gt; request to confirm that your changes have propagated. When propagation is complete, the value of &lt;code&gt;Status&lt;/code&gt; is &lt;code&gt;Deployed&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Submit a &lt;code&gt;DELETE Distribution&lt;/code&gt; request. Set the value of the HTTP &lt;code&gt;If-Match&lt;/code&gt; header to the value of the &lt;code&gt;ETag&lt;/code&gt; header that CloudFront returned when you submitted the &lt;code&gt;GET Distribution Config&lt;/code&gt; request in Step 6.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Review the response to your &lt;code&gt;DELETE Distribution&lt;/code&gt; request to confirm that the distribution was successfully deleted.&lt;/p&gt; &lt;/li&gt; &lt;/ol&gt; &lt;p&gt;For information about deleting a distribution using the CloudFront console, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html&quot;&gt;Deleting a Distribution&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The distribution ID. &lt;/p&gt;
-- @param IfMatch [string] &lt;p&gt;The value of the &lt;code&gt;ETag&lt;/code&gt; header that you received when you disabled the distribution. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;. &lt;/p&gt;
-- Required parameter: Id
function M.DeleteDistributionRequest(Id, IfMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDistributionRequest")
	local t = { 
		["Id"] = Id,
		["IfMatch"] = IfMatch,
	}
	M.AssertDeleteDistributionRequest(t)
	return t
end

local CreateStreamingDistributionResult_keys = { "StreamingDistribution" = true, "Location" = true, "ETag" = true, nil }

function M.AssertCreateStreamingDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionResult to be of type 'table'")
	if struct["StreamingDistribution"] then M.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["Location"] then M.Assertstring(struct["Location"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(CreateStreamingDistributionResult_keys[k], "CreateStreamingDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param StreamingDistribution [StreamingDistribution] &lt;p&gt;The streaming distribution's information.&lt;/p&gt;
-- @param Location [string] &lt;p&gt;The fully qualified URI of the new streaming distribution resource just created. For example: &lt;code&gt;https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8&lt;/code&gt;.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the streaming distribution created.&lt;/p&gt;
function M.CreateStreamingDistributionResult(StreamingDistribution, Location, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStreamingDistributionResult")
	local t = { 
		["StreamingDistribution"] = StreamingDistribution,
		["Location"] = Location,
		["ETag"] = ETag,
	}
	M.AssertCreateStreamingDistributionResult(t)
	return t
end

local ListStreamingDistributionsResult_keys = { "StreamingDistributionList" = true, nil }

function M.AssertListStreamingDistributionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamingDistributionsResult to be of type 'table'")
	if struct["StreamingDistributionList"] then M.AssertStreamingDistributionList(struct["StreamingDistributionList"]) end
	for k,_ in pairs(struct) do
		assert(ListStreamingDistributionsResult_keys[k], "ListStreamingDistributionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamingDistributionsResult
-- &lt;p&gt;The returned result of the corresponding request. &lt;/p&gt;
-- @param StreamingDistributionList [StreamingDistributionList] &lt;p&gt;The &lt;code&gt;StreamingDistributionList&lt;/code&gt; type. &lt;/p&gt;
function M.ListStreamingDistributionsResult(StreamingDistributionList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStreamingDistributionsResult")
	local t = { 
		["StreamingDistributionList"] = StreamingDistributionList,
	}
	M.AssertListStreamingDistributionsResult(t)
	return t
end

local DeleteCloudFrontOriginAccessIdentityRequest_keys = { "Id" = true, "IfMatch" = true, nil }

function M.AssertDeleteCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then M.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCloudFrontOriginAccessIdentityRequest_keys[k], "DeleteCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCloudFrontOriginAccessIdentityRequest
-- &lt;p&gt;Deletes a origin access identity.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The origin access identity's ID.&lt;/p&gt;
-- @param IfMatch [string] &lt;p&gt;The value of the &lt;code&gt;ETag&lt;/code&gt; header you received from a previous &lt;code&gt;GET&lt;/code&gt; or &lt;code&gt;PUT&lt;/code&gt; request. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Id
function M.DeleteCloudFrontOriginAccessIdentityRequest(Id, IfMatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCloudFrontOriginAccessIdentityRequest")
	local t = { 
		["Id"] = Id,
		["IfMatch"] = IfMatch,
	}
	M.AssertDeleteCloudFrontOriginAccessIdentityRequest(t)
	return t
end

local ListDistributionsByWebACLIdRequest_keys = { "Marker" = true, "WebACLId" = true, "MaxItems" = true, nil }

function M.AssertListDistributionsByWebACLIdRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsByWebACLIdRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	if struct["Marker"] then M.Assertstring(struct["Marker"]) end
	if struct["WebACLId"] then M.Assertstring(struct["WebACLId"]) end
	if struct["MaxItems"] then M.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListDistributionsByWebACLIdRequest_keys[k], "ListDistributionsByWebACLIdRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsByWebACLIdRequest
-- &lt;p&gt;The request to list distributions that are associated with a specified AWS WAF web ACL. &lt;/p&gt;
-- @param Marker [string] &lt;p&gt;Use &lt;code&gt;Marker&lt;/code&gt; and &lt;code&gt;MaxItems&lt;/code&gt; to control pagination of results. If you have more than &lt;code&gt;MaxItems&lt;/code&gt; distributions that satisfy the request, the response includes a &lt;code&gt;NextMarker&lt;/code&gt; element. To get the next page of results, submit another request. For the value of &lt;code&gt;Marker&lt;/code&gt;, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the last response. (For the first request, omit &lt;code&gt;Marker&lt;/code&gt;.) &lt;/p&gt;
-- @param WebACLId [string] &lt;p&gt;The ID of the AWS WAF web ACL that you want to list the associated distributions. If you specify &quot;null&quot; for the ID, the request returns a list of the distributions that aren't associated with a web ACL. &lt;/p&gt;
-- @param MaxItems [string] &lt;p&gt;The maximum number of distributions that you want CloudFront to return in the response body. The maximum and default values are both 100.&lt;/p&gt;
-- Required parameter: WebACLId
function M.ListDistributionsByWebACLIdRequest(Marker, WebACLId, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDistributionsByWebACLIdRequest")
	local t = { 
		["Marker"] = Marker,
		["WebACLId"] = WebACLId,
		["MaxItems"] = MaxItems,
	}
	M.AssertListDistributionsByWebACLIdRequest(t)
	return t
end

local GetInvalidationRequest_keys = { "DistributionId" = true, "Id" = true, nil }

function M.AssertGetInvalidationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInvalidationRequest to be of type 'table'")
	assert(struct["DistributionId"], "Expected key DistributionId to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["DistributionId"] then M.Assertstring(struct["DistributionId"]) end
	if struct["Id"] then M.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetInvalidationRequest_keys[k], "GetInvalidationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInvalidationRequest
-- &lt;p&gt;The request to get an invalidation's information. &lt;/p&gt;
-- @param DistributionId [string] &lt;p&gt;The distribution's ID.&lt;/p&gt;
-- @param Id [string] &lt;p&gt;The identifier for the invalidation request, for example, &lt;code&gt;IDFDVBD632BHDS5&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: DistributionId
-- Required parameter: Id
function M.GetInvalidationRequest(DistributionId, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInvalidationRequest")
	local t = { 
		["DistributionId"] = DistributionId,
		["Id"] = Id,
	}
	M.AssertGetInvalidationRequest(t)
	return t
end

local CreateCloudFrontOriginAccessIdentityRequest_keys = { "CloudFrontOriginAccessIdentityConfig" = true, nil }

function M.AssertCreateCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["CloudFrontOriginAccessIdentityConfig"], "Expected key CloudFrontOriginAccessIdentityConfig to exist in table")
	if struct["CloudFrontOriginAccessIdentityConfig"] then M.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	for k,_ in pairs(struct) do
		assert(CreateCloudFrontOriginAccessIdentityRequest_keys[k], "CreateCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCloudFrontOriginAccessIdentityRequest
-- &lt;p&gt;The request to create a new origin access identity.&lt;/p&gt;
-- @param CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] &lt;p&gt;The current configuration information for the identity.&lt;/p&gt;
-- Required parameter: CloudFrontOriginAccessIdentityConfig
function M.CreateCloudFrontOriginAccessIdentityRequest(CloudFrontOriginAccessIdentityConfig, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCloudFrontOriginAccessIdentityRequest")
	local t = { 
		["CloudFrontOriginAccessIdentityConfig"] = CloudFrontOriginAccessIdentityConfig,
	}
	M.AssertCreateCloudFrontOriginAccessIdentityRequest(t)
	return t
end

local GetStreamingDistributionResult_keys = { "StreamingDistribution" = true, "ETag" = true, nil }

function M.AssertGetStreamingDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionResult to be of type 'table'")
	if struct["StreamingDistribution"] then M.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(GetStreamingDistributionResult_keys[k], "GetStreamingDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param StreamingDistribution [StreamingDistribution] &lt;p&gt;The streaming distribution's information.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the streaming distribution's information. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
function M.GetStreamingDistributionResult(StreamingDistribution, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStreamingDistributionResult")
	local t = { 
		["StreamingDistribution"] = StreamingDistribution,
		["ETag"] = ETag,
	}
	M.AssertGetStreamingDistributionResult(t)
	return t
end

local CustomOriginConfig_keys = { "OriginSslProtocols" = true, "OriginProtocolPolicy" = true, "OriginReadTimeout" = true, "HTTPPort" = true, "HTTPSPort" = true, "OriginKeepaliveTimeout" = true, nil }

function M.AssertCustomOriginConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomOriginConfig to be of type 'table'")
	assert(struct["HTTPPort"], "Expected key HTTPPort to exist in table")
	assert(struct["HTTPSPort"], "Expected key HTTPSPort to exist in table")
	assert(struct["OriginProtocolPolicy"], "Expected key OriginProtocolPolicy to exist in table")
	if struct["OriginSslProtocols"] then M.AssertOriginSslProtocols(struct["OriginSslProtocols"]) end
	if struct["OriginProtocolPolicy"] then M.AssertOriginProtocolPolicy(struct["OriginProtocolPolicy"]) end
	if struct["OriginReadTimeout"] then M.Assertinteger(struct["OriginReadTimeout"]) end
	if struct["HTTPPort"] then M.Assertinteger(struct["HTTPPort"]) end
	if struct["HTTPSPort"] then M.Assertinteger(struct["HTTPSPort"]) end
	if struct["OriginKeepaliveTimeout"] then M.Assertinteger(struct["OriginKeepaliveTimeout"]) end
	for k,_ in pairs(struct) do
		assert(CustomOriginConfig_keys[k], "CustomOriginConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomOriginConfig
-- &lt;p&gt;A customer origin.&lt;/p&gt;
-- @param OriginSslProtocols [OriginSslProtocols] &lt;p&gt;The SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.&lt;/p&gt;
-- @param OriginProtocolPolicy [OriginProtocolPolicy] &lt;p&gt;The origin protocol policy to apply to your origin.&lt;/p&gt;
-- @param OriginReadTimeout [integer] &lt;p&gt;You can create a custom origin read timeout. All timeout units are in seconds. The default origin read timeout is 30 seconds, but you can configure custom timeout lengths using the CloudFront API. The minimum timeout length is 4 seconds; the maximum is 60 seconds.&lt;/p&gt; &lt;p&gt;If you need to increase the maximum time limit, contact the &lt;a href=&quot;https://console.aws.amazon.com/support/home#/&quot;&gt;AWS Support Center&lt;/a&gt;.&lt;/p&gt;
-- @param HTTPPort [integer] &lt;p&gt;The HTTP port the custom origin listens on.&lt;/p&gt;
-- @param HTTPSPort [integer] &lt;p&gt;The HTTPS port the custom origin listens on.&lt;/p&gt;
-- @param OriginKeepaliveTimeout [integer] &lt;p&gt;You can create a custom keep-alive timeout. All timeout units are in seconds. The default keep-alive timeout is 5 seconds, but you can configure custom timeout lengths using the CloudFront API. The minimum timeout length is 1 second; the maximum is 60 seconds.&lt;/p&gt; &lt;p&gt;If you need to increase the maximum time limit, contact the &lt;a href=&quot;https://console.aws.amazon.com/support/home#/&quot;&gt;AWS Support Center&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: HTTPPort
-- Required parameter: HTTPSPort
-- Required parameter: OriginProtocolPolicy
function M.CustomOriginConfig(OriginSslProtocols, OriginProtocolPolicy, OriginReadTimeout, HTTPPort, HTTPSPort, OriginKeepaliveTimeout, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomOriginConfig")
	local t = { 
		["OriginSslProtocols"] = OriginSslProtocols,
		["OriginProtocolPolicy"] = OriginProtocolPolicy,
		["OriginReadTimeout"] = OriginReadTimeout,
		["HTTPPort"] = HTTPPort,
		["HTTPSPort"] = HTTPSPort,
		["OriginKeepaliveTimeout"] = OriginKeepaliveTimeout,
	}
	M.AssertCustomOriginConfig(t)
	return t
end

local GetCloudFrontOriginAccessIdentityResult_keys = { "CloudFrontOriginAccessIdentity" = true, "ETag" = true, nil }

function M.AssertGetCloudFrontOriginAccessIdentityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentity"] then M.AssertCloudFrontOriginAccessIdentity(struct["CloudFrontOriginAccessIdentity"]) end
	if struct["ETag"] then M.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(GetCloudFrontOriginAccessIdentityResult_keys[k], "GetCloudFrontOriginAccessIdentityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityResult
-- &lt;p&gt;The returned result of the corresponding request.&lt;/p&gt;
-- @param CloudFrontOriginAccessIdentity [CloudFrontOriginAccessIdentity] &lt;p&gt;The origin access identity's information.&lt;/p&gt;
-- @param ETag [string] &lt;p&gt;The current version of the origin access identity's information. For example: &lt;code&gt;E2QWRUHAPOMQZL&lt;/code&gt;.&lt;/p&gt;
function M.GetCloudFrontOriginAccessIdentityResult(CloudFrontOriginAccessIdentity, ETag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCloudFrontOriginAccessIdentityResult")
	local t = { 
		["CloudFrontOriginAccessIdentity"] = CloudFrontOriginAccessIdentity,
		["ETag"] = ETag,
	}
	M.AssertGetCloudFrontOriginAccessIdentityResult(t)
	return t
end

local InvalidOriginKeepaliveTimeout_keys = { "Message" = true, nil }

function M.AssertInvalidOriginKeepaliveTimeout(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOriginKeepaliveTimeout to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidOriginKeepaliveTimeout_keys[k], "InvalidOriginKeepaliveTimeout contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOriginKeepaliveTimeout
--  
-- @param Message [string]  
function M.InvalidOriginKeepaliveTimeout(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOriginKeepaliveTimeout")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidOriginKeepaliveTimeout(t)
	return t
end

local GeoRestriction_keys = { "Items" = true, "RestrictionType" = true, "Quantity" = true, nil }

function M.AssertGeoRestriction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoRestriction to be of type 'table'")
	assert(struct["RestrictionType"], "Expected key RestrictionType to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then M.AssertLocationList(struct["Items"]) end
	if struct["RestrictionType"] then M.AssertGeoRestrictionType(struct["RestrictionType"]) end
	if struct["Quantity"] then M.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(GeoRestriction_keys[k], "GeoRestriction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoRestriction
-- &lt;p&gt;A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using &lt;code&gt;MaxMind&lt;/code&gt; GeoIP databases. &lt;/p&gt;
-- @param Items [LocationList] &lt;p&gt; A complex type that contains a &lt;code&gt;Location&lt;/code&gt; element for each country in which you want CloudFront either to distribute your content (&lt;code&gt;whitelist&lt;/code&gt;) or not distribute your content (&lt;code&gt;blacklist&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;The &lt;code&gt;Location&lt;/code&gt; element is a two-letter, uppercase country code for a country that you want to include in your &lt;code&gt;blacklist&lt;/code&gt; or &lt;code&gt;whitelist&lt;/code&gt;. Include one &lt;code&gt;Location&lt;/code&gt; element for each country.&lt;/p&gt; &lt;p&gt;CloudFront and &lt;code&gt;MaxMind&lt;/code&gt; both use &lt;code&gt;ISO 3166&lt;/code&gt; country codes. For the current list of countries and the corresponding codes, see &lt;code&gt;ISO 3166-1-alpha-2&lt;/code&gt; code on the &lt;i&gt;International Organization for Standardization&lt;/i&gt; website. You can also refer to the country list in the CloudFront console, which includes both country names and codes.&lt;/p&gt;
-- @param RestrictionType [GeoRestrictionType] &lt;p&gt;The method that you want to use to restrict distribution of your content by country:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;none&lt;/code&gt;: No geo restriction is enabled, meaning access to content is not restricted by client geo location.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;blacklist&lt;/code&gt;: The &lt;code&gt;Location&lt;/code&gt; elements specify the countries in which you do not want CloudFront to distribute your content.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;whitelist&lt;/code&gt;: The &lt;code&gt;Location&lt;/code&gt; elements specify the countries in which you want CloudFront to distribute your content.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Quantity [integer] &lt;p&gt;When geo restriction is &lt;code&gt;enabled&lt;/code&gt;, this is the number of countries in your &lt;code&gt;whitelist&lt;/code&gt; or &lt;code&gt;blacklist&lt;/code&gt;. Otherwise, when it is not enabled, &lt;code&gt;Quantity&lt;/code&gt; is &lt;code&gt;0&lt;/code&gt;, and you can omit &lt;code&gt;Items&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: RestrictionType
-- Required parameter: Quantity
function M.GeoRestriction(Items, RestrictionType, Quantity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GeoRestriction")
	local t = { 
		["Items"] = Items,
		["RestrictionType"] = RestrictionType,
		["Quantity"] = Quantity,
	}
	M.AssertGeoRestriction(t)
	return t
end

local CookiePreference_keys = { "Forward" = true, "WhitelistedNames" = true, nil }

function M.AssertCookiePreference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CookiePreference to be of type 'table'")
	assert(struct["Forward"], "Expected key Forward to exist in table")
	if struct["Forward"] then M.AssertItemSelection(struct["Forward"]) end
	if struct["WhitelistedNames"] then M.AssertCookieNames(struct["WhitelistedNames"]) end
	for k,_ in pairs(struct) do
		assert(CookiePreference_keys[k], "CookiePreference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CookiePreference
-- &lt;p&gt;A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html&quot;&gt;How CloudFront Forwards, Caches, and Logs Cookies&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Forward [ItemSelection] &lt;p&gt;Specifies which cookies to forward to the origin for this cache behavior: all, none, or the list of cookies specified in the &lt;code&gt;WhitelistedNames&lt;/code&gt; complex type.&lt;/p&gt; &lt;p&gt;Amazon S3 doesn't process cookies. When the cache behavior is forwarding requests to an Amazon S3 origin, specify none for the &lt;code&gt;Forward&lt;/code&gt; element. &lt;/p&gt;
-- @param WhitelistedNames [CookieNames] &lt;p&gt;Required if you specify &lt;code&gt;whitelist&lt;/code&gt; for the value of &lt;code&gt;Forward:&lt;/code&gt;. A complex type that specifies how many different cookies you want CloudFront to forward to the origin for this cache behavior and, if you want to forward selected cookies, the names of those cookies.&lt;/p&gt; &lt;p&gt;If you specify &lt;code&gt;all&lt;/code&gt; or none for the value of &lt;code&gt;Forward&lt;/code&gt;, omit &lt;code&gt;WhitelistedNames&lt;/code&gt;. If you change the value of &lt;code&gt;Forward&lt;/code&gt; from &lt;code&gt;whitelist&lt;/code&gt; to all or none and you don't delete the &lt;code&gt;WhitelistedNames&lt;/code&gt; element and its child elements, CloudFront deletes them automatically.&lt;/p&gt; &lt;p&gt;For the current limit on the number of cookie names that you can whitelist for each cache behavior, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront&quot;&gt;Amazon CloudFront Limits&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: Forward
function M.CookiePreference(Forward, WhitelistedNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CookiePreference")
	local t = { 
		["Forward"] = Forward,
		["WhitelistedNames"] = WhitelistedNames,
	}
	M.AssertCookiePreference(t)
	return t
end

local InvalidLambdaFunctionAssociation_keys = { "Message" = true, nil }

function M.AssertInvalidLambdaFunctionAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLambdaFunctionAssociation to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidLambdaFunctionAssociation_keys[k], "InvalidLambdaFunctionAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLambdaFunctionAssociation
-- &lt;p&gt;The specified Lambda function association is invalid.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The specified Lambda function association is invalid.&lt;/p&gt;
function M.InvalidLambdaFunctionAssociation(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLambdaFunctionAssociation")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidLambdaFunctionAssociation(t)
	return t
end

local NoSuchDistribution_keys = { "Message" = true, nil }

function M.AssertNoSuchDistribution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchDistribution to be of type 'table'")
	if struct["Message"] then M.Assertstring(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchDistribution_keys[k], "NoSuchDistribution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchDistribution
-- &lt;p&gt;The specified distribution does not exist.&lt;/p&gt;
-- @param Message [string] &lt;p&gt;The specified distribution does not exist.&lt;/p&gt;
function M.NoSuchDistribution(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchDistribution")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNoSuchDistribution(t)
	return t
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

-- &lt;p&gt; A string that contains &lt;code&gt;Tag&lt;/code&gt; key.&lt;/p&gt; &lt;p&gt;The string length should be between 1 and 128 characters. Valid characters include &lt;code&gt;a-z&lt;/code&gt;, &lt;code&gt;A-Z&lt;/code&gt;, &lt;code&gt;0-9&lt;/code&gt;, space, and the special characters &lt;code&gt;_ - . : / = + @&lt;/code&gt;.&lt;/p&gt;
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertSSLSupportMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected SSLSupportMethod to be of type 'string'")
end

--  
function M.SSLSupportMethod(str)
	M.AssertSSLSupportMethod(str)
	return str
end

function M.AssertMinimumProtocolVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected MinimumProtocolVersion to be of type 'string'")
end

--  
function M.MinimumProtocolVersion(str)
	M.AssertMinimumProtocolVersion(str)
	return str
end

function M.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	M.Assertstring(str)
	return str
end

function M.AssertHttpVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpVersion to be of type 'string'")
end

--  
function M.HttpVersion(str)
	M.AssertHttpVersion(str)
	return str
end

function M.AssertPriceClass(str)
	assert(str)
	assert(type(str) == "string", "Expected PriceClass to be of type 'string'")
end

--  
function M.PriceClass(str)
	M.AssertPriceClass(str)
	return str
end

function M.AssertGeoRestrictionType(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoRestrictionType to be of type 'string'")
end

--  
function M.GeoRestrictionType(str)
	M.AssertGeoRestrictionType(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected Method to be of type 'string'")
end

--  
function M.Method(str)
	M.AssertMethod(str)
	return str
end

function M.AssertCertificateSource(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateSource to be of type 'string'")
end

--  
function M.CertificateSource(str)
	M.AssertCertificateSource(str)
	return str
end

function M.AssertEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventType to be of type 'string'")
end

--  
function M.EventType(str)
	M.AssertEventType(str)
	return str
end

function M.AssertOriginProtocolPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected OriginProtocolPolicy to be of type 'string'")
end

--  
function M.OriginProtocolPolicy(str)
	M.AssertOriginProtocolPolicy(str)
	return str
end

function M.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(str:match("arn:aws:cloudfront::[0-9]+:.*"), "Expected string to match pattern 'arn:aws:cloudfront::[0-9]+:.*'")
end

--  
function M.ResourceARN(str)
	M.AssertResourceARN(str)
	return str
end

function M.AssertItemSelection(str)
	assert(str)
	assert(type(str) == "string", "Expected ItemSelection to be of type 'string'")
end

--  
function M.ItemSelection(str)
	M.AssertItemSelection(str)
	return str
end

function M.AssertSslProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected SslProtocol to be of type 'string'")
end

--  
function M.SslProtocol(str)
	M.AssertSslProtocol(str)
	return str
end

function M.AssertViewerProtocolPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ViewerProtocolPolicy to be of type 'string'")
end

--  
function M.ViewerProtocolPolicy(str)
	M.AssertViewerProtocolPolicy(str)
	return str
end

function M.Assertlong(long)
	assert(long)
	assert(type(long) == "number", "Expected long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.long(long)
	M.Assertlong(long)
	return long
end

function M.Assertinteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.integer(integer)
	M.Assertinteger(integer)
	return integer
end

function M.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	M.Assertboolean(boolean)
	return boolean
end

function M.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	M.Asserttimestamp(timestamp)
	return timestamp
end

function M.AssertDistributionSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DistributionSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDistributionSummary(v)
	end
end

--  
-- List of DistributionSummary objects
function M.DistributionSummaryList(list)
	M.AssertDistributionSummaryList(list)
	return list
end

function M.AssertSignerList(list)
	assert(list)
	assert(type(list) == "table", "Expected SignerList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSigner(v)
	end
end

--  
-- List of Signer objects
function M.SignerList(list)
	M.AssertSignerList(list)
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

function M.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.AliasList(list)
	M.AssertAliasList(list)
	return list
end

function M.AssertSslProtocolsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SslProtocolsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSslProtocol(v)
	end
end

--  
-- List of SslProtocol objects
function M.SslProtocolsList(list)
	M.AssertSslProtocolsList(list)
	return list
end

function M.AssertKeyPairIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyPairIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.KeyPairIdList(list)
	M.AssertKeyPairIdList(list)
	return list
end

function M.AssertCacheBehaviorList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheBehaviorList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCacheBehavior(v)
	end
end

--  
-- List of CacheBehavior objects
function M.CacheBehaviorList(list)
	M.AssertCacheBehaviorList(list)
	return list
end

function M.AssertCustomErrorResponseList(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomErrorResponseList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCustomErrorResponse(v)
	end
end

--  
-- List of CustomErrorResponse objects
function M.CustomErrorResponseList(list)
	M.AssertCustomErrorResponseList(list)
	return list
end

function M.AssertAwsAccountNumberList(list)
	assert(list)
	assert(type(list) == "table", "Expected AwsAccountNumberList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.AwsAccountNumberList(list)
	M.AssertAwsAccountNumberList(list)
	return list
end

function M.AssertHeaderList(list)
	assert(list)
	assert(type(list) == "table", "Expected HeaderList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.HeaderList(list)
	M.AssertHeaderList(list)
	return list
end

function M.AssertLambdaFunctionAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LambdaFunctionAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLambdaFunctionAssociation(v)
	end
end

--  
-- List of LambdaFunctionAssociation objects
function M.LambdaFunctionAssociationList(list)
	M.AssertLambdaFunctionAssociationList(list)
	return list
end

function M.AssertStreamingDistributionSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected StreamingDistributionSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStreamingDistributionSummary(v)
	end
end

--  
-- List of StreamingDistributionSummary objects
function M.StreamingDistributionSummaryList(list)
	M.AssertStreamingDistributionSummaryList(list)
	return list
end

function M.AssertPathList(list)
	assert(list)
	assert(type(list) == "table", "Expected PathList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.PathList(list)
	M.AssertPathList(list)
	return list
end

function M.AssertOriginList(list)
	assert(list)
	assert(type(list) == "table", "Expected OriginList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertOrigin(v)
	end
end

--  
-- List of Origin objects
function M.OriginList(list)
	M.AssertOriginList(list)
	return list
end

function M.AssertOriginCustomHeadersList(list)
	assert(list)
	assert(type(list) == "table", "Expected OriginCustomHeadersList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOriginCustomHeader(v)
	end
end

--  
-- List of OriginCustomHeader objects
function M.OriginCustomHeadersList(list)
	M.AssertOriginCustomHeadersList(list)
	return list
end

function M.AssertCookieNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected CookieNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.CookieNameList(list)
	M.AssertCookieNameList(list)
	return list
end

function M.AssertLocationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocationList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.LocationList(list)
	M.AssertLocationList(list)
	return list
end

function M.AssertCloudFrontOriginAccessIdentitySummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudFrontOriginAccessIdentitySummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCloudFrontOriginAccessIdentitySummary(v)
	end
end

--  
-- List of CloudFrontOriginAccessIdentitySummary objects
function M.CloudFrontOriginAccessIdentitySummaryList(list)
	M.AssertCloudFrontOriginAccessIdentitySummaryList(list)
	return list
end

function M.AssertQueryStringCacheKeysList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueryStringCacheKeysList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertstring(v)
	end
end

--  
-- List of string objects
function M.QueryStringCacheKeysList(list)
	M.AssertQueryStringCacheKeysList(list)
	return list
end

function M.AssertMethodsList(list)
	assert(list)
	assert(type(list) == "table", "Expected MethodsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMethod(v)
	end
end

--  
-- List of Method objects
function M.MethodsList(list)
	M.AssertMethodsList(list)
	return list
end

function M.AssertInvalidationSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected InvalidationSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInvalidationSummary(v)
	end
end

--  
-- List of InvalidationSummary objects
function M.InvalidationSummaryList(list)
	M.AssertInvalidationSummaryList(list)
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
			return "cloudfront.amazonaws.com"
		end
	end
	local ss = { "cloudfront" }
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
--- UpdateStreamingDistribution2017_03_25
-- @param UpdateStreamingDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateStreamingDistribution2017_03_25Async(UpdateStreamingDistributionRequest, cb)
	assert(UpdateStreamingDistributionRequest, "You must provide a UpdateStreamingDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateStreamingDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution/{Id}/config", UpdateStreamingDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDistributions2017_03_25
-- @param ListDistributionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDistributions2017_03_25Async(ListDistributionsRequest, cb)
	assert(ListDistributionsRequest, "You must provide a ListDistributionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDistributions2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution", ListDistributionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetStreamingDistribution2017_03_25
-- @param GetStreamingDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStreamingDistribution2017_03_25Async(GetStreamingDistributionRequest, cb)
	assert(GetStreamingDistributionRequest, "You must provide a GetStreamingDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetStreamingDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution/{Id}", GetStreamingDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateStreamingDistributionWithTags2017_03_25
-- @param CreateStreamingDistributionWithTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStreamingDistributionWithTags2017_03_25Async(CreateStreamingDistributionWithTagsRequest, cb)
	assert(CreateStreamingDistributionWithTagsRequest, "You must provide a CreateStreamingDistributionWithTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateStreamingDistributionWithTags2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution?WithTags", CreateStreamingDistributionWithTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDistribution2017_03_25
-- @param CreateDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDistribution2017_03_25Async(CreateDistributionRequest, cb)
	assert(CreateDistributionRequest, "You must provide a CreateDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution", CreateDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListInvalidations2017_03_25
-- @param ListInvalidationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListInvalidations2017_03_25Async(ListInvalidationsRequest, cb)
	assert(ListInvalidationsRequest, "You must provide a ListInvalidationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListInvalidations2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{DistributionId}/invalidation", ListInvalidationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListStreamingDistributions2017_03_25
-- @param ListStreamingDistributionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListStreamingDistributions2017_03_25Async(ListStreamingDistributionsRequest, cb)
	assert(ListStreamingDistributionsRequest, "You must provide a ListStreamingDistributionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListStreamingDistributions2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution", ListStreamingDistributionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDistribution2017_03_25
-- @param UpdateDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDistribution2017_03_25Async(UpdateDistributionRequest, cb)
	assert(UpdateDistributionRequest, "You must provide a UpdateDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{Id}/config", UpdateDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateStreamingDistribution2017_03_25
-- @param CreateStreamingDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStreamingDistribution2017_03_25Async(CreateStreamingDistributionRequest, cb)
	assert(CreateStreamingDistributionRequest, "You must provide a CreateStreamingDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateStreamingDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution", CreateStreamingDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDistribution2017_03_25
-- @param DeleteDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDistribution2017_03_25Async(DeleteDistributionRequest, cb)
	assert(DeleteDistributionRequest, "You must provide a DeleteDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{Id}", DeleteDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TagResource2017_03_25
-- @param TagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagResource2017_03_25Async(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TagResource2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/tagging?Operation=Tag", TagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInvalidation2017_03_25
-- @param GetInvalidationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInvalidation2017_03_25Async(GetInvalidationRequest, cb)
	assert(GetInvalidationRequest, "You must provide a GetInvalidationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetInvalidation2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{DistributionId}/invalidation/{Id}", GetInvalidationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCloudFrontOriginAccessIdentity2017_03_25
-- @param DeleteCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCloudFrontOriginAccessIdentity2017_03_25Async(DeleteCloudFrontOriginAccessIdentityRequest, cb)
	assert(DeleteCloudFrontOriginAccessIdentityRequest, "You must provide a DeleteCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCloudFrontOriginAccessIdentity2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront/{Id}", DeleteCloudFrontOriginAccessIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCloudFrontOriginAccessIdentities2017_03_25
-- @param ListCloudFrontOriginAccessIdentitiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCloudFrontOriginAccessIdentities2017_03_25Async(ListCloudFrontOriginAccessIdentitiesRequest, cb)
	assert(ListCloudFrontOriginAccessIdentitiesRequest, "You must provide a ListCloudFrontOriginAccessIdentitiesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListCloudFrontOriginAccessIdentities2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront", ListCloudFrontOriginAccessIdentitiesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetStreamingDistributionConfig2017_03_25
-- @param GetStreamingDistributionConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStreamingDistributionConfig2017_03_25Async(GetStreamingDistributionConfigRequest, cb)
	assert(GetStreamingDistributionConfigRequest, "You must provide a GetStreamingDistributionConfigRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetStreamingDistributionConfig2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution/{Id}/config", GetStreamingDistributionConfigRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCloudFrontOriginAccessIdentity2017_03_25
-- @param GetCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCloudFrontOriginAccessIdentity2017_03_25Async(GetCloudFrontOriginAccessIdentityRequest, cb)
	assert(GetCloudFrontOriginAccessIdentityRequest, "You must provide a GetCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCloudFrontOriginAccessIdentity2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront/{Id}", GetCloudFrontOriginAccessIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDistribution2017_03_25
-- @param GetDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDistribution2017_03_25Async(GetDistributionRequest, cb)
	assert(GetDistributionRequest, "You must provide a GetDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{Id}", GetDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCloudFrontOriginAccessIdentityConfig2017_03_25
-- @param GetCloudFrontOriginAccessIdentityConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCloudFrontOriginAccessIdentityConfig2017_03_25Async(GetCloudFrontOriginAccessIdentityConfigRequest, cb)
	assert(GetCloudFrontOriginAccessIdentityConfigRequest, "You must provide a GetCloudFrontOriginAccessIdentityConfigRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCloudFrontOriginAccessIdentityConfig2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront/{Id}/config", GetCloudFrontOriginAccessIdentityConfigRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDistributionConfig2017_03_25
-- @param GetDistributionConfigRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDistributionConfig2017_03_25Async(GetDistributionConfigRequest, cb)
	assert(GetDistributionConfigRequest, "You must provide a GetDistributionConfigRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDistributionConfig2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{Id}/config", GetDistributionConfigRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCloudFrontOriginAccessIdentity2017_03_25
-- @param CreateCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCloudFrontOriginAccessIdentity2017_03_25Async(CreateCloudFrontOriginAccessIdentityRequest, cb)
	assert(CreateCloudFrontOriginAccessIdentityRequest, "You must provide a CreateCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCloudFrontOriginAccessIdentity2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront", CreateCloudFrontOriginAccessIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteStreamingDistribution2017_03_25
-- @param DeleteStreamingDistributionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStreamingDistribution2017_03_25Async(DeleteStreamingDistributionRequest, cb)
	assert(DeleteStreamingDistributionRequest, "You must provide a DeleteStreamingDistributionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteStreamingDistribution2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2017-03-25/streaming-distribution/{Id}", DeleteStreamingDistributionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDistributionWithTags2017_03_25
-- @param CreateDistributionWithTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDistributionWithTags2017_03_25Async(CreateDistributionWithTagsRequest, cb)
	assert(CreateDistributionWithTagsRequest, "You must provide a CreateDistributionWithTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDistributionWithTags2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution?WithTags", CreateDistributionWithTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateCloudFrontOriginAccessIdentity2017_03_25
-- @param UpdateCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateCloudFrontOriginAccessIdentity2017_03_25Async(UpdateCloudFrontOriginAccessIdentityRequest, cb)
	assert(UpdateCloudFrontOriginAccessIdentityRequest, "You must provide a UpdateCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateCloudFrontOriginAccessIdentity2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2017-03-25/origin-access-identity/cloudfront/{Id}/config", UpdateCloudFrontOriginAccessIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UntagResource2017_03_25
-- @param UntagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResource2017_03_25Async(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UntagResource2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/tagging?Operation=Untag", UntagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateInvalidation2017_03_25
-- @param CreateInvalidationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInvalidation2017_03_25Async(CreateInvalidationRequest, cb)
	assert(CreateInvalidationRequest, "You must provide a CreateInvalidationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateInvalidation2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distribution/{DistributionId}/invalidation", CreateInvalidationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDistributionsByWebACLId2017_03_25
-- @param ListDistributionsByWebACLIdRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDistributionsByWebACLId2017_03_25Async(ListDistributionsByWebACLIdRequest, cb)
	assert(ListDistributionsByWebACLIdRequest, "You must provide a ListDistributionsByWebACLIdRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDistributionsByWebACLId2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/distributionsByWebACLId/{WebACLId}", ListDistributionsByWebACLIdRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForResource2017_03_25
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResource2017_03_25Async(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTagsForResource2017_03_25",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-25/tagging", ListTagsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
