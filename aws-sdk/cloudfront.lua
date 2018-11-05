--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudFront (cloudfront-2018-06-18)

local M = {}

M.metadata = {
	api_version = "2018-06-18",
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
	uid = "cloudfront-2018-06-18",
}

local keys = {}
local asserts = {}

keys.GetCloudFrontOriginAccessIdentityRequest = { ["Id"] = true, nil }

function asserts.AssertGetCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCloudFrontOriginAccessIdentityRequest[k], "GetCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityRequest
-- <p>The request to get an origin access identity's information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The identity's ID.</p>
-- Required key: Id
-- @return GetCloudFrontOriginAccessIdentityRequest structure as a key-value pair table
function M.GetCloudFrontOriginAccessIdentityRequest(args)
	assert(args, "You must provide an argument table when creating GetCloudFrontOriginAccessIdentityRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetCloudFrontOriginAccessIdentityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomErrorResponse = { ["ErrorCode"] = true, ["ResponsePagePath"] = true, ["ResponseCode"] = true, ["ErrorCachingMinTTL"] = true, nil }

function asserts.AssertCustomErrorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomErrorResponse to be of type 'table'")
	assert(struct["ErrorCode"], "Expected key ErrorCode to exist in table")
	if struct["ErrorCode"] then asserts.Assertinteger(struct["ErrorCode"]) end
	if struct["ResponsePagePath"] then asserts.Assertstring(struct["ResponsePagePath"]) end
	if struct["ResponseCode"] then asserts.Assertstring(struct["ResponseCode"]) end
	if struct["ErrorCachingMinTTL"] then asserts.Assertlong(struct["ErrorCachingMinTTL"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomErrorResponse[k], "CustomErrorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomErrorResponse
-- <p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer. </p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [integer] <p>The HTTP status code for which you want to specify a custom error page and/or a caching duration.</p>
-- * ResponsePagePath [string] <p>The path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by <code>ErrorCode</code>, for example, <code>/4xx-errors/403-forbidden.html</code>. If you want to store your objects and your custom error pages in different locations, your distribution must include a cache behavior for which the following is true:</p> <ul> <li> <p>The value of <code>PathPattern</code> matches the path to your custom error messages. For example, suppose you saved custom error pages for 4xx errors in an Amazon S3 bucket in a directory named <code>/4xx-errors</code>. Your distribution must include a cache behavior for which the path pattern routes requests for your custom error pages to that location, for example, <code>/4xx-errors/*</code>. </p> </li> <li> <p>The value of <code>TargetOriginId</code> specifies the value of the <code>ID</code> element for the origin that contains your custom error pages.</p> </li> </ul> <p>If you specify a value for <code>ResponsePagePath</code>, you must also specify a value for <code>ResponseCode</code>. If you don't want to specify a value, include an empty element, <code>&lt;ResponsePagePath&gt;</code>, in the XML document.</p> <p>We recommend that you store custom error pages in an Amazon S3 bucket. If you store custom error pages on an HTTP server and the server starts to return 5xx errors, CloudFront can't get the files that you want to return to viewers because the origin server is unavailable.</p>
-- * ResponseCode [string] <p>The HTTP status code that you want CloudFront to return to the viewer along with the custom error page. There are a variety of reasons that you might want CloudFront to return a status code different from the status code that your origin returned to CloudFront, for example:</p> <ul> <li> <p>Some Internet devices (some firewalls and corporate proxies, for example) intercept HTTP 4xx and 5xx and prevent the response from being returned to the viewer. If you substitute <code>200</code>, the response typically won't be intercepted.</p> </li> <li> <p>If you don't care about distinguishing among different client errors or server errors, you can specify <code>400</code> or <code>500</code> as the <code>ResponseCode</code> for all 4xx or 5xx errors.</p> </li> <li> <p>You might want to return a <code>200</code> status code (OK) and static website so your customers don't know that your website is down.</p> </li> </ul> <p>If you specify a value for <code>ResponseCode</code>, you must also specify a value for <code>ResponsePagePath</code>. If you don't want to specify a value, include an empty element, <code>&lt;ResponseCode&gt;</code>, in the XML document.</p>
-- * ErrorCachingMinTTL [long] <p>The minimum amount of time, in seconds, that you want CloudFront to cache the HTTP status code specified in <code>ErrorCode</code>. When this time period has elapsed, CloudFront queries your origin to see whether the problem that caused the error has been resolved and the requested object is now available.</p> <p>If you don't want to specify a value, include an empty element, <code>&lt;ErrorCachingMinTTL&gt;</code>, in the XML document.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required key: ErrorCode
-- @return CustomErrorResponse structure as a key-value pair table
function M.CustomErrorResponse(args)
	assert(args, "You must provide an argument table when creating CustomErrorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ResponsePagePath"] = args["ResponsePagePath"],
		["ResponseCode"] = args["ResponseCode"],
		["ErrorCachingMinTTL"] = args["ErrorCachingMinTTL"],
	}
	asserts.AssertCustomErrorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDistributionsResult = { ["DistributionList"] = true, nil }

function asserts.AssertListDistributionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsResult to be of type 'table'")
	if struct["DistributionList"] then asserts.AssertDistributionList(struct["DistributionList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDistributionsResult[k], "ListDistributionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsResult
-- <p>The returned result of the corresponding request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DistributionList [DistributionList] <p>The <code>DistributionList</code> type. </p>
-- @return ListDistributionsResult structure as a key-value pair table
function M.ListDistributionsResult(args)
	assert(args, "You must provide an argument table when creating ListDistributionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DistributionList"] = args["DistributionList"],
	}
	asserts.AssertListDistributionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudFrontOriginAccessIdentityConfig = { ["Comment"] = true, ["CallerReference"] = true, nil }

function asserts.AssertCloudFrontOriginAccessIdentityConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentityConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFrontOriginAccessIdentityConfig[k], "CloudFrontOriginAccessIdentityConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentityConfig
-- <p>Origin access identity configuration. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [string] <p>Any comments you want to include about the origin access identity. </p>
-- * CallerReference [string] <p>A unique number that ensures the request can't be replayed.</p> <p>If the <code>CallerReference</code> is new (no matter the content of the <code>CloudFrontOriginAccessIdentityConfig</code> object), a new origin access identity is created.</p> <p>If the <code>CallerReference</code> is a value already sent in a previous identity request, and the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is identical to the original request (ignoring white space), the response includes the same information returned to the original request. </p> <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity, but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>
-- Required key: CallerReference
-- Required key: Comment
-- @return CloudFrontOriginAccessIdentityConfig structure as a key-value pair table
function M.CloudFrontOriginAccessIdentityConfig(args)
	assert(args, "You must provide an argument table when creating CloudFrontOriginAccessIdentityConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Comment"] = args["Comment"],
		["CallerReference"] = args["CallerReference"],
	}
	asserts.AssertCloudFrontOriginAccessIdentityConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFieldLevelEncryptionConfigRequest = { ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertDeleteFieldLevelEncryptionConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFieldLevelEncryptionConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFieldLevelEncryptionConfigRequest[k], "DeleteFieldLevelEncryptionConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFieldLevelEncryptionConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The ID of the configuration you want to delete from CloudFront.</p>
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required key: Id
-- @return DeleteFieldLevelEncryptionConfigRequest structure as a key-value pair table
function M.DeleteFieldLevelEncryptionConfigRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFieldLevelEncryptionConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["Id"] = args["Id"],
		["IfMatch"] = args["IfMatch"],
	}
	asserts.AssertDeleteFieldLevelEncryptionConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePublicKeyResult = { ["PublicKey"] = true, ["ETag"] = true, nil }

function asserts.AssertUpdatePublicKeyResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePublicKeyResult to be of type 'table'")
	if struct["PublicKey"] then asserts.AssertPublicKey(struct["PublicKey"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePublicKeyResult[k], "UpdatePublicKeyResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePublicKeyResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PublicKey [PublicKey] <p>Return the results of updating the public key.</p>
-- * ETag [string] <p>The current version of the update public key result. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return UpdatePublicKeyResult structure as a key-value pair table
function M.UpdatePublicKeyResult(args)
	assert(args, "You must provide an argument table when creating UpdatePublicKeyResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["PublicKey"] = args["PublicKey"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertUpdatePublicKeyResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFieldLevelEncryptionProfileRequest = { ["FieldLevelEncryptionProfileConfig"] = true, ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertUpdateFieldLevelEncryptionProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFieldLevelEncryptionProfileRequest to be of type 'table'")
	assert(struct["FieldLevelEncryptionProfileConfig"], "Expected key FieldLevelEncryptionProfileConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["FieldLevelEncryptionProfileConfig"] then asserts.AssertFieldLevelEncryptionProfileConfig(struct["FieldLevelEncryptionProfileConfig"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFieldLevelEncryptionProfileRequest[k], "UpdateFieldLevelEncryptionProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFieldLevelEncryptionProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionProfileConfig [FieldLevelEncryptionProfileConfig] <p>Request to update a field-level encryption profile. </p>
-- * Id [string] <p>The ID of the field-level encryption profile request. </p>
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the profile identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required key: FieldLevelEncryptionProfileConfig
-- Required key: Id
-- @return UpdateFieldLevelEncryptionProfileRequest structure as a key-value pair table
function M.UpdateFieldLevelEncryptionProfileRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFieldLevelEncryptionProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["FieldLevelEncryptionProfileConfig"] = args["FieldLevelEncryptionProfileConfig"],
		["Id"] = args["Id"],
		["IfMatch"] = args["IfMatch"],
	}
	asserts.AssertUpdateFieldLevelEncryptionProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDistributionRequest = { ["Id"] = true, nil }

function asserts.AssertGetDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDistributionRequest[k], "GetDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionRequest
-- <p>The request to get a distribution's information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The distribution's ID.</p>
-- Required key: Id
-- @return GetDistributionRequest structure as a key-value pair table
function M.GetDistributionRequest(args)
	assert(args, "You must provide an argument table when creating GetDistributionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetDistributionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFieldLevelEncryptionProfileConfigResult = { ["FieldLevelEncryptionProfileConfig"] = true, ["ETag"] = true, nil }

function asserts.AssertGetFieldLevelEncryptionProfileConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFieldLevelEncryptionProfileConfigResult to be of type 'table'")
	if struct["FieldLevelEncryptionProfileConfig"] then asserts.AssertFieldLevelEncryptionProfileConfig(struct["FieldLevelEncryptionProfileConfig"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFieldLevelEncryptionProfileConfigResult[k], "GetFieldLevelEncryptionProfileConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFieldLevelEncryptionProfileConfigResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionProfileConfig [FieldLevelEncryptionProfileConfig] <p>Return the field-level encryption profile configuration information.</p>
-- * ETag [string] <p>The current version of the field-level encryption profile configuration result. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return GetFieldLevelEncryptionProfileConfigResult structure as a key-value pair table
function M.GetFieldLevelEncryptionProfileConfigResult(args)
	assert(args, "You must provide an argument table when creating GetFieldLevelEncryptionProfileConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["FieldLevelEncryptionProfileConfig"] = args["FieldLevelEncryptionProfileConfig"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertGetFieldLevelEncryptionProfileConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFieldLevelEncryptionConfigResult = { ["FieldLevelEncryption"] = true, ["ETag"] = true, nil }

function asserts.AssertUpdateFieldLevelEncryptionConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFieldLevelEncryptionConfigResult to be of type 'table'")
	if struct["FieldLevelEncryption"] then asserts.AssertFieldLevelEncryption(struct["FieldLevelEncryption"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFieldLevelEncryptionConfigResult[k], "UpdateFieldLevelEncryptionConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFieldLevelEncryptionConfigResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryption [FieldLevelEncryption] <p>Return the results of updating the configuration.</p>
-- * ETag [string] <p>The value of the <code>ETag</code> header that you received when updating the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return UpdateFieldLevelEncryptionConfigResult structure as a key-value pair table
function M.UpdateFieldLevelEncryptionConfigResult(args)
	assert(args, "You must provide an argument table when creating UpdateFieldLevelEncryptionConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["FieldLevelEncryption"] = args["FieldLevelEncryption"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertUpdateFieldLevelEncryptionConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPublicKeyConfigRequest = { ["Id"] = true, nil }

function asserts.AssertGetPublicKeyConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPublicKeyConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPublicKeyConfigRequest[k], "GetPublicKeyConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPublicKeyConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>Request the ID for the public key configuration.</p>
-- Required key: Id
-- @return GetPublicKeyConfigRequest structure as a key-value pair table
function M.GetPublicKeyConfigRequest(args)
	assert(args, "You must provide an argument table when creating GetPublicKeyConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetPublicKeyConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFieldLevelEncryptionProfileConfigRequest = { ["Id"] = true, nil }

function asserts.AssertGetFieldLevelEncryptionProfileConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFieldLevelEncryptionProfileConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFieldLevelEncryptionProfileConfigRequest[k], "GetFieldLevelEncryptionProfileConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFieldLevelEncryptionProfileConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>Get the ID for the field-level encryption profile configuration information.</p>
-- Required key: Id
-- @return GetFieldLevelEncryptionProfileConfigRequest structure as a key-value pair table
function M.GetFieldLevelEncryptionProfileConfigRequest(args)
	assert(args, "You must provide an argument table when creating GetFieldLevelEncryptionProfileConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetFieldLevelEncryptionProfileConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OriginSslProtocols = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertOriginSslProtocols(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OriginSslProtocols to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then asserts.AssertSslProtocolsList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.OriginSslProtocols[k], "OriginSslProtocols contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OriginSslProtocols
-- <p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [SslProtocolsList] <p>A list that contains allowed SSL/TLS protocols for this distribution.</p>
-- * Quantity [integer] <p>The number of SSL/TLS protocols that you want to allow CloudFront to use when establishing an HTTPS connection with this origin. </p>
-- Required key: Quantity
-- Required key: Items
-- @return OriginSslProtocols structure as a key-value pair table
function M.OriginSslProtocols(args)
	assert(args, "You must provide an argument table when creating OriginSslProtocols")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertOriginSslProtocols(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFieldLevelEncryptionConfigResult = { ["FieldLevelEncryption"] = true, ["ETag"] = true, ["Location"] = true, nil }

function asserts.AssertCreateFieldLevelEncryptionConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFieldLevelEncryptionConfigResult to be of type 'table'")
	if struct["FieldLevelEncryption"] then asserts.AssertFieldLevelEncryption(struct["FieldLevelEncryption"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFieldLevelEncryptionConfigResult[k], "CreateFieldLevelEncryptionConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFieldLevelEncryptionConfigResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryption [FieldLevelEncryption] <p>Returned when you create a new field-level encryption configuration.</p>
-- * ETag [string] <p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- * Location [string] <p>The fully qualified URI of the new configuration resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-config/EDFDVBD632BHDS5</code>.</p>
-- @return CreateFieldLevelEncryptionConfigResult structure as a key-value pair table
function M.CreateFieldLevelEncryptionConfigResult(args)
	assert(args, "You must provide an argument table when creating CreateFieldLevelEncryptionConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
        ["Location"] = args["Location"],
    }
	local all_args = { 
		["FieldLevelEncryption"] = args["FieldLevelEncryption"],
		["ETag"] = args["ETag"],
		["Location"] = args["Location"],
	}
	asserts.AssertCreateFieldLevelEncryptionConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidationList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Marker"] = true, ["IsTruncated"] = true, ["Quantity"] = true, nil }

function asserts.AssertInvalidationList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidationList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertInvalidationSummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidationList[k], "InvalidationList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidationList
-- <p>The <code>InvalidationList</code> complex type describes the list of invalidation objects. For more information about invalidation, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [InvalidationSummaryList] <p>A complex type that contains one <code>InvalidationSummary</code> element for each invalidation batch created by the current AWS account.</p>
-- * NextMarker [string] <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your invalidation batches where they left off.</p>
-- * MaxItems [integer] <p>The value that you provided for the <code>MaxItems</code> request parameter.</p>
-- * Marker [string] <p>The value that you provided for the <code>Marker</code> request parameter.</p>
-- * IsTruncated [boolean] <p>A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more invalidation batches in the list.</p>
-- * Quantity [integer] <p>The number of invalidation batches that were created by the current AWS account. </p>
-- Required key: Marker
-- Required key: MaxItems
-- Required key: IsTruncated
-- Required key: Quantity
-- @return InvalidationList structure as a key-value pair table
function M.InvalidationList(args)
	assert(args, "You must provide an argument table when creating InvalidationList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["NextMarker"] = args["NextMarker"],
		["MaxItems"] = args["MaxItems"],
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertInvalidationList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFieldLevelEncryptionProfileResult = { ["FieldLevelEncryptionProfile"] = true, ["Location"] = true, ["ETag"] = true, nil }

function asserts.AssertCreateFieldLevelEncryptionProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFieldLevelEncryptionProfileResult to be of type 'table'")
	if struct["FieldLevelEncryptionProfile"] then asserts.AssertFieldLevelEncryptionProfile(struct["FieldLevelEncryptionProfile"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFieldLevelEncryptionProfileResult[k], "CreateFieldLevelEncryptionProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFieldLevelEncryptionProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionProfile [FieldLevelEncryptionProfile] <p>Returned when you create a new field-level encryption profile.</p>
-- * Location [string] <p>The fully qualified URI of the new profile resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-profile/EDFDVBD632BHDS5</code>.</p>
-- * ETag [string] <p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return CreateFieldLevelEncryptionProfileResult structure as a key-value pair table
function M.CreateFieldLevelEncryptionProfileResult(args)
	assert(args, "You must provide an argument table when creating CreateFieldLevelEncryptionProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Location"] = args["Location"],
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["FieldLevelEncryptionProfile"] = args["FieldLevelEncryptionProfile"],
		["Location"] = args["Location"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertCreateFieldLevelEncryptionProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCloudFrontOriginAccessIdentityResult = { ["CloudFrontOriginAccessIdentity"] = true, ["ETag"] = true, nil }

function asserts.AssertUpdateCloudFrontOriginAccessIdentityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCloudFrontOriginAccessIdentityResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentity"] then asserts.AssertCloudFrontOriginAccessIdentity(struct["CloudFrontOriginAccessIdentity"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCloudFrontOriginAccessIdentityResult[k], "UpdateCloudFrontOriginAccessIdentityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCloudFrontOriginAccessIdentityResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFrontOriginAccessIdentity [CloudFrontOriginAccessIdentity] <p>The origin access identity's information.</p>
-- * ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return UpdateCloudFrontOriginAccessIdentityResult structure as a key-value pair table
function M.UpdateCloudFrontOriginAccessIdentityResult(args)
	assert(args, "You must provide an argument table when creating UpdateCloudFrontOriginAccessIdentityResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["CloudFrontOriginAccessIdentity"] = args["CloudFrontOriginAccessIdentity"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertUpdateCloudFrontOriginAccessIdentityResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DistributionConfigWithTags = { ["DistributionConfig"] = true, ["Tags"] = true, nil }

function asserts.AssertDistributionConfigWithTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionConfigWithTags to be of type 'table'")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["DistributionConfig"] then asserts.AssertDistributionConfig(struct["DistributionConfig"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.DistributionConfigWithTags[k], "DistributionConfigWithTags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionConfigWithTags
-- <p>A distribution Configuration and a list of tags to be associated with the distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DistributionConfig [DistributionConfig] <p>A distribution configuration.</p>
-- * Tags [Tags] <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
-- Required key: DistributionConfig
-- Required key: Tags
-- @return DistributionConfigWithTags structure as a key-value pair table
function M.DistributionConfigWithTags(args)
	assert(args, "You must provide an argument table when creating DistributionConfigWithTags")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DistributionConfig"] = args["DistributionConfig"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertDistributionConfigWithTags(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueryArgProfileConfig = { ["ForwardWhenQueryArgProfileIsUnknown"] = true, ["QueryArgProfiles"] = true, nil }

function asserts.AssertQueryArgProfileConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryArgProfileConfig to be of type 'table'")
	assert(struct["ForwardWhenQueryArgProfileIsUnknown"], "Expected key ForwardWhenQueryArgProfileIsUnknown to exist in table")
	if struct["ForwardWhenQueryArgProfileIsUnknown"] then asserts.Assertboolean(struct["ForwardWhenQueryArgProfileIsUnknown"]) end
	if struct["QueryArgProfiles"] then asserts.AssertQueryArgProfiles(struct["QueryArgProfiles"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryArgProfileConfig[k], "QueryArgProfileConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryArgProfileConfig
-- <p>Configuration for query argument-profile mapping for field-level encryption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ForwardWhenQueryArgProfileIsUnknown [boolean] <p>Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown.</p>
-- * QueryArgProfiles [QueryArgProfiles] <p>Profiles specified for query argument-profile mapping for field-level encryption.</p>
-- Required key: ForwardWhenQueryArgProfileIsUnknown
-- @return QueryArgProfileConfig structure as a key-value pair table
function M.QueryArgProfileConfig(args)
	assert(args, "You must provide an argument table when creating QueryArgProfileConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ForwardWhenQueryArgProfileIsUnknown"] = args["ForwardWhenQueryArgProfileIsUnknown"],
		["QueryArgProfiles"] = args["QueryArgProfiles"],
	}
	asserts.AssertQueryArgProfileConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PublicKeyList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Quantity"] = true, nil }

function asserts.AssertPublicKeyList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublicKeyList to be of type 'table'")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertPublicKeySummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublicKeyList[k], "PublicKeyList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublicKeyList
-- <p>A list of public keys you've added to CloudFront to use with features like field-level encryption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [PublicKeySummaryList] <p>An array of information about a public key you add to CloudFront to use with features like field-level encryption.</p>
-- * NextMarker [string] <p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your public keys where you left off.</p>
-- * MaxItems [integer] <p>The maximum number of public keys you want in the response body. </p>
-- * Quantity [integer] <p>The number of public keys you added to CloudFront to use with features like field-level encryption.</p>
-- Required key: MaxItems
-- Required key: Quantity
-- @return PublicKeyList structure as a key-value pair table
function M.PublicKeyList(args)
	assert(args, "You must provide an argument table when creating PublicKeyList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["NextMarker"] = args["NextMarker"],
		["MaxItems"] = args["MaxItems"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertPublicKeyList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCloudFrontOriginAccessIdentityConfigResult = { ["CloudFrontOriginAccessIdentityConfig"] = true, ["ETag"] = true, nil }

function asserts.AssertGetCloudFrontOriginAccessIdentityConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityConfigResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentityConfig"] then asserts.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCloudFrontOriginAccessIdentityConfigResult[k], "GetCloudFrontOriginAccessIdentityConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityConfigResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] <p>The origin access identity's configuration information. </p>
-- * ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return GetCloudFrontOriginAccessIdentityConfigResult structure as a key-value pair table
function M.GetCloudFrontOriginAccessIdentityConfigResult(args)
	assert(args, "You must provide an argument table when creating GetCloudFrontOriginAccessIdentityConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["CloudFrontOriginAccessIdentityConfig"] = args["CloudFrontOriginAccessIdentityConfig"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertGetCloudFrontOriginAccessIdentityConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PublicKeySummary = { ["CreatedTime"] = true, ["EncodedKey"] = true, ["Comment"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertPublicKeySummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublicKeySummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["CreatedTime"], "Expected key CreatedTime to exist in table")
	assert(struct["EncodedKey"], "Expected key EncodedKey to exist in table")
	if struct["CreatedTime"] then asserts.Asserttimestamp(struct["CreatedTime"]) end
	if struct["EncodedKey"] then asserts.Assertstring(struct["EncodedKey"]) end
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["Name"] then asserts.Assertstring(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublicKeySummary[k], "PublicKeySummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublicKeySummary
-- <p> Public key information summary. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTime [timestamp] <p> Creation time for public key information summary. </p>
-- * EncodedKey [string] <p> Encoded key for public key information summary. </p>
-- * Comment [string] <p> Comment for public key information summary. </p>
-- * Id [string] <p> ID for public key information summary. </p>
-- * Name [string] <p> Name for public key information summary. </p>
-- Required key: Id
-- Required key: Name
-- Required key: CreatedTime
-- Required key: EncodedKey
-- @return PublicKeySummary structure as a key-value pair table
function M.PublicKeySummary(args)
	assert(args, "You must provide an argument table when creating PublicKeySummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedTime"] = args["CreatedTime"],
		["EncodedKey"] = args["EncodedKey"],
		["Comment"] = args["Comment"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertPublicKeySummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Headers = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertHeaders(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Headers to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertHeaderList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.Headers[k], "Headers contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Headers
-- <p>A complex type that specifies the request headers, if any, that you want CloudFront to base caching on for this cache behavior. </p> <p>For the headers that you specify, CloudFront caches separate versions of a specified object based on the header values in viewer requests. For example, suppose viewer requests for <code>logo.jpg</code> contain a custom <code>product</code> header that has a value of either <code>acme</code> or <code>apex</code>, and you configure CloudFront to cache your content based on values in the <code>product</code> header. CloudFront forwards the <code>product</code> header to the origin and caches the response from the origin once for each header value. For more information about caching based on header values, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html">How CloudFront Forwards and Caches Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [HeaderList] <p>A list that contains one <code>Name</code> element for each header that you want CloudFront to use for caching in this cache behavior. If <code>Quantity</code> is <code>0</code>, omit <code>Items</code>.</p>
-- * Quantity [integer] <p>The number of different headers that you want CloudFront to base caching on for this cache behavior. You can configure each cache behavior in a web distribution to do one of the following:</p> <ul> <li> <p> <b>Forward all headers to your origin</b>: Specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>.</p> <important> <p>CloudFront doesn't cache the objects that are associated with this cache behavior. Instead, CloudFront sends every request to the origin. </p> </important> </li> <li> <p> <b>Forward a whitelist of headers you specify</b>: Specify the number of headers that you want CloudFront to base caching on. Then specify the header names in <code>Name</code> elements. CloudFront caches your objects based on the values in the specified headers.</p> </li> <li> <p> <b>Forward only the default headers</b>: Specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. In this configuration, CloudFront doesn't cache based on the values in the request headers.</p> </li> </ul> <p>Regardless of which option you choose, CloudFront forwards headers to your origin based on whether the origin is an S3 bucket or a custom origin. See the following documentation:</p> <ul> <li> <p> <b>S3 bucket</b>: See <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorS3Origin.html#request-s3-removed-headers">HTTP Request Headers That CloudFront Removes or Updates</a> </p> </li> <li> <p> <b>Custom origin</b>: See <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorCustomOrigin.html#request-custom-headers-behavior">HTTP Request Headers and CloudFront Behavior</a> </p> </li> </ul>
-- Required key: Quantity
-- @return Headers structure as a key-value pair table
function M.Headers(args)
	assert(args, "You must provide an argument table when creating Headers")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertHeaders(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCloudFrontOriginAccessIdentityConfigRequest = { ["Id"] = true, nil }

function asserts.AssertGetCloudFrontOriginAccessIdentityConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCloudFrontOriginAccessIdentityConfigRequest[k], "GetCloudFrontOriginAccessIdentityConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityConfigRequest
-- <p>The origin access identity's configuration information. For more information, see <a>CloudFrontOriginAccessIdentityConfigComplexType</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The identity's ID. </p>
-- Required key: Id
-- @return GetCloudFrontOriginAccessIdentityConfigRequest structure as a key-value pair table
function M.GetCloudFrontOriginAccessIdentityConfigRequest(args)
	assert(args, "You must provide an argument table when creating GetCloudFrontOriginAccessIdentityConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetCloudFrontOriginAccessIdentityConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DistributionConfig = { ["Comment"] = true, ["CacheBehaviors"] = true, ["IsIPV6Enabled"] = true, ["Logging"] = true, ["WebACLId"] = true, ["Origins"] = true, ["DefaultRootObject"] = true, ["PriceClass"] = true, ["Enabled"] = true, ["DefaultCacheBehavior"] = true, ["CallerReference"] = true, ["ViewerCertificate"] = true, ["CustomErrorResponses"] = true, ["HttpVersion"] = true, ["Restrictions"] = true, ["Aliases"] = true, nil }

function asserts.AssertDistributionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["Origins"], "Expected key Origins to exist in table")
	assert(struct["DefaultCacheBehavior"], "Expected key DefaultCacheBehavior to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["CacheBehaviors"] then asserts.AssertCacheBehaviors(struct["CacheBehaviors"]) end
	if struct["IsIPV6Enabled"] then asserts.Assertboolean(struct["IsIPV6Enabled"]) end
	if struct["Logging"] then asserts.AssertLoggingConfig(struct["Logging"]) end
	if struct["WebACLId"] then asserts.Assertstring(struct["WebACLId"]) end
	if struct["Origins"] then asserts.AssertOrigins(struct["Origins"]) end
	if struct["DefaultRootObject"] then asserts.Assertstring(struct["DefaultRootObject"]) end
	if struct["PriceClass"] then asserts.AssertPriceClass(struct["PriceClass"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["DefaultCacheBehavior"] then asserts.AssertDefaultCacheBehavior(struct["DefaultCacheBehavior"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	if struct["ViewerCertificate"] then asserts.AssertViewerCertificate(struct["ViewerCertificate"]) end
	if struct["CustomErrorResponses"] then asserts.AssertCustomErrorResponses(struct["CustomErrorResponses"]) end
	if struct["HttpVersion"] then asserts.AssertHttpVersion(struct["HttpVersion"]) end
	if struct["Restrictions"] then asserts.AssertRestrictions(struct["Restrictions"]) end
	if struct["Aliases"] then asserts.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.DistributionConfig[k], "DistributionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionConfig
-- <p>A distribution configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [string] <p>Any comments you want to include about the distribution.</p> <p>If you don't want to specify a comment, include an empty <code>Comment</code> element.</p> <p>To delete an existing comment, update the distribution configuration and include an empty <code>Comment</code> element.</p> <p>To add or change a comment, update the distribution configuration and specify the new comment.</p>
-- * CacheBehaviors [CacheBehaviors] <p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>
-- * IsIPV6Enabled [boolean] <p>If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your distribution, specify <code>true</code>. If you specify <code>false</code>, CloudFront responds to IPv6 DNS requests with the DNS response code <code>NOERROR</code> and with no IP addresses. This allows viewers to submit a second request, for an IPv4 address for your distribution. </p> <p>In general, you should enable IPv6 if you have users on IPv6 networks who want to access your content. However, if you're using signed URLs or signed cookies to restrict access to your content, and if you're using a custom policy that includes the <code>IpAddress</code> parameter to restrict the IP addresses that can access your content, don't enable IPv6. If you want to restrict access to some content by IP address and not restrict access to other content (or restrict access but not by IP address), you can create two distributions. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html">Creating a Signed URL Using a Custom Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you're using an Amazon Route 53 alias resource record set to route traffic to your CloudFront distribution, you need to create a second alias resource record set when both of the following are true:</p> <ul> <li> <p>You enable IPv6 for the distribution</p> </li> <li> <p>You're using alternate domain names in the URLs for your objects</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html">Routing Traffic to an Amazon CloudFront Web Distribution by Using Your Domain Name</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If you created a CNAME resource record set, either with Amazon Route 53 or with another DNS service, you don't need to make any changes. A CNAME record will route traffic to your distribution regardless of the IP address format of the viewer request.</p>
-- * Logging [LoggingConfig] <p>A complex type that controls whether access logs are written for the distribution.</p> <p>For more information about logging, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html">Access Logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- * WebACLId [string] <p>A unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution.</p> <p>AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to CloudFront, and lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, CloudFront responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page when a request is blocked. For more information about AWS WAF, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html">AWS WAF Developer Guide</a>. </p>
-- * Origins [Origins] <p>A complex type that contains information about origins for this distribution. </p>
-- * DefaultRootObject [string] <p>The object that you want CloudFront to request from your origin (for example, <code>index.html</code>) when a viewer requests the root URL for your distribution (<code>http://www.example.com</code>) instead of an object in your distribution (<code>http://www.example.com/product-description.html</code>). Specifying a default root object avoids exposing the contents of your distribution.</p> <p>Specify only the object name, for example, <code>index.html</code>. Don't add a <code>/</code> before the object name.</p> <p>If you don't want to specify a default root object when you create a distribution, include an empty <code>DefaultRootObject</code> element.</p> <p>To delete the default root object from an existing distribution, update the distribution configuration and include an empty <code>DefaultRootObject</code> element.</p> <p>To replace the default root object, update the distribution configuration and specify the new object.</p> <p>For more information about the default root object, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html">Creating a Default Root Object</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- * PriceClass [PriceClass] <p>The price class that corresponds with the maximum price that you want to pay for CloudFront service. If you specify <code>PriceClass_All</code>, CloudFront responds to requests for your objects from all CloudFront edge locations.</p> <p>If you specify a price class other than <code>PriceClass_All</code>, CloudFront serves your objects from the CloudFront edge location that has the lowest latency among the edge locations in your price class. Viewers who are in or near regions that are excluded from your specified price class may encounter slower performance.</p> <p>For more information about price classes, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html">Choosing the Price Class for a CloudFront Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>. For information about CloudFront pricing, including how price classes (such as Price Class 100) map to CloudFront regions, see <a href="https://aws.amazon.com/cloudfront/pricing/">Amazon CloudFront Pricing</a>. For price class information, scroll down to see the table at the bottom of the page.</p>
-- * Enabled [boolean] <p>From this field, you can enable or disable the selected distribution.</p>
-- * DefaultCacheBehavior [DefaultCacheBehavior] <p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>
-- * CallerReference [string] <p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>DistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous request to create a distribution, and if the content of the <code>DistributionConfig</code> is identical to the original request (ignoring white space), CloudFront returns the same the response that it returned to the original request.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous request to create a distribution but the content of the <code>DistributionConfig</code> is different from the original request, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>
-- * ViewerCertificate [ViewerCertificate] 
-- * CustomErrorResponses [CustomErrorResponses] <p>A complex type that controls the following:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- * HttpVersion [HttpVersion] <p>(Optional) Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is http2. Viewers that don't support HTTP/2 automatically use an earlier HTTP version.</p> <p>For viewers and CloudFront to use HTTP/2, viewers must support TLS 1.2 or later, and must support Server Name Identification (SNI).</p> <p>In general, configuring CloudFront to communicate with viewers using HTTP/2 reduces latency. You can improve performance by optimizing for HTTP/2. For more information, do an Internet search for "http/2 optimization." </p>
-- * Restrictions [Restrictions] 
-- * Aliases [Aliases] <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>
-- Required key: CallerReference
-- Required key: Origins
-- Required key: DefaultCacheBehavior
-- Required key: Comment
-- Required key: Enabled
-- @return DistributionConfig structure as a key-value pair table
function M.DistributionConfig(args)
	assert(args, "You must provide an argument table when creating DistributionConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Comment"] = args["Comment"],
		["CacheBehaviors"] = args["CacheBehaviors"],
		["IsIPV6Enabled"] = args["IsIPV6Enabled"],
		["Logging"] = args["Logging"],
		["WebACLId"] = args["WebACLId"],
		["Origins"] = args["Origins"],
		["DefaultRootObject"] = args["DefaultRootObject"],
		["PriceClass"] = args["PriceClass"],
		["Enabled"] = args["Enabled"],
		["DefaultCacheBehavior"] = args["DefaultCacheBehavior"],
		["CallerReference"] = args["CallerReference"],
		["ViewerCertificate"] = args["ViewerCertificate"],
		["CustomErrorResponses"] = args["CustomErrorResponses"],
		["HttpVersion"] = args["HttpVersion"],
		["Restrictions"] = args["Restrictions"],
		["Aliases"] = args["Aliases"],
	}
	asserts.AssertDistributionConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomErrorResponses = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertCustomErrorResponses(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomErrorResponses to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertCustomErrorResponseList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomErrorResponses[k], "CustomErrorResponses contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomErrorResponses
-- <p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [CustomErrorResponseList] <p>A complex type that contains a <code>CustomErrorResponse</code> element for each HTTP status code for which you want to specify a custom error page and/or a caching duration. </p>
-- * Quantity [integer] <p>The number of HTTP status codes for which you want to specify a custom error page and/or a caching duration. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
-- Required key: Quantity
-- @return CustomErrorResponses structure as a key-value pair table
function M.CustomErrorResponses(args)
	assert(args, "You must provide an argument table when creating CustomErrorResponses")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertCustomErrorResponses(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudFrontOriginAccessIdentity = { ["CloudFrontOriginAccessIdentityConfig"] = true, ["S3CanonicalUserId"] = true, ["Id"] = true, nil }

function asserts.AssertCloudFrontOriginAccessIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentity to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["S3CanonicalUserId"], "Expected key S3CanonicalUserId to exist in table")
	if struct["CloudFrontOriginAccessIdentityConfig"] then asserts.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	if struct["S3CanonicalUserId"] then asserts.Assertstring(struct["S3CanonicalUserId"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFrontOriginAccessIdentity[k], "CloudFrontOriginAccessIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentity
-- <p>CloudFront origin access identity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] <p>The current configuration information for the identity. </p>
-- * S3CanonicalUserId [string] <p>The Amazon S3 canonical user ID for the origin access identity, used when giving the origin access identity read permission to an object in Amazon S3. </p>
-- * Id [string] <p>The ID for the origin access identity, for example, <code>E74FTE3AJFJ256A</code>. </p>
-- Required key: Id
-- Required key: S3CanonicalUserId
-- @return CloudFrontOriginAccessIdentity structure as a key-value pair table
function M.CloudFrontOriginAccessIdentity(args)
	assert(args, "You must provide an argument table when creating CloudFrontOriginAccessIdentity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CloudFrontOriginAccessIdentityConfig"] = args["CloudFrontOriginAccessIdentityConfig"],
		["S3CanonicalUserId"] = args["S3CanonicalUserId"],
		["Id"] = args["Id"],
	}
	asserts.AssertCloudFrontOriginAccessIdentity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3OriginConfig = { ["OriginAccessIdentity"] = true, nil }

function asserts.AssertS3OriginConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3OriginConfig to be of type 'table'")
	assert(struct["OriginAccessIdentity"], "Expected key OriginAccessIdentity to exist in table")
	if struct["OriginAccessIdentity"] then asserts.Assertstring(struct["OriginAccessIdentity"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3OriginConfig[k], "S3OriginConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3OriginConfig
-- <p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OriginAccessIdentity [string] <p>The CloudFront origin access identity to associate with the origin. Use an origin access identity to configure the origin so that viewers can <i>only</i> access objects in an Amazon S3 bucket through CloudFront. The format of the value is:</p> <p>origin-access-identity/cloudfront/<i>ID-of-origin-access-identity</i> </p> <p>where <code> <i>ID-of-origin-access-identity</i> </code> is the value that CloudFront returned in the <code>ID</code> element when you created the origin access identity.</p> <p>If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information about the origin access identity, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required key: OriginAccessIdentity
-- @return S3OriginConfig structure as a key-value pair table
function M.S3OriginConfig(args)
	assert(args, "You must provide an argument table when creating S3OriginConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OriginAccessIdentity"] = args["OriginAccessIdentity"],
	}
	asserts.AssertS3OriginConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Origin = { ["OriginPath"] = true, ["DomainName"] = true, ["CustomOriginConfig"] = true, ["CustomHeaders"] = true, ["S3OriginConfig"] = true, ["Id"] = true, nil }

function asserts.AssertOrigin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Origin to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	if struct["OriginPath"] then asserts.Assertstring(struct["OriginPath"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	if struct["CustomOriginConfig"] then asserts.AssertCustomOriginConfig(struct["CustomOriginConfig"]) end
	if struct["CustomHeaders"] then asserts.AssertCustomHeaders(struct["CustomHeaders"]) end
	if struct["S3OriginConfig"] then asserts.AssertS3OriginConfig(struct["S3OriginConfig"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Origin[k], "Origin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Origin
-- <p>A complex type that describes the Amazon S3 bucket or the HTTP server (for example, a web server) from which CloudFront gets your files. You must create at least one origin.</p> <p>For the current limit on the number of origins that you can create for a distribution, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OriginPath [string] <p>An optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin. When you include the <code>OriginPath</code> element, specify the directory name, beginning with a <code>/</code>. CloudFront appends the directory name to the value of <code>DomainName</code>, for example, <code>example.com/production</code>. Do not include a <code>/</code> at the end of the directory name.</p> <p>For example, suppose you've specified the following values for your distribution:</p> <ul> <li> <p> <code>DomainName</code>: An Amazon S3 bucket named <code>myawsbucket</code>.</p> </li> <li> <p> <code>OriginPath</code>: <code>/production</code> </p> </li> <li> <p> <code>CNAME</code>: <code>example.com</code> </p> </li> </ul> <p>When a user enters <code>example.com/index.html</code> in a browser, CloudFront sends a request to Amazon S3 for <code>myawsbucket/production/index.html</code>.</p> <p>When a user enters <code>example.com/acme/index.html</code> in a browser, CloudFront sends a request to Amazon S3 for <code>myawsbucket/production/acme/index.html</code>.</p>
-- * DomainName [string] <p> <b>Amazon S3 origins</b>: The DNS name of the Amazon S3 bucket from which you want CloudFront to get objects for this origin, for example, <code>myawsbucket.s3.amazonaws.com</code>. If you set up your bucket to be configured as a website endpoint, enter the Amazon S3 static website hosting endpoint for the bucket.</p> <p>Constraints for Amazon S3 origins: </p> <ul> <li> <p>If you configured Amazon S3 Transfer Acceleration for your bucket, don't specify the <code>s3-accelerate</code> endpoint for <code>DomainName</code>.</p> </li> <li> <p>The bucket name must be between 3 and 63 characters long (inclusive).</p> </li> <li> <p>The bucket name must contain only lowercase characters, numbers, periods, underscores, and dashes.</p> </li> <li> <p>The bucket name must not contain adjacent periods.</p> </li> </ul> <p> <b>Custom Origins</b>: The DNS domain name for the HTTP server from which you want CloudFront to get objects for this origin, for example, <code>www.example.com</code>. </p> <p>Constraints for custom origins:</p> <ul> <li> <p> <code>DomainName</code> must be a valid DNS name that contains only a-z, A-Z, 0-9, dot (.), hyphen (-), or underscore (_) characters.</p> </li> <li> <p>The name cannot exceed 128 characters.</p> </li> </ul>
-- * CustomOriginConfig [CustomOriginConfig] <p>A complex type that contains information about a custom origin. If the origin is an Amazon S3 bucket, use the <code>S3OriginConfig</code> element instead.</p>
-- * CustomHeaders [CustomHeaders] <p>A complex type that contains names and values for the custom headers that you want.</p>
-- * S3OriginConfig [S3OriginConfig] <p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>
-- * Id [string] <p>A unique identifier for the origin. The value of <code>Id</code> must be unique within the distribution.</p> <p>When you specify the value of <code>TargetOriginId</code> for the default cache behavior or for another cache behavior, you indicate the origin to which you want the cache behavior to route requests by specifying the value of the <code>Id</code> element for that origin. When a request matches the path pattern for that cache behavior, CloudFront routes the request to the specified origin. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache Behavior Settings</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required key: Id
-- Required key: DomainName
-- @return Origin structure as a key-value pair table
function M.Origin(args)
	assert(args, "You must provide an argument table when creating Origin")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OriginPath"] = args["OriginPath"],
		["DomainName"] = args["DomainName"],
		["CustomOriginConfig"] = args["CustomOriginConfig"],
		["CustomHeaders"] = args["CustomHeaders"],
		["S3OriginConfig"] = args["S3OriginConfig"],
		["Id"] = args["Id"],
	}
	asserts.AssertOrigin(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["TagKeys"] = true, ["Resource"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then asserts.AssertTagKeys(struct["TagKeys"]) end
	if struct["Resource"] then asserts.AssertResourceARN(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
-- <p> The request to remove tags from a CloudFront resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKeys [TagKeys] <p> A complex type that contains zero or more <code>Tag</code> key elements.</p>
-- * Resource [ResourceARN] <p> An ARN of a CloudFront resource.</p>
-- Required key: Resource
-- Required key: TagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
        ["Resource"] = args["Resource"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagKeys"] = args["TagKeys"],
		["Resource"] = args["Resource"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidationSummary = { ["Status"] = true, ["Id"] = true, ["CreateTime"] = true, nil }

function asserts.AssertInvalidationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidationSummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["CreateTime"], "Expected key CreateTime to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["CreateTime"] then asserts.Asserttimestamp(struct["CreateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidationSummary[k], "InvalidationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidationSummary
-- <p>A summary of an invalidation request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [string] <p>The status of an invalidation request.</p>
-- * Id [string] <p>The unique ID for an invalidation request.</p>
-- * CreateTime [timestamp] 
-- Required key: Id
-- Required key: CreateTime
-- Required key: Status
-- @return InvalidationSummary structure as a key-value pair table
function M.InvalidationSummary(args)
	assert(args, "You must provide an argument table when creating InvalidationSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Id"] = args["Id"],
		["CreateTime"] = args["CreateTime"],
	}
	asserts.AssertInvalidationSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPublicKeysResult = { ["PublicKeyList"] = true, nil }

function asserts.AssertListPublicKeysResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublicKeysResult to be of type 'table'")
	if struct["PublicKeyList"] then asserts.AssertPublicKeyList(struct["PublicKeyList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPublicKeysResult[k], "ListPublicKeysResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublicKeysResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PublicKeyList [PublicKeyList] <p>Returns a list of all public keys that have been added to CloudFront for this account.</p>
-- @return ListPublicKeysResult structure as a key-value pair table
function M.ListPublicKeysResult(args)
	assert(args, "You must provide an argument table when creating ListPublicKeysResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PublicKeyList"] = args["PublicKeyList"],
	}
	asserts.AssertListPublicKeysResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceResult = { ["Tags"] = true, nil }

function asserts.AssertListTagsForResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResult to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResult[k], "ListTagsForResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResult
-- <p> The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
-- Required key: Tags
-- @return ListTagsForResourceResult structure as a key-value pair table
function M.ListTagsForResourceResult(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsForResourceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStreamingDistributionRequest = { ["IfMatch"] = true, ["Id"] = true, ["StreamingDistributionConfig"] = true, nil }

function asserts.AssertUpdateStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStreamingDistributionRequest to be of type 'table'")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["StreamingDistributionConfig"] then asserts.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStreamingDistributionRequest[k], "UpdateStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStreamingDistributionRequest
-- <p>The request to update a streaming distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- * Id [string] <p>The streaming distribution's id.</p>
-- * StreamingDistributionConfig [StreamingDistributionConfig] <p>The streaming distribution's configuration information.</p>
-- Required key: StreamingDistributionConfig
-- Required key: Id
-- @return UpdateStreamingDistributionRequest structure as a key-value pair table
function M.UpdateStreamingDistributionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateStreamingDistributionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["IfMatch"] = args["IfMatch"],
		["Id"] = args["Id"],
		["StreamingDistributionConfig"] = args["StreamingDistributionConfig"],
	}
	asserts.AssertUpdateStreamingDistributionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DefaultCacheBehavior = { ["FieldLevelEncryptionId"] = true, ["TrustedSigners"] = true, ["LambdaFunctionAssociations"] = true, ["TargetOriginId"] = true, ["ViewerProtocolPolicy"] = true, ["ForwardedValues"] = true, ["MaxTTL"] = true, ["SmoothStreaming"] = true, ["DefaultTTL"] = true, ["AllowedMethods"] = true, ["MinTTL"] = true, ["Compress"] = true, nil }

function asserts.AssertDefaultCacheBehavior(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultCacheBehavior to be of type 'table'")
	assert(struct["TargetOriginId"], "Expected key TargetOriginId to exist in table")
	assert(struct["ForwardedValues"], "Expected key ForwardedValues to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["ViewerProtocolPolicy"], "Expected key ViewerProtocolPolicy to exist in table")
	assert(struct["MinTTL"], "Expected key MinTTL to exist in table")
	if struct["FieldLevelEncryptionId"] then asserts.Assertstring(struct["FieldLevelEncryptionId"]) end
	if struct["TrustedSigners"] then asserts.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["LambdaFunctionAssociations"] then asserts.AssertLambdaFunctionAssociations(struct["LambdaFunctionAssociations"]) end
	if struct["TargetOriginId"] then asserts.Assertstring(struct["TargetOriginId"]) end
	if struct["ViewerProtocolPolicy"] then asserts.AssertViewerProtocolPolicy(struct["ViewerProtocolPolicy"]) end
	if struct["ForwardedValues"] then asserts.AssertForwardedValues(struct["ForwardedValues"]) end
	if struct["MaxTTL"] then asserts.Assertlong(struct["MaxTTL"]) end
	if struct["SmoothStreaming"] then asserts.Assertboolean(struct["SmoothStreaming"]) end
	if struct["DefaultTTL"] then asserts.Assertlong(struct["DefaultTTL"]) end
	if struct["AllowedMethods"] then asserts.AssertAllowedMethods(struct["AllowedMethods"]) end
	if struct["MinTTL"] then asserts.Assertlong(struct["MinTTL"]) end
	if struct["Compress"] then asserts.Assertboolean(struct["Compress"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefaultCacheBehavior[k], "DefaultCacheBehavior contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultCacheBehavior
-- <p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionId [string] <p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for a cache behavior or for the default cache behavior in your distribution.</p>
-- * TrustedSigners [TrustedSigners] <p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>
-- * LambdaFunctionAssociations [LambdaFunctionAssociations] <p>A complex type that contains zero or more Lambda function associations for a cache behavior.</p>
-- * TargetOriginId [string] <p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior in your distribution.</p>
-- * ViewerProtocolPolicy [ViewerProtocolPolicy] <p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.</p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden).</p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>
-- * ForwardedValues [ForwardedValues] <p>A complex type that specifies how CloudFront handles query strings and cookies.</p>
-- * MaxTTL [long] 
-- * SmoothStreaming [boolean] <p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>. </p>
-- * DefaultTTL [long] <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- * AllowedMethods [AllowedMethods] 
-- * MinTTL [long] <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>
-- * Compress [boolean] <p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required key: TargetOriginId
-- Required key: ForwardedValues
-- Required key: TrustedSigners
-- Required key: ViewerProtocolPolicy
-- Required key: MinTTL
-- @return DefaultCacheBehavior structure as a key-value pair table
function M.DefaultCacheBehavior(args)
	assert(args, "You must provide an argument table when creating DefaultCacheBehavior")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FieldLevelEncryptionId"] = args["FieldLevelEncryptionId"],
		["TrustedSigners"] = args["TrustedSigners"],
		["LambdaFunctionAssociations"] = args["LambdaFunctionAssociations"],
		["TargetOriginId"] = args["TargetOriginId"],
		["ViewerProtocolPolicy"] = args["ViewerProtocolPolicy"],
		["ForwardedValues"] = args["ForwardedValues"],
		["MaxTTL"] = args["MaxTTL"],
		["SmoothStreaming"] = args["SmoothStreaming"],
		["DefaultTTL"] = args["DefaultTTL"],
		["AllowedMethods"] = args["AllowedMethods"],
		["MinTTL"] = args["MinTTL"],
		["Compress"] = args["Compress"],
	}
	asserts.AssertDefaultCacheBehavior(all_args)
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
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p> A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p> A string that contains an optional <code>Tag</code> value.</p> <p>The string length should be between 0 and 256 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>
-- * Key [TagKey] <p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>
-- Required key: Key
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

keys.CachedMethods = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertCachedMethods(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CachedMethods to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then asserts.AssertMethodsList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CachedMethods[k], "CachedMethods contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CachedMethods
-- <p>A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:</p> <ul> <li> <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> </ul> <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [MethodsList] <p>A complex type that contains the HTTP methods that you want CloudFront to cache responses to.</p>
-- * Quantity [integer] <p>The number of HTTP methods for which you want CloudFront to cache responses. Valid values are <code>2</code> (for caching responses to <code>GET</code> and <code>HEAD</code> requests) and <code>3</code> (for caching responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests).</p>
-- Required key: Quantity
-- Required key: Items
-- @return CachedMethods structure as a key-value pair table
function M.CachedMethods(args)
	assert(args, "You must provide an argument table when creating CachedMethods")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertCachedMethods(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptionEntity = { ["FieldPatterns"] = true, ["ProviderId"] = true, ["PublicKeyId"] = true, nil }

function asserts.AssertEncryptionEntity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionEntity to be of type 'table'")
	assert(struct["PublicKeyId"], "Expected key PublicKeyId to exist in table")
	assert(struct["ProviderId"], "Expected key ProviderId to exist in table")
	assert(struct["FieldPatterns"], "Expected key FieldPatterns to exist in table")
	if struct["FieldPatterns"] then asserts.AssertFieldPatterns(struct["FieldPatterns"]) end
	if struct["ProviderId"] then asserts.Assertstring(struct["ProviderId"]) end
	if struct["PublicKeyId"] then asserts.Assertstring(struct["PublicKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionEntity[k], "EncryptionEntity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionEntity
-- <p>Complex data type for field-level encryption profiles that includes the encryption key and field pattern specifications. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldPatterns [FieldPatterns] <p>Field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted. You can provide the full field name, or any beginning characters followed by a wildcard (*). You can't overlap field patterns. For example, you can't have both ABC* and AB*. Note that field patterns are case-sensitive. </p>
-- * ProviderId [string] <p>The provider associated with the public key being used for encryption. This value must also be provided with the private key for applications to be able to decrypt data.</p>
-- * PublicKeyId [string] <p>The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns. </p>
-- Required key: PublicKeyId
-- Required key: ProviderId
-- Required key: FieldPatterns
-- @return EncryptionEntity structure as a key-value pair table
function M.EncryptionEntity(args)
	assert(args, "You must provide an argument table when creating EncryptionEntity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FieldPatterns"] = args["FieldPatterns"],
		["ProviderId"] = args["ProviderId"],
		["PublicKeyId"] = args["PublicKeyId"],
	}
	asserts.AssertEncryptionEntity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFieldLevelEncryptionConfigResult = { ["ETag"] = true, ["FieldLevelEncryptionConfig"] = true, nil }

function asserts.AssertGetFieldLevelEncryptionConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFieldLevelEncryptionConfigResult to be of type 'table'")
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["FieldLevelEncryptionConfig"] then asserts.AssertFieldLevelEncryptionConfig(struct["FieldLevelEncryptionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFieldLevelEncryptionConfigResult[k], "GetFieldLevelEncryptionConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFieldLevelEncryptionConfigResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ETag [string] <p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- * FieldLevelEncryptionConfig [FieldLevelEncryptionConfig] <p>Return the field-level encryption configuration information.</p>
-- @return GetFieldLevelEncryptionConfigResult structure as a key-value pair table
function M.GetFieldLevelEncryptionConfigResult(args)
	assert(args, "You must provide an argument table when creating GetFieldLevelEncryptionConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["ETag"] = args["ETag"],
		["FieldLevelEncryptionConfig"] = args["FieldLevelEncryptionConfig"],
	}
	asserts.AssertGetFieldLevelEncryptionConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AllowedMethods = { ["Items"] = true, ["CachedMethods"] = true, ["Quantity"] = true, nil }

function asserts.AssertAllowedMethods(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllowedMethods to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["Items"] then asserts.AssertMethodsList(struct["Items"]) end
	if struct["CachedMethods"] then asserts.AssertCachedMethods(struct["CachedMethods"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.AllowedMethods[k], "AllowedMethods contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllowedMethods
-- <p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [MethodsList] <p>A complex type that contains the HTTP methods that you want CloudFront to process and forward to your origin.</p>
-- * CachedMethods [CachedMethods] 
-- * Quantity [integer] <p>The number of HTTP methods that you want CloudFront to forward to your origin. Valid values are 2 (for <code>GET</code> and <code>HEAD</code> requests), 3 (for <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests) and 7 (for <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests).</p>
-- Required key: Quantity
-- Required key: Items
-- @return AllowedMethods structure as a key-value pair table
function M.AllowedMethods(args)
	assert(args, "You must provide an argument table when creating AllowedMethods")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["CachedMethods"] = args["CachedMethods"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertAllowedMethods(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPublicKeyResult = { ["PublicKey"] = true, ["ETag"] = true, nil }

function asserts.AssertGetPublicKeyResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPublicKeyResult to be of type 'table'")
	if struct["PublicKey"] then asserts.AssertPublicKey(struct["PublicKey"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPublicKeyResult[k], "GetPublicKeyResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPublicKeyResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PublicKey [PublicKey] <p>Return the public key.</p>
-- * ETag [string] <p>The current version of the public key. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return GetPublicKeyResult structure as a key-value pair table
function M.GetPublicKeyResult(args)
	assert(args, "You must provide an argument table when creating GetPublicKeyResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["PublicKey"] = args["PublicKey"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertGetPublicKeyResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContentTypeProfileConfig = { ["ContentTypeProfiles"] = true, ["ForwardWhenContentTypeIsUnknown"] = true, nil }

function asserts.AssertContentTypeProfileConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContentTypeProfileConfig to be of type 'table'")
	assert(struct["ForwardWhenContentTypeIsUnknown"], "Expected key ForwardWhenContentTypeIsUnknown to exist in table")
	if struct["ContentTypeProfiles"] then asserts.AssertContentTypeProfiles(struct["ContentTypeProfiles"]) end
	if struct["ForwardWhenContentTypeIsUnknown"] then asserts.Assertboolean(struct["ForwardWhenContentTypeIsUnknown"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContentTypeProfileConfig[k], "ContentTypeProfileConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContentTypeProfileConfig
-- <p>The configuration for a field-level encryption content type-profile mapping. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentTypeProfiles [ContentTypeProfiles] <p>The configuration for a field-level encryption content type-profile. </p>
-- * ForwardWhenContentTypeIsUnknown [boolean] <p>The setting in a field-level encryption content type-profile mapping that specifies what to do when an unknown content type is provided for the profile. If true, content is forwarded without being encrypted when the content type is unknown. If false (the default), an error is returned when the content type is unknown. </p>
-- Required key: ForwardWhenContentTypeIsUnknown
-- @return ContentTypeProfileConfig structure as a key-value pair table
function M.ContentTypeProfileConfig(args)
	assert(args, "You must provide an argument table when creating ContentTypeProfileConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContentTypeProfiles"] = args["ContentTypeProfiles"],
		["ForwardWhenContentTypeIsUnknown"] = args["ForwardWhenContentTypeIsUnknown"],
	}
	asserts.AssertContentTypeProfileConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDistributionRequest = { ["Id"] = true, ["DistributionConfig"] = true, ["IfMatch"] = true, nil }

function asserts.AssertUpdateDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDistributionRequest to be of type 'table'")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["DistributionConfig"] then asserts.AssertDistributionConfig(struct["DistributionConfig"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDistributionRequest[k], "UpdateDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDistributionRequest
-- <p>The request to update a distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The distribution's id.</p>
-- * DistributionConfig [DistributionConfig] <p>The distribution's configuration information.</p>
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required key: DistributionConfig
-- Required key: Id
-- @return UpdateDistributionRequest structure as a key-value pair table
function M.UpdateDistributionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDistributionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["Id"] = args["Id"],
		["DistributionConfig"] = args["DistributionConfig"],
		["IfMatch"] = args["IfMatch"],
	}
	asserts.AssertUpdateDistributionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ViewerCertificate = { ["Certificate"] = true, ["CloudFrontDefaultCertificate"] = true, ["ACMCertificateArn"] = true, ["SSLSupportMethod"] = true, ["IAMCertificateId"] = true, ["CertificateSource"] = true, ["MinimumProtocolVersion"] = true, nil }

function asserts.AssertViewerCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ViewerCertificate to be of type 'table'")
	if struct["Certificate"] then asserts.Assertstring(struct["Certificate"]) end
	if struct["CloudFrontDefaultCertificate"] then asserts.Assertboolean(struct["CloudFrontDefaultCertificate"]) end
	if struct["ACMCertificateArn"] then asserts.Assertstring(struct["ACMCertificateArn"]) end
	if struct["SSLSupportMethod"] then asserts.AssertSSLSupportMethod(struct["SSLSupportMethod"]) end
	if struct["IAMCertificateId"] then asserts.Assertstring(struct["IAMCertificateId"]) end
	if struct["CertificateSource"] then asserts.AssertCertificateSource(struct["CertificateSource"]) end
	if struct["MinimumProtocolVersion"] then asserts.AssertMinimumProtocolVersion(struct["MinimumProtocolVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.ViewerCertificate[k], "ViewerCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ViewerCertificate
-- <p>A complex type that specifies the following:</p> <ul> <li> <p>Whether you want viewers to use HTTP or HTTPS to request your objects.</p> </li> <li> <p>If you want viewers to use HTTPS, whether you're using an alternate domain name such as <code>example.com</code> or the CloudFront domain name for your distribution, such as <code>d111111abcdef8.cloudfront.net</code>.</p> </li> <li> <p>If you're using an alternate domain name, whether AWS Certificate Manager (ACM) provided the certificate, or you purchased a certificate from a third-party certificate authority and imported it into ACM or uploaded it to the IAM certificate store.</p> </li> </ul> <p>You must specify only one of the following values: </p> <ul> <li> <p> <a>ViewerCertificate$ACMCertificateArn</a> </p> </li> <li> <p> <a>ViewerCertificate$IAMCertificateId</a> </p> </li> <li> <p> <a>ViewerCertificate$CloudFrontDefaultCertificate</a> </p> </li> </ul> <p>Don't specify <code>false</code> for <code>CloudFrontDefaultCertificate</code>.</p> <p> <b>If you want viewers to use HTTP instead of HTTPS to request your objects</b>: Specify the following value:</p> <p> <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;</code> </p> <p>In addition, specify <code>allow-all</code> for <code>ViewerProtocolPolicy</code> for all of your cache behaviors.</p> <p> <b>If you want viewers to use HTTPS to request your objects</b>: Choose the type of certificate that you want to use based on whether you're using an alternate domain name for your objects or the CloudFront domain name:</p> <ul> <li> <p> <b>If you're using an alternate domain name, such as example.com</b>: Specify one of the following values, depending on whether ACM provided your certificate or you purchased your certificate from third-party certificate authority:</p> <ul> <li> <p> <code>&lt;ACMCertificateArn&gt;<i>ARN for ACM SSL/TLS certificate</i>&lt;ACMCertificateArn&gt;</code> where <code> <i>ARN for ACM SSL/TLS certificate</i> </code> is the ARN for the ACM SSL/TLS certificate that you want to use for this distribution.</p> </li> <li> <p> <code>&lt;IAMCertificateId&gt;<i>IAM certificate ID</i>&lt;IAMCertificateId&gt;</code> where <code> <i>IAM certificate ID</i> </code> is the ID that IAM returned when you added the certificate to the IAM certificate store.</p> </li> </ul> <p>If you specify <code>ACMCertificateArn</code> or <code>IAMCertificateId</code>, you must also specify a value for <code>SSLSupportMethod</code>.</p> <p>If you choose to use an ACM certificate or a certificate in the IAM certificate store, we recommend that you use only an alternate domain name in your object URLs (<code>https://example.com/logo.jpg</code>). If you use the domain name that is associated with your CloudFront distribution (such as <code>https://d111111abcdef8.cloudfront.net/logo.jpg</code>) and the viewer supports <code>SNI</code>, then CloudFront behaves normally. However, if the browser does not support SNI, the user's experience depends on the value that you choose for <code>SSLSupportMethod</code>:</p> <ul> <li> <p> <code>vip</code>: The viewer displays a warning because there is a mismatch between the CloudFront domain name and the domain name in your SSL/TLS certificate.</p> </li> <li> <p> <code>sni-only</code>: CloudFront drops the connection with the browser without returning the object.</p> </li> </ul> </li> <li> <p> <b>If you're using the CloudFront domain name for your distribution, such as <code>d111111abcdef8.cloudfront.net</code> </b>: Specify the following value:</p> <p> <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt; </code> </p> </li> </ul> <p>If you want viewers to use HTTPS, you must also specify one of the following values in your cache behaviors:</p> <ul> <li> <p> <code> &lt;ViewerProtocolPolicy&gt;https-only&lt;ViewerProtocolPolicy&gt;</code> </p> </li> <li> <p> <code>&lt;ViewerProtocolPolicy&gt;redirect-to-https&lt;ViewerProtocolPolicy&gt;</code> </p> </li> </ul> <p>You can also optionally require that CloudFront use HTTPS to communicate with your origin by specifying one of the following values for the applicable origins:</p> <ul> <li> <p> <code>&lt;OriginProtocolPolicy&gt;https-only&lt;OriginProtocolPolicy&gt; </code> </p> </li> <li> <p> <code>&lt;OriginProtocolPolicy&gt;match-viewer&lt;OriginProtocolPolicy&gt; </code> </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS">Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [string] <p>This field has been deprecated. Use one of the following fields instead:</p> <ul> <li> <p> <a>ViewerCertificate$ACMCertificateArn</a> </p> </li> <li> <p> <a>ViewerCertificate$IAMCertificateId</a> </p> </li> <li> <p> <a>ViewerCertificate$CloudFrontDefaultCertificate</a> </p> </li> </ul>
-- * CloudFrontDefaultCertificate [boolean] <p>For information about how and when to use <code>CloudFrontDefaultCertificate</code>, see <a>ViewerCertificate</a>.</p>
-- * ACMCertificateArn [string] <p>For information about how and when to use <code>ACMCertificateArn</code>, see <a>ViewerCertificate</a>.</p>
-- * SSLSupportMethod [SSLSupportMethod] <p>If you specify a value for <a>ViewerCertificate$ACMCertificateArn</a> or for <a>ViewerCertificate$IAMCertificateId</a>, you must also specify how you want CloudFront to serve HTTPS requests: using a method that works for all clients or one that works for most clients:</p> <ul> <li> <p> <code>vip</code>: CloudFront uses dedicated IP addresses for your content and can respond to HTTPS requests from any viewer. However, you will incur additional monthly charges.</p> </li> <li> <p> <code>sni-only</code>: CloudFront can respond to HTTPS requests from viewers that support Server Name Indication (SNI). All modern browsers support SNI, but some browsers still in use don't support SNI. If some of your users' browsers don't support SNI, we recommend that you do one of the following:</p> <ul> <li> <p>Use the <code>vip</code> option (dedicated IP addresses) instead of <code>sni-only</code>.</p> </li> <li> <p>Use the CloudFront SSL/TLS certificate instead of a custom certificate. This requires that you use the CloudFront domain name of your distribution in the URLs for your objects, for example, <code>https://d111111abcdef8.cloudfront.net/logo.png</code>.</p> </li> <li> <p>If you can control which browser your users use, upgrade the browser to one that supports SNI.</p> </li> <li> <p>Use HTTP instead of HTTPS.</p> </li> </ul> </li> </ul> <p>Don't specify a value for <code>SSLSupportMethod</code> if you specified <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;</code>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS.html">Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- * IAMCertificateId [string] <p>For information about how and when to use <code>IAMCertificateId</code>, see <a>ViewerCertificate</a>.</p>
-- * CertificateSource [CertificateSource] <p>This field has been deprecated. Use one of the following fields instead:</p> <ul> <li> <p> <a>ViewerCertificate$ACMCertificateArn</a> </p> </li> <li> <p> <a>ViewerCertificate$IAMCertificateId</a> </p> </li> <li> <p> <a>ViewerCertificate$CloudFrontDefaultCertificate</a> </p> </li> </ul>
-- * MinimumProtocolVersion [MinimumProtocolVersion] <p>Specify the security policy that you want CloudFront to use for HTTPS connections. A security policy determines two settings:</p> <ul> <li> <p>The minimum SSL/TLS protocol that CloudFront uses to communicate with viewers</p> </li> <li> <p>The cipher that CloudFront uses to encrypt the content that it returns to viewers</p> </li> </ul> <note> <p>On the CloudFront console, this setting is called <b>Security policy</b>.</p> </note> <p>We recommend that you specify <code>TLSv1.1_2016</code> unless your users are using browsers or devices that do not support TLSv1.1 or later.</p> <p>When both of the following are true, you must specify <code>TLSv1</code> or later for the security policy: </p> <ul> <li> <p>You're using a custom certificate: you specified a value for <code>ACMCertificateArn</code> or for <code>IAMCertificateId</code> </p> </li> <li> <p>You're using SNI: you specified <code>sni-only</code> for <code>SSLSupportMethod</code> </p> </li> </ul> <p>If you specify <code>true</code> for <code>CloudFrontDefaultCertificate</code>, CloudFront automatically sets the security policy to <code>TLSv1</code> regardless of the value that you specify for <code>MinimumProtocolVersion</code>.</p> <p>For information about the relationship between the security policy that you choose and the protocols and ciphers that CloudFront uses to communicate with viewers, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers"> Supported SSL/TLS Protocols and Ciphers for Communication Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @return ViewerCertificate structure as a key-value pair table
function M.ViewerCertificate(args)
	assert(args, "You must provide an argument table when creating ViewerCertificate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
		["CloudFrontDefaultCertificate"] = args["CloudFrontDefaultCertificate"],
		["ACMCertificateArn"] = args["ACMCertificateArn"],
		["SSLSupportMethod"] = args["SSLSupportMethod"],
		["IAMCertificateId"] = args["IAMCertificateId"],
		["CertificateSource"] = args["CertificateSource"],
		["MinimumProtocolVersion"] = args["MinimumProtocolVersion"],
	}
	asserts.AssertViewerCertificate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFieldLevelEncryptionProfileRequest = { ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertDeleteFieldLevelEncryptionProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFieldLevelEncryptionProfileRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFieldLevelEncryptionProfileRequest[k], "DeleteFieldLevelEncryptionProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFieldLevelEncryptionProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>Request the ID of the profile you want to delete from CloudFront.</p>
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the profile to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required key: Id
-- @return DeleteFieldLevelEncryptionProfileRequest structure as a key-value pair table
function M.DeleteFieldLevelEncryptionProfileRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFieldLevelEncryptionProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["Id"] = args["Id"],
		["IfMatch"] = args["IfMatch"],
	}
	asserts.AssertDeleteFieldLevelEncryptionProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFieldLevelEncryptionRequest = { ["Id"] = true, nil }

function asserts.AssertGetFieldLevelEncryptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFieldLevelEncryptionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFieldLevelEncryptionRequest[k], "GetFieldLevelEncryptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFieldLevelEncryptionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>Request the ID for the field-level encryption configuration information.</p>
-- Required key: Id
-- @return GetFieldLevelEncryptionRequest structure as a key-value pair table
function M.GetFieldLevelEncryptionRequest(args)
	assert(args, "You must provide an argument table when creating GetFieldLevelEncryptionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetFieldLevelEncryptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCloudFrontOriginAccessIdentitiesRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListCloudFrontOriginAccessIdentitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCloudFrontOriginAccessIdentitiesRequest to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCloudFrontOriginAccessIdentitiesRequest[k], "ListCloudFrontOriginAccessIdentitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCloudFrontOriginAccessIdentitiesRequest
-- <p>The request to list origin access identities. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page).</p>
-- * MaxItems [string] <p>The maximum number of origin access identities you want in the response body. </p>
-- @return ListCloudFrontOriginAccessIdentitiesRequest structure as a key-value pair table
function M.ListCloudFrontOriginAccessIdentitiesRequest(args)
	assert(args, "You must provide an argument table when creating ListCloudFrontOriginAccessIdentitiesRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListCloudFrontOriginAccessIdentitiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetStreamingDistributionConfigResult = { ["ETag"] = true, ["StreamingDistributionConfig"] = true, nil }

function asserts.AssertGetStreamingDistributionConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionConfigResult to be of type 'table'")
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["StreamingDistributionConfig"] then asserts.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStreamingDistributionConfigResult[k], "GetStreamingDistributionConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionConfigResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>. </p>
-- * StreamingDistributionConfig [StreamingDistributionConfig] <p>The streaming distribution's configuration information.</p>
-- @return GetStreamingDistributionConfigResult structure as a key-value pair table
function M.GetStreamingDistributionConfigResult(args)
	assert(args, "You must provide an argument table when creating GetStreamingDistributionConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["ETag"] = args["ETag"],
		["StreamingDistributionConfig"] = args["StreamingDistributionConfig"],
	}
	asserts.AssertGetStreamingDistributionConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFieldLevelEncryptionConfigsResult = { ["FieldLevelEncryptionList"] = true, nil }

function asserts.AssertListFieldLevelEncryptionConfigsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFieldLevelEncryptionConfigsResult to be of type 'table'")
	if struct["FieldLevelEncryptionList"] then asserts.AssertFieldLevelEncryptionList(struct["FieldLevelEncryptionList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFieldLevelEncryptionConfigsResult[k], "ListFieldLevelEncryptionConfigsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFieldLevelEncryptionConfigsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionList [FieldLevelEncryptionList] <p>Returns a list of all field-level encryption configurations that have been created in CloudFront for this account.</p>
-- @return ListFieldLevelEncryptionConfigsResult structure as a key-value pair table
function M.ListFieldLevelEncryptionConfigsResult(args)
	assert(args, "You must provide an argument table when creating ListFieldLevelEncryptionConfigsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FieldLevelEncryptionList"] = args["FieldLevelEncryptionList"],
	}
	asserts.AssertListFieldLevelEncryptionConfigsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDistributionResult = { ["Distribution"] = true, ["ETag"] = true, ["Location"] = true, nil }

function asserts.AssertCreateDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionResult to be of type 'table'")
	if struct["Distribution"] then asserts.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDistributionResult[k], "CreateDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Distribution [Distribution] <p>The distribution's information.</p>
-- * ETag [string] <p>The current version of the distribution created.</p>
-- * Location [string] <p>The fully qualified URI of the new distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5</code>.</p>
-- @return CreateDistributionResult structure as a key-value pair table
function M.CreateDistributionResult(args)
	assert(args, "You must provide an argument table when creating CreateDistributionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
        ["Location"] = args["Location"],
    }
	local all_args = { 
		["Distribution"] = args["Distribution"],
		["ETag"] = args["ETag"],
		["Location"] = args["Location"],
	}
	asserts.AssertCreateDistributionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueryArgProfiles = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertQueryArgProfiles(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryArgProfiles to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertQueryArgProfileList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryArgProfiles[k], "QueryArgProfiles contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryArgProfiles
-- <p>Query argument-profile mapping for field-level encryption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [QueryArgProfileList] <p>Number of items for query argument-profile mapping for field-level encryption.</p>
-- * Quantity [integer] <p>Number of profiles for query argument-profile mapping for field-level encryption.</p>
-- Required key: Quantity
-- @return QueryArgProfiles structure as a key-value pair table
function M.QueryArgProfiles(args)
	assert(args, "You must provide an argument table when creating QueryArgProfiles")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertQueryArgProfiles(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFieldLevelEncryptionResult = { ["FieldLevelEncryption"] = true, ["ETag"] = true, nil }

function asserts.AssertGetFieldLevelEncryptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFieldLevelEncryptionResult to be of type 'table'")
	if struct["FieldLevelEncryption"] then asserts.AssertFieldLevelEncryption(struct["FieldLevelEncryption"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFieldLevelEncryptionResult[k], "GetFieldLevelEncryptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFieldLevelEncryptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryption [FieldLevelEncryption] <p>Return the field-level encryption configuration information.</p>
-- * ETag [string] <p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return GetFieldLevelEncryptionResult structure as a key-value pair table
function M.GetFieldLevelEncryptionResult(args)
	assert(args, "You must provide an argument table when creating GetFieldLevelEncryptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["FieldLevelEncryption"] = args["FieldLevelEncryption"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertGetFieldLevelEncryptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCloudFrontOriginAccessIdentityRequest = { ["CloudFrontOriginAccessIdentityConfig"] = true, nil }

function asserts.AssertCreateCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["CloudFrontOriginAccessIdentityConfig"], "Expected key CloudFrontOriginAccessIdentityConfig to exist in table")
	if struct["CloudFrontOriginAccessIdentityConfig"] then asserts.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCloudFrontOriginAccessIdentityRequest[k], "CreateCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCloudFrontOriginAccessIdentityRequest
-- <p>The request to create a new origin access identity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] <p>The current configuration information for the identity.</p>
-- Required key: CloudFrontOriginAccessIdentityConfig
-- @return CreateCloudFrontOriginAccessIdentityRequest structure as a key-value pair table
function M.CreateCloudFrontOriginAccessIdentityRequest(args)
	assert(args, "You must provide an argument table when creating CreateCloudFrontOriginAccessIdentityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CloudFrontOriginAccessIdentityConfig"] = args["CloudFrontOriginAccessIdentityConfig"],
	}
	asserts.AssertCreateCloudFrontOriginAccessIdentityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamingDistributionSummary = { ["Status"] = true, ["S3Origin"] = true, ["DomainName"] = true, ["Enabled"] = true, ["PriceClass"] = true, ["TrustedSigners"] = true, ["Comment"] = true, ["LastModifiedTime"] = true, ["Id"] = true, ["ARN"] = true, ["Aliases"] = true, nil }

function asserts.AssertStreamingDistributionSummary(struct)
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
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["S3Origin"] then asserts.AssertS3Origin(struct["S3Origin"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["PriceClass"] then asserts.AssertPriceClass(struct["PriceClass"]) end
	if struct["TrustedSigners"] then asserts.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["ARN"] then asserts.Assertstring(struct["ARN"]) end
	if struct["Aliases"] then asserts.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistributionSummary[k], "StreamingDistributionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionSummary
-- <p> A summary of the information for an Amazon CloudFront streaming distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [string] <p> Indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated throughout the Amazon CloudFront system.</p>
-- * S3Origin [S3Origin] <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>
-- * DomainName [string] <p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>
-- * Enabled [boolean] <p>Whether the distribution is enabled to accept end user requests for content.</p>
-- * PriceClass [PriceClass] 
-- * TrustedSigners [TrustedSigners] <p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content. If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>.If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>. To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>
-- * Comment [string] <p>The comment originally specified when this distribution was created.</p>
-- * LastModifiedTime [timestamp] <p>The date and time the distribution was last modified.</p>
-- * Id [string] <p>The identifier for the distribution, for example, <code>EDFDVBD632BHDS5</code>.</p>
-- * ARN [string] <p> The ARN (Amazon Resource Name) for the streaming distribution. For example: <code>arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>
-- * Aliases [Aliases] <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.</p>
-- Required key: Id
-- Required key: ARN
-- Required key: Status
-- Required key: LastModifiedTime
-- Required key: DomainName
-- Required key: S3Origin
-- Required key: Aliases
-- Required key: TrustedSigners
-- Required key: Comment
-- Required key: PriceClass
-- Required key: Enabled
-- @return StreamingDistributionSummary structure as a key-value pair table
function M.StreamingDistributionSummary(args)
	assert(args, "You must provide an argument table when creating StreamingDistributionSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["S3Origin"] = args["S3Origin"],
		["DomainName"] = args["DomainName"],
		["Enabled"] = args["Enabled"],
		["PriceClass"] = args["PriceClass"],
		["TrustedSigners"] = args["TrustedSigners"],
		["Comment"] = args["Comment"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["Id"] = args["Id"],
		["ARN"] = args["ARN"],
		["Aliases"] = args["Aliases"],
	}
	asserts.AssertStreamingDistributionSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDistributionConfigRequest = { ["Id"] = true, nil }

function asserts.AssertGetDistributionConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDistributionConfigRequest[k], "GetDistributionConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionConfigRequest
-- <p>The request to get a distribution configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The distribution's ID.</p>
-- Required key: Id
-- @return GetDistributionConfigRequest structure as a key-value pair table
function M.GetDistributionConfigRequest(args)
	assert(args, "You must provide an argument table when creating GetDistributionConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetDistributionConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStreamingDistributionResult = { ["StreamingDistribution"] = true, ["ETag"] = true, nil }

function asserts.AssertUpdateStreamingDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStreamingDistributionResult to be of type 'table'")
	if struct["StreamingDistribution"] then asserts.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStreamingDistributionResult[k], "UpdateStreamingDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStreamingDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamingDistribution [StreamingDistribution] <p>The streaming distribution's information.</p>
-- * ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return UpdateStreamingDistributionResult structure as a key-value pair table
function M.UpdateStreamingDistributionResult(args)
	assert(args, "You must provide an argument table when creating UpdateStreamingDistributionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["StreamingDistribution"] = args["StreamingDistribution"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertUpdateStreamingDistributionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePublicKeyRequest = { ["PublicKeyConfig"] = true, nil }

function asserts.AssertCreatePublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePublicKeyRequest to be of type 'table'")
	assert(struct["PublicKeyConfig"], "Expected key PublicKeyConfig to exist in table")
	if struct["PublicKeyConfig"] then asserts.AssertPublicKeyConfig(struct["PublicKeyConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePublicKeyRequest[k], "CreatePublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePublicKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PublicKeyConfig [PublicKeyConfig] <p>The request to add a public key to CloudFront.</p>
-- Required key: PublicKeyConfig
-- @return CreatePublicKeyRequest structure as a key-value pair table
function M.CreatePublicKeyRequest(args)
	assert(args, "You must provide an argument table when creating CreatePublicKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PublicKeyConfig"] = args["PublicKeyConfig"],
	}
	asserts.AssertCreatePublicKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamingDistribution = { ["Status"] = true, ["DomainName"] = true, ["StreamingDistributionConfig"] = true, ["ActiveTrustedSigners"] = true, ["LastModifiedTime"] = true, ["Id"] = true, ["ARN"] = true, nil }

function asserts.AssertStreamingDistribution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistribution to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ARN"], "Expected key ARN to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["ActiveTrustedSigners"], "Expected key ActiveTrustedSigners to exist in table")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	if struct["StreamingDistributionConfig"] then asserts.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	if struct["ActiveTrustedSigners"] then asserts.AssertActiveTrustedSigners(struct["ActiveTrustedSigners"]) end
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["ARN"] then asserts.Assertstring(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistribution[k], "StreamingDistribution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistribution
-- <p>A streaming distribution. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [string] <p>The current status of the RTMP distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>
-- * DomainName [string] <p>The domain name that corresponds to the streaming distribution, for example, <code>s5c39gqb8ow64r.cloudfront.net</code>. </p>
-- * StreamingDistributionConfig [StreamingDistributionConfig] <p>The current configuration information for the RTMP distribution.</p>
-- * ActiveTrustedSigners [ActiveTrustedSigners] <p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
-- * LastModifiedTime [timestamp] <p>The date and time that the distribution was last modified. </p>
-- * Id [string] <p>The identifier for the RTMP distribution. For example: <code>EGTXBD79EXAMPLE</code>.</p>
-- * ARN [string] 
-- Required key: Id
-- Required key: ARN
-- Required key: Status
-- Required key: DomainName
-- Required key: ActiveTrustedSigners
-- Required key: StreamingDistributionConfig
-- @return StreamingDistribution structure as a key-value pair table
function M.StreamingDistribution(args)
	assert(args, "You must provide an argument table when creating StreamingDistribution")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DomainName"] = args["DomainName"],
		["StreamingDistributionConfig"] = args["StreamingDistributionConfig"],
		["ActiveTrustedSigners"] = args["ActiveTrustedSigners"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["Id"] = args["Id"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertStreamingDistribution(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Origins = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertOrigins(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Origins to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertOriginList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.Origins[k], "Origins contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Origins
-- <p>A complex type that contains information about origins for this distribution. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [OriginList] <p>A complex type that contains origins for this distribution.</p>
-- * Quantity [integer] <p>The number of origins for this distribution.</p>
-- Required key: Quantity
-- @return Origins structure as a key-value pair table
function M.Origins(args)
	assert(args, "You must provide an argument table when creating Origins")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertOrigins(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FieldLevelEncryption = { ["LastModifiedTime"] = true, ["Id"] = true, ["FieldLevelEncryptionConfig"] = true, nil }

function asserts.AssertFieldLevelEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldLevelEncryption to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	assert(struct["FieldLevelEncryptionConfig"], "Expected key FieldLevelEncryptionConfig to exist in table")
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["FieldLevelEncryptionConfig"] then asserts.AssertFieldLevelEncryptionConfig(struct["FieldLevelEncryptionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldLevelEncryption[k], "FieldLevelEncryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldLevelEncryption
-- <p>A complex data type that includes the profile configurations and other options specified for field-level encryption. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedTime [timestamp] <p>The last time the field-level encryption configuration was changed. </p>
-- * Id [string] <p>The configuration ID for a field-level encryption configuration which includes a set of profiles that specify certain selected data fields to be encrypted by specific public keys.</p>
-- * FieldLevelEncryptionConfig [FieldLevelEncryptionConfig] <p>A complex data type that includes the profile configurations specified for field-level encryption. </p>
-- Required key: Id
-- Required key: LastModifiedTime
-- Required key: FieldLevelEncryptionConfig
-- @return FieldLevelEncryption structure as a key-value pair table
function M.FieldLevelEncryption(args)
	assert(args, "You must provide an argument table when creating FieldLevelEncryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedTime"] = args["LastModifiedTime"],
		["Id"] = args["Id"],
		["FieldLevelEncryptionConfig"] = args["FieldLevelEncryptionConfig"],
	}
	asserts.AssertFieldLevelEncryption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DistributionList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Marker"] = true, ["IsTruncated"] = true, ["Quantity"] = true, nil }

function asserts.AssertDistributionList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DistributionList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertDistributionSummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.DistributionList[k], "DistributionList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionList
-- <p>A distribution list.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [DistributionSummaryList] <p>A complex type that contains one <code>DistributionSummary</code> element for each distribution that was created by the current AWS account.</p>
-- * NextMarker [string] <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your distributions where they left off. </p>
-- * MaxItems [integer] <p>The value you provided for the <code>MaxItems</code> request parameter.</p>
-- * Marker [string] <p>The value you provided for the <code>Marker</code> request parameter.</p>
-- * IsTruncated [boolean] <p>A flag that indicates whether more distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list.</p>
-- * Quantity [integer] <p>The number of distributions that were created by the current AWS account. </p>
-- Required key: Marker
-- Required key: MaxItems
-- Required key: IsTruncated
-- Required key: Quantity
-- @return DistributionList structure as a key-value pair table
function M.DistributionList(args)
	assert(args, "You must provide an argument table when creating DistributionList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["NextMarker"] = args["NextMarker"],
		["MaxItems"] = args["MaxItems"],
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertDistributionList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFieldLevelEncryptionConfigRequest = { ["Id"] = true, nil }

function asserts.AssertGetFieldLevelEncryptionConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFieldLevelEncryptionConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFieldLevelEncryptionConfigRequest[k], "GetFieldLevelEncryptionConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFieldLevelEncryptionConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>Request the ID for the field-level encryption configuration information.</p>
-- Required key: Id
-- @return GetFieldLevelEncryptionConfigRequest structure as a key-value pair table
function M.GetFieldLevelEncryptionConfigRequest(args)
	assert(args, "You must provide an argument table when creating GetFieldLevelEncryptionConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetFieldLevelEncryptionConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDistributionsByWebACLIdResult = { ["DistributionList"] = true, nil }

function asserts.AssertListDistributionsByWebACLIdResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsByWebACLIdResult to be of type 'table'")
	if struct["DistributionList"] then asserts.AssertDistributionList(struct["DistributionList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDistributionsByWebACLIdResult[k], "ListDistributionsByWebACLIdResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsByWebACLIdResult
-- <p>The response to a request to list the distributions that are associated with a specified AWS WAF web ACL. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DistributionList [DistributionList] <p>The <code>DistributionList</code> type. </p>
-- @return ListDistributionsByWebACLIdResult structure as a key-value pair table
function M.ListDistributionsByWebACLIdResult(args)
	assert(args, "You must provide an argument table when creating ListDistributionsByWebACLIdResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DistributionList"] = args["DistributionList"],
	}
	asserts.AssertListDistributionsByWebACLIdResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Distribution = { ["Status"] = true, ["DomainName"] = true, ["InProgressInvalidationBatches"] = true, ["DistributionConfig"] = true, ["ActiveTrustedSigners"] = true, ["LastModifiedTime"] = true, ["Id"] = true, ["ARN"] = true, nil }

function asserts.AssertDistribution(struct)
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
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	if struct["InProgressInvalidationBatches"] then asserts.Assertinteger(struct["InProgressInvalidationBatches"]) end
	if struct["DistributionConfig"] then asserts.AssertDistributionConfig(struct["DistributionConfig"]) end
	if struct["ActiveTrustedSigners"] then asserts.AssertActiveTrustedSigners(struct["ActiveTrustedSigners"]) end
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["ARN"] then asserts.Assertstring(struct["ARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.Distribution[k], "Distribution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Distribution
-- <p>The distribution's information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [string] <p>This response element indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated to all CloudFront edge locations. </p>
-- * DomainName [string] <p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>. </p>
-- * InProgressInvalidationBatches [integer] <p>The number of invalidation batches currently in progress. </p>
-- * DistributionConfig [DistributionConfig] <p>The current configuration information for the distribution. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/distribution ID/config</code> resource.</p>
-- * ActiveTrustedSigners [ActiveTrustedSigners] <p>CloudFront automatically adds this element to the response only if you've set up the distribution to serve private content with signed URLs. The element lists the key pair IDs that CloudFront is aware of for each trusted signer. The <code>Signer</code> child element lists the AWS account number of the trusted signer (or an empty <code>Self</code> element if the signer is you). The <code>Signer</code> element also includes the IDs of any active key pairs associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create working signed URLs.</p>
-- * LastModifiedTime [timestamp] <p>The date and time the distribution was last modified. </p>
-- * Id [string] <p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>. </p>
-- * ARN [string] <p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>
-- Required key: Id
-- Required key: ARN
-- Required key: Status
-- Required key: LastModifiedTime
-- Required key: InProgressInvalidationBatches
-- Required key: DomainName
-- Required key: ActiveTrustedSigners
-- Required key: DistributionConfig
-- @return Distribution structure as a key-value pair table
function M.Distribution(args)
	assert(args, "You must provide an argument table when creating Distribution")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DomainName"] = args["DomainName"],
		["InProgressInvalidationBatches"] = args["InProgressInvalidationBatches"],
		["DistributionConfig"] = args["DistributionConfig"],
		["ActiveTrustedSigners"] = args["ActiveTrustedSigners"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["Id"] = args["Id"],
		["ARN"] = args["ARN"],
	}
	asserts.AssertDistribution(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPublicKeyConfigResult = { ["ETag"] = true, ["PublicKeyConfig"] = true, nil }

function asserts.AssertGetPublicKeyConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPublicKeyConfigResult to be of type 'table'")
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["PublicKeyConfig"] then asserts.AssertPublicKeyConfig(struct["PublicKeyConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPublicKeyConfigResult[k], "GetPublicKeyConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPublicKeyConfigResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ETag [string] <p>The current version of the public key configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- * PublicKeyConfig [PublicKeyConfig] <p>Return the result for the public key configuration.</p>
-- @return GetPublicKeyConfigResult structure as a key-value pair table
function M.GetPublicKeyConfigResult(args)
	assert(args, "You must provide an argument table when creating GetPublicKeyConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["ETag"] = args["ETag"],
		["PublicKeyConfig"] = args["PublicKeyConfig"],
	}
	asserts.AssertGetPublicKeyConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FieldLevelEncryptionProfileList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Quantity"] = true, nil }

function asserts.AssertFieldLevelEncryptionProfileList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldLevelEncryptionProfileList to be of type 'table'")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertFieldLevelEncryptionProfileSummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldLevelEncryptionProfileList[k], "FieldLevelEncryptionProfileList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldLevelEncryptionProfileList
-- <p>List of field-level encryption profiles.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [FieldLevelEncryptionProfileSummaryList] <p>The field-level encryption profile items.</p>
-- * NextMarker [string] <p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your profiles where you left off.</p>
-- * MaxItems [integer] <p>The maximum number of field-level encryption profiles you want in the response body. </p>
-- * Quantity [integer] <p>The number of field-level encryption profiles.</p>
-- Required key: MaxItems
-- Required key: Quantity
-- @return FieldLevelEncryptionProfileList structure as a key-value pair table
function M.FieldLevelEncryptionProfileList(args)
	assert(args, "You must provide an argument table when creating FieldLevelEncryptionProfileList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["NextMarker"] = args["NextMarker"],
		["MaxItems"] = args["MaxItems"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertFieldLevelEncryptionProfileList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPublicKeyRequest = { ["Id"] = true, nil }

function asserts.AssertGetPublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPublicKeyRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPublicKeyRequest[k], "GetPublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPublicKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>Request the ID for the public key.</p>
-- Required key: Id
-- @return GetPublicKeyRequest structure as a key-value pair table
function M.GetPublicKeyRequest(args)
	assert(args, "You must provide an argument table when creating GetPublicKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetPublicKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tags = { ["Items"] = true, nil }

function asserts.AssertTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tags to be of type 'table'")
	if struct["Items"] then asserts.AssertTagList(struct["Items"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tags[k], "Tags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tags
-- <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [TagList] <p> A complex type that contains <code>Tag</code> elements.</p>
-- @return Tags structure as a key-value pair table
function M.Tags(args)
	assert(args, "You must provide an argument table when creating Tags")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
	}
	asserts.AssertTags(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrustedSigners = { ["Items"] = true, ["Enabled"] = true, ["Quantity"] = true, nil }

function asserts.AssertTrustedSigners(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrustedSigners to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertAwsAccountNumberList(struct["Items"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrustedSigners[k], "TrustedSigners contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrustedSigners
-- <p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information about updating the distribution configuration, see <a>DistributionConfig</a> .</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [AwsAccountNumberList] <p> <b>Optional</b>: A complex type that contains trusted signers for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
-- * Enabled [boolean] <p>Specifies whether you want to require viewers to use signed URLs to access the files specified by <code>PathPattern</code> and <code>TargetOriginId</code>.</p>
-- * Quantity [integer] <p>The number of trusted signers for this cache behavior.</p>
-- Required key: Enabled
-- Required key: Quantity
-- @return TrustedSigners structure as a key-value pair table
function M.TrustedSigners(args)
	assert(args, "You must provide an argument table when creating TrustedSigners")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Enabled"] = args["Enabled"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertTrustedSigners(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudFrontOriginAccessIdentitySummary = { ["Comment"] = true, ["S3CanonicalUserId"] = true, ["Id"] = true, nil }

function asserts.AssertCloudFrontOriginAccessIdentitySummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentitySummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["S3CanonicalUserId"], "Expected key S3CanonicalUserId to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["S3CanonicalUserId"] then asserts.Assertstring(struct["S3CanonicalUserId"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFrontOriginAccessIdentitySummary[k], "CloudFrontOriginAccessIdentitySummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentitySummary
-- <p>Summary of the information about a CloudFront origin access identity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [string] <p>The comment for this origin access identity, as originally specified when created.</p>
-- * S3CanonicalUserId [string] <p>The Amazon S3 canonical user ID for the origin access identity, which you use when giving the origin access identity read permission to an object in Amazon S3.</p>
-- * Id [string] <p>The ID for the origin access identity. For example: <code>E74FTE3AJFJ256A</code>.</p>
-- Required key: Id
-- Required key: S3CanonicalUserId
-- Required key: Comment
-- @return CloudFrontOriginAccessIdentitySummary structure as a key-value pair table
function M.CloudFrontOriginAccessIdentitySummary(args)
	assert(args, "You must provide an argument table when creating CloudFrontOriginAccessIdentitySummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Comment"] = args["Comment"],
		["S3CanonicalUserId"] = args["S3CanonicalUserId"],
		["Id"] = args["Id"],
	}
	asserts.AssertCloudFrontOriginAccessIdentitySummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDistributionRequest = { ["DistributionConfig"] = true, nil }

function asserts.AssertCreateDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionRequest to be of type 'table'")
	assert(struct["DistributionConfig"], "Expected key DistributionConfig to exist in table")
	if struct["DistributionConfig"] then asserts.AssertDistributionConfig(struct["DistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDistributionRequest[k], "CreateDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionRequest
-- <p>The request to create a new distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DistributionConfig [DistributionConfig] <p>The distribution's configuration information.</p>
-- Required key: DistributionConfig
-- @return CreateDistributionRequest structure as a key-value pair table
function M.CreateDistributionRequest(args)
	assert(args, "You must provide an argument table when creating CreateDistributionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DistributionConfig"] = args["DistributionConfig"],
	}
	asserts.AssertCreateDistributionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ForwardedValues = { ["Headers"] = true, ["Cookies"] = true, ["QueryStringCacheKeys"] = true, ["QueryString"] = true, nil }

function asserts.AssertForwardedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForwardedValues to be of type 'table'")
	assert(struct["QueryString"], "Expected key QueryString to exist in table")
	assert(struct["Cookies"], "Expected key Cookies to exist in table")
	if struct["Headers"] then asserts.AssertHeaders(struct["Headers"]) end
	if struct["Cookies"] then asserts.AssertCookiePreference(struct["Cookies"]) end
	if struct["QueryStringCacheKeys"] then asserts.AssertQueryStringCacheKeys(struct["QueryStringCacheKeys"]) end
	if struct["QueryString"] then asserts.Assertboolean(struct["QueryString"]) end
	for k,_ in pairs(struct) do
		assert(keys.ForwardedValues[k], "ForwardedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForwardedValues
-- <p>A complex type that specifies how CloudFront handles query strings and cookies.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Headers [Headers] <p>A complex type that specifies the <code>Headers</code>, if any, that you want CloudFront to base caching on for this cache behavior. </p>
-- * Cookies [CookiePreference] <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- * QueryStringCacheKeys [QueryStringCacheKeys] <p>A complex type that contains information about the query string parameters that you want CloudFront to use for caching for this cache behavior.</p>
-- * QueryString [boolean] <p>Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior and cache based on the query string parameters. CloudFront behavior depends on the value of <code>QueryString</code> and on the values that you specify for <code>QueryStringCacheKeys</code>, if any:</p> <p>If you specify true for <code>QueryString</code> and you don't specify any values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin and caches based on all query string parameters. Depending on how many query string parameters and values you have, this can adversely affect performance because CloudFront must forward more requests to the origin.</p> <p>If you specify true for <code>QueryString</code> and you specify one or more values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin, but it only caches based on the query string parameters that you specify.</p> <p>If you specify false for <code>QueryString</code>, CloudFront doesn't forward any query string parameters to the origin, and doesn't cache based on query string parameters.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html">Configuring CloudFront to Cache Based on Query String Parameters</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required key: QueryString
-- Required key: Cookies
-- @return ForwardedValues structure as a key-value pair table
function M.ForwardedValues(args)
	assert(args, "You must provide an argument table when creating ForwardedValues")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Headers"] = args["Headers"],
		["Cookies"] = args["Cookies"],
		["QueryStringCacheKeys"] = args["QueryStringCacheKeys"],
		["QueryString"] = args["QueryString"],
	}
	asserts.AssertForwardedValues(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FieldLevelEncryptionConfig = { ["Comment"] = true, ["QueryArgProfileConfig"] = true, ["ContentTypeProfileConfig"] = true, ["CallerReference"] = true, nil }

function asserts.AssertFieldLevelEncryptionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldLevelEncryptionConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["QueryArgProfileConfig"] then asserts.AssertQueryArgProfileConfig(struct["QueryArgProfileConfig"]) end
	if struct["ContentTypeProfileConfig"] then asserts.AssertContentTypeProfileConfig(struct["ContentTypeProfileConfig"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldLevelEncryptionConfig[k], "FieldLevelEncryptionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldLevelEncryptionConfig
-- <p>A complex data type that includes the profile configurations specified for field-level encryption. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [string] <p>An optional comment about the configuration.</p>
-- * QueryArgProfileConfig [QueryArgProfileConfig] <p>A complex data type that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.</p>
-- * ContentTypeProfileConfig [ContentTypeProfileConfig] <p>A complex data type that specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.</p>
-- * CallerReference [string] <p>A unique number that ensures the request can't be replayed.</p>
-- Required key: CallerReference
-- @return FieldLevelEncryptionConfig structure as a key-value pair table
function M.FieldLevelEncryptionConfig(args)
	assert(args, "You must provide an argument table when creating FieldLevelEncryptionConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Comment"] = args["Comment"],
		["QueryArgProfileConfig"] = args["QueryArgProfileConfig"],
		["ContentTypeProfileConfig"] = args["ContentTypeProfileConfig"],
		["CallerReference"] = args["CallerReference"],
	}
	asserts.AssertFieldLevelEncryptionConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetStreamingDistributionRequest = { ["Id"] = true, nil }

function asserts.AssertGetStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStreamingDistributionRequest[k], "GetStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionRequest
-- <p>The request to get a streaming distribution's information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The streaming distribution's ID.</p>
-- Required key: Id
-- @return GetStreamingDistributionRequest structure as a key-value pair table
function M.GetStreamingDistributionRequest(args)
	assert(args, "You must provide an argument table when creating GetStreamingDistributionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetStreamingDistributionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Aliases = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertAliases(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Aliases to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertAliasList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.Aliases[k], "Aliases contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Aliases
-- <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [AliasList] <p>A complex type that contains the CNAME aliases, if any, that you want to associate with this distribution.</p>
-- * Quantity [integer] <p>The number of CNAME aliases, if any, that you want to associate with this distribution.</p>
-- Required key: Quantity
-- @return Aliases structure as a key-value pair table
function M.Aliases(args)
	assert(args, "You must provide an argument table when creating Aliases")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertAliases(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptionEntities = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertEncryptionEntities(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionEntities to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertEncryptionEntityList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionEntities[k], "EncryptionEntities contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionEntities
-- <p>Complex data type for field-level encryption profiles that includes all of the encryption entities. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [EncryptionEntityList] <p>An array of field patterns in a field-level encryption content type-profile mapping. </p>
-- * Quantity [integer] <p>Number of field pattern items in a field-level encryption content type-profile mapping. </p>
-- Required key: Quantity
-- @return EncryptionEntities structure as a key-value pair table
function M.EncryptionEntities(args)
	assert(args, "You must provide an argument table when creating EncryptionEntities")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertEncryptionEntities(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFieldLevelEncryptionProfileResult = { ["FieldLevelEncryptionProfile"] = true, ["ETag"] = true, nil }

function asserts.AssertUpdateFieldLevelEncryptionProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFieldLevelEncryptionProfileResult to be of type 'table'")
	if struct["FieldLevelEncryptionProfile"] then asserts.AssertFieldLevelEncryptionProfile(struct["FieldLevelEncryptionProfile"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFieldLevelEncryptionProfileResult[k], "UpdateFieldLevelEncryptionProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFieldLevelEncryptionProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionProfile [FieldLevelEncryptionProfile] <p>Return the results of updating the profile.</p>
-- * ETag [string] <p>The result of the field-level encryption profile request. </p>
-- @return UpdateFieldLevelEncryptionProfileResult structure as a key-value pair table
function M.UpdateFieldLevelEncryptionProfileResult(args)
	assert(args, "You must provide an argument table when creating UpdateFieldLevelEncryptionProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["FieldLevelEncryptionProfile"] = args["FieldLevelEncryptionProfile"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertUpdateFieldLevelEncryptionProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Paths = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertPaths(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Paths to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertPathList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.Paths[k], "Paths contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Paths
-- <p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [PathList] <p>A complex type that contains a list of the paths that you want to invalidate.</p>
-- * Quantity [integer] <p>The number of objects that you want to invalidate.</p>
-- Required key: Quantity
-- @return Paths structure as a key-value pair table
function M.Paths(args)
	assert(args, "You must provide an argument table when creating Paths")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertPaths(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueryArgProfile = { ["QueryArg"] = true, ["ProfileId"] = true, nil }

function asserts.AssertQueryArgProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryArgProfile to be of type 'table'")
	assert(struct["QueryArg"], "Expected key QueryArg to exist in table")
	assert(struct["ProfileId"], "Expected key ProfileId to exist in table")
	if struct["QueryArg"] then asserts.Assertstring(struct["QueryArg"]) end
	if struct["ProfileId"] then asserts.Assertstring(struct["ProfileId"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryArgProfile[k], "QueryArgProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryArgProfile
-- <p>Query argument-profile mapping for field-level encryption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueryArg [string] <p>Query argument for field-level encryption query argument-profile mapping.</p>
-- * ProfileId [string] <p>ID of profile to use for field-level encryption query argument-profile mapping</p>
-- Required key: QueryArg
-- Required key: ProfileId
-- @return QueryArgProfile structure as a key-value pair table
function M.QueryArgProfile(args)
	assert(args, "You must provide an argument table when creating QueryArgProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QueryArg"] = args["QueryArg"],
		["ProfileId"] = args["ProfileId"],
	}
	asserts.AssertQueryArgProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFieldLevelEncryptionConfigRequest = { ["IfMatch"] = true, ["FieldLevelEncryptionConfig"] = true, ["Id"] = true, nil }

function asserts.AssertUpdateFieldLevelEncryptionConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFieldLevelEncryptionConfigRequest to be of type 'table'")
	assert(struct["FieldLevelEncryptionConfig"], "Expected key FieldLevelEncryptionConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	if struct["FieldLevelEncryptionConfig"] then asserts.AssertFieldLevelEncryptionConfig(struct["FieldLevelEncryptionConfig"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFieldLevelEncryptionConfigRequest[k], "UpdateFieldLevelEncryptionConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFieldLevelEncryptionConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- * FieldLevelEncryptionConfig [FieldLevelEncryptionConfig] <p>Request to update a field-level encryption configuration. </p>
-- * Id [string] <p>The ID of the configuration you want to update.</p>
-- Required key: FieldLevelEncryptionConfig
-- Required key: Id
-- @return UpdateFieldLevelEncryptionConfigRequest structure as a key-value pair table
function M.UpdateFieldLevelEncryptionConfigRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFieldLevelEncryptionConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["IfMatch"] = args["IfMatch"],
		["FieldLevelEncryptionConfig"] = args["FieldLevelEncryptionConfig"],
		["Id"] = args["Id"],
	}
	asserts.AssertUpdateFieldLevelEncryptionConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInvalidationsResult = { ["InvalidationList"] = true, nil }

function asserts.AssertListInvalidationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInvalidationsResult to be of type 'table'")
	if struct["InvalidationList"] then asserts.AssertInvalidationList(struct["InvalidationList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInvalidationsResult[k], "ListInvalidationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInvalidationsResult
-- <p>The returned result of the corresponding request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InvalidationList [InvalidationList] <p>Information about invalidation batches. </p>
-- @return ListInvalidationsResult structure as a key-value pair table
function M.ListInvalidationsResult(args)
	assert(args, "You must provide an argument table when creating ListInvalidationsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InvalidationList"] = args["InvalidationList"],
	}
	asserts.AssertListInvalidationsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFieldLevelEncryptionProfileRequest = { ["FieldLevelEncryptionProfileConfig"] = true, nil }

function asserts.AssertCreateFieldLevelEncryptionProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFieldLevelEncryptionProfileRequest to be of type 'table'")
	assert(struct["FieldLevelEncryptionProfileConfig"], "Expected key FieldLevelEncryptionProfileConfig to exist in table")
	if struct["FieldLevelEncryptionProfileConfig"] then asserts.AssertFieldLevelEncryptionProfileConfig(struct["FieldLevelEncryptionProfileConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFieldLevelEncryptionProfileRequest[k], "CreateFieldLevelEncryptionProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFieldLevelEncryptionProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionProfileConfig [FieldLevelEncryptionProfileConfig] <p>The request to create a field-level encryption profile.</p>
-- Required key: FieldLevelEncryptionProfileConfig
-- @return CreateFieldLevelEncryptionProfileRequest structure as a key-value pair table
function M.CreateFieldLevelEncryptionProfileRequest(args)
	assert(args, "You must provide an argument table when creating CreateFieldLevelEncryptionProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FieldLevelEncryptionProfileConfig"] = args["FieldLevelEncryptionProfileConfig"],
	}
	asserts.AssertCreateFieldLevelEncryptionProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Signer = { ["KeyPairIds"] = true, ["AwsAccountNumber"] = true, nil }

function asserts.AssertSigner(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Signer to be of type 'table'")
	if struct["KeyPairIds"] then asserts.AssertKeyPairIds(struct["KeyPairIds"]) end
	if struct["AwsAccountNumber"] then asserts.Assertstring(struct["AwsAccountNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.Signer[k], "Signer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Signer
-- <p>A complex type that lists the AWS accounts that were included in the <code>TrustedSigners</code> complex type, as well as their active CloudFront key pair IDs, if any. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyPairIds [KeyPairIds] <p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>.</p>
-- * AwsAccountNumber [string] <p>An AWS account that is included in the <code>TrustedSigners</code> complex type for this RTMP distribution. Valid values include:</p> <ul> <li> <p> <code>self</code>, which is the AWS account used to create the distribution.</p> </li> <li> <p>An AWS account number.</p> </li> </ul>
-- @return Signer structure as a key-value pair table
function M.Signer(args)
	assert(args, "You must provide an argument table when creating Signer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KeyPairIds"] = args["KeyPairIds"],
		["AwsAccountNumber"] = args["AwsAccountNumber"],
	}
	asserts.AssertSigner(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStreamingDistributionsRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListStreamingDistributionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamingDistributionsRequest to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamingDistributionsRequest[k], "ListStreamingDistributionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamingDistributionsRequest
-- <p>The request to list your streaming distributions. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p>The value that you provided for the <code>Marker</code> request parameter.</p>
-- * MaxItems [string] <p>The value that you provided for the <code>MaxItems</code> request parameter.</p>
-- @return ListStreamingDistributionsRequest structure as a key-value pair table
function M.ListStreamingDistributionsRequest(args)
	assert(args, "You must provide an argument table when creating ListStreamingDistributionsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListStreamingDistributionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFieldLevelEncryptionProfilesResult = { ["FieldLevelEncryptionProfileList"] = true, nil }

function asserts.AssertListFieldLevelEncryptionProfilesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFieldLevelEncryptionProfilesResult to be of type 'table'")
	if struct["FieldLevelEncryptionProfileList"] then asserts.AssertFieldLevelEncryptionProfileList(struct["FieldLevelEncryptionProfileList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFieldLevelEncryptionProfilesResult[k], "ListFieldLevelEncryptionProfilesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFieldLevelEncryptionProfilesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionProfileList [FieldLevelEncryptionProfileList] <p>Returns a list of the field-level encryption profiles that have been created in CloudFront for this account.</p>
-- @return ListFieldLevelEncryptionProfilesResult structure as a key-value pair table
function M.ListFieldLevelEncryptionProfilesResult(args)
	assert(args, "You must provide an argument table when creating ListFieldLevelEncryptionProfilesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FieldLevelEncryptionProfileList"] = args["FieldLevelEncryptionProfileList"],
	}
	asserts.AssertListFieldLevelEncryptionProfilesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaFunctionAssociations = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertLambdaFunctionAssociations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionAssociations to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertLambdaFunctionAssociationList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionAssociations[k], "LambdaFunctionAssociations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionAssociations
-- <p>A complex type that specifies a list of Lambda functions associations for a cache behavior.</p> <p>If you want to invoke one or more Lambda functions triggered by requests that match the <code>PathPattern</code> of the cache behavior, specify the applicable values for <code>Quantity</code> and <code>Items</code>. Note that there can be up to 4 <code>LambdaFunctionAssociation</code> items in this list (one for each possible value of <code>EventType</code>) and each <code>EventType</code> can be associated with the Lambda function only once.</p> <p>If you don't want to invoke any Lambda functions for the requests that match <code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [LambdaFunctionAssociationList] <p> <b>Optional</b>: A complex type that contains <code>LambdaFunctionAssociation</code> items for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
-- * Quantity [integer] <p>The number of Lambda function associations for this cache behavior.</p>
-- Required key: Quantity
-- @return LambdaFunctionAssociations structure as a key-value pair table
function M.LambdaFunctionAssociations(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionAssociations")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertLambdaFunctionAssociations(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceRequest = { ["Resource"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	if struct["Resource"] then asserts.AssertResourceARN(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
-- <p> The request to list tags for a CloudFront resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Resource [ResourceARN] <p> An ARN of a CloudFront resource.</p>
-- Required key: Resource
-- @return ListTagsForResourceRequest structure as a key-value pair table
function M.ListTagsForResourceRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceRequest")
    local query_args = { 
        ["Resource"] = args["Resource"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Resource"] = args["Resource"],
	}
	asserts.AssertListTagsForResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFieldLevelEncryptionProfileResult = { ["FieldLevelEncryptionProfile"] = true, ["ETag"] = true, nil }

function asserts.AssertGetFieldLevelEncryptionProfileResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFieldLevelEncryptionProfileResult to be of type 'table'")
	if struct["FieldLevelEncryptionProfile"] then asserts.AssertFieldLevelEncryptionProfile(struct["FieldLevelEncryptionProfile"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFieldLevelEncryptionProfileResult[k], "GetFieldLevelEncryptionProfileResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFieldLevelEncryptionProfileResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionProfile [FieldLevelEncryptionProfile] <p>Return the field-level encryption profile information.</p>
-- * ETag [string] <p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return GetFieldLevelEncryptionProfileResult structure as a key-value pair table
function M.GetFieldLevelEncryptionProfileResult(args)
	assert(args, "You must provide an argument table when creating GetFieldLevelEncryptionProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["FieldLevelEncryptionProfile"] = args["FieldLevelEncryptionProfile"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertGetFieldLevelEncryptionProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateInvalidationResult = { ["Invalidation"] = true, ["Location"] = true, nil }

function asserts.AssertCreateInvalidationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInvalidationResult to be of type 'table'")
	if struct["Invalidation"] then asserts.AssertInvalidation(struct["Invalidation"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInvalidationResult[k], "CreateInvalidationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInvalidationResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Invalidation [Invalidation] <p>The invalidation's information.</p>
-- * Location [string] <p>The fully qualified URI of the distribution and invalidation batch request, including the <code>Invalidation ID</code>.</p>
-- @return CreateInvalidationResult structure as a key-value pair table
function M.CreateInvalidationResult(args)
	assert(args, "You must provide an argument table when creating CreateInvalidationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Location"] = args["Location"],
    }
	local all_args = { 
		["Invalidation"] = args["Invalidation"],
		["Location"] = args["Location"],
	}
	asserts.AssertCreateInvalidationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheBehaviors = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertCacheBehaviors(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheBehaviors to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertCacheBehaviorList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheBehaviors[k], "CacheBehaviors contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheBehaviors
-- <p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [CacheBehaviorList] <p>Optional: A complex type that contains cache behaviors for this distribution. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
-- * Quantity [integer] <p>The number of cache behaviors for this distribution. </p>
-- Required key: Quantity
-- @return CacheBehaviors structure as a key-value pair table
function M.CacheBehaviors(args)
	assert(args, "You must provide an argument table when creating CacheBehaviors")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertCacheBehaviors(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagKeys = { ["Items"] = true, nil }

function asserts.AssertTagKeys(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagKeys to be of type 'table'")
	if struct["Items"] then asserts.AssertTagKeyList(struct["Items"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagKeys[k], "TagKeys contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagKeys
-- <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [TagKeyList] <p> A complex type that contains <code>Tag</code> key elements.</p>
-- @return TagKeys structure as a key-value pair table
function M.TagKeys(args)
	assert(args, "You must provide an argument table when creating TagKeys")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
	}
	asserts.AssertTagKeys(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OriginCustomHeader = { ["HeaderName"] = true, ["HeaderValue"] = true, nil }

function asserts.AssertOriginCustomHeader(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OriginCustomHeader to be of type 'table'")
	assert(struct["HeaderName"], "Expected key HeaderName to exist in table")
	assert(struct["HeaderValue"], "Expected key HeaderValue to exist in table")
	if struct["HeaderName"] then asserts.Assertstring(struct["HeaderName"]) end
	if struct["HeaderValue"] then asserts.Assertstring(struct["HeaderValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.OriginCustomHeader[k], "OriginCustomHeader contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OriginCustomHeader
-- <p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code> elements, if any, for this distribution. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HeaderName [string] <p>The name of a header that you want CloudFront to forward to your origin. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html">Forwarding Custom Headers to Your Origin (Web Distributions Only)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>
-- * HeaderValue [string] <p>The value for the header that you specified in the <code>HeaderName</code> field.</p>
-- Required key: HeaderName
-- Required key: HeaderValue
-- @return OriginCustomHeader structure as a key-value pair table
function M.OriginCustomHeader(args)
	assert(args, "You must provide an argument table when creating OriginCustomHeader")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HeaderName"] = args["HeaderName"],
		["HeaderValue"] = args["HeaderValue"],
	}
	asserts.AssertOriginCustomHeader(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PublicKeyConfig = { ["Comment"] = true, ["EncodedKey"] = true, ["CallerReference"] = true, ["Name"] = true, nil }

function asserts.AssertPublicKeyConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublicKeyConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["EncodedKey"], "Expected key EncodedKey to exist in table")
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["EncodedKey"] then asserts.Assertstring(struct["EncodedKey"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	if struct["Name"] then asserts.Assertstring(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublicKeyConfig[k], "PublicKeyConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublicKeyConfig
-- <p>Information about a public key you add to CloudFront to use with features like field-level encryption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [string] <p>An optional comment about a public key.</p>
-- * EncodedKey [string] <p>The encoded public key that you want to add to CloudFront to use with features like field-level encryption.</p>
-- * CallerReference [string] <p>A unique number that ensures the request can't be replayed.</p>
-- * Name [string] <p>The name for a public key you add to CloudFront to use with features like field-level encryption.</p>
-- Required key: CallerReference
-- Required key: Name
-- Required key: EncodedKey
-- @return PublicKeyConfig structure as a key-value pair table
function M.PublicKeyConfig(args)
	assert(args, "You must provide an argument table when creating PublicKeyConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Comment"] = args["Comment"],
		["EncodedKey"] = args["EncodedKey"],
		["CallerReference"] = args["CallerReference"],
		["Name"] = args["Name"],
	}
	asserts.AssertPublicKeyConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudFrontOriginAccessIdentityList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Marker"] = true, ["IsTruncated"] = true, ["Quantity"] = true, nil }

function asserts.AssertCloudFrontOriginAccessIdentityList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudFrontOriginAccessIdentityList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertCloudFrontOriginAccessIdentitySummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudFrontOriginAccessIdentityList[k], "CloudFrontOriginAccessIdentityList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudFrontOriginAccessIdentityList
-- <p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code> resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default, your entire list of origin access identities is returned in one single page. If the list is long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [CloudFrontOriginAccessIdentitySummaryList] <p>A complex type that contains one <code>CloudFrontOriginAccessIdentitySummary</code> element for each origin access identity that was created by the current AWS account.</p>
-- * NextMarker [string] <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your origin access identities where they left off. </p>
-- * MaxItems [integer] <p>The maximum number of origin access identities you want in the response body. </p>
-- * Marker [string] <p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page). </p>
-- * IsTruncated [boolean] <p>A flag that indicates whether more origin access identities remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more items in the list.</p>
-- * Quantity [integer] <p>The number of CloudFront origin access identities that were created by the current AWS account. </p>
-- Required key: Marker
-- Required key: MaxItems
-- Required key: IsTruncated
-- Required key: Quantity
-- @return CloudFrontOriginAccessIdentityList structure as a key-value pair table
function M.CloudFrontOriginAccessIdentityList(args)
	assert(args, "You must provide an argument table when creating CloudFrontOriginAccessIdentityList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["NextMarker"] = args["NextMarker"],
		["MaxItems"] = args["MaxItems"],
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertCloudFrontOriginAccessIdentityList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Invalidation = { ["Status"] = true, ["InvalidationBatch"] = true, ["Id"] = true, ["CreateTime"] = true, nil }

function asserts.AssertInvalidation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Invalidation to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["CreateTime"], "Expected key CreateTime to exist in table")
	assert(struct["InvalidationBatch"], "Expected key InvalidationBatch to exist in table")
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["InvalidationBatch"] then asserts.AssertInvalidationBatch(struct["InvalidationBatch"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["CreateTime"] then asserts.Asserttimestamp(struct["CreateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.Invalidation[k], "Invalidation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Invalidation
-- <p>An invalidation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [string] <p>The status of the invalidation request. When the invalidation batch is finished, the status is <code>Completed</code>.</p>
-- * InvalidationBatch [InvalidationBatch] <p>The current invalidation information for the batch request. </p>
-- * Id [string] <p>The identifier for the invalidation request. For example: <code>IDFDVBD632BHDS5</code>.</p>
-- * CreateTime [timestamp] <p>The date and time the invalidation request was first made. </p>
-- Required key: Id
-- Required key: Status
-- Required key: CreateTime
-- Required key: InvalidationBatch
-- @return Invalidation structure as a key-value pair table
function M.Invalidation(args)
	assert(args, "You must provide an argument table when creating Invalidation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["InvalidationBatch"] = args["InvalidationBatch"],
		["Id"] = args["Id"],
		["CreateTime"] = args["CreateTime"],
	}
	asserts.AssertInvalidation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceRequest = { ["Resource"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Resource"] then asserts.AssertResourceARN(struct["Resource"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
-- <p> The request to add tags to a CloudFront resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Resource [ResourceARN] <p> An ARN of a CloudFront resource.</p>
-- * Tags [Tags] <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
-- Required key: Resource
-- Required key: Tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
        ["Resource"] = args["Resource"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Resource"] = args["Resource"],
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

keys.GetDistributionConfigResult = { ["ETag"] = true, ["DistributionConfig"] = true, nil }

function asserts.AssertGetDistributionConfigResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionConfigResult to be of type 'table'")
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["DistributionConfig"] then asserts.AssertDistributionConfig(struct["DistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDistributionConfigResult[k], "GetDistributionConfigResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionConfigResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- * DistributionConfig [DistributionConfig] <p>The distribution's configuration information.</p>
-- @return GetDistributionConfigResult structure as a key-value pair table
function M.GetDistributionConfigResult(args)
	assert(args, "You must provide an argument table when creating GetDistributionConfigResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["ETag"] = args["ETag"],
		["DistributionConfig"] = args["DistributionConfig"],
	}
	asserts.AssertGetDistributionConfigResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStreamingDistributionRequest = { ["StreamingDistributionConfig"] = true, nil }

function asserts.AssertCreateStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionRequest to be of type 'table'")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	if struct["StreamingDistributionConfig"] then asserts.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamingDistributionRequest[k], "CreateStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionRequest
-- <p>The request to create a new streaming distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamingDistributionConfig [StreamingDistributionConfig] <p>The streaming distribution's configuration information.</p>
-- Required key: StreamingDistributionConfig
-- @return CreateStreamingDistributionRequest structure as a key-value pair table
function M.CreateStreamingDistributionRequest(args)
	assert(args, "You must provide an argument table when creating CreateStreamingDistributionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamingDistributionConfig"] = args["StreamingDistributionConfig"],
	}
	asserts.AssertCreateStreamingDistributionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDistributionsRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListDistributionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsRequest to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDistributionsRequest[k], "ListDistributionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsRequest
-- <p>The request to list your distributions. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p>Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last distribution on that page).</p>
-- * MaxItems [string] <p>The maximum number of distributions you want in the response body.</p>
-- @return ListDistributionsRequest structure as a key-value pair table
function M.ListDistributionsRequest(args)
	assert(args, "You must provide an argument table when creating ListDistributionsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListDistributionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStreamingDistributionWithTagsResult = { ["StreamingDistribution"] = true, ["Location"] = true, ["ETag"] = true, nil }

function asserts.AssertCreateStreamingDistributionWithTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionWithTagsResult to be of type 'table'")
	if struct["StreamingDistribution"] then asserts.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamingDistributionWithTagsResult[k], "CreateStreamingDistributionWithTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionWithTagsResult
-- <p>The returned result of the corresponding request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamingDistribution [StreamingDistribution] <p>The streaming distribution's information. </p>
-- * Location [string] <p>The fully qualified URI of the new streaming distribution resource just created. For example:<code> https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8</code>.</p>
-- * ETag [string] 
-- @return CreateStreamingDistributionWithTagsResult structure as a key-value pair table
function M.CreateStreamingDistributionWithTagsResult(args)
	assert(args, "You must provide an argument table when creating CreateStreamingDistributionWithTagsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Location"] = args["Location"],
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["StreamingDistribution"] = args["StreamingDistribution"],
		["Location"] = args["Location"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertCreateStreamingDistributionWithTagsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetInvalidationResult = { ["Invalidation"] = true, nil }

function asserts.AssertGetInvalidationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInvalidationResult to be of type 'table'")
	if struct["Invalidation"] then asserts.AssertInvalidation(struct["Invalidation"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInvalidationResult[k], "GetInvalidationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInvalidationResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Invalidation [Invalidation] <p>The invalidation's information. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html">Invalidation Complex Type</a>. </p>
-- @return GetInvalidationResult structure as a key-value pair table
function M.GetInvalidationResult(args)
	assert(args, "You must provide an argument table when creating GetInvalidationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Invalidation"] = args["Invalidation"],
	}
	asserts.AssertGetInvalidationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePublicKeyRequest = { ["IfMatch"] = true, ["PublicKeyConfig"] = true, ["Id"] = true, nil }

function asserts.AssertUpdatePublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePublicKeyRequest to be of type 'table'")
	assert(struct["PublicKeyConfig"], "Expected key PublicKeyConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	if struct["PublicKeyConfig"] then asserts.AssertPublicKeyConfig(struct["PublicKeyConfig"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePublicKeyRequest[k], "UpdatePublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePublicKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the public key to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- * PublicKeyConfig [PublicKeyConfig] <p>Request to update public key information.</p>
-- * Id [string] <p>ID of the public key to be updated.</p>
-- Required key: PublicKeyConfig
-- Required key: Id
-- @return UpdatePublicKeyRequest structure as a key-value pair table
function M.UpdatePublicKeyRequest(args)
	assert(args, "You must provide an argument table when creating UpdatePublicKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["IfMatch"] = args["IfMatch"],
		["PublicKeyConfig"] = args["PublicKeyConfig"],
		["Id"] = args["Id"],
	}
	asserts.AssertUpdatePublicKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamingDistributionList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Marker"] = true, ["IsTruncated"] = true, ["Quantity"] = true, nil }

function asserts.AssertStreamingDistributionList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionList to be of type 'table'")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertStreamingDistributionSummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.Assertboolean(struct["IsTruncated"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistributionList[k], "StreamingDistributionList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionList
-- <p>A streaming distribution list. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [StreamingDistributionSummaryList] <p>A complex type that contains one <code>StreamingDistributionSummary</code> element for each distribution that was created by the current AWS account.</p>
-- * NextMarker [string] <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your RTMP distributions where they left off. </p>
-- * MaxItems [integer] <p>The value you provided for the <code>MaxItems</code> request parameter. </p>
-- * Marker [string] <p>The value you provided for the <code>Marker</code> request parameter. </p>
-- * IsTruncated [boolean] <p>A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list. </p>
-- * Quantity [integer] <p>The number of streaming distributions that were created by the current AWS account. </p>
-- Required key: Marker
-- Required key: MaxItems
-- Required key: IsTruncated
-- Required key: Quantity
-- @return StreamingDistributionList structure as a key-value pair table
function M.StreamingDistributionList(args)
	assert(args, "You must provide an argument table when creating StreamingDistributionList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["NextMarker"] = args["NextMarker"],
		["MaxItems"] = args["MaxItems"],
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertStreamingDistributionList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetStreamingDistributionConfigRequest = { ["Id"] = true, nil }

function asserts.AssertGetStreamingDistributionConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionConfigRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStreamingDistributionConfigRequest[k], "GetStreamingDistributionConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionConfigRequest
-- <p>To request to get a streaming distribution configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The streaming distribution's ID.</p>
-- Required key: Id
-- @return GetStreamingDistributionConfigRequest structure as a key-value pair table
function M.GetStreamingDistributionConfigRequest(args)
	assert(args, "You must provide an argument table when creating GetStreamingDistributionConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetStreamingDistributionConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Restrictions = { ["GeoRestriction"] = true, nil }

function asserts.AssertRestrictions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Restrictions to be of type 'table'")
	assert(struct["GeoRestriction"], "Expected key GeoRestriction to exist in table")
	if struct["GeoRestriction"] then asserts.AssertGeoRestriction(struct["GeoRestriction"]) end
	for k,_ in pairs(struct) do
		assert(keys.Restrictions[k], "Restrictions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Restrictions
-- <p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoRestriction [GeoRestriction] 
-- Required key: GeoRestriction
-- @return Restrictions structure as a key-value pair table
function M.Restrictions(args)
	assert(args, "You must provide an argument table when creating Restrictions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GeoRestriction"] = args["GeoRestriction"],
	}
	asserts.AssertRestrictions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidationBatch = { ["Paths"] = true, ["CallerReference"] = true, nil }

function asserts.AssertInvalidationBatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidationBatch to be of type 'table'")
	assert(struct["Paths"], "Expected key Paths to exist in table")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	if struct["Paths"] then asserts.AssertPaths(struct["Paths"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidationBatch[k], "InvalidationBatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidationBatch
-- <p>An invalidation batch.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Paths [Paths] <p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
-- * CallerReference [string] <p>A value that you specify to uniquely identify an invalidation request. CloudFront uses the value to prevent you from accidentally resubmitting an identical request. Whenever you create a new invalidation request, you must specify a new value for <code>CallerReference</code> and change other values in the request as applicable. One way to ensure that the value of <code>CallerReference</code> is unique is to use a <code>timestamp</code>, for example, <code>20120301090000</code>.</p> <p>If you make a second invalidation request with the same value for <code>CallerReference</code>, and if the rest of the request is the same, CloudFront doesn't create a new invalidation request. Instead, CloudFront returns information about the invalidation request that you previously created with the same <code>CallerReference</code>.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous invalidation batch request but the content of any <code>Path</code> is different from the original request, CloudFront returns an <code>InvalidationBatchAlreadyExists</code> error.</p>
-- Required key: Paths
-- Required key: CallerReference
-- @return InvalidationBatch structure as a key-value pair table
function M.InvalidationBatch(args)
	assert(args, "You must provide an argument table when creating InvalidationBatch")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Paths"] = args["Paths"],
		["CallerReference"] = args["CallerReference"],
	}
	asserts.AssertInvalidationBatch(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDistributionResult = { ["Distribution"] = true, ["ETag"] = true, nil }

function asserts.AssertGetDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDistributionResult to be of type 'table'")
	if struct["Distribution"] then asserts.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDistributionResult[k], "GetDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Distribution [Distribution] <p>The distribution's information.</p>
-- * ETag [string] <p>The current version of the distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return GetDistributionResult structure as a key-value pair table
function M.GetDistributionResult(args)
	assert(args, "You must provide an argument table when creating GetDistributionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["Distribution"] = args["Distribution"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertGetDistributionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCloudFrontOriginAccessIdentitiesResult = { ["CloudFrontOriginAccessIdentityList"] = true, nil }

function asserts.AssertListCloudFrontOriginAccessIdentitiesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCloudFrontOriginAccessIdentitiesResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentityList"] then asserts.AssertCloudFrontOriginAccessIdentityList(struct["CloudFrontOriginAccessIdentityList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCloudFrontOriginAccessIdentitiesResult[k], "ListCloudFrontOriginAccessIdentitiesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCloudFrontOriginAccessIdentitiesResult
-- <p>The returned result of the corresponding request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFrontOriginAccessIdentityList [CloudFrontOriginAccessIdentityList] <p>The <code>CloudFrontOriginAccessIdentityList</code> type. </p>
-- @return ListCloudFrontOriginAccessIdentitiesResult structure as a key-value pair table
function M.ListCloudFrontOriginAccessIdentitiesResult(args)
	assert(args, "You must provide an argument table when creating ListCloudFrontOriginAccessIdentitiesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CloudFrontOriginAccessIdentityList"] = args["CloudFrontOriginAccessIdentityList"],
	}
	asserts.AssertListCloudFrontOriginAccessIdentitiesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateInvalidationRequest = { ["InvalidationBatch"] = true, ["DistributionId"] = true, nil }

function asserts.AssertCreateInvalidationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInvalidationRequest to be of type 'table'")
	assert(struct["DistributionId"], "Expected key DistributionId to exist in table")
	assert(struct["InvalidationBatch"], "Expected key InvalidationBatch to exist in table")
	if struct["InvalidationBatch"] then asserts.AssertInvalidationBatch(struct["InvalidationBatch"]) end
	if struct["DistributionId"] then asserts.Assertstring(struct["DistributionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInvalidationRequest[k], "CreateInvalidationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInvalidationRequest
-- <p>The request to create an invalidation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InvalidationBatch [InvalidationBatch] <p>The batch information for the invalidation.</p>
-- * DistributionId [string] <p>The distribution's id.</p>
-- Required key: DistributionId
-- Required key: InvalidationBatch
-- @return CreateInvalidationRequest structure as a key-value pair table
function M.CreateInvalidationRequest(args)
	assert(args, "You must provide an argument table when creating CreateInvalidationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DistributionId}"] = args["DistributionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InvalidationBatch"] = args["InvalidationBatch"],
		["DistributionId"] = args["DistributionId"],
	}
	asserts.AssertCreateInvalidationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DistributionSummary = { ["Status"] = true, ["CacheBehaviors"] = true, ["Restrictions"] = true, ["Origins"] = true, ["DomainName"] = true, ["WebACLId"] = true, ["PriceClass"] = true, ["Enabled"] = true, ["DefaultCacheBehavior"] = true, ["IsIPV6Enabled"] = true, ["Comment"] = true, ["ViewerCertificate"] = true, ["CustomErrorResponses"] = true, ["LastModifiedTime"] = true, ["HttpVersion"] = true, ["Id"] = true, ["ARN"] = true, ["Aliases"] = true, nil }

function asserts.AssertDistributionSummary(struct)
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
	if struct["Status"] then asserts.Assertstring(struct["Status"]) end
	if struct["CacheBehaviors"] then asserts.AssertCacheBehaviors(struct["CacheBehaviors"]) end
	if struct["Restrictions"] then asserts.AssertRestrictions(struct["Restrictions"]) end
	if struct["Origins"] then asserts.AssertOrigins(struct["Origins"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	if struct["WebACLId"] then asserts.Assertstring(struct["WebACLId"]) end
	if struct["PriceClass"] then asserts.AssertPriceClass(struct["PriceClass"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["DefaultCacheBehavior"] then asserts.AssertDefaultCacheBehavior(struct["DefaultCacheBehavior"]) end
	if struct["IsIPV6Enabled"] then asserts.Assertboolean(struct["IsIPV6Enabled"]) end
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["ViewerCertificate"] then asserts.AssertViewerCertificate(struct["ViewerCertificate"]) end
	if struct["CustomErrorResponses"] then asserts.AssertCustomErrorResponses(struct["CustomErrorResponses"]) end
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["HttpVersion"] then asserts.AssertHttpVersion(struct["HttpVersion"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["ARN"] then asserts.Assertstring(struct["ARN"]) end
	if struct["Aliases"] then asserts.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.DistributionSummary[k], "DistributionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DistributionSummary
-- <p>A summary of the information about a CloudFront distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [string] <p>The current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>
-- * CacheBehaviors [CacheBehaviors] <p>A complex type that contains zero or more <code>CacheBehavior</code> elements.</p>
-- * Restrictions [Restrictions] 
-- * Origins [Origins] <p>A complex type that contains information about origins for this distribution.</p>
-- * DomainName [string] <p>The domain name that corresponds to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>
-- * WebACLId [string] <p>The Web ACL Id (if any) associated with the distribution.</p>
-- * PriceClass [PriceClass] 
-- * Enabled [boolean] <p>Whether the distribution is enabled to accept user requests for content.</p>
-- * DefaultCacheBehavior [DefaultCacheBehavior] <p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>
-- * IsIPV6Enabled [boolean] <p>Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your distribution.</p>
-- * Comment [string] <p>The comment originally specified when this distribution was created.</p>
-- * ViewerCertificate [ViewerCertificate] 
-- * CustomErrorResponses [CustomErrorResponses] <p>A complex type that contains zero or more <code>CustomErrorResponses</code> elements.</p>
-- * LastModifiedTime [timestamp] <p>The date and time the distribution was last modified.</p>
-- * HttpVersion [HttpVersion] <p> Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't support <code>HTTP/2</code> will automatically use an earlier version.</p>
-- * Id [string] <p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>
-- * ARN [string] <p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>
-- * Aliases [Aliases] <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>
-- Required key: Id
-- Required key: ARN
-- Required key: Status
-- Required key: LastModifiedTime
-- Required key: DomainName
-- Required key: Aliases
-- Required key: Origins
-- Required key: DefaultCacheBehavior
-- Required key: CacheBehaviors
-- Required key: CustomErrorResponses
-- Required key: Comment
-- Required key: PriceClass
-- Required key: Enabled
-- Required key: ViewerCertificate
-- Required key: Restrictions
-- Required key: WebACLId
-- Required key: HttpVersion
-- Required key: IsIPV6Enabled
-- @return DistributionSummary structure as a key-value pair table
function M.DistributionSummary(args)
	assert(args, "You must provide an argument table when creating DistributionSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["CacheBehaviors"] = args["CacheBehaviors"],
		["Restrictions"] = args["Restrictions"],
		["Origins"] = args["Origins"],
		["DomainName"] = args["DomainName"],
		["WebACLId"] = args["WebACLId"],
		["PriceClass"] = args["PriceClass"],
		["Enabled"] = args["Enabled"],
		["DefaultCacheBehavior"] = args["DefaultCacheBehavior"],
		["IsIPV6Enabled"] = args["IsIPV6Enabled"],
		["Comment"] = args["Comment"],
		["ViewerCertificate"] = args["ViewerCertificate"],
		["CustomErrorResponses"] = args["CustomErrorResponses"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["HttpVersion"] = args["HttpVersion"],
		["Id"] = args["Id"],
		["ARN"] = args["ARN"],
		["Aliases"] = args["Aliases"],
	}
	asserts.AssertDistributionSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FieldLevelEncryptionProfile = { ["LastModifiedTime"] = true, ["FieldLevelEncryptionProfileConfig"] = true, ["Id"] = true, nil }

function asserts.AssertFieldLevelEncryptionProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldLevelEncryptionProfile to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	assert(struct["FieldLevelEncryptionProfileConfig"], "Expected key FieldLevelEncryptionProfileConfig to exist in table")
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["FieldLevelEncryptionProfileConfig"] then asserts.AssertFieldLevelEncryptionProfileConfig(struct["FieldLevelEncryptionProfileConfig"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldLevelEncryptionProfile[k], "FieldLevelEncryptionProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldLevelEncryptionProfile
-- <p>A complex data type for field-level encryption profiles.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedTime [timestamp] <p>The last time the field-level encryption profile was updated.</p>
-- * FieldLevelEncryptionProfileConfig [FieldLevelEncryptionProfileConfig] <p>A complex data type that includes the profile name and the encryption entities for the field-level encryption profile.</p>
-- * Id [string] <p>The ID for a field-level encryption profile configuration which includes a set of profiles that specify certain selected data fields to be encrypted by specific public keys.</p>
-- Required key: Id
-- Required key: LastModifiedTime
-- Required key: FieldLevelEncryptionProfileConfig
-- @return FieldLevelEncryptionProfile structure as a key-value pair table
function M.FieldLevelEncryptionProfile(args)
	assert(args, "You must provide an argument table when creating FieldLevelEncryptionProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedTime"] = args["LastModifiedTime"],
		["FieldLevelEncryptionProfileConfig"] = args["FieldLevelEncryptionProfileConfig"],
		["Id"] = args["Id"],
	}
	asserts.AssertFieldLevelEncryptionProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDistributionWithTagsRequest = { ["DistributionConfigWithTags"] = true, nil }

function asserts.AssertCreateDistributionWithTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionWithTagsRequest to be of type 'table'")
	assert(struct["DistributionConfigWithTags"], "Expected key DistributionConfigWithTags to exist in table")
	if struct["DistributionConfigWithTags"] then asserts.AssertDistributionConfigWithTags(struct["DistributionConfigWithTags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDistributionWithTagsRequest[k], "CreateDistributionWithTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionWithTagsRequest
-- <p>The request to create a new distribution with tags. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DistributionConfigWithTags [DistributionConfigWithTags] <p>The distribution's configuration information. </p>
-- Required key: DistributionConfigWithTags
-- @return CreateDistributionWithTagsRequest structure as a key-value pair table
function M.CreateDistributionWithTagsRequest(args)
	assert(args, "You must provide an argument table when creating CreateDistributionWithTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DistributionConfigWithTags"] = args["DistributionConfigWithTags"],
	}
	asserts.AssertCreateDistributionWithTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStreamingDistributionRequest = { ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertDeleteStreamingDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStreamingDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStreamingDistributionRequest[k], "DeleteStreamingDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStreamingDistributionRequest
-- <p>The request to delete a streaming distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The distribution ID. </p>
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when you disabled the streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required key: Id
-- @return DeleteStreamingDistributionRequest structure as a key-value pair table
function M.DeleteStreamingDistributionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteStreamingDistributionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["Id"] = args["Id"],
		["IfMatch"] = args["IfMatch"],
	}
	asserts.AssertDeleteStreamingDistributionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamingLoggingConfig = { ["Bucket"] = true, ["Prefix"] = true, ["Enabled"] = true, nil }

function asserts.AssertStreamingLoggingConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingLoggingConfig to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	if struct["Bucket"] then asserts.Assertstring(struct["Bucket"]) end
	if struct["Prefix"] then asserts.Assertstring(struct["Prefix"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingLoggingConfig[k], "StreamingLoggingConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingLoggingConfig
-- <p>A complex type that controls whether access logs are written for this streaming distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [string] <p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>
-- * Prefix [string] <p>An optional string that you want CloudFront to prefix to the access log filenames for this streaming distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>
-- * Enabled [boolean] <p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't want to enable logging when you create a streaming distribution or if you want to disable logging for an existing streaming distribution, specify <code>false</code> for <code>Enabled</code>, and specify <code>empty Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted. </p>
-- Required key: Enabled
-- Required key: Bucket
-- Required key: Prefix
-- @return StreamingLoggingConfig structure as a key-value pair table
function M.StreamingLoggingConfig(args)
	assert(args, "You must provide an argument table when creating StreamingLoggingConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["Prefix"] = args["Prefix"],
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertStreamingLoggingConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheBehavior = { ["FieldLevelEncryptionId"] = true, ["TrustedSigners"] = true, ["LambdaFunctionAssociations"] = true, ["TargetOriginId"] = true, ["ViewerProtocolPolicy"] = true, ["ForwardedValues"] = true, ["MaxTTL"] = true, ["PathPattern"] = true, ["SmoothStreaming"] = true, ["DefaultTTL"] = true, ["AllowedMethods"] = true, ["MinTTL"] = true, ["Compress"] = true, nil }

function asserts.AssertCacheBehavior(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheBehavior to be of type 'table'")
	assert(struct["PathPattern"], "Expected key PathPattern to exist in table")
	assert(struct["TargetOriginId"], "Expected key TargetOriginId to exist in table")
	assert(struct["ForwardedValues"], "Expected key ForwardedValues to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["ViewerProtocolPolicy"], "Expected key ViewerProtocolPolicy to exist in table")
	assert(struct["MinTTL"], "Expected key MinTTL to exist in table")
	if struct["FieldLevelEncryptionId"] then asserts.Assertstring(struct["FieldLevelEncryptionId"]) end
	if struct["TrustedSigners"] then asserts.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["LambdaFunctionAssociations"] then asserts.AssertLambdaFunctionAssociations(struct["LambdaFunctionAssociations"]) end
	if struct["TargetOriginId"] then asserts.Assertstring(struct["TargetOriginId"]) end
	if struct["ViewerProtocolPolicy"] then asserts.AssertViewerProtocolPolicy(struct["ViewerProtocolPolicy"]) end
	if struct["ForwardedValues"] then asserts.AssertForwardedValues(struct["ForwardedValues"]) end
	if struct["MaxTTL"] then asserts.Assertlong(struct["MaxTTL"]) end
	if struct["PathPattern"] then asserts.Assertstring(struct["PathPattern"]) end
	if struct["SmoothStreaming"] then asserts.Assertboolean(struct["SmoothStreaming"]) end
	if struct["DefaultTTL"] then asserts.Assertlong(struct["DefaultTTL"]) end
	if struct["AllowedMethods"] then asserts.AssertAllowedMethods(struct["AllowedMethods"]) end
	if struct["MinTTL"] then asserts.Assertlong(struct["MinTTL"]) end
	if struct["Compress"] then asserts.Assertboolean(struct["Compress"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheBehavior[k], "CacheBehavior contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheBehavior
-- <p>A complex type that describes how CloudFront processes requests.</p> <p>You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to distribute objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.</p> <p>For the current limit on the number of cache behaviors that you can add to a distribution, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p> <p>If you don't want to specify any cache behaviors, include only an empty <code>CacheBehaviors</code> element. Don't include an empty <code>CacheBehavior</code> element, or CloudFront returns a <code>MalformedXML</code> error.</p> <p>To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty <code>CacheBehaviors</code> element.</p> <p>To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.</p> <p>For more information about cache behaviors, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache Behaviors</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionId [string] <p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for a cache behavior or for the default cache behavior in your distribution.</p>
-- * TrustedSigners [TrustedSigners] <p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>
-- * LambdaFunctionAssociations [LambdaFunctionAssociations] <p>A complex type that contains zero or more Lambda function associations for a cache behavior.</p>
-- * TargetOriginId [string] <p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior in your distribution.</p>
-- * ViewerProtocolPolicy [ViewerProtocolPolicy] <p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL. </p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden). </p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>
-- * ForwardedValues [ForwardedValues] <p>A complex type that specifies how CloudFront handles query strings and cookies.</p>
-- * MaxTTL [long] <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- * PathPattern [string] <p>The pattern (for example, <code>images/*.jpg</code>) that specifies which requests to apply the behavior to. When CloudFront receives a viewer request, the requested path is compared with path patterns in the order in which cache behaviors are listed in the distribution.</p> <note> <p>You can optionally include a slash (<code>/</code>) at the beginning of the path pattern. For example, <code>/images/*.jpg</code>. CloudFront behavior is the same with or without the leading <code>/</code>.</p> </note> <p>The path pattern for the default cache behavior is <code>*</code> and cannot be changed. If the request for an object does not match the path pattern for any cache behaviors, CloudFront applies the behavior in the default cache behavior.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern">Path Pattern</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>
-- * SmoothStreaming [boolean] <p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>. </p>
-- * DefaultTTL [long] <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- * AllowedMethods [AllowedMethods] 
-- * MinTTL [long] <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>
-- * Compress [boolean] <p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify true; if not, specify false. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- Required key: PathPattern
-- Required key: TargetOriginId
-- Required key: ForwardedValues
-- Required key: TrustedSigners
-- Required key: ViewerProtocolPolicy
-- Required key: MinTTL
-- @return CacheBehavior structure as a key-value pair table
function M.CacheBehavior(args)
	assert(args, "You must provide an argument table when creating CacheBehavior")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FieldLevelEncryptionId"] = args["FieldLevelEncryptionId"],
		["TrustedSigners"] = args["TrustedSigners"],
		["LambdaFunctionAssociations"] = args["LambdaFunctionAssociations"],
		["TargetOriginId"] = args["TargetOriginId"],
		["ViewerProtocolPolicy"] = args["ViewerProtocolPolicy"],
		["ForwardedValues"] = args["ForwardedValues"],
		["MaxTTL"] = args["MaxTTL"],
		["PathPattern"] = args["PathPattern"],
		["SmoothStreaming"] = args["SmoothStreaming"],
		["DefaultTTL"] = args["DefaultTTL"],
		["AllowedMethods"] = args["AllowedMethods"],
		["MinTTL"] = args["MinTTL"],
		["Compress"] = args["Compress"],
	}
	asserts.AssertCacheBehavior(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Origin = { ["OriginAccessIdentity"] = true, ["DomainName"] = true, nil }

function asserts.AssertS3Origin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Origin to be of type 'table'")
	assert(struct["DomainName"], "Expected key DomainName to exist in table")
	assert(struct["OriginAccessIdentity"], "Expected key OriginAccessIdentity to exist in table")
	if struct["OriginAccessIdentity"] then asserts.Assertstring(struct["OriginAccessIdentity"]) end
	if struct["DomainName"] then asserts.Assertstring(struct["DomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Origin[k], "S3Origin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Origin
-- <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OriginAccessIdentity [string] <p>The CloudFront origin access identity to associate with the RTMP distribution. Use an origin access identity to configure the distribution so that end users can only access objects in an Amazon S3 bucket through CloudFront.</p> <p>If you want end users to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html">Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>
-- * DomainName [string] <p>The DNS name of the Amazon S3 origin. </p>
-- Required key: DomainName
-- Required key: OriginAccessIdentity
-- @return S3Origin structure as a key-value pair table
function M.S3Origin(args)
	assert(args, "You must provide an argument table when creating S3Origin")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OriginAccessIdentity"] = args["OriginAccessIdentity"],
		["DomainName"] = args["DomainName"],
	}
	asserts.AssertS3Origin(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FieldPatterns = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertFieldPatterns(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldPatterns to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertFieldPatternList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldPatterns[k], "FieldPatterns contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldPatterns
-- <p>A complex data type that includes the field patterns to match for field-level encryption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [FieldPatternList] <p>An array of the field-level encryption field patterns.</p>
-- * Quantity [integer] <p>The number of field-level encryption field patterns.</p>
-- Required key: Quantity
-- @return FieldPatterns structure as a key-value pair table
function M.FieldPatterns(args)
	assert(args, "You must provide an argument table when creating FieldPatterns")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertFieldPatterns(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDistributionResult = { ["Distribution"] = true, ["ETag"] = true, nil }

function asserts.AssertUpdateDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDistributionResult to be of type 'table'")
	if struct["Distribution"] then asserts.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDistributionResult[k], "UpdateDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Distribution [Distribution] <p>The distribution's information.</p>
-- * ETag [string] <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return UpdateDistributionResult structure as a key-value pair table
function M.UpdateDistributionResult(args)
	assert(args, "You must provide an argument table when creating UpdateDistributionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["Distribution"] = args["Distribution"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertUpdateDistributionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyPairIds = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertKeyPairIds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPairIds to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertKeyPairIdList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyPairIds[k], "KeyPairIds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPairIds
-- <p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>. </p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [KeyPairIdList] <p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-- * Quantity [integer] <p>The number of active CloudFront key pairs for <code>AwsAccountNumber</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-- Required key: Quantity
-- @return KeyPairIds structure as a key-value pair table
function M.KeyPairIds(args)
	assert(args, "You must provide an argument table when creating KeyPairIds")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertKeyPairIds(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContentTypeProfiles = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertContentTypeProfiles(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContentTypeProfiles to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertContentTypeProfileList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContentTypeProfiles[k], "ContentTypeProfiles contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContentTypeProfiles
-- <p>Field-level encryption content type-profile. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [ContentTypeProfileList] <p>Items in a field-level encryption content type-profile mapping. </p>
-- * Quantity [integer] <p>The number of field-level encryption content type-profile mappings. </p>
-- Required key: Quantity
-- @return ContentTypeProfiles structure as a key-value pair table
function M.ContentTypeProfiles(args)
	assert(args, "You must provide an argument table when creating ContentTypeProfiles")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertContentTypeProfiles(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCloudFrontOriginAccessIdentityResult = { ["CloudFrontOriginAccessIdentity"] = true, ["ETag"] = true, ["Location"] = true, nil }

function asserts.AssertCreateCloudFrontOriginAccessIdentityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCloudFrontOriginAccessIdentityResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentity"] then asserts.AssertCloudFrontOriginAccessIdentity(struct["CloudFrontOriginAccessIdentity"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCloudFrontOriginAccessIdentityResult[k], "CreateCloudFrontOriginAccessIdentityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCloudFrontOriginAccessIdentityResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFrontOriginAccessIdentity [CloudFrontOriginAccessIdentity] <p>The origin access identity's information.</p>
-- * ETag [string] <p>The current version of the origin access identity created.</p>
-- * Location [string] <p>The fully qualified URI of the new origin access identity just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/E74FTE3AJFJ256A</code>.</p>
-- @return CreateCloudFrontOriginAccessIdentityResult structure as a key-value pair table
function M.CreateCloudFrontOriginAccessIdentityResult(args)
	assert(args, "You must provide an argument table when creating CreateCloudFrontOriginAccessIdentityResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
        ["Location"] = args["Location"],
    }
	local all_args = { 
		["CloudFrontOriginAccessIdentity"] = args["CloudFrontOriginAccessIdentity"],
		["ETag"] = args["ETag"],
		["Location"] = args["Location"],
	}
	asserts.AssertCreateCloudFrontOriginAccessIdentityResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePublicKeyRequest = { ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertDeletePublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePublicKeyRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePublicKeyRequest[k], "DeletePublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePublicKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The ID of the public key you want to remove from CloudFront.</p>
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the public key identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required key: Id
-- @return DeletePublicKeyRequest structure as a key-value pair table
function M.DeletePublicKeyRequest(args)
	assert(args, "You must provide an argument table when creating DeletePublicKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["Id"] = args["Id"],
		["IfMatch"] = args["IfMatch"],
	}
	asserts.AssertDeletePublicKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueryStringCacheKeys = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertQueryStringCacheKeys(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryStringCacheKeys to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertQueryStringCacheKeysList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryStringCacheKeys[k], "QueryStringCacheKeys contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryStringCacheKeys
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [QueryStringCacheKeysList] <p>(Optional) A list that contains the query string parameters that you want CloudFront to use as a basis for caching for this cache behavior. If <code>Quantity</code> is 0, you can omit <code>Items</code>. </p>
-- * Quantity [integer] <p>The number of <code>whitelisted</code> query string parameters for this cache behavior.</p>
-- Required key: Quantity
-- @return QueryStringCacheKeys structure as a key-value pair table
function M.QueryStringCacheKeys(args)
	assert(args, "You must provide an argument table when creating QueryStringCacheKeys")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertQueryStringCacheKeys(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFieldLevelEncryptionProfilesRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListFieldLevelEncryptionProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFieldLevelEncryptionProfilesRequest to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFieldLevelEncryptionProfilesRequest[k], "ListFieldLevelEncryptionProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFieldLevelEncryptionProfilesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p>Use this when paginating results to indicate where to begin in your list of profiles. The results include profiles in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last profile on that page). </p>
-- * MaxItems [string] <p>The maximum number of field-level encryption profiles you want in the response body. </p>
-- @return ListFieldLevelEncryptionProfilesRequest structure as a key-value pair table
function M.ListFieldLevelEncryptionProfilesRequest(args)
	assert(args, "You must provide an argument table when creating ListFieldLevelEncryptionProfilesRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListFieldLevelEncryptionProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomHeaders = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertCustomHeaders(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomHeaders to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertOriginCustomHeadersList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomHeaders[k], "CustomHeaders contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomHeaders
-- <p>A complex type that contains the list of Custom Headers for each origin. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [OriginCustomHeadersList] <p> <b>Optional</b>: A list that contains one <code>OriginCustomHeader</code> element for each custom header that you want CloudFront to forward to the origin. If Quantity is <code>0</code>, omit <code>Items</code>.</p>
-- * Quantity [integer] <p>The number of custom headers, if any, for this distribution.</p>
-- Required key: Quantity
-- @return CustomHeaders structure as a key-value pair table
function M.CustomHeaders(args)
	assert(args, "You must provide an argument table when creating CustomHeaders")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertCustomHeaders(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDistributionWithTagsResult = { ["Distribution"] = true, ["ETag"] = true, ["Location"] = true, nil }

function asserts.AssertCreateDistributionWithTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDistributionWithTagsResult to be of type 'table'")
	if struct["Distribution"] then asserts.AssertDistribution(struct["Distribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDistributionWithTagsResult[k], "CreateDistributionWithTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDistributionWithTagsResult
-- <p>The returned result of the corresponding request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Distribution [Distribution] <p>The distribution's information. </p>
-- * ETag [string] <p>The current version of the distribution created.</p>
-- * Location [string] <p>The fully qualified URI of the new distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5</code>. </p>
-- @return CreateDistributionWithTagsResult structure as a key-value pair table
function M.CreateDistributionWithTagsResult(args)
	assert(args, "You must provide an argument table when creating CreateDistributionWithTagsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
        ["Location"] = args["Location"],
    }
	local all_args = { 
		["Distribution"] = args["Distribution"],
		["ETag"] = args["ETag"],
		["Location"] = args["Location"],
	}
	asserts.AssertCreateDistributionWithTagsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActiveTrustedSigners = { ["Items"] = true, ["Enabled"] = true, ["Quantity"] = true, nil }

function asserts.AssertActiveTrustedSigners(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActiveTrustedSigners to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertSignerList(struct["Items"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActiveTrustedSigners[k], "ActiveTrustedSigners contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActiveTrustedSigners
-- <p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [SignerList] <p>A complex type that contains one <code>Signer</code> complex type for each trusted signer that is specified in the <code>TrustedSigners</code> complex type.</p> <p>For more information, see <a>ActiveTrustedSigners</a>. </p>
-- * Enabled [boolean] <p>Enabled is <code>true</code> if any of the AWS accounts listed in the <code>TrustedSigners</code> complex type for this RTMP distribution have active CloudFront key pairs. If not, <code>Enabled</code> is <code>false</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-- * Quantity [integer] <p>A complex type that contains one <code>Signer</code> complex type for each trusted signer specified in the <code>TrustedSigners</code> complex type.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-- Required key: Enabled
-- Required key: Quantity
-- @return ActiveTrustedSigners structure as a key-value pair table
function M.ActiveTrustedSigners(args)
	assert(args, "You must provide an argument table when creating ActiveTrustedSigners")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Enabled"] = args["Enabled"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertActiveTrustedSigners(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFieldLevelEncryptionProfileRequest = { ["Id"] = true, nil }

function asserts.AssertGetFieldLevelEncryptionProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFieldLevelEncryptionProfileRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFieldLevelEncryptionProfileRequest[k], "GetFieldLevelEncryptionProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFieldLevelEncryptionProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>Get the ID for the field-level encryption profile information.</p>
-- Required key: Id
-- @return GetFieldLevelEncryptionProfileRequest structure as a key-value pair table
function M.GetFieldLevelEncryptionProfileRequest(args)
	assert(args, "You must provide an argument table when creating GetFieldLevelEncryptionProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetFieldLevelEncryptionProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStreamingDistributionWithTagsRequest = { ["StreamingDistributionConfigWithTags"] = true, nil }

function asserts.AssertCreateStreamingDistributionWithTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionWithTagsRequest to be of type 'table'")
	assert(struct["StreamingDistributionConfigWithTags"], "Expected key StreamingDistributionConfigWithTags to exist in table")
	if struct["StreamingDistributionConfigWithTags"] then asserts.AssertStreamingDistributionConfigWithTags(struct["StreamingDistributionConfigWithTags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamingDistributionWithTagsRequest[k], "CreateStreamingDistributionWithTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionWithTagsRequest
-- <p>The request to create a new streaming distribution with tags.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamingDistributionConfigWithTags [StreamingDistributionConfigWithTags] <p> The streaming distribution's configuration information. </p>
-- Required key: StreamingDistributionConfigWithTags
-- @return CreateStreamingDistributionWithTagsRequest structure as a key-value pair table
function M.CreateStreamingDistributionWithTagsRequest(args)
	assert(args, "You must provide an argument table when creating CreateStreamingDistributionWithTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamingDistributionConfigWithTags"] = args["StreamingDistributionConfigWithTags"],
	}
	asserts.AssertCreateStreamingDistributionWithTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDistributionRequest = { ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertDeleteDistributionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDistributionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDistributionRequest[k], "DeleteDistributionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDistributionRequest
-- <p>This action deletes a web distribution. To delete a web distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete a web distribution using the CloudFront API:</b> </p> <ol> <li> <p>Disable the web distribution </p> </li> <li> <p>Submit a <code>GET Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution.</p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Distribution</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 6.</p> </li> <li> <p>Review the response to your <code>DELETE Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The distribution ID. </p>
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when you disabled the distribution. For example: <code>E2QWRUHAPOMQZL</code>. </p>
-- Required key: Id
-- @return DeleteDistributionRequest structure as a key-value pair table
function M.DeleteDistributionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDistributionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["Id"] = args["Id"],
		["IfMatch"] = args["IfMatch"],
	}
	asserts.AssertDeleteDistributionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFieldLevelEncryptionConfigsRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListFieldLevelEncryptionConfigsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFieldLevelEncryptionConfigsRequest to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFieldLevelEncryptionConfigsRequest[k], "ListFieldLevelEncryptionConfigsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFieldLevelEncryptionConfigsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p>Use this when paginating results to indicate where to begin in your list of configurations. The results include configurations in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last configuration on that page). </p>
-- * MaxItems [string] <p>The maximum number of field-level encryption configurations you want in the response body. </p>
-- @return ListFieldLevelEncryptionConfigsRequest structure as a key-value pair table
function M.ListFieldLevelEncryptionConfigsRequest(args)
	assert(args, "You must provide an argument table when creating ListFieldLevelEncryptionConfigsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListFieldLevelEncryptionConfigsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoggingConfig = { ["Bucket"] = true, ["Prefix"] = true, ["Enabled"] = true, ["IncludeCookies"] = true, nil }

function asserts.AssertLoggingConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingConfig to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	assert(struct["IncludeCookies"], "Expected key IncludeCookies to exist in table")
	assert(struct["Bucket"], "Expected key Bucket to exist in table")
	assert(struct["Prefix"], "Expected key Prefix to exist in table")
	if struct["Bucket"] then asserts.Assertstring(struct["Bucket"]) end
	if struct["Prefix"] then asserts.Assertstring(struct["Prefix"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["IncludeCookies"] then asserts.Assertboolean(struct["IncludeCookies"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggingConfig[k], "LoggingConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingConfig
-- <p>A complex type that controls whether access logs are written for the distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Bucket [string] <p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>
-- * Prefix [string] <p>An optional string that you want CloudFront to prefix to the access log <code>filenames</code> for this distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>
-- * Enabled [boolean] <p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't want to enable logging when you create a distribution or if you want to disable logging for an existing distribution, specify <code>false</code> for <code>Enabled</code>, and specify empty <code>Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code>, <code>prefix</code>, and <code>IncludeCookies</code>, the values are automatically deleted.</p>
-- * IncludeCookies [boolean] <p>Specifies whether you want CloudFront to include cookies in access logs, specify <code>true</code> for <code>IncludeCookies</code>. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify <code>false</code> for <code>IncludeCookies</code>.</p>
-- Required key: Enabled
-- Required key: IncludeCookies
-- Required key: Bucket
-- Required key: Prefix
-- @return LoggingConfig structure as a key-value pair table
function M.LoggingConfig(args)
	assert(args, "You must provide an argument table when creating LoggingConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Bucket"] = args["Bucket"],
		["Prefix"] = args["Prefix"],
		["Enabled"] = args["Enabled"],
		["IncludeCookies"] = args["IncludeCookies"],
	}
	asserts.AssertLoggingConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInvalidationsRequest = { ["Marker"] = true, ["DistributionId"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListInvalidationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInvalidationsRequest to be of type 'table'")
	assert(struct["DistributionId"], "Expected key DistributionId to exist in table")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["DistributionId"] then asserts.Assertstring(struct["DistributionId"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInvalidationsRequest[k], "ListInvalidationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInvalidationsRequest
-- <p>The request to list invalidations. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page. </p>
-- * DistributionId [string] <p>The distribution's ID.</p>
-- * MaxItems [string] <p>The maximum number of invalidation batches that you want in the response body.</p>
-- Required key: DistributionId
-- @return ListInvalidationsRequest structure as a key-value pair table
function M.ListInvalidationsRequest(args)
	assert(args, "You must provide an argument table when creating ListInvalidationsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
        ["{DistributionId}"] = args["DistributionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DistributionId"] = args["DistributionId"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListInvalidationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCloudFrontOriginAccessIdentityRequest = { ["CloudFrontOriginAccessIdentityConfig"] = true, ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertUpdateCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["CloudFrontOriginAccessIdentityConfig"], "Expected key CloudFrontOriginAccessIdentityConfig to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["CloudFrontOriginAccessIdentityConfig"] then asserts.AssertCloudFrontOriginAccessIdentityConfig(struct["CloudFrontOriginAccessIdentityConfig"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCloudFrontOriginAccessIdentityRequest[k], "UpdateCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCloudFrontOriginAccessIdentityRequest
-- <p>The request to update an origin access identity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFrontOriginAccessIdentityConfig [CloudFrontOriginAccessIdentityConfig] <p>The identity's configuration information.</p>
-- * Id [string] <p>The identity's id.</p>
-- * IfMatch [string] <p>The value of the <code>ETag</code> header that you received when retrieving the identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required key: CloudFrontOriginAccessIdentityConfig
-- Required key: Id
-- @return UpdateCloudFrontOriginAccessIdentityRequest structure as a key-value pair table
function M.UpdateCloudFrontOriginAccessIdentityRequest(args)
	assert(args, "You must provide an argument table when creating UpdateCloudFrontOriginAccessIdentityRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["CloudFrontOriginAccessIdentityConfig"] = args["CloudFrontOriginAccessIdentityConfig"],
		["Id"] = args["Id"],
		["IfMatch"] = args["IfMatch"],
	}
	asserts.AssertUpdateCloudFrontOriginAccessIdentityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaFunctionAssociation = { ["EventType"] = true, ["IncludeBody"] = true, ["LambdaFunctionARN"] = true, nil }

function asserts.AssertLambdaFunctionAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionAssociation to be of type 'table'")
	assert(struct["LambdaFunctionARN"], "Expected key LambdaFunctionARN to exist in table")
	assert(struct["EventType"], "Expected key EventType to exist in table")
	if struct["EventType"] then asserts.AssertEventType(struct["EventType"]) end
	if struct["IncludeBody"] then asserts.Assertboolean(struct["IncludeBody"]) end
	if struct["LambdaFunctionARN"] then asserts.AssertLambdaFunctionARN(struct["LambdaFunctionARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionAssociation[k], "LambdaFunctionAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionAssociation
-- <p>A complex type that contains a Lambda function association.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventType [EventType] <p>Specifies the event type that triggers a Lambda function invocation. You can specify the following values:</p> <ul> <li> <p> <code>viewer-request</code>: The function executes when CloudFront receives a request from a viewer and before it checks to see whether the requested object is in the edge cache. </p> </li> <li> <p> <code>origin-request</code>: The function executes only when CloudFront forwards a request to your origin. When the requested object is in the edge cache, the function doesn't execute.</p> </li> <li> <p> <code>origin-response</code>: The function executes after CloudFront receives a response from the origin and before it caches the object in the response. When the requested object is in the edge cache, the function doesn't execute.</p> <p>If the origin returns an HTTP status code other than HTTP 200 (OK), the function doesn't execute.</p> </li> <li> <p> <code>viewer-response</code>: The function executes before CloudFront returns the requested object to the viewer. The function executes regardless of whether the object was already in the edge cache.</p> <p>If the origin returns an HTTP status code other than HTTP 200 (OK), the function doesn't execute.</p> </li> </ul>
-- * IncludeBody [boolean] <p>A flag that allows a Lambda function to have read access to the body content. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html">Accessing the Request Body by Choosing the Include Body Option</a> in the Amazon CloudFront Developer Guide.</p>
-- * LambdaFunctionARN [LambdaFunctionARN] <p>The ARN of the Lambda function. You must specify the ARN of a function version; you can't specify a Lambda alias or $LATEST.</p>
-- Required key: LambdaFunctionARN
-- Required key: EventType
-- @return LambdaFunctionAssociation structure as a key-value pair table
function M.LambdaFunctionAssociation(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionAssociation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventType"] = args["EventType"],
		["IncludeBody"] = args["IncludeBody"],
		["LambdaFunctionARN"] = args["LambdaFunctionARN"],
	}
	asserts.AssertLambdaFunctionAssociation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamingDistributionConfigWithTags = { ["Tags"] = true, ["StreamingDistributionConfig"] = true, nil }

function asserts.AssertStreamingDistributionConfigWithTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionConfigWithTags to be of type 'table'")
	assert(struct["StreamingDistributionConfig"], "Expected key StreamingDistributionConfig to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["StreamingDistributionConfig"] then asserts.AssertStreamingDistributionConfig(struct["StreamingDistributionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistributionConfigWithTags[k], "StreamingDistributionConfigWithTags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionConfigWithTags
-- <p>A streaming distribution Configuration and a list of tags to be associated with the streaming distribution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
-- * StreamingDistributionConfig [StreamingDistributionConfig] <p>A streaming distribution Configuration.</p>
-- Required key: StreamingDistributionConfig
-- Required key: Tags
-- @return StreamingDistributionConfigWithTags structure as a key-value pair table
function M.StreamingDistributionConfigWithTags(args)
	assert(args, "You must provide an argument table when creating StreamingDistributionConfigWithTags")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["StreamingDistributionConfig"] = args["StreamingDistributionConfig"],
	}
	asserts.AssertStreamingDistributionConfigWithTags(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FieldLevelEncryptionProfileSummary = { ["EncryptionEntities"] = true, ["Comment"] = true, ["LastModifiedTime"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertFieldLevelEncryptionProfileSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldLevelEncryptionProfileSummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["EncryptionEntities"], "Expected key EncryptionEntities to exist in table")
	if struct["EncryptionEntities"] then asserts.AssertEncryptionEntities(struct["EncryptionEntities"]) end
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["Name"] then asserts.Assertstring(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldLevelEncryptionProfileSummary[k], "FieldLevelEncryptionProfileSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldLevelEncryptionProfileSummary
-- <p>The field-level encryption profile summary.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EncryptionEntities [EncryptionEntities] <p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and field patterns for specifying which fields to encrypt with this key.</p>
-- * Comment [string] <p>An optional comment for the field-level encryption profile summary.</p>
-- * LastModifiedTime [timestamp] <p>The time when the the field-level encryption profile summary was last updated.</p>
-- * Id [string] <p>ID for the field-level encryption profile summary.</p>
-- * Name [string] <p>Name for the field-level encryption profile summary.</p>
-- Required key: Id
-- Required key: LastModifiedTime
-- Required key: Name
-- Required key: EncryptionEntities
-- @return FieldLevelEncryptionProfileSummary structure as a key-value pair table
function M.FieldLevelEncryptionProfileSummary(args)
	assert(args, "You must provide an argument table when creating FieldLevelEncryptionProfileSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EncryptionEntities"] = args["EncryptionEntities"],
		["Comment"] = args["Comment"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertFieldLevelEncryptionProfileSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPublicKeysRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListPublicKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublicKeysRequest to be of type 'table'")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPublicKeysRequest[k], "ListPublicKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublicKeysRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p>Use this when paginating results to indicate where to begin in your list of public keys. The results include public keys in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last public key on that page). </p>
-- * MaxItems [string] <p>The maximum number of public keys you want in the response body. </p>
-- @return ListPublicKeysRequest structure as a key-value pair table
function M.ListPublicKeysRequest(args)
	assert(args, "You must provide an argument table when creating ListPublicKeysRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListPublicKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStreamingDistributionResult = { ["StreamingDistribution"] = true, ["Location"] = true, ["ETag"] = true, nil }

function asserts.AssertCreateStreamingDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamingDistributionResult to be of type 'table'")
	if struct["StreamingDistribution"] then asserts.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamingDistributionResult[k], "CreateStreamingDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamingDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamingDistribution [StreamingDistribution] <p>The streaming distribution's information.</p>
-- * Location [string] <p>The fully qualified URI of the new streaming distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8</code>.</p>
-- * ETag [string] <p>The current version of the streaming distribution created.</p>
-- @return CreateStreamingDistributionResult structure as a key-value pair table
function M.CreateStreamingDistributionResult(args)
	assert(args, "You must provide an argument table when creating CreateStreamingDistributionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Location"] = args["Location"],
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["StreamingDistribution"] = args["StreamingDistribution"],
		["Location"] = args["Location"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertCreateStreamingDistributionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStreamingDistributionsResult = { ["StreamingDistributionList"] = true, nil }

function asserts.AssertListStreamingDistributionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamingDistributionsResult to be of type 'table'")
	if struct["StreamingDistributionList"] then asserts.AssertStreamingDistributionList(struct["StreamingDistributionList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamingDistributionsResult[k], "ListStreamingDistributionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamingDistributionsResult
-- <p>The returned result of the corresponding request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamingDistributionList [StreamingDistributionList] <p>The <code>StreamingDistributionList</code> type. </p>
-- @return ListStreamingDistributionsResult structure as a key-value pair table
function M.ListStreamingDistributionsResult(args)
	assert(args, "You must provide an argument table when creating ListStreamingDistributionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamingDistributionList"] = args["StreamingDistributionList"],
	}
	asserts.AssertListStreamingDistributionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContentTypeProfile = { ["ProfileId"] = true, ["ContentType"] = true, ["Format"] = true, nil }

function asserts.AssertContentTypeProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContentTypeProfile to be of type 'table'")
	assert(struct["Format"], "Expected key Format to exist in table")
	assert(struct["ContentType"], "Expected key ContentType to exist in table")
	if struct["ProfileId"] then asserts.Assertstring(struct["ProfileId"]) end
	if struct["ContentType"] then asserts.Assertstring(struct["ContentType"]) end
	if struct["Format"] then asserts.AssertFormat(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContentTypeProfile[k], "ContentTypeProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContentTypeProfile
-- <p>A field-level encryption content type profile. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProfileId [string] <p>The profile ID for a field-level encryption content type-profile mapping. </p>
-- * ContentType [string] <p>The content type for a field-level encryption content type-profile mapping. </p>
-- * Format [Format] <p>The format for a field-level encryption content type-profile mapping. </p>
-- Required key: Format
-- Required key: ContentType
-- @return ContentTypeProfile structure as a key-value pair table
function M.ContentTypeProfile(args)
	assert(args, "You must provide an argument table when creating ContentTypeProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProfileId"] = args["ProfileId"],
		["ContentType"] = args["ContentType"],
		["Format"] = args["Format"],
	}
	asserts.AssertContentTypeProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCloudFrontOriginAccessIdentityRequest = { ["Id"] = true, ["IfMatch"] = true, nil }

function asserts.AssertDeleteCloudFrontOriginAccessIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCloudFrontOriginAccessIdentityRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["IfMatch"] then asserts.Assertstring(struct["IfMatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCloudFrontOriginAccessIdentityRequest[k], "DeleteCloudFrontOriginAccessIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCloudFrontOriginAccessIdentityRequest
-- <p>Deletes a origin access identity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [string] <p>The origin access identity's ID.</p>
-- * IfMatch [string] <p>The value of the <code>ETag</code> header you received from a previous <code>GET</code> or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- Required key: Id
-- @return DeleteCloudFrontOriginAccessIdentityRequest structure as a key-value pair table
function M.DeleteCloudFrontOriginAccessIdentityRequest(args)
	assert(args, "You must provide an argument table when creating DeleteCloudFrontOriginAccessIdentityRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
        ["If-Match"] = args["IfMatch"],
    }
	local all_args = { 
		["Id"] = args["Id"],
		["IfMatch"] = args["IfMatch"],
	}
	asserts.AssertDeleteCloudFrontOriginAccessIdentityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePublicKeyResult = { ["PublicKey"] = true, ["ETag"] = true, ["Location"] = true, nil }

function asserts.AssertCreatePublicKeyResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePublicKeyResult to be of type 'table'")
	if struct["PublicKey"] then asserts.AssertPublicKey(struct["PublicKey"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	if struct["Location"] then asserts.Assertstring(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePublicKeyResult[k], "CreatePublicKeyResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePublicKeyResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PublicKey [PublicKey] <p>Returned when you add a public key.</p>
-- * ETag [string] <p>The current version of the public key. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- * Location [string] <p>The fully qualified URI of the new public key resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/cloudfront-public-key/EDFDVBD632BHDS5</code>.</p>
-- @return CreatePublicKeyResult structure as a key-value pair table
function M.CreatePublicKeyResult(args)
	assert(args, "You must provide an argument table when creating CreatePublicKeyResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
        ["Location"] = args["Location"],
    }
	local all_args = { 
		["PublicKey"] = args["PublicKey"],
		["ETag"] = args["ETag"],
		["Location"] = args["Location"],
	}
	asserts.AssertCreatePublicKeyResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFieldLevelEncryptionConfigRequest = { ["FieldLevelEncryptionConfig"] = true, nil }

function asserts.AssertCreateFieldLevelEncryptionConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFieldLevelEncryptionConfigRequest to be of type 'table'")
	assert(struct["FieldLevelEncryptionConfig"], "Expected key FieldLevelEncryptionConfig to exist in table")
	if struct["FieldLevelEncryptionConfig"] then asserts.AssertFieldLevelEncryptionConfig(struct["FieldLevelEncryptionConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFieldLevelEncryptionConfigRequest[k], "CreateFieldLevelEncryptionConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFieldLevelEncryptionConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FieldLevelEncryptionConfig [FieldLevelEncryptionConfig] <p>The request to create a new field-level encryption configuration.</p>
-- Required key: FieldLevelEncryptionConfig
-- @return CreateFieldLevelEncryptionConfigRequest structure as a key-value pair table
function M.CreateFieldLevelEncryptionConfigRequest(args)
	assert(args, "You must provide an argument table when creating CreateFieldLevelEncryptionConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FieldLevelEncryptionConfig"] = args["FieldLevelEncryptionConfig"],
	}
	asserts.AssertCreateFieldLevelEncryptionConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDistributionsByWebACLIdRequest = { ["Marker"] = true, ["WebACLId"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListDistributionsByWebACLIdRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDistributionsByWebACLIdRequest to be of type 'table'")
	assert(struct["WebACLId"], "Expected key WebACLId to exist in table")
	if struct["Marker"] then asserts.Assertstring(struct["Marker"]) end
	if struct["WebACLId"] then asserts.Assertstring(struct["WebACLId"]) end
	if struct["MaxItems"] then asserts.Assertstring(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDistributionsByWebACLIdRequest[k], "ListDistributionsByWebACLIdRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDistributionsByWebACLIdRequest
-- <p>The request to list distributions that are associated with a specified AWS WAF web ACL. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [string] <p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If you have more than <code>MaxItems</code> distributions that satisfy the request, the response includes a <code>NextMarker</code> element. To get the next page of results, submit another request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code> from the last response. (For the first request, omit <code>Marker</code>.) </p>
-- * WebACLId [string] <p>The ID of the AWS WAF web ACL that you want to list the associated distributions. If you specify "null" for the ID, the request returns a list of the distributions that aren't associated with a web ACL. </p>
-- * MaxItems [string] <p>The maximum number of distributions that you want CloudFront to return in the response body. The maximum and default values are both 100.</p>
-- Required key: WebACLId
-- @return ListDistributionsByWebACLIdRequest structure as a key-value pair table
function M.ListDistributionsByWebACLIdRequest(args)
	assert(args, "You must provide an argument table when creating ListDistributionsByWebACLIdRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
        ["{WebACLId}"] = args["WebACLId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["WebACLId"] = args["WebACLId"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListDistributionsByWebACLIdRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetInvalidationRequest = { ["DistributionId"] = true, ["Id"] = true, nil }

function asserts.AssertGetInvalidationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInvalidationRequest to be of type 'table'")
	assert(struct["DistributionId"], "Expected key DistributionId to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["DistributionId"] then asserts.Assertstring(struct["DistributionId"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInvalidationRequest[k], "GetInvalidationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInvalidationRequest
-- <p>The request to get an invalidation's information. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DistributionId [string] <p>The distribution's ID.</p>
-- * Id [string] <p>The identifier for the invalidation request, for example, <code>IDFDVBD632BHDS5</code>.</p>
-- Required key: DistributionId
-- Required key: Id
-- @return GetInvalidationRequest structure as a key-value pair table
function M.GetInvalidationRequest(args)
	assert(args, "You must provide an argument table when creating GetInvalidationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DistributionId}"] = args["DistributionId"],
        ["{Id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DistributionId"] = args["DistributionId"],
		["Id"] = args["Id"],
	}
	asserts.AssertGetInvalidationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetStreamingDistributionResult = { ["StreamingDistribution"] = true, ["ETag"] = true, nil }

function asserts.AssertGetStreamingDistributionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStreamingDistributionResult to be of type 'table'")
	if struct["StreamingDistribution"] then asserts.AssertStreamingDistribution(struct["StreamingDistribution"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStreamingDistributionResult[k], "GetStreamingDistributionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStreamingDistributionResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamingDistribution [StreamingDistribution] <p>The streaming distribution's information.</p>
-- * ETag [string] <p>The current version of the streaming distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return GetStreamingDistributionResult structure as a key-value pair table
function M.GetStreamingDistributionResult(args)
	assert(args, "You must provide an argument table when creating GetStreamingDistributionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["StreamingDistribution"] = args["StreamingDistribution"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertGetStreamingDistributionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomOriginConfig = { ["OriginSslProtocols"] = true, ["OriginProtocolPolicy"] = true, ["OriginReadTimeout"] = true, ["HTTPPort"] = true, ["HTTPSPort"] = true, ["OriginKeepaliveTimeout"] = true, nil }

function asserts.AssertCustomOriginConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomOriginConfig to be of type 'table'")
	assert(struct["HTTPPort"], "Expected key HTTPPort to exist in table")
	assert(struct["HTTPSPort"], "Expected key HTTPSPort to exist in table")
	assert(struct["OriginProtocolPolicy"], "Expected key OriginProtocolPolicy to exist in table")
	if struct["OriginSslProtocols"] then asserts.AssertOriginSslProtocols(struct["OriginSslProtocols"]) end
	if struct["OriginProtocolPolicy"] then asserts.AssertOriginProtocolPolicy(struct["OriginProtocolPolicy"]) end
	if struct["OriginReadTimeout"] then asserts.Assertinteger(struct["OriginReadTimeout"]) end
	if struct["HTTPPort"] then asserts.Assertinteger(struct["HTTPPort"]) end
	if struct["HTTPSPort"] then asserts.Assertinteger(struct["HTTPSPort"]) end
	if struct["OriginKeepaliveTimeout"] then asserts.Assertinteger(struct["OriginKeepaliveTimeout"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomOriginConfig[k], "CustomOriginConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomOriginConfig
-- <p>A customer origin or an Amazon S3 bucket configured as a website endpoint.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OriginSslProtocols [OriginSslProtocols] <p>The SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.</p>
-- * OriginProtocolPolicy [OriginProtocolPolicy] <p>The origin protocol policy to apply to your origin.</p>
-- * OriginReadTimeout [integer] <p>You can create a custom origin read timeout. All timeout units are in seconds. The default origin read timeout is 30 seconds, but you can configure custom timeout lengths using the CloudFront API. The minimum timeout length is 4 seconds; the maximum is 60 seconds.</p> <p>If you need to increase the maximum time limit, contact the <a href="https://console.aws.amazon.com/support/home#/">AWS Support Center</a>.</p>
-- * HTTPPort [integer] <p>The HTTP port the custom origin listens on.</p>
-- * HTTPSPort [integer] <p>The HTTPS port the custom origin listens on.</p>
-- * OriginKeepaliveTimeout [integer] <p>You can create a custom keep-alive timeout. All timeout units are in seconds. The default keep-alive timeout is 5 seconds, but you can configure custom timeout lengths using the CloudFront API. The minimum timeout length is 1 second; the maximum is 60 seconds.</p> <p>If you need to increase the maximum time limit, contact the <a href="https://console.aws.amazon.com/support/home#/">AWS Support Center</a>.</p>
-- Required key: HTTPPort
-- Required key: HTTPSPort
-- Required key: OriginProtocolPolicy
-- @return CustomOriginConfig structure as a key-value pair table
function M.CustomOriginConfig(args)
	assert(args, "You must provide an argument table when creating CustomOriginConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OriginSslProtocols"] = args["OriginSslProtocols"],
		["OriginProtocolPolicy"] = args["OriginProtocolPolicy"],
		["OriginReadTimeout"] = args["OriginReadTimeout"],
		["HTTPPort"] = args["HTTPPort"],
		["HTTPSPort"] = args["HTTPSPort"],
		["OriginKeepaliveTimeout"] = args["OriginKeepaliveTimeout"],
	}
	asserts.AssertCustomOriginConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCloudFrontOriginAccessIdentityResult = { ["CloudFrontOriginAccessIdentity"] = true, ["ETag"] = true, nil }

function asserts.AssertGetCloudFrontOriginAccessIdentityResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCloudFrontOriginAccessIdentityResult to be of type 'table'")
	if struct["CloudFrontOriginAccessIdentity"] then asserts.AssertCloudFrontOriginAccessIdentity(struct["CloudFrontOriginAccessIdentity"]) end
	if struct["ETag"] then asserts.Assertstring(struct["ETag"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCloudFrontOriginAccessIdentityResult[k], "GetCloudFrontOriginAccessIdentityResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCloudFrontOriginAccessIdentityResult
-- <p>The returned result of the corresponding request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFrontOriginAccessIdentity [CloudFrontOriginAccessIdentity] <p>The origin access identity's information.</p>
-- * ETag [string] <p>The current version of the origin access identity's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>
-- @return GetCloudFrontOriginAccessIdentityResult structure as a key-value pair table
function M.GetCloudFrontOriginAccessIdentityResult(args)
	assert(args, "You must provide an argument table when creating GetCloudFrontOriginAccessIdentityResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["ETag"] = args["ETag"],
    }
	local all_args = { 
		["CloudFrontOriginAccessIdentity"] = args["CloudFrontOriginAccessIdentity"],
		["ETag"] = args["ETag"],
	}
	asserts.AssertGetCloudFrontOriginAccessIdentityResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FieldLevelEncryptionSummary = { ["Comment"] = true, ["QueryArgProfileConfig"] = true, ["LastModifiedTime"] = true, ["Id"] = true, ["ContentTypeProfileConfig"] = true, nil }

function asserts.AssertFieldLevelEncryptionSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldLevelEncryptionSummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["LastModifiedTime"], "Expected key LastModifiedTime to exist in table")
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["QueryArgProfileConfig"] then asserts.AssertQueryArgProfileConfig(struct["QueryArgProfileConfig"]) end
	if struct["LastModifiedTime"] then asserts.Asserttimestamp(struct["LastModifiedTime"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["ContentTypeProfileConfig"] then asserts.AssertContentTypeProfileConfig(struct["ContentTypeProfileConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldLevelEncryptionSummary[k], "FieldLevelEncryptionSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldLevelEncryptionSummary
-- <p>A summary of a field-level encryption item.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [string] <p>An optional comment about the field-level encryption item.</p>
-- * QueryArgProfileConfig [QueryArgProfileConfig] <p> A summary of a query argument-profile mapping. </p>
-- * LastModifiedTime [timestamp] <p>The last time that the summary of field-level encryption items was modified.</p>
-- * Id [string] <p>The unique ID of a field-level encryption item.</p>
-- * ContentTypeProfileConfig [ContentTypeProfileConfig] <p> A summary of a content type-profile mapping. </p>
-- Required key: Id
-- Required key: LastModifiedTime
-- @return FieldLevelEncryptionSummary structure as a key-value pair table
function M.FieldLevelEncryptionSummary(args)
	assert(args, "You must provide an argument table when creating FieldLevelEncryptionSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Comment"] = args["Comment"],
		["QueryArgProfileConfig"] = args["QueryArgProfileConfig"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["Id"] = args["Id"],
		["ContentTypeProfileConfig"] = args["ContentTypeProfileConfig"],
	}
	asserts.AssertFieldLevelEncryptionSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FieldLevelEncryptionList = { ["Items"] = true, ["NextMarker"] = true, ["MaxItems"] = true, ["Quantity"] = true, nil }

function asserts.AssertFieldLevelEncryptionList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldLevelEncryptionList to be of type 'table'")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertFieldLevelEncryptionSummaryList(struct["Items"]) end
	if struct["NextMarker"] then asserts.Assertstring(struct["NextMarker"]) end
	if struct["MaxItems"] then asserts.Assertinteger(struct["MaxItems"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldLevelEncryptionList[k], "FieldLevelEncryptionList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldLevelEncryptionList
-- <p>List of field-level encrpytion configurations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [FieldLevelEncryptionSummaryList] <p>An array of field-level encryption items.</p>
-- * NextMarker [string] <p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your configurations where you left off.</p>
-- * MaxItems [integer] <p>The maximum number of elements you want in the response body. </p>
-- * Quantity [integer] <p>The number of field-level encryption items.</p>
-- Required key: MaxItems
-- Required key: Quantity
-- @return FieldLevelEncryptionList structure as a key-value pair table
function M.FieldLevelEncryptionList(args)
	assert(args, "You must provide an argument table when creating FieldLevelEncryptionList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["NextMarker"] = args["NextMarker"],
		["MaxItems"] = args["MaxItems"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertFieldLevelEncryptionList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamingDistributionConfig = { ["S3Origin"] = true, ["Comment"] = true, ["Logging"] = true, ["PriceClass"] = true, ["Enabled"] = true, ["TrustedSigners"] = true, ["CallerReference"] = true, ["Aliases"] = true, nil }

function asserts.AssertStreamingDistributionConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamingDistributionConfig to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["S3Origin"], "Expected key S3Origin to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	assert(struct["TrustedSigners"], "Expected key TrustedSigners to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["S3Origin"] then asserts.AssertS3Origin(struct["S3Origin"]) end
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["Logging"] then asserts.AssertStreamingLoggingConfig(struct["Logging"]) end
	if struct["PriceClass"] then asserts.AssertPriceClass(struct["PriceClass"]) end
	if struct["Enabled"] then asserts.Assertboolean(struct["Enabled"]) end
	if struct["TrustedSigners"] then asserts.AssertTrustedSigners(struct["TrustedSigners"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	if struct["Aliases"] then asserts.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamingDistributionConfig[k], "StreamingDistributionConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamingDistributionConfig
-- <p>The RTMP distribution's configuration information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Origin [S3Origin] <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution. </p>
-- * Comment [string] <p>Any comments you want to include about the streaming distribution. </p>
-- * Logging [StreamingLoggingConfig] <p>A complex type that controls whether access logs are written for the streaming distribution. </p>
-- * PriceClass [PriceClass] <p>A complex type that contains information about price class for this streaming distribution. </p>
-- * Enabled [boolean] <p>Whether the streaming distribution is enabled to accept user requests for content.</p>
-- * TrustedSigners [TrustedSigners] <p>A complex type that specifies any AWS accounts that you want to permit to create signed URLs for private content. If you want the distribution to use signed URLs, include this element; if you want the distribution to use public URLs, remove this element. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
-- * CallerReference [string] <p>A unique number that ensures that the request can't be replayed. If the <code>CallerReference</code> is new (no matter the content of the <code>StreamingDistributionConfig</code> object), a new streaming distribution is created. If the <code>CallerReference</code> is a value that you already sent in a previous request to create a streaming distribution, and the content of the <code>StreamingDistributionConfig</code> is identical to the original request (ignoring white space), the response includes the same information returned to the original request. If the <code>CallerReference</code> is a value that you already sent in a previous request to create a streaming distribution but the content of the <code>StreamingDistributionConfig</code> is different from the original request, CloudFront returns a <code>DistributionAlreadyExists</code> error. </p>
-- * Aliases [Aliases] <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution. </p>
-- Required key: CallerReference
-- Required key: S3Origin
-- Required key: Comment
-- Required key: TrustedSigners
-- Required key: Enabled
-- @return StreamingDistributionConfig structure as a key-value pair table
function M.StreamingDistributionConfig(args)
	assert(args, "You must provide an argument table when creating StreamingDistributionConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3Origin"] = args["S3Origin"],
		["Comment"] = args["Comment"],
		["Logging"] = args["Logging"],
		["PriceClass"] = args["PriceClass"],
		["Enabled"] = args["Enabled"],
		["TrustedSigners"] = args["TrustedSigners"],
		["CallerReference"] = args["CallerReference"],
		["Aliases"] = args["Aliases"],
	}
	asserts.AssertStreamingDistributionConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GeoRestriction = { ["Items"] = true, ["RestrictionType"] = true, ["Quantity"] = true, nil }

function asserts.AssertGeoRestriction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoRestriction to be of type 'table'")
	assert(struct["RestrictionType"], "Expected key RestrictionType to exist in table")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertLocationList(struct["Items"]) end
	if struct["RestrictionType"] then asserts.AssertGeoRestrictionType(struct["RestrictionType"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.GeoRestriction[k], "GeoRestriction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoRestriction
-- <p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [LocationList] <p> A complex type that contains a <code>Location</code> element for each country in which you want CloudFront either to distribute your content (<code>whitelist</code>) or not distribute your content (<code>blacklist</code>).</p> <p>The <code>Location</code> element is a two-letter, uppercase country code for a country that you want to include in your <code>blacklist</code> or <code>whitelist</code>. Include one <code>Location</code> element for each country.</p> <p>CloudFront and <code>MaxMind</code> both use <code>ISO 3166</code> country codes. For the current list of countries and the corresponding codes, see <code>ISO 3166-1-alpha-2</code> code on the <i>International Organization for Standardization</i> website. You can also refer to the country list on the CloudFront console, which includes both country names and codes.</p>
-- * RestrictionType [GeoRestrictionType] <p>The method that you want to use to restrict distribution of your content by country:</p> <ul> <li> <p> <code>none</code>: No geo restriction is enabled, meaning access to content is not restricted by client geo location.</p> </li> <li> <p> <code>blacklist</code>: The <code>Location</code> elements specify the countries in which you don't want CloudFront to distribute your content.</p> </li> <li> <p> <code>whitelist</code>: The <code>Location</code> elements specify the countries in which you want CloudFront to distribute your content.</p> </li> </ul>
-- * Quantity [integer] <p>When geo restriction is <code>enabled</code>, this is the number of countries in your <code>whitelist</code> or <code>blacklist</code>. Otherwise, when it is not enabled, <code>Quantity</code> is <code>0</code>, and you can omit <code>Items</code>.</p>
-- Required key: RestrictionType
-- Required key: Quantity
-- @return GeoRestriction structure as a key-value pair table
function M.GeoRestriction(args)
	assert(args, "You must provide an argument table when creating GeoRestriction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["RestrictionType"] = args["RestrictionType"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertGeoRestriction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FieldLevelEncryptionProfileConfig = { ["Comment"] = true, ["EncryptionEntities"] = true, ["CallerReference"] = true, ["Name"] = true, nil }

function asserts.AssertFieldLevelEncryptionProfileConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldLevelEncryptionProfileConfig to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["EncryptionEntities"], "Expected key EncryptionEntities to exist in table")
	if struct["Comment"] then asserts.Assertstring(struct["Comment"]) end
	if struct["EncryptionEntities"] then asserts.AssertEncryptionEntities(struct["EncryptionEntities"]) end
	if struct["CallerReference"] then asserts.Assertstring(struct["CallerReference"]) end
	if struct["Name"] then asserts.Assertstring(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldLevelEncryptionProfileConfig[k], "FieldLevelEncryptionProfileConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldLevelEncryptionProfileConfig
-- <p>A complex data type of profiles for the field-level encryption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [string] <p>An optional comment for the field-level encryption profile.</p>
-- * EncryptionEntities [EncryptionEntities] <p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and field patterns for specifying which fields to encrypt with this key.</p>
-- * CallerReference [string] <p>A unique number that ensures the request can't be replayed.</p>
-- * Name [string] <p>Profile name for the field-level encryption profile.</p>
-- Required key: Name
-- Required key: CallerReference
-- Required key: EncryptionEntities
-- @return FieldLevelEncryptionProfileConfig structure as a key-value pair table
function M.FieldLevelEncryptionProfileConfig(args)
	assert(args, "You must provide an argument table when creating FieldLevelEncryptionProfileConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Comment"] = args["Comment"],
		["EncryptionEntities"] = args["EncryptionEntities"],
		["CallerReference"] = args["CallerReference"],
		["Name"] = args["Name"],
	}
	asserts.AssertFieldLevelEncryptionProfileConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CookiePreference = { ["Forward"] = true, ["WhitelistedNames"] = true, nil }

function asserts.AssertCookiePreference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CookiePreference to be of type 'table'")
	assert(struct["Forward"], "Expected key Forward to exist in table")
	if struct["Forward"] then asserts.AssertItemSelection(struct["Forward"]) end
	if struct["WhitelistedNames"] then asserts.AssertCookieNames(struct["WhitelistedNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.CookiePreference[k], "CookiePreference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CookiePreference
-- <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Forward [ItemSelection] <p>Specifies which cookies to forward to the origin for this cache behavior: all, none, or the list of cookies specified in the <code>WhitelistedNames</code> complex type.</p> <p>Amazon S3 doesn't process cookies. When the cache behavior is forwarding requests to an Amazon S3 origin, specify none for the <code>Forward</code> element. </p>
-- * WhitelistedNames [CookieNames] <p>Required if you specify <code>whitelist</code> for the value of <code>Forward:</code>. A complex type that specifies how many different cookies you want CloudFront to forward to the origin for this cache behavior and, if you want to forward selected cookies, the names of those cookies.</p> <p>If you specify <code>all</code> or none for the value of <code>Forward</code>, omit <code>WhitelistedNames</code>. If you change the value of <code>Forward</code> from <code>whitelist</code> to all or none and you don't delete the <code>WhitelistedNames</code> element and its child elements, CloudFront deletes them automatically.</p> <p>For the current limit on the number of cookie names that you can whitelist for each cache behavior, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>
-- Required key: Forward
-- @return CookiePreference structure as a key-value pair table
function M.CookiePreference(args)
	assert(args, "You must provide an argument table when creating CookiePreference")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Forward"] = args["Forward"],
		["WhitelistedNames"] = args["WhitelistedNames"],
	}
	asserts.AssertCookiePreference(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PublicKey = { ["CreatedTime"] = true, ["Id"] = true, ["PublicKeyConfig"] = true, nil }

function asserts.AssertPublicKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublicKey to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["CreatedTime"], "Expected key CreatedTime to exist in table")
	assert(struct["PublicKeyConfig"], "Expected key PublicKeyConfig to exist in table")
	if struct["CreatedTime"] then asserts.Asserttimestamp(struct["CreatedTime"]) end
	if struct["Id"] then asserts.Assertstring(struct["Id"]) end
	if struct["PublicKeyConfig"] then asserts.AssertPublicKeyConfig(struct["PublicKeyConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublicKey[k], "PublicKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublicKey
-- <p>A complex data type of public keys you add to CloudFront to use with features like field-level encryption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTime [timestamp] <p>A time you added a public key to CloudFront.</p>
-- * Id [string] <p>A unique ID assigned to a public key you've added to CloudFront.</p>
-- * PublicKeyConfig [PublicKeyConfig] <p>A complex data type for a public key you add to CloudFront to use with features like field-level encryption.</p>
-- Required key: Id
-- Required key: CreatedTime
-- Required key: PublicKeyConfig
-- @return PublicKey structure as a key-value pair table
function M.PublicKey(args)
	assert(args, "You must provide an argument table when creating PublicKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedTime"] = args["CreatedTime"],
		["Id"] = args["Id"],
		["PublicKeyConfig"] = args["PublicKeyConfig"],
	}
	asserts.AssertPublicKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CookieNames = { ["Items"] = true, ["Quantity"] = true, nil }

function asserts.AssertCookieNames(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CookieNames to be of type 'table'")
	assert(struct["Quantity"], "Expected key Quantity to exist in table")
	if struct["Items"] then asserts.AssertCookieNameList(struct["Items"]) end
	if struct["Quantity"] then asserts.Assertinteger(struct["Quantity"]) end
	for k,_ in pairs(struct) do
		assert(keys.CookieNames[k], "CookieNames contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CookieNames
-- <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [CookieNameList] <p>A complex type that contains one <code>Name</code> element for each cookie that you want CloudFront to forward to the origin for this cache behavior.</p>
-- * Quantity [integer] <p>The number of different cookies that you want CloudFront to forward to the origin for this cache behavior.</p>
-- Required key: Quantity
-- @return CookieNames structure as a key-value pair table
function M.CookieNames(args)
	assert(args, "You must provide an argument table when creating CookieNames")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["Quantity"] = args["Quantity"],
	}
	asserts.AssertCookieNames(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertLambdaFunctionARN(str)
	assert(str)
	assert(type(str) == "string", "Expected LambdaFunctionARN to be of type 'string'")
end

--  
function M.LambdaFunctionARN(str)
	asserts.AssertLambdaFunctionARN(str)
	return str
end

function asserts.AssertSSLSupportMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected SSLSupportMethod to be of type 'string'")
end

--  
function M.SSLSupportMethod(str)
	asserts.AssertSSLSupportMethod(str)
	return str
end

function asserts.AssertMinimumProtocolVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected MinimumProtocolVersion to be of type 'string'")
end

--  
function M.MinimumProtocolVersion(str)
	asserts.AssertMinimumProtocolVersion(str)
	return str
end

function asserts.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	asserts.Assertstring(str)
	return str
end

function asserts.AssertHttpVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpVersion to be of type 'string'")
end

--  
function M.HttpVersion(str)
	asserts.AssertHttpVersion(str)
	return str
end

function asserts.AssertPriceClass(str)
	assert(str)
	assert(type(str) == "string", "Expected PriceClass to be of type 'string'")
end

--  
function M.PriceClass(str)
	asserts.AssertPriceClass(str)
	return str
end

function asserts.AssertGeoRestrictionType(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoRestrictionType to be of type 'string'")
end

--  
function M.GeoRestrictionType(str)
	asserts.AssertGeoRestrictionType(str)
	return str
end

function asserts.AssertSslProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected SslProtocol to be of type 'string'")
end

--  
function M.SslProtocol(str)
	asserts.AssertSslProtocol(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>
function M.TagKey(str)
	asserts.AssertTagKey(str)
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

function asserts.AssertCertificateSource(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateSource to be of type 'string'")
end

--  
function M.CertificateSource(str)
	asserts.AssertCertificateSource(str)
	return str
end

function asserts.AssertMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected Method to be of type 'string'")
end

--  
function M.Method(str)
	asserts.AssertMethod(str)
	return str
end

function asserts.AssertEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventType to be of type 'string'")
end

--  
function M.EventType(str)
	asserts.AssertEventType(str)
	return str
end

function asserts.AssertOriginProtocolPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected OriginProtocolPolicy to be of type 'string'")
end

--  
function M.OriginProtocolPolicy(str)
	asserts.AssertOriginProtocolPolicy(str)
	return str
end

function asserts.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
end

--  
function M.ResourceARN(str)
	asserts.AssertResourceARN(str)
	return str
end

function asserts.AssertItemSelection(str)
	assert(str)
	assert(type(str) == "string", "Expected ItemSelection to be of type 'string'")
end

--  
function M.ItemSelection(str)
	asserts.AssertItemSelection(str)
	return str
end

function asserts.AssertFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected Format to be of type 'string'")
end

--  
function M.Format(str)
	asserts.AssertFormat(str)
	return str
end

function asserts.AssertViewerProtocolPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ViewerProtocolPolicy to be of type 'string'")
end

--  
function M.ViewerProtocolPolicy(str)
	asserts.AssertViewerProtocolPolicy(str)
	return str
end

function asserts.Assertlong(long)
	assert(long)
	assert(type(long) == "number", "Expected long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.long(long)
	asserts.Assertlong(long)
	return long
end

function asserts.Assertinteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.integer(integer)
	asserts.Assertinteger(integer)
	return integer
end

function asserts.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	asserts.Assertboolean(boolean)
	return boolean
end

function asserts.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	asserts.Asserttimestamp(timestamp)
	return timestamp
end

function asserts.AssertPublicKeySummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PublicKeySummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPublicKeySummary(v)
	end
end

--  
-- List of PublicKeySummary objects
function M.PublicKeySummaryList(list)
	asserts.AssertPublicKeySummaryList(list)
	return list
end

function asserts.AssertSignerList(list)
	assert(list)
	assert(type(list) == "table", "Expected SignerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSigner(v)
	end
end

--  
-- List of Signer objects
function M.SignerList(list)
	asserts.AssertSignerList(list)
	return list
end

function asserts.AssertDistributionSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DistributionSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDistributionSummary(v)
	end
end

--  
-- List of DistributionSummary objects
function M.DistributionSummaryList(list)
	asserts.AssertDistributionSummaryList(list)
	return list
end

function asserts.AssertOriginList(list)
	assert(list)
	assert(type(list) == "table", "Expected OriginList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertOrigin(v)
	end
end

--  
-- List of Origin objects
function M.OriginList(list)
	asserts.AssertOriginList(list)
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

function asserts.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.AliasList(list)
	asserts.AssertAliasList(list)
	return list
end

function asserts.AssertSslProtocolsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SslProtocolsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSslProtocol(v)
	end
end

--  
-- List of SslProtocol objects
function M.SslProtocolsList(list)
	asserts.AssertSslProtocolsList(list)
	return list
end

function asserts.AssertKeyPairIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyPairIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.KeyPairIdList(list)
	asserts.AssertKeyPairIdList(list)
	return list
end

function asserts.AssertCacheBehaviorList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheBehaviorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheBehavior(v)
	end
end

--  
-- List of CacheBehavior objects
function M.CacheBehaviorList(list)
	asserts.AssertCacheBehaviorList(list)
	return list
end

function asserts.AssertCustomErrorResponseList(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomErrorResponseList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCustomErrorResponse(v)
	end
end

--  
-- List of CustomErrorResponse objects
function M.CustomErrorResponseList(list)
	asserts.AssertCustomErrorResponseList(list)
	return list
end

function asserts.AssertQueryArgProfileList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueryArgProfileList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQueryArgProfile(v)
	end
end

--  
-- List of QueryArgProfile objects
function M.QueryArgProfileList(list)
	asserts.AssertQueryArgProfileList(list)
	return list
end

function asserts.AssertAwsAccountNumberList(list)
	assert(list)
	assert(type(list) == "table", "Expected AwsAccountNumberList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.AwsAccountNumberList(list)
	asserts.AssertAwsAccountNumberList(list)
	return list
end

function asserts.AssertFieldLevelEncryptionSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected FieldLevelEncryptionSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFieldLevelEncryptionSummary(v)
	end
end

--  
-- List of FieldLevelEncryptionSummary objects
function M.FieldLevelEncryptionSummaryList(list)
	asserts.AssertFieldLevelEncryptionSummaryList(list)
	return list
end

function asserts.AssertLambdaFunctionAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LambdaFunctionAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLambdaFunctionAssociation(v)
	end
end

--  
-- List of LambdaFunctionAssociation objects
function M.LambdaFunctionAssociationList(list)
	asserts.AssertLambdaFunctionAssociationList(list)
	return list
end

function asserts.AssertHeaderList(list)
	assert(list)
	assert(type(list) == "table", "Expected HeaderList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.HeaderList(list)
	asserts.AssertHeaderList(list)
	return list
end

function asserts.AssertStreamingDistributionSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected StreamingDistributionSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStreamingDistributionSummary(v)
	end
end

--  
-- List of StreamingDistributionSummary objects
function M.StreamingDistributionSummaryList(list)
	asserts.AssertStreamingDistributionSummaryList(list)
	return list
end

function asserts.AssertOriginCustomHeadersList(list)
	assert(list)
	assert(type(list) == "table", "Expected OriginCustomHeadersList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOriginCustomHeader(v)
	end
end

--  
-- List of OriginCustomHeader objects
function M.OriginCustomHeadersList(list)
	asserts.AssertOriginCustomHeadersList(list)
	return list
end

function asserts.AssertFieldPatternList(list)
	assert(list)
	assert(type(list) == "table", "Expected FieldPatternList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.FieldPatternList(list)
	asserts.AssertFieldPatternList(list)
	return list
end

function asserts.AssertPathList(list)
	assert(list)
	assert(type(list) == "table", "Expected PathList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.PathList(list)
	asserts.AssertPathList(list)
	return list
end

function asserts.AssertInvalidationSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected InvalidationSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInvalidationSummary(v)
	end
end

--  
-- List of InvalidationSummary objects
function M.InvalidationSummaryList(list)
	asserts.AssertInvalidationSummaryList(list)
	return list
end

function asserts.AssertFieldLevelEncryptionProfileSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected FieldLevelEncryptionProfileSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFieldLevelEncryptionProfileSummary(v)
	end
end

--  
-- List of FieldLevelEncryptionProfileSummary objects
function M.FieldLevelEncryptionProfileSummaryList(list)
	asserts.AssertFieldLevelEncryptionProfileSummaryList(list)
	return list
end

function asserts.AssertCookieNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected CookieNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.CookieNameList(list)
	asserts.AssertCookieNameList(list)
	return list
end

function asserts.AssertLocationList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.LocationList(list)
	asserts.AssertLocationList(list)
	return list
end

function asserts.AssertEncryptionEntityList(list)
	assert(list)
	assert(type(list) == "table", "Expected EncryptionEntityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEncryptionEntity(v)
	end
end

--  
-- List of EncryptionEntity objects
function M.EncryptionEntityList(list)
	asserts.AssertEncryptionEntityList(list)
	return list
end

function asserts.AssertContentTypeProfileList(list)
	assert(list)
	assert(type(list) == "table", "Expected ContentTypeProfileList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContentTypeProfile(v)
	end
end

--  
-- List of ContentTypeProfile objects
function M.ContentTypeProfileList(list)
	asserts.AssertContentTypeProfileList(list)
	return list
end

function asserts.AssertCloudFrontOriginAccessIdentitySummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudFrontOriginAccessIdentitySummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCloudFrontOriginAccessIdentitySummary(v)
	end
end

--  
-- List of CloudFrontOriginAccessIdentitySummary objects
function M.CloudFrontOriginAccessIdentitySummaryList(list)
	asserts.AssertCloudFrontOriginAccessIdentitySummaryList(list)
	return list
end

function asserts.AssertQueryStringCacheKeysList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueryStringCacheKeysList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertstring(v)
	end
end

--  
-- List of string objects
function M.QueryStringCacheKeysList(list)
	asserts.AssertQueryStringCacheKeysList(list)
	return list
end

function asserts.AssertMethodsList(list)
	assert(list)
	assert(type(list) == "table", "Expected MethodsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMethod(v)
	end
end

--  
-- List of Method objects
function M.MethodsList(list)
	asserts.AssertMethodsList(list)
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
--- Call UpdateStreamingDistribution2018_06_18 asynchronously, invoking a callback when done
-- @param UpdateStreamingDistributionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateStreamingDistribution2018_06_18Async(UpdateStreamingDistributionRequest, cb)
	assert(UpdateStreamingDistributionRequest, "You must provide a UpdateStreamingDistributionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateStreamingDistribution2018_06_18",
	}
	for header,value in pairs(UpdateStreamingDistributionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/streaming-distribution/{Id}/config", UpdateStreamingDistributionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateStreamingDistribution2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateStreamingDistributionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateStreamingDistribution2018_06_18Sync(UpdateStreamingDistributionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStreamingDistribution2018_06_18Async(UpdateStreamingDistributionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFieldLevelEncryptionConfig2018_06_18 asynchronously, invoking a callback when done
-- @param DeleteFieldLevelEncryptionConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFieldLevelEncryptionConfig2018_06_18Async(DeleteFieldLevelEncryptionConfigRequest, cb)
	assert(DeleteFieldLevelEncryptionConfigRequest, "You must provide a DeleteFieldLevelEncryptionConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFieldLevelEncryptionConfig2018_06_18",
	}
	for header,value in pairs(DeleteFieldLevelEncryptionConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption/{Id}", DeleteFieldLevelEncryptionConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFieldLevelEncryptionConfig2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFieldLevelEncryptionConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFieldLevelEncryptionConfig2018_06_18Sync(DeleteFieldLevelEncryptionConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFieldLevelEncryptionConfig2018_06_18Async(DeleteFieldLevelEncryptionConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDistributions2018_06_18 asynchronously, invoking a callback when done
-- @param ListDistributionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDistributions2018_06_18Async(ListDistributionsRequest, cb)
	assert(ListDistributionsRequest, "You must provide a ListDistributionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDistributions2018_06_18",
	}
	for header,value in pairs(ListDistributionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distribution", ListDistributionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDistributions2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDistributionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDistributions2018_06_18Sync(ListDistributionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDistributions2018_06_18Async(ListDistributionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStreamingDistribution2018_06_18 asynchronously, invoking a callback when done
-- @param GetStreamingDistributionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetStreamingDistribution2018_06_18Async(GetStreamingDistributionRequest, cb)
	assert(GetStreamingDistributionRequest, "You must provide a GetStreamingDistributionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetStreamingDistribution2018_06_18",
	}
	for header,value in pairs(GetStreamingDistributionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/streaming-distribution/{Id}", GetStreamingDistributionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetStreamingDistribution2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetStreamingDistributionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetStreamingDistribution2018_06_18Sync(GetStreamingDistributionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStreamingDistribution2018_06_18Async(GetStreamingDistributionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPublicKey2018_06_18 asynchronously, invoking a callback when done
-- @param GetPublicKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPublicKey2018_06_18Async(GetPublicKeyRequest, cb)
	assert(GetPublicKeyRequest, "You must provide a GetPublicKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPublicKey2018_06_18",
	}
	for header,value in pairs(GetPublicKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/public-key/{Id}", GetPublicKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPublicKey2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPublicKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPublicKey2018_06_18Sync(GetPublicKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPublicKey2018_06_18Async(GetPublicKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStreamingDistributionWithTags2018_06_18 asynchronously, invoking a callback when done
-- @param CreateStreamingDistributionWithTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStreamingDistributionWithTags2018_06_18Async(CreateStreamingDistributionWithTagsRequest, cb)
	assert(CreateStreamingDistributionWithTagsRequest, "You must provide a CreateStreamingDistributionWithTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateStreamingDistributionWithTags2018_06_18",
	}
	for header,value in pairs(CreateStreamingDistributionWithTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/streaming-distribution?WithTags", CreateStreamingDistributionWithTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStreamingDistributionWithTags2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStreamingDistributionWithTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateStreamingDistributionWithTags2018_06_18Sync(CreateStreamingDistributionWithTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamingDistributionWithTags2018_06_18Async(CreateStreamingDistributionWithTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePublicKey2018_06_18 asynchronously, invoking a callback when done
-- @param UpdatePublicKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePublicKey2018_06_18Async(UpdatePublicKeyRequest, cb)
	assert(UpdatePublicKeyRequest, "You must provide a UpdatePublicKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdatePublicKey2018_06_18",
	}
	for header,value in pairs(UpdatePublicKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/public-key/{Id}/config", UpdatePublicKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePublicKey2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePublicKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePublicKey2018_06_18Sync(UpdatePublicKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePublicKey2018_06_18Async(UpdatePublicKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFieldLevelEncryptionProfile2018_06_18 asynchronously, invoking a callback when done
-- @param DeleteFieldLevelEncryptionProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFieldLevelEncryptionProfile2018_06_18Async(DeleteFieldLevelEncryptionProfileRequest, cb)
	assert(DeleteFieldLevelEncryptionProfileRequest, "You must provide a DeleteFieldLevelEncryptionProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFieldLevelEncryptionProfile2018_06_18",
	}
	for header,value in pairs(DeleteFieldLevelEncryptionProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption-profile/{Id}", DeleteFieldLevelEncryptionProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFieldLevelEncryptionProfile2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFieldLevelEncryptionProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFieldLevelEncryptionProfile2018_06_18Sync(DeleteFieldLevelEncryptionProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFieldLevelEncryptionProfile2018_06_18Async(DeleteFieldLevelEncryptionProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDistribution2018_06_18 asynchronously, invoking a callback when done
-- @param CreateDistributionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDistribution2018_06_18Async(CreateDistributionRequest, cb)
	assert(CreateDistributionRequest, "You must provide a CreateDistributionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDistribution2018_06_18",
	}
	for header,value in pairs(CreateDistributionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distribution", CreateDistributionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDistribution2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDistributionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDistribution2018_06_18Sync(CreateDistributionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDistribution2018_06_18Async(CreateDistributionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFieldLevelEncryptionProfile2018_06_18 asynchronously, invoking a callback when done
-- @param CreateFieldLevelEncryptionProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateFieldLevelEncryptionProfile2018_06_18Async(CreateFieldLevelEncryptionProfileRequest, cb)
	assert(CreateFieldLevelEncryptionProfileRequest, "You must provide a CreateFieldLevelEncryptionProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateFieldLevelEncryptionProfile2018_06_18",
	}
	for header,value in pairs(CreateFieldLevelEncryptionProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption-profile", CreateFieldLevelEncryptionProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFieldLevelEncryptionProfile2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFieldLevelEncryptionProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateFieldLevelEncryptionProfile2018_06_18Sync(CreateFieldLevelEncryptionProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFieldLevelEncryptionProfile2018_06_18Async(CreateFieldLevelEncryptionProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInvalidations2018_06_18 asynchronously, invoking a callback when done
-- @param ListInvalidationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInvalidations2018_06_18Async(ListInvalidationsRequest, cb)
	assert(ListInvalidationsRequest, "You must provide a ListInvalidationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListInvalidations2018_06_18",
	}
	for header,value in pairs(ListInvalidationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distribution/{DistributionId}/invalidation", ListInvalidationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInvalidations2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInvalidationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListInvalidations2018_06_18Sync(ListInvalidationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInvalidations2018_06_18Async(ListInvalidationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStreamingDistributions2018_06_18 asynchronously, invoking a callback when done
-- @param ListStreamingDistributionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStreamingDistributions2018_06_18Async(ListStreamingDistributionsRequest, cb)
	assert(ListStreamingDistributionsRequest, "You must provide a ListStreamingDistributionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListStreamingDistributions2018_06_18",
	}
	for header,value in pairs(ListStreamingDistributionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/streaming-distribution", ListStreamingDistributionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStreamingDistributions2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStreamingDistributionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListStreamingDistributions2018_06_18Sync(ListStreamingDistributionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStreamingDistributions2018_06_18Async(ListStreamingDistributionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDistribution2018_06_18 asynchronously, invoking a callback when done
-- @param UpdateDistributionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDistribution2018_06_18Async(UpdateDistributionRequest, cb)
	assert(UpdateDistributionRequest, "You must provide a UpdateDistributionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDistribution2018_06_18",
	}
	for header,value in pairs(UpdateDistributionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distribution/{Id}/config", UpdateDistributionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDistribution2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDistributionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDistribution2018_06_18Sync(UpdateDistributionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDistribution2018_06_18Async(UpdateDistributionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStreamingDistribution2018_06_18 asynchronously, invoking a callback when done
-- @param CreateStreamingDistributionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStreamingDistribution2018_06_18Async(CreateStreamingDistributionRequest, cb)
	assert(CreateStreamingDistributionRequest, "You must provide a CreateStreamingDistributionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateStreamingDistribution2018_06_18",
	}
	for header,value in pairs(CreateStreamingDistributionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/streaming-distribution", CreateStreamingDistributionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStreamingDistribution2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStreamingDistributionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateStreamingDistribution2018_06_18Sync(CreateStreamingDistributionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamingDistribution2018_06_18Async(CreateStreamingDistributionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPublicKeyConfig2018_06_18 asynchronously, invoking a callback when done
-- @param GetPublicKeyConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPublicKeyConfig2018_06_18Async(GetPublicKeyConfigRequest, cb)
	assert(GetPublicKeyConfigRequest, "You must provide a GetPublicKeyConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPublicKeyConfig2018_06_18",
	}
	for header,value in pairs(GetPublicKeyConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/public-key/{Id}/config", GetPublicKeyConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPublicKeyConfig2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPublicKeyConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPublicKeyConfig2018_06_18Sync(GetPublicKeyConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPublicKeyConfig2018_06_18Async(GetPublicKeyConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDistribution2018_06_18 asynchronously, invoking a callback when done
-- @param DeleteDistributionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDistribution2018_06_18Async(DeleteDistributionRequest, cb)
	assert(DeleteDistributionRequest, "You must provide a DeleteDistributionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDistribution2018_06_18",
	}
	for header,value in pairs(DeleteDistributionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distribution/{Id}", DeleteDistributionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDistribution2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDistributionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDistribution2018_06_18Sync(DeleteDistributionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDistribution2018_06_18Async(DeleteDistributionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource2018_06_18 asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResource2018_06_18Async(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TagResource2018_06_18",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/tagging?Operation=Tag", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagResource2018_06_18Sync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResource2018_06_18Async(TagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePublicKey2018_06_18 asynchronously, invoking a callback when done
-- @param CreatePublicKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePublicKey2018_06_18Async(CreatePublicKeyRequest, cb)
	assert(CreatePublicKeyRequest, "You must provide a CreatePublicKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePublicKey2018_06_18",
	}
	for header,value in pairs(CreatePublicKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/public-key", CreatePublicKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePublicKey2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePublicKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePublicKey2018_06_18Sync(CreatePublicKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePublicKey2018_06_18Async(CreatePublicKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePublicKey2018_06_18 asynchronously, invoking a callback when done
-- @param DeletePublicKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePublicKey2018_06_18Async(DeletePublicKeyRequest, cb)
	assert(DeletePublicKeyRequest, "You must provide a DeletePublicKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePublicKey2018_06_18",
	}
	for header,value in pairs(DeletePublicKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/public-key/{Id}", DeletePublicKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePublicKey2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePublicKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePublicKey2018_06_18Sync(DeletePublicKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePublicKey2018_06_18Async(DeletePublicKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInvalidation2018_06_18 asynchronously, invoking a callback when done
-- @param GetInvalidationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetInvalidation2018_06_18Async(GetInvalidationRequest, cb)
	assert(GetInvalidationRequest, "You must provide a GetInvalidationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetInvalidation2018_06_18",
	}
	for header,value in pairs(GetInvalidationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distribution/{DistributionId}/invalidation/{Id}", GetInvalidationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInvalidation2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInvalidationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetInvalidation2018_06_18Sync(GetInvalidationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInvalidation2018_06_18Async(GetInvalidationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCloudFrontOriginAccessIdentity2018_06_18 asynchronously, invoking a callback when done
-- @param DeleteCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCloudFrontOriginAccessIdentity2018_06_18Async(DeleteCloudFrontOriginAccessIdentityRequest, cb)
	assert(DeleteCloudFrontOriginAccessIdentityRequest, "You must provide a DeleteCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCloudFrontOriginAccessIdentity2018_06_18",
	}
	for header,value in pairs(DeleteCloudFrontOriginAccessIdentityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/origin-access-identity/cloudfront/{Id}", DeleteCloudFrontOriginAccessIdentityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCloudFrontOriginAccessIdentity2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCloudFrontOriginAccessIdentityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCloudFrontOriginAccessIdentity2018_06_18Sync(DeleteCloudFrontOriginAccessIdentityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCloudFrontOriginAccessIdentity2018_06_18Async(DeleteCloudFrontOriginAccessIdentityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFieldLevelEncryptionProfile2018_06_18 asynchronously, invoking a callback when done
-- @param UpdateFieldLevelEncryptionProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateFieldLevelEncryptionProfile2018_06_18Async(UpdateFieldLevelEncryptionProfileRequest, cb)
	assert(UpdateFieldLevelEncryptionProfileRequest, "You must provide a UpdateFieldLevelEncryptionProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFieldLevelEncryptionProfile2018_06_18",
	}
	for header,value in pairs(UpdateFieldLevelEncryptionProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption-profile/{Id}/config", UpdateFieldLevelEncryptionProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFieldLevelEncryptionProfile2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFieldLevelEncryptionProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateFieldLevelEncryptionProfile2018_06_18Sync(UpdateFieldLevelEncryptionProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFieldLevelEncryptionProfile2018_06_18Async(UpdateFieldLevelEncryptionProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCloudFrontOriginAccessIdentities2018_06_18 asynchronously, invoking a callback when done
-- @param ListCloudFrontOriginAccessIdentitiesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListCloudFrontOriginAccessIdentities2018_06_18Async(ListCloudFrontOriginAccessIdentitiesRequest, cb)
	assert(ListCloudFrontOriginAccessIdentitiesRequest, "You must provide a ListCloudFrontOriginAccessIdentitiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListCloudFrontOriginAccessIdentities2018_06_18",
	}
	for header,value in pairs(ListCloudFrontOriginAccessIdentitiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/origin-access-identity/cloudfront", ListCloudFrontOriginAccessIdentitiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCloudFrontOriginAccessIdentities2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCloudFrontOriginAccessIdentitiesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListCloudFrontOriginAccessIdentities2018_06_18Sync(ListCloudFrontOriginAccessIdentitiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCloudFrontOriginAccessIdentities2018_06_18Async(ListCloudFrontOriginAccessIdentitiesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFieldLevelEncryptionConfig2018_06_18 asynchronously, invoking a callback when done
-- @param CreateFieldLevelEncryptionConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateFieldLevelEncryptionConfig2018_06_18Async(CreateFieldLevelEncryptionConfigRequest, cb)
	assert(CreateFieldLevelEncryptionConfigRequest, "You must provide a CreateFieldLevelEncryptionConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateFieldLevelEncryptionConfig2018_06_18",
	}
	for header,value in pairs(CreateFieldLevelEncryptionConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption", CreateFieldLevelEncryptionConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFieldLevelEncryptionConfig2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFieldLevelEncryptionConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateFieldLevelEncryptionConfig2018_06_18Sync(CreateFieldLevelEncryptionConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFieldLevelEncryptionConfig2018_06_18Async(CreateFieldLevelEncryptionConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPublicKeys2018_06_18 asynchronously, invoking a callback when done
-- @param ListPublicKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPublicKeys2018_06_18Async(ListPublicKeysRequest, cb)
	assert(ListPublicKeysRequest, "You must provide a ListPublicKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPublicKeys2018_06_18",
	}
	for header,value in pairs(ListPublicKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/public-key", ListPublicKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPublicKeys2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPublicKeysRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPublicKeys2018_06_18Sync(ListPublicKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPublicKeys2018_06_18Async(ListPublicKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStreamingDistributionConfig2018_06_18 asynchronously, invoking a callback when done
-- @param GetStreamingDistributionConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetStreamingDistributionConfig2018_06_18Async(GetStreamingDistributionConfigRequest, cb)
	assert(GetStreamingDistributionConfigRequest, "You must provide a GetStreamingDistributionConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetStreamingDistributionConfig2018_06_18",
	}
	for header,value in pairs(GetStreamingDistributionConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/streaming-distribution/{Id}/config", GetStreamingDistributionConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetStreamingDistributionConfig2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetStreamingDistributionConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetStreamingDistributionConfig2018_06_18Sync(GetStreamingDistributionConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStreamingDistributionConfig2018_06_18Async(GetStreamingDistributionConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFieldLevelEncryptionProfileConfig2018_06_18 asynchronously, invoking a callback when done
-- @param GetFieldLevelEncryptionProfileConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFieldLevelEncryptionProfileConfig2018_06_18Async(GetFieldLevelEncryptionProfileConfigRequest, cb)
	assert(GetFieldLevelEncryptionProfileConfigRequest, "You must provide a GetFieldLevelEncryptionProfileConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFieldLevelEncryptionProfileConfig2018_06_18",
	}
	for header,value in pairs(GetFieldLevelEncryptionProfileConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption-profile/{Id}/config", GetFieldLevelEncryptionProfileConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFieldLevelEncryptionProfileConfig2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFieldLevelEncryptionProfileConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFieldLevelEncryptionProfileConfig2018_06_18Sync(GetFieldLevelEncryptionProfileConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFieldLevelEncryptionProfileConfig2018_06_18Async(GetFieldLevelEncryptionProfileConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCloudFrontOriginAccessIdentity2018_06_18 asynchronously, invoking a callback when done
-- @param GetCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCloudFrontOriginAccessIdentity2018_06_18Async(GetCloudFrontOriginAccessIdentityRequest, cb)
	assert(GetCloudFrontOriginAccessIdentityRequest, "You must provide a GetCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCloudFrontOriginAccessIdentity2018_06_18",
	}
	for header,value in pairs(GetCloudFrontOriginAccessIdentityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/origin-access-identity/cloudfront/{Id}", GetCloudFrontOriginAccessIdentityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCloudFrontOriginAccessIdentity2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCloudFrontOriginAccessIdentityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCloudFrontOriginAccessIdentity2018_06_18Sync(GetCloudFrontOriginAccessIdentityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCloudFrontOriginAccessIdentity2018_06_18Async(GetCloudFrontOriginAccessIdentityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDistribution2018_06_18 asynchronously, invoking a callback when done
-- @param GetDistributionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDistribution2018_06_18Async(GetDistributionRequest, cb)
	assert(GetDistributionRequest, "You must provide a GetDistributionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDistribution2018_06_18",
	}
	for header,value in pairs(GetDistributionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distribution/{Id}", GetDistributionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDistribution2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDistributionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDistribution2018_06_18Sync(GetDistributionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDistribution2018_06_18Async(GetDistributionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCloudFrontOriginAccessIdentityConfig2018_06_18 asynchronously, invoking a callback when done
-- @param GetCloudFrontOriginAccessIdentityConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCloudFrontOriginAccessIdentityConfig2018_06_18Async(GetCloudFrontOriginAccessIdentityConfigRequest, cb)
	assert(GetCloudFrontOriginAccessIdentityConfigRequest, "You must provide a GetCloudFrontOriginAccessIdentityConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCloudFrontOriginAccessIdentityConfig2018_06_18",
	}
	for header,value in pairs(GetCloudFrontOriginAccessIdentityConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/origin-access-identity/cloudfront/{Id}/config", GetCloudFrontOriginAccessIdentityConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCloudFrontOriginAccessIdentityConfig2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCloudFrontOriginAccessIdentityConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCloudFrontOriginAccessIdentityConfig2018_06_18Sync(GetCloudFrontOriginAccessIdentityConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCloudFrontOriginAccessIdentityConfig2018_06_18Async(GetCloudFrontOriginAccessIdentityConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFieldLevelEncryptionProfiles2018_06_18 asynchronously, invoking a callback when done
-- @param ListFieldLevelEncryptionProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFieldLevelEncryptionProfiles2018_06_18Async(ListFieldLevelEncryptionProfilesRequest, cb)
	assert(ListFieldLevelEncryptionProfilesRequest, "You must provide a ListFieldLevelEncryptionProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFieldLevelEncryptionProfiles2018_06_18",
	}
	for header,value in pairs(ListFieldLevelEncryptionProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption-profile", ListFieldLevelEncryptionProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFieldLevelEncryptionProfiles2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFieldLevelEncryptionProfilesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListFieldLevelEncryptionProfiles2018_06_18Sync(ListFieldLevelEncryptionProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFieldLevelEncryptionProfiles2018_06_18Async(ListFieldLevelEncryptionProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDistributionConfig2018_06_18 asynchronously, invoking a callback when done
-- @param GetDistributionConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDistributionConfig2018_06_18Async(GetDistributionConfigRequest, cb)
	assert(GetDistributionConfigRequest, "You must provide a GetDistributionConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDistributionConfig2018_06_18",
	}
	for header,value in pairs(GetDistributionConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distribution/{Id}/config", GetDistributionConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDistributionConfig2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDistributionConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDistributionConfig2018_06_18Sync(GetDistributionConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDistributionConfig2018_06_18Async(GetDistributionConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCloudFrontOriginAccessIdentity2018_06_18 asynchronously, invoking a callback when done
-- @param CreateCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCloudFrontOriginAccessIdentity2018_06_18Async(CreateCloudFrontOriginAccessIdentityRequest, cb)
	assert(CreateCloudFrontOriginAccessIdentityRequest, "You must provide a CreateCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCloudFrontOriginAccessIdentity2018_06_18",
	}
	for header,value in pairs(CreateCloudFrontOriginAccessIdentityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/origin-access-identity/cloudfront", CreateCloudFrontOriginAccessIdentityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCloudFrontOriginAccessIdentity2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCloudFrontOriginAccessIdentityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCloudFrontOriginAccessIdentity2018_06_18Sync(CreateCloudFrontOriginAccessIdentityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCloudFrontOriginAccessIdentity2018_06_18Async(CreateCloudFrontOriginAccessIdentityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFieldLevelEncryptionConfig2018_06_18 asynchronously, invoking a callback when done
-- @param UpdateFieldLevelEncryptionConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateFieldLevelEncryptionConfig2018_06_18Async(UpdateFieldLevelEncryptionConfigRequest, cb)
	assert(UpdateFieldLevelEncryptionConfigRequest, "You must provide a UpdateFieldLevelEncryptionConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFieldLevelEncryptionConfig2018_06_18",
	}
	for header,value in pairs(UpdateFieldLevelEncryptionConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption/{Id}/config", UpdateFieldLevelEncryptionConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFieldLevelEncryptionConfig2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFieldLevelEncryptionConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateFieldLevelEncryptionConfig2018_06_18Sync(UpdateFieldLevelEncryptionConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFieldLevelEncryptionConfig2018_06_18Async(UpdateFieldLevelEncryptionConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStreamingDistribution2018_06_18 asynchronously, invoking a callback when done
-- @param DeleteStreamingDistributionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteStreamingDistribution2018_06_18Async(DeleteStreamingDistributionRequest, cb)
	assert(DeleteStreamingDistributionRequest, "You must provide a DeleteStreamingDistributionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteStreamingDistribution2018_06_18",
	}
	for header,value in pairs(DeleteStreamingDistributionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/streaming-distribution/{Id}", DeleteStreamingDistributionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStreamingDistribution2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStreamingDistributionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteStreamingDistribution2018_06_18Sync(DeleteStreamingDistributionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStreamingDistribution2018_06_18Async(DeleteStreamingDistributionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDistributionWithTags2018_06_18 asynchronously, invoking a callback when done
-- @param CreateDistributionWithTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDistributionWithTags2018_06_18Async(CreateDistributionWithTagsRequest, cb)
	assert(CreateDistributionWithTagsRequest, "You must provide a CreateDistributionWithTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDistributionWithTags2018_06_18",
	}
	for header,value in pairs(CreateDistributionWithTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distribution?WithTags", CreateDistributionWithTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDistributionWithTags2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDistributionWithTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDistributionWithTags2018_06_18Sync(CreateDistributionWithTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDistributionWithTags2018_06_18Async(CreateDistributionWithTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCloudFrontOriginAccessIdentity2018_06_18 asynchronously, invoking a callback when done
-- @param UpdateCloudFrontOriginAccessIdentityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateCloudFrontOriginAccessIdentity2018_06_18Async(UpdateCloudFrontOriginAccessIdentityRequest, cb)
	assert(UpdateCloudFrontOriginAccessIdentityRequest, "You must provide a UpdateCloudFrontOriginAccessIdentityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateCloudFrontOriginAccessIdentity2018_06_18",
	}
	for header,value in pairs(UpdateCloudFrontOriginAccessIdentityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/origin-access-identity/cloudfront/{Id}/config", UpdateCloudFrontOriginAccessIdentityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCloudFrontOriginAccessIdentity2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCloudFrontOriginAccessIdentityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateCloudFrontOriginAccessIdentity2018_06_18Sync(UpdateCloudFrontOriginAccessIdentityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCloudFrontOriginAccessIdentity2018_06_18Async(UpdateCloudFrontOriginAccessIdentityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource2018_06_18 asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResource2018_06_18Async(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UntagResource2018_06_18",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/tagging?Operation=Untag", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResource2018_06_18Sync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResource2018_06_18Async(UntagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFieldLevelEncryptionConfigs2018_06_18 asynchronously, invoking a callback when done
-- @param ListFieldLevelEncryptionConfigsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFieldLevelEncryptionConfigs2018_06_18Async(ListFieldLevelEncryptionConfigsRequest, cb)
	assert(ListFieldLevelEncryptionConfigsRequest, "You must provide a ListFieldLevelEncryptionConfigsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFieldLevelEncryptionConfigs2018_06_18",
	}
	for header,value in pairs(ListFieldLevelEncryptionConfigsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption", ListFieldLevelEncryptionConfigsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFieldLevelEncryptionConfigs2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFieldLevelEncryptionConfigsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListFieldLevelEncryptionConfigs2018_06_18Sync(ListFieldLevelEncryptionConfigsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFieldLevelEncryptionConfigs2018_06_18Async(ListFieldLevelEncryptionConfigsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFieldLevelEncryptionProfile2018_06_18 asynchronously, invoking a callback when done
-- @param GetFieldLevelEncryptionProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFieldLevelEncryptionProfile2018_06_18Async(GetFieldLevelEncryptionProfileRequest, cb)
	assert(GetFieldLevelEncryptionProfileRequest, "You must provide a GetFieldLevelEncryptionProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFieldLevelEncryptionProfile2018_06_18",
	}
	for header,value in pairs(GetFieldLevelEncryptionProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption-profile/{Id}", GetFieldLevelEncryptionProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFieldLevelEncryptionProfile2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFieldLevelEncryptionProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFieldLevelEncryptionProfile2018_06_18Sync(GetFieldLevelEncryptionProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFieldLevelEncryptionProfile2018_06_18Async(GetFieldLevelEncryptionProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFieldLevelEncryption2018_06_18 asynchronously, invoking a callback when done
-- @param GetFieldLevelEncryptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFieldLevelEncryption2018_06_18Async(GetFieldLevelEncryptionRequest, cb)
	assert(GetFieldLevelEncryptionRequest, "You must provide a GetFieldLevelEncryptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFieldLevelEncryption2018_06_18",
	}
	for header,value in pairs(GetFieldLevelEncryptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption/{Id}", GetFieldLevelEncryptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFieldLevelEncryption2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFieldLevelEncryptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFieldLevelEncryption2018_06_18Sync(GetFieldLevelEncryptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFieldLevelEncryption2018_06_18Async(GetFieldLevelEncryptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInvalidation2018_06_18 asynchronously, invoking a callback when done
-- @param CreateInvalidationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateInvalidation2018_06_18Async(CreateInvalidationRequest, cb)
	assert(CreateInvalidationRequest, "You must provide a CreateInvalidationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateInvalidation2018_06_18",
	}
	for header,value in pairs(CreateInvalidationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "POST")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distribution/{DistributionId}/invalidation", CreateInvalidationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInvalidation2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInvalidationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateInvalidation2018_06_18Sync(CreateInvalidationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInvalidation2018_06_18Async(CreateInvalidationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDistributionsByWebACLId2018_06_18 asynchronously, invoking a callback when done
-- @param ListDistributionsByWebACLIdRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDistributionsByWebACLId2018_06_18Async(ListDistributionsByWebACLIdRequest, cb)
	assert(ListDistributionsByWebACLIdRequest, "You must provide a ListDistributionsByWebACLIdRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDistributionsByWebACLId2018_06_18",
	}
	for header,value in pairs(ListDistributionsByWebACLIdRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/distributionsByWebACLId/{WebACLId}", ListDistributionsByWebACLIdRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDistributionsByWebACLId2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDistributionsByWebACLIdRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDistributionsByWebACLId2018_06_18Sync(ListDistributionsByWebACLIdRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDistributionsByWebACLId2018_06_18Async(ListDistributionsByWebACLIdRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource2018_06_18 asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResource2018_06_18Async(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForResource2018_06_18",
	}
	for header,value in pairs(ListTagsForResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/tagging", ListTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForResource2018_06_18Sync(ListTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResource2018_06_18Async(ListTagsForResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFieldLevelEncryptionConfig2018_06_18 asynchronously, invoking a callback when done
-- @param GetFieldLevelEncryptionConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFieldLevelEncryptionConfig2018_06_18Async(GetFieldLevelEncryptionConfigRequest, cb)
	assert(GetFieldLevelEncryptionConfigRequest, "You must provide a GetFieldLevelEncryptionConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFieldLevelEncryptionConfig2018_06_18",
	}
	for header,value in pairs(GetFieldLevelEncryptionConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-xml", "GET")
	if request_handler then
		request_handler(settings.uri, "/2018-06-18/field-level-encryption/{Id}/config", GetFieldLevelEncryptionConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFieldLevelEncryptionConfig2018_06_18 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFieldLevelEncryptionConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFieldLevelEncryptionConfig2018_06_18Sync(GetFieldLevelEncryptionConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFieldLevelEncryptionConfig2018_06_18Async(GetFieldLevelEncryptionConfigRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
