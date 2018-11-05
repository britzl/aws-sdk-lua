--- GENERATED CODE - DO NOT MODIFY
-- Amazon Macie (macie-2017-12-19)

local M = {}

M.metadata = {
	api_version = "2017-12-19",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "macie",
	service_abbreviation = "",
	service_full_name = "Amazon Macie",
	signature_version = "v4",
	target_prefix = "MacieService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "macie-2017-12-19",
}

local keys = {}
local asserts = {}

keys.LimitExceededException = { ["errorCode"] = true, ["resourceType"] = true, ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["errorCode"] then asserts.AssertErrorCode(struct["errorCode"]) end
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * errorCode [ErrorCode] 
-- * resourceType [ResourceType] 
-- * message [ExceptionMessage] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["errorCode"] = args["errorCode"],
		["resourceType"] = args["resourceType"],
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateS3ResourcesResult = { ["failedS3Resources"] = true, nil }

function asserts.AssertDisassociateS3ResourcesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateS3ResourcesResult to be of type 'table'")
	if struct["failedS3Resources"] then asserts.AssertFailedS3Resources(struct["failedS3Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateS3ResourcesResult[k], "DisassociateS3ResourcesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateS3ResourcesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failedS3Resources [FailedS3Resources] <p>S3 resources that couldn't be removed from being monitored and classified by Amazon Macie. An error code and an error message are provided for each failed item. </p>
-- @return DisassociateS3ResourcesResult structure as a key-value pair table
function M.DisassociateS3ResourcesResult(args)
	assert(args, "You must provide an argument table when creating DisassociateS3ResourcesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failedS3Resources"] = args["failedS3Resources"],
	}
	asserts.AssertDisassociateS3ResourcesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateMemberAccountRequest = { ["memberAccountId"] = true, nil }

function asserts.AssertDisassociateMemberAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateMemberAccountRequest to be of type 'table'")
	assert(struct["memberAccountId"], "Expected key memberAccountId to exist in table")
	if struct["memberAccountId"] then asserts.AssertAWSAccountId(struct["memberAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateMemberAccountRequest[k], "DisassociateMemberAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateMemberAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * memberAccountId [AWSAccountId] <p>The ID of the member account that you want to remove from Amazon Macie.</p>
-- Required key: memberAccountId
-- @return DisassociateMemberAccountRequest structure as a key-value pair table
function M.DisassociateMemberAccountRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateMemberAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["memberAccountId"] = args["memberAccountId"],
	}
	asserts.AssertDisassociateMemberAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMemberAccountsResult = { ["memberAccounts"] = true, ["nextToken"] = true, nil }

function asserts.AssertListMemberAccountsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMemberAccountsResult to be of type 'table'")
	if struct["memberAccounts"] then asserts.AssertMemberAccounts(struct["memberAccounts"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMemberAccountsResult[k], "ListMemberAccountsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMemberAccountsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * memberAccounts [MemberAccounts] <p>A list of the Amazon Macie member accounts returned by the action. The current master account is also included in this list. </p>
-- * nextToken [NextToken] <p>When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null. </p>
-- @return ListMemberAccountsResult structure as a key-value pair table
function M.ListMemberAccountsResult(args)
	assert(args, "You must provide an argument table when creating ListMemberAccountsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["memberAccounts"] = args["memberAccounts"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListMemberAccountsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMemberAccountsRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListMemberAccountsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMemberAccountsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMemberAccountsRequest[k], "ListMemberAccountsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMemberAccountsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>Use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListMemberAccounts action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data. </p>
-- * maxResults [MaxResults] <p>Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250. </p>
-- @return ListMemberAccountsRequest structure as a key-value pair table
function M.ListMemberAccountsRequest(args)
	assert(args, "You must provide an argument table when creating ListMemberAccountsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListMemberAccountsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClassificationType = { ["oneTime"] = true, ["continuous"] = true, nil }

function asserts.AssertClassificationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClassificationType to be of type 'table'")
	assert(struct["oneTime"], "Expected key oneTime to exist in table")
	assert(struct["continuous"], "Expected key continuous to exist in table")
	if struct["oneTime"] then asserts.AssertS3OneTimeClassificationType(struct["oneTime"]) end
	if struct["continuous"] then asserts.AssertS3ContinuousClassificationType(struct["continuous"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClassificationType[k], "ClassificationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClassificationType
-- <p>The classification type that Amazon Macie applies to the associated S3 resources. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * oneTime [S3OneTimeClassificationType] <p>A one-time classification of all of the existing objects in a specified S3 bucket. </p>
-- * continuous [S3ContinuousClassificationType] <p>A continuous classification of the objects that are added to a specified S3 bucket. Amazon Macie begins performing continuous classification after a bucket is successfully associated with Amazon Macie. </p>
-- Required key: oneTime
-- Required key: continuous
-- @return ClassificationType structure as a key-value pair table
function M.ClassificationType(args)
	assert(args, "You must provide an argument table when creating ClassificationType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["oneTime"] = args["oneTime"],
		["continuous"] = args["continuous"],
	}
	asserts.AssertClassificationType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateS3ResourcesRequest = { ["associatedS3Resources"] = true, ["memberAccountId"] = true, nil }

function asserts.AssertDisassociateS3ResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateS3ResourcesRequest to be of type 'table'")
	assert(struct["associatedS3Resources"], "Expected key associatedS3Resources to exist in table")
	if struct["associatedS3Resources"] then asserts.AssertS3Resources(struct["associatedS3Resources"]) end
	if struct["memberAccountId"] then asserts.AssertAWSAccountId(struct["memberAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateS3ResourcesRequest[k], "DisassociateS3ResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateS3ResourcesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * associatedS3Resources [S3Resources] <p>The S3 resources (buckets or prefixes) that you want to remove from being monitored and classified by Amazon Macie. </p>
-- * memberAccountId [AWSAccountId] <p>The ID of the Amazon Macie member account whose resources you want to remove from being monitored by Amazon Macie. </p>
-- Required key: associatedS3Resources
-- @return DisassociateS3ResourcesRequest structure as a key-value pair table
function M.DisassociateS3ResourcesRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateS3ResourcesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["associatedS3Resources"] = args["associatedS3Resources"],
		["memberAccountId"] = args["memberAccountId"],
	}
	asserts.AssertDisassociateS3ResourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateS3ResourcesRequest = { ["s3Resources"] = true, ["memberAccountId"] = true, nil }

function asserts.AssertAssociateS3ResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateS3ResourcesRequest to be of type 'table'")
	assert(struct["s3Resources"], "Expected key s3Resources to exist in table")
	if struct["s3Resources"] then asserts.AssertS3ResourcesClassification(struct["s3Resources"]) end
	if struct["memberAccountId"] then asserts.AssertAWSAccountId(struct["memberAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateS3ResourcesRequest[k], "AssociateS3ResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateS3ResourcesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * s3Resources [S3ResourcesClassification] <p>The S3 resources that you want to associate with Amazon Macie for monitoring and data classification. </p>
-- * memberAccountId [AWSAccountId] <p>The ID of the Amazon Macie member account whose resources you want to associate with Macie. </p>
-- Required key: s3Resources
-- @return AssociateS3ResourcesRequest structure as a key-value pair table
function M.AssociateS3ResourcesRequest(args)
	assert(args, "You must provide an argument table when creating AssociateS3ResourcesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["s3Resources"] = args["s3Resources"],
		["memberAccountId"] = args["memberAccountId"],
	}
	asserts.AssertAssociateS3ResourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalException = { ["errorCode"] = true, ["message"] = true, nil }

function asserts.AssertInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalException to be of type 'table'")
	if struct["errorCode"] then asserts.AssertErrorCode(struct["errorCode"]) end
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalException[k], "InternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalException
-- <p>Internal server error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * errorCode [ErrorCode] 
-- * message [ExceptionMessage] 
-- @return InternalException structure as a key-value pair table
function M.InternalException(args)
	assert(args, "You must provide an argument table when creating InternalException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["errorCode"] = args["errorCode"],
		["message"] = args["message"],
	}
	asserts.AssertInternalException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccessDeniedException = { ["resourceType"] = true, ["message"] = true, nil }

function asserts.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	if struct["resourceType"] then asserts.AssertResourceType(struct["resourceType"]) end
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessDeniedException[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>You do not have required permissions to access the requested resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceType [ResourceType] 
-- * message [ExceptionMessage] 
-- @return AccessDeniedException structure as a key-value pair table
function M.AccessDeniedException(args)
	assert(args, "You must provide an argument table when creating AccessDeniedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceType"] = args["resourceType"],
		["message"] = args["message"],
	}
	asserts.AssertAccessDeniedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListS3ResourcesRequest = { ["nextToken"] = true, ["maxResults"] = true, ["memberAccountId"] = true, nil }

function asserts.AssertListS3ResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListS3ResourcesRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	if struct["memberAccountId"] then asserts.AssertAWSAccountId(struct["memberAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListS3ResourcesRequest[k], "ListS3ResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListS3ResourcesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>Use this parameter when paginating results. Set its value to null on your first call to the ListS3Resources action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data. </p>
-- * maxResults [MaxResults] <p>Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250. </p>
-- * memberAccountId [AWSAccountId] <p>The Amazon Macie member account ID whose associated S3 resources you want to list. </p>
-- @return ListS3ResourcesRequest structure as a key-value pair table
function M.ListS3ResourcesRequest(args)
	assert(args, "You must provide an argument table when creating ListS3ResourcesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["memberAccountId"] = args["memberAccountId"],
	}
	asserts.AssertListS3ResourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MemberAccount = { ["accountId"] = true, nil }

function asserts.AssertMemberAccount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MemberAccount to be of type 'table'")
	if struct["accountId"] then asserts.AssertAWSAccountId(struct["accountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.MemberAccount[k], "MemberAccount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MemberAccount
-- <p>Contains information about the Amazon Macie member account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * accountId [AWSAccountId] <p>The AWS account ID of the Amazon Macie member account.</p>
-- @return MemberAccount structure as a key-value pair table
function M.MemberAccount(args)
	assert(args, "You must provide an argument table when creating MemberAccount")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["accountId"] = args["accountId"],
	}
	asserts.AssertMemberAccount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateS3ResourcesResult = { ["failedS3Resources"] = true, nil }

function asserts.AssertAssociateS3ResourcesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateS3ResourcesResult to be of type 'table'")
	if struct["failedS3Resources"] then asserts.AssertFailedS3Resources(struct["failedS3Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateS3ResourcesResult[k], "AssociateS3ResourcesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateS3ResourcesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failedS3Resources [FailedS3Resources] <p>S3 resources that couldn't be associated with Amazon Macie. An error code and an error message are provided for each failed item. </p>
-- @return AssociateS3ResourcesResult structure as a key-value pair table
function M.AssociateS3ResourcesResult(args)
	assert(args, "You must provide an argument table when creating AssociateS3ResourcesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failedS3Resources"] = args["failedS3Resources"],
	}
	asserts.AssertAssociateS3ResourcesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3ResourceClassification = { ["prefix"] = true, ["bucketName"] = true, ["classificationType"] = true, nil }

function asserts.AssertS3ResourceClassification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3ResourceClassification to be of type 'table'")
	assert(struct["bucketName"], "Expected key bucketName to exist in table")
	assert(struct["classificationType"], "Expected key classificationType to exist in table")
	if struct["prefix"] then asserts.AssertPrefix(struct["prefix"]) end
	if struct["bucketName"] then asserts.AssertBucketName(struct["bucketName"]) end
	if struct["classificationType"] then asserts.AssertClassificationType(struct["classificationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3ResourceClassification[k], "S3ResourceClassification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3ResourceClassification
-- <p>The S3 resources that you want to associate with Amazon Macie for monitoring and data classification. This data type is used as a request parameter in the AssociateS3Resources action and a response parameter in the ListS3Resources action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * prefix [Prefix] <p>The prefix of the S3 bucket that you want to associate with Amazon Macie.</p>
-- * bucketName [BucketName] <p>The name of the S3 bucket that you want to associate with Amazon Macie.</p>
-- * classificationType [ClassificationType] <p>The classification type that you want to specify for the resource associated with Amazon Macie. </p>
-- Required key: bucketName
-- Required key: classificationType
-- @return S3ResourceClassification structure as a key-value pair table
function M.S3ResourceClassification(args)
	assert(args, "You must provide an argument table when creating S3ResourceClassification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["prefix"] = args["prefix"],
		["bucketName"] = args["bucketName"],
		["classificationType"] = args["classificationType"],
	}
	asserts.AssertS3ResourceClassification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateS3ResourcesRequest = { ["s3ResourcesUpdate"] = true, ["memberAccountId"] = true, nil }

function asserts.AssertUpdateS3ResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateS3ResourcesRequest to be of type 'table'")
	assert(struct["s3ResourcesUpdate"], "Expected key s3ResourcesUpdate to exist in table")
	if struct["s3ResourcesUpdate"] then asserts.AssertS3ResourcesClassificationUpdate(struct["s3ResourcesUpdate"]) end
	if struct["memberAccountId"] then asserts.AssertAWSAccountId(struct["memberAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateS3ResourcesRequest[k], "UpdateS3ResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateS3ResourcesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * s3ResourcesUpdate [S3ResourcesClassificationUpdate] <p>The S3 resources whose classification types you want to update.</p>
-- * memberAccountId [AWSAccountId] <p>The AWS ID of the Amazon Macie member account whose S3 resources' classification types you want to update. </p>
-- Required key: s3ResourcesUpdate
-- @return UpdateS3ResourcesRequest structure as a key-value pair table
function M.UpdateS3ResourcesRequest(args)
	assert(args, "You must provide an argument table when creating UpdateS3ResourcesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["s3ResourcesUpdate"] = args["s3ResourcesUpdate"],
		["memberAccountId"] = args["memberAccountId"],
	}
	asserts.AssertUpdateS3ResourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateS3ResourcesResult = { ["failedS3Resources"] = true, nil }

function asserts.AssertUpdateS3ResourcesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateS3ResourcesResult to be of type 'table'")
	if struct["failedS3Resources"] then asserts.AssertFailedS3Resources(struct["failedS3Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateS3ResourcesResult[k], "UpdateS3ResourcesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateS3ResourcesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failedS3Resources [FailedS3Resources] <p>The S3 resources whose classification types can't be updated. An error code and an error message are provided for each failed item. </p>
-- @return UpdateS3ResourcesResult structure as a key-value pair table
function M.UpdateS3ResourcesResult(args)
	assert(args, "You must provide an argument table when creating UpdateS3ResourcesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failedS3Resources"] = args["failedS3Resources"],
	}
	asserts.AssertUpdateS3ResourcesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3ResourceClassificationUpdate = { ["prefix"] = true, ["classificationTypeUpdate"] = true, ["bucketName"] = true, nil }

function asserts.AssertS3ResourceClassificationUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3ResourceClassificationUpdate to be of type 'table'")
	assert(struct["bucketName"], "Expected key bucketName to exist in table")
	assert(struct["classificationTypeUpdate"], "Expected key classificationTypeUpdate to exist in table")
	if struct["prefix"] then asserts.AssertPrefix(struct["prefix"]) end
	if struct["classificationTypeUpdate"] then asserts.AssertClassificationTypeUpdate(struct["classificationTypeUpdate"]) end
	if struct["bucketName"] then asserts.AssertBucketName(struct["bucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3ResourceClassificationUpdate[k], "S3ResourceClassificationUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3ResourceClassificationUpdate
-- <p>The S3 resources whose classification types you want to update. This data type is used as a request parameter in the UpdateS3Resources action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * prefix [Prefix] <p>The prefix of the S3 bucket whose classification types you want to update.</p>
-- * classificationTypeUpdate [ClassificationTypeUpdate] <p>The classification type that you want to update for the resource associated with Amazon Macie. </p>
-- * bucketName [BucketName] <p>The name of the S3 bucket whose classification types you want to update.</p>
-- Required key: bucketName
-- Required key: classificationTypeUpdate
-- @return S3ResourceClassificationUpdate structure as a key-value pair table
function M.S3ResourceClassificationUpdate(args)
	assert(args, "You must provide an argument table when creating S3ResourceClassificationUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["prefix"] = args["prefix"],
		["classificationTypeUpdate"] = args["classificationTypeUpdate"],
		["bucketName"] = args["bucketName"],
	}
	asserts.AssertS3ResourceClassificationUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClassificationTypeUpdate = { ["oneTime"] = true, ["continuous"] = true, nil }

function asserts.AssertClassificationTypeUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClassificationTypeUpdate to be of type 'table'")
	if struct["oneTime"] then asserts.AssertS3OneTimeClassificationType(struct["oneTime"]) end
	if struct["continuous"] then asserts.AssertS3ContinuousClassificationType(struct["continuous"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClassificationTypeUpdate[k], "ClassificationTypeUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClassificationTypeUpdate
-- <p>The classification type that Amazon Macie applies to the associated S3 resources. At least one of the classification types (oneTime or continuous) must be specified. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * oneTime [S3OneTimeClassificationType] <p>A one-time classification of all of the existing objects in a specified S3 bucket. </p>
-- * continuous [S3ContinuousClassificationType] <p>A continuous classification of the objects that are added to a specified S3 bucket. Amazon Macie begins performing continuous classification after a bucket is successfully associated with Amazon Macie. </p>
-- @return ClassificationTypeUpdate structure as a key-value pair table
function M.ClassificationTypeUpdate(args)
	assert(args, "You must provide an argument table when creating ClassificationTypeUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["oneTime"] = args["oneTime"],
		["continuous"] = args["continuous"],
	}
	asserts.AssertClassificationTypeUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateMemberAccountRequest = { ["memberAccountId"] = true, nil }

function asserts.AssertAssociateMemberAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateMemberAccountRequest to be of type 'table'")
	assert(struct["memberAccountId"], "Expected key memberAccountId to exist in table")
	if struct["memberAccountId"] then asserts.AssertAWSAccountId(struct["memberAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateMemberAccountRequest[k], "AssociateMemberAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateMemberAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * memberAccountId [AWSAccountId] <p>The ID of the AWS account that you want to associate with Amazon Macie as a member account.</p>
-- Required key: memberAccountId
-- @return AssociateMemberAccountRequest structure as a key-value pair table
function M.AssociateMemberAccountRequest(args)
	assert(args, "You must provide an argument table when creating AssociateMemberAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["memberAccountId"] = args["memberAccountId"],
	}
	asserts.AssertAssociateMemberAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailedS3Resource = { ["failedItem"] = true, ["errorCode"] = true, ["errorMessage"] = true, nil }

function asserts.AssertFailedS3Resource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedS3Resource to be of type 'table'")
	if struct["failedItem"] then asserts.AssertS3Resource(struct["failedItem"]) end
	if struct["errorCode"] then asserts.AssertErrorCode(struct["errorCode"]) end
	if struct["errorMessage"] then asserts.AssertExceptionMessage(struct["errorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailedS3Resource[k], "FailedS3Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedS3Resource
-- <p>Includes details about the failed S3 resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failedItem [S3Resource] <p>The failed S3 resources.</p>
-- * errorCode [ErrorCode] <p>The status code of a failed item.</p>
-- * errorMessage [ExceptionMessage] <p>The error message of a failed item.</p>
-- @return FailedS3Resource structure as a key-value pair table
function M.FailedS3Resource(args)
	assert(args, "You must provide an argument table when creating FailedS3Resource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failedItem"] = args["failedItem"],
		["errorCode"] = args["errorCode"],
		["errorMessage"] = args["errorMessage"],
	}
	asserts.AssertFailedS3Resource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Resource = { ["prefix"] = true, ["bucketName"] = true, nil }

function asserts.AssertS3Resource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Resource to be of type 'table'")
	assert(struct["bucketName"], "Expected key bucketName to exist in table")
	if struct["prefix"] then asserts.AssertPrefix(struct["prefix"]) end
	if struct["bucketName"] then asserts.AssertBucketName(struct["bucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Resource[k], "S3Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Resource
-- <p>Contains information about the S3 resource. This data type is used as a request parameter in the DisassociateS3Resources action and can be used as a response parameter in the AssociateS3Resources and UpdateS3Resources actions. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * prefix [Prefix] <p>The prefix of the S3 bucket. </p>
-- * bucketName [BucketName] <p>The name of the S3 bucket.</p>
-- Required key: bucketName
-- @return S3Resource structure as a key-value pair table
function M.S3Resource(args)
	assert(args, "You must provide an argument table when creating S3Resource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["prefix"] = args["prefix"],
		["bucketName"] = args["bucketName"],
	}
	asserts.AssertS3Resource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidInputException = { ["errorCode"] = true, ["message"] = true, ["fieldName"] = true, nil }

function asserts.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	if struct["errorCode"] then asserts.AssertErrorCode(struct["errorCode"]) end
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	if struct["fieldName"] then asserts.AssertFieldName(struct["fieldName"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInputException[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * errorCode [ErrorCode] 
-- * message [ExceptionMessage] 
-- * fieldName [FieldName] 
-- @return InvalidInputException structure as a key-value pair table
function M.InvalidInputException(args)
	assert(args, "You must provide an argument table when creating InvalidInputException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["errorCode"] = args["errorCode"],
		["message"] = args["message"],
		["fieldName"] = args["fieldName"],
	}
	asserts.AssertInvalidInputException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListS3ResourcesResult = { ["nextToken"] = true, ["s3Resources"] = true, nil }

function asserts.AssertListS3ResourcesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListS3ResourcesResult to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["s3Resources"] then asserts.AssertS3ResourcesClassification(struct["s3Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListS3ResourcesResult[k], "ListS3ResourcesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListS3ResourcesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null. </p>
-- * s3Resources [S3ResourcesClassification] <p>A list of the associated S3 resources returned by the action.</p>
-- @return ListS3ResourcesResult structure as a key-value pair table
function M.ListS3ResourcesResult(args)
	assert(args, "You must provide an argument table when creating ListS3ResourcesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["s3Resources"] = args["s3Resources"],
	}
	asserts.AssertListS3ResourcesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertAWSAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSAccountId to be of type 'string'")
end

--  
function M.AWSAccountId(str)
	asserts.AssertAWSAccountId(str)
	return str
end

function asserts.AssertS3OneTimeClassificationType(str)
	assert(str)
	assert(type(str) == "string", "Expected S3OneTimeClassificationType to be of type 'string'")
end

--  
function M.S3OneTimeClassificationType(str)
	asserts.AssertS3OneTimeClassificationType(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
end

-- Error code for the exception
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

-- Resource type that caused the exception
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertS3ContinuousClassificationType(str)
	assert(str)
	assert(type(str) == "string", "Expected S3ContinuousClassificationType to be of type 'string'")
end

--  
function M.S3ContinuousClassificationType(str)
	asserts.AssertS3ContinuousClassificationType(str)
	return str
end

function asserts.AssertBucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketName to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.BucketName(str)
	asserts.AssertBucketName(str)
	return str
end

function asserts.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
	assert(#str <= 10000, "Expected string to be max 10000 characters")
end

--  
function M.ExceptionMessage(str)
	asserts.AssertExceptionMessage(str)
	return str
end

function asserts.AssertPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected Prefix to be of type 'string'")
	assert(#str <= 10000, "Expected string to be max 10000 characters")
end

--  
function M.Prefix(str)
	asserts.AssertPrefix(str)
	return str
end

function asserts.AssertFieldName(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldName to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

-- Field that has invalid input
function M.FieldName(str)
	asserts.AssertFieldName(str)
	return str
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 250, "Expected integer to be max 250")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertFailedS3Resources(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedS3Resources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFailedS3Resource(v)
	end
end

--  
-- List of FailedS3Resource objects
function M.FailedS3Resources(list)
	asserts.AssertFailedS3Resources(list)
	return list
end

function asserts.AssertS3ResourcesClassificationUpdate(list)
	assert(list)
	assert(type(list) == "table", "Expected S3ResourcesClassificationUpdate to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertS3ResourceClassificationUpdate(v)
	end
end

--  
-- List of S3ResourceClassificationUpdate objects
function M.S3ResourcesClassificationUpdate(list)
	asserts.AssertS3ResourcesClassificationUpdate(list)
	return list
end

function asserts.AssertMemberAccounts(list)
	assert(list)
	assert(type(list) == "table", "Expected MemberAccounts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMemberAccount(v)
	end
end

--  
-- List of MemberAccount objects
function M.MemberAccounts(list)
	asserts.AssertMemberAccounts(list)
	return list
end

function asserts.AssertS3Resources(list)
	assert(list)
	assert(type(list) == "table", "Expected S3Resources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertS3Resource(v)
	end
end

--  
-- List of S3Resource objects
function M.S3Resources(list)
	asserts.AssertS3Resources(list)
	return list
end

function asserts.AssertS3ResourcesClassification(list)
	assert(list)
	assert(type(list) == "table", "Expected S3ResourcesClassification to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertS3ResourceClassification(v)
	end
end

--  
-- List of S3ResourceClassification objects
function M.S3ResourcesClassification(list)
	asserts.AssertS3ResourcesClassification(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "macie.amazonaws.com"
		end
	end
	local ss = { "macie" }
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
--- Call ListS3Resources asynchronously, invoking a callback when done
-- @param ListS3ResourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListS3ResourcesAsync(ListS3ResourcesRequest, cb)
	assert(ListS3ResourcesRequest, "You must provide a ListS3ResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MacieService.ListS3Resources",
	}
	for header,value in pairs(ListS3ResourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListS3ResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListS3Resources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListS3ResourcesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListS3ResourcesSync(ListS3ResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListS3ResourcesAsync(ListS3ResourcesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateMemberAccount asynchronously, invoking a callback when done
-- @param DisassociateMemberAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateMemberAccountAsync(DisassociateMemberAccountRequest, cb)
	assert(DisassociateMemberAccountRequest, "You must provide a DisassociateMemberAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MacieService.DisassociateMemberAccount",
	}
	for header,value in pairs(DisassociateMemberAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateMemberAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateMemberAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateMemberAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateMemberAccountSync(DisassociateMemberAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateMemberAccountAsync(DisassociateMemberAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateMemberAccount asynchronously, invoking a callback when done
-- @param AssociateMemberAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateMemberAccountAsync(AssociateMemberAccountRequest, cb)
	assert(AssociateMemberAccountRequest, "You must provide a AssociateMemberAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MacieService.AssociateMemberAccount",
	}
	for header,value in pairs(AssociateMemberAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateMemberAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateMemberAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateMemberAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateMemberAccountSync(AssociateMemberAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateMemberAccountAsync(AssociateMemberAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateS3Resources asynchronously, invoking a callback when done
-- @param DisassociateS3ResourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateS3ResourcesAsync(DisassociateS3ResourcesRequest, cb)
	assert(DisassociateS3ResourcesRequest, "You must provide a DisassociateS3ResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MacieService.DisassociateS3Resources",
	}
	for header,value in pairs(DisassociateS3ResourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateS3ResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateS3Resources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateS3ResourcesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateS3ResourcesSync(DisassociateS3ResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateS3ResourcesAsync(DisassociateS3ResourcesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateS3Resources asynchronously, invoking a callback when done
-- @param UpdateS3ResourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateS3ResourcesAsync(UpdateS3ResourcesRequest, cb)
	assert(UpdateS3ResourcesRequest, "You must provide a UpdateS3ResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MacieService.UpdateS3Resources",
	}
	for header,value in pairs(UpdateS3ResourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateS3ResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateS3Resources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateS3ResourcesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateS3ResourcesSync(UpdateS3ResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateS3ResourcesAsync(UpdateS3ResourcesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListMemberAccounts asynchronously, invoking a callback when done
-- @param ListMemberAccountsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListMemberAccountsAsync(ListMemberAccountsRequest, cb)
	assert(ListMemberAccountsRequest, "You must provide a ListMemberAccountsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MacieService.ListMemberAccounts",
	}
	for header,value in pairs(ListMemberAccountsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListMemberAccountsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListMemberAccounts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListMemberAccountsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListMemberAccountsSync(ListMemberAccountsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMemberAccountsAsync(ListMemberAccountsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateS3Resources asynchronously, invoking a callback when done
-- @param AssociateS3ResourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateS3ResourcesAsync(AssociateS3ResourcesRequest, cb)
	assert(AssociateS3ResourcesRequest, "You must provide a AssociateS3ResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "MacieService.AssociateS3Resources",
	}
	for header,value in pairs(AssociateS3ResourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateS3ResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateS3Resources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateS3ResourcesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateS3ResourcesSync(AssociateS3ResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateS3ResourcesAsync(AssociateS3ResourcesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
