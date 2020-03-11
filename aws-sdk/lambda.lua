--- GENERATED CODE - DO NOT MODIFY
-- AWS Lambda (lambda-2015-03-31)

local M = {}

M.metadata = {
	api_version = "2015-03-31",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "lambda",
	service_abbreviation = "",
	service_full_name = "AWS Lambda",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "lambda-2015-03-31",
}

local keys = {}
local asserts = {}

keys.ListTagsRequest = { ["Resource"] = true, nil }

function asserts.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	if struct["Resource"] then asserts.AssertFunctionArn(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsRequest[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Resource [FunctionArn] <p>The ARN (Amazon Resource Name) of the function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/tagging.html">Tagging Lambda Functions</a> in the <b>AWS Lambda Developer Guide</b>.</p>
-- Required key: Resource
-- @return ListTagsRequest structure as a key-value pair table
function M.ListTagsRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ARN}"] = args["Resource"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Resource"] = args["Resource"],
	}
	asserts.AssertListTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAliasesResponse = { ["NextMarker"] = true, ["Aliases"] = true, nil }

function asserts.AssertListAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertString(struct["NextMarker"]) end
	if struct["Aliases"] then asserts.AssertAliasList(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesResponse[k], "ListAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [String] <p>A string, present if there are more aliases.</p>
-- * Aliases [AliasList] <p>A list of aliases.</p>
-- @return ListAliasesResponse structure as a key-value pair table
function M.ListAliasesResponse(args)
	assert(args, "You must provide an argument table when creating ListAliasesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Aliases"] = args["Aliases"],
	}
	asserts.AssertListAliasesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListVersionsByFunctionRequest = { ["Marker"] = true, ["FunctionName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListVersionsByFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVersionsByFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["FunctionName"] then asserts.AssertNamespacedFunctionName(struct["FunctionName"]) end
	if struct["MaxItems"] then asserts.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVersionsByFunctionRequest[k], "ListVersionsByFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVersionsByFunctionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> Optional string. An opaque pagination token returned from a previous <code>ListVersionsByFunction</code> operation. If present, indicates where to continue the listing. </p>
-- * FunctionName [NamespacedFunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * MaxItems [MaxListItems] <p>Optional integer. Specifies the maximum number of AWS Lambda function versions to return in response. This parameter value must be greater than 0.</p>
-- Required key: FunctionName
-- @return ListVersionsByFunctionRequest structure as a key-value pair table
function M.ListVersionsByFunctionRequest(args)
	assert(args, "You must provide an argument table when creating ListVersionsByFunctionRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["FunctionName"] = args["FunctionName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListVersionsByFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAliasRequest = { ["Description"] = true, ["RevisionId"] = true, ["FunctionVersion"] = true, ["Name"] = true, ["RoutingConfig"] = true, ["FunctionName"] = true, nil }

function asserts.AssertUpdateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["RevisionId"] then asserts.AssertString(struct["RevisionId"]) end
	if struct["FunctionVersion"] then asserts.AssertVersion(struct["FunctionVersion"]) end
	if struct["Name"] then asserts.AssertAlias(struct["Name"]) end
	if struct["RoutingConfig"] then asserts.AssertAliasRoutingConfiguration(struct["RoutingConfig"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAliasRequest[k], "UpdateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [Description] <p>You can change the description of the alias using this parameter.</p>
-- * RevisionId [String] <p>An optional value you can use to ensure you are updating the latest update of the function version or alias. If the <code>RevisionID</code> you pass doesn't match the latest <code>RevisionId</code> of the function or alias, it will fail with an error message, advising you retrieve the latest function version or alias <code>RevisionID</code> using either <a>GetFunction</a> or <a>GetAlias</a>.</p>
-- * FunctionVersion [Version] <p>Using this parameter you can change the Lambda function version to which the alias points.</p>
-- * Name [Alias] <p>The alias name.</p>
-- * RoutingConfig [AliasRoutingConfiguration] <p>Specifies an additional version your alias can point to, allowing you to dictate what percentage of traffic will invoke each version. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">Traffic Shifting Using Aliases</a>.</p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- Required key: FunctionName
-- Required key: Name
-- @return UpdateAliasRequest structure as a key-value pair table
function M.UpdateAliasRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Name}"] = args["Name"],
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["RevisionId"] = args["RevisionId"],
		["FunctionVersion"] = args["FunctionVersion"],
		["Name"] = args["Name"],
		["RoutingConfig"] = args["RoutingConfig"],
		["FunctionName"] = args["FunctionName"],
	}
	asserts.AssertUpdateAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvokeAsyncRequest = { ["FunctionName"] = true, ["InvokeArgs"] = true, nil }

function asserts.AssertInvokeAsyncRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvokeAsyncRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["InvokeArgs"], "Expected key InvokeArgs to exist in table")
	if struct["FunctionName"] then asserts.AssertNamespacedFunctionName(struct["FunctionName"]) end
	if struct["InvokeArgs"] then asserts.AssertBlobStream(struct["InvokeArgs"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvokeAsyncRequest[k], "InvokeAsyncRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvokeAsyncRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [NamespacedFunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * InvokeArgs [BlobStream] <p>JSON that you want to provide to your Lambda function as input.</p>
-- Required key: FunctionName
-- Required key: InvokeArgs
-- @return InvokeAsyncRequest structure as a key-value pair table
function M.InvokeAsyncRequest(args)
	assert(args, "You must provide an argument table when creating InvokeAsyncRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["InvokeArgs"] = args["InvokeArgs"],
	}
	asserts.AssertInvokeAsyncRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TracingConfig = { ["Mode"] = true, nil }

function asserts.AssertTracingConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TracingConfig to be of type 'table'")
	if struct["Mode"] then asserts.AssertTracingMode(struct["Mode"]) end
	for k,_ in pairs(struct) do
		assert(keys.TracingConfig[k], "TracingConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TracingConfig
-- <p>The function's AWS X-Ray tracing configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Mode [TracingMode] <p>The tracing mode.</p>
-- @return TracingConfig structure as a key-value pair table
function M.TracingConfig(args)
	assert(args, "You must provide an argument table when creating TracingConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Mode"] = args["Mode"],
	}
	asserts.AssertTracingConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListVersionsByFunctionResponse = { ["NextMarker"] = true, ["Versions"] = true, nil }

function asserts.AssertListVersionsByFunctionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVersionsByFunctionResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertString(struct["NextMarker"]) end
	if struct["Versions"] then asserts.AssertFunctionList(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVersionsByFunctionResponse[k], "ListVersionsByFunctionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVersionsByFunctionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [String] <p>A string, present if there are more function versions.</p>
-- * Versions [FunctionList] <p>A list of Lambda function versions.</p>
-- @return ListVersionsByFunctionResponse structure as a key-value pair table
function M.ListVersionsByFunctionResponse(args)
	assert(args, "You must provide an argument table when creating ListVersionsByFunctionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListVersionsByFunctionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AliasRoutingConfiguration = { ["AdditionalVersionWeights"] = true, nil }

function asserts.AssertAliasRoutingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasRoutingConfiguration to be of type 'table'")
	if struct["AdditionalVersionWeights"] then asserts.AssertAdditionalVersionWeights(struct["AdditionalVersionWeights"]) end
	for k,_ in pairs(struct) do
		assert(keys.AliasRoutingConfiguration[k], "AliasRoutingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasRoutingConfiguration
-- <p>The alias's <a href="http://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">traffic shifting</a> configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AdditionalVersionWeights [AdditionalVersionWeights] <p>The name of the second alias, and the percentage of traffic that is routed to it.</p>
-- @return AliasRoutingConfiguration structure as a key-value pair table
function M.AliasRoutingConfiguration(args)
	assert(args, "You must provide an argument table when creating AliasRoutingConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AdditionalVersionWeights"] = args["AdditionalVersionWeights"],
	}
	asserts.AssertAliasRoutingConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEventSourceMappingsRequest = { ["Marker"] = true, ["EventSourceArn"] = true, ["FunctionName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListEventSourceMappingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEventSourceMappingsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["EventSourceArn"] then asserts.AssertArn(struct["EventSourceArn"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["MaxItems"] then asserts.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEventSourceMappingsRequest[k], "ListEventSourceMappingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEventSourceMappingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Optional string. An opaque pagination token returned from a previous <code>ListEventSourceMappings</code> operation. If present, specifies to continue the list from where the returning call left off. </p>
-- * EventSourceArn [Arn] <p>The Amazon Resource Name (ARN) of the Amazon Kinesis or DynamoDB stream. (This parameter is optional.)</p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * MaxItems [MaxListItems] <p>Optional integer. Specifies the maximum number of event sources to return in response. This value must be greater than 0.</p>
-- @return ListEventSourceMappingsRequest structure as a key-value pair table
function M.ListEventSourceMappingsRequest(args)
	assert(args, "You must provide an argument table when creating ListEventSourceMappingsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["EventSourceArn"] = args["EventSourceArn"],
        ["FunctionName"] = args["FunctionName"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["EventSourceArn"] = args["EventSourceArn"],
		["FunctionName"] = args["FunctionName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListEventSourceMappingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountUsage = { ["FunctionCount"] = true, ["TotalCodeSize"] = true, nil }

function asserts.AssertAccountUsage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountUsage to be of type 'table'")
	if struct["FunctionCount"] then asserts.AssertLong(struct["FunctionCount"]) end
	if struct["TotalCodeSize"] then asserts.AssertLong(struct["TotalCodeSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountUsage[k], "AccountUsage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountUsage
-- <p>Provides code size usage and function count associated with the current account and region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionCount [Long] <p>The number of your account's existing functions per region.</p>
-- * TotalCodeSize [Long] <p>Total size, in bytes, of the account's deployment packages per region.</p>
-- @return AccountUsage structure as a key-value pair table
function M.AccountUsage(args)
	assert(args, "You must provide an argument table when creating AccountUsage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionCount"] = args["FunctionCount"],
		["TotalCodeSize"] = args["TotalCodeSize"],
	}
	asserts.AssertAccountUsage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFunctionRequest = { ["FunctionName"] = true, ["Qualifier"] = true, nil }

function asserts.AssertDeleteFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFunctionRequest[k], "DeleteFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFunctionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Qualifier [Qualifier] <p>Specify a version to delete. You cannot delete a version that is referenced by an alias.</p>
-- Required key: FunctionName
-- @return DeleteFunctionRequest structure as a key-value pair table
function M.DeleteFunctionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFunctionRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertDeleteFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFunctionRequest = { ["FunctionName"] = true, ["Qualifier"] = true, nil }

function asserts.AssertGetFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertNamespacedFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFunctionRequest[k], "GetFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [NamespacedFunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Qualifier [Qualifier] <p>Specify a version or alias to get details about a published version of the function.</p>
-- Required key: FunctionName
-- @return GetFunctionRequest structure as a key-value pair table
function M.GetFunctionRequest(args)
	assert(args, "You must provide an argument table when creating GetFunctionRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertGetFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PublishVersionRequest = { ["RevisionId"] = true, ["CodeSha256"] = true, ["FunctionName"] = true, ["Description"] = true, nil }

function asserts.AssertPublishVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishVersionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["RevisionId"] then asserts.AssertString(struct["RevisionId"]) end
	if struct["CodeSha256"] then asserts.AssertString(struct["CodeSha256"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublishVersionRequest[k], "PublishVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RevisionId [String] <p>An optional value you can use to ensure you are updating the latest update of the function version or alias. If the <code>RevisionID</code> you pass doesn't match the latest <code>RevisionId</code> of the function or alias, it will fail with an error message, advising you retrieve the latest function version or alias <code>RevisionID</code> using either <a>GetFunction</a> or <a>GetAlias</a>.</p>
-- * CodeSha256 [String] <p>The SHA256 hash of the deployment package you want to publish. This provides validation on the code you are publishing. If you provide this parameter, the value must match the SHA256 of the $LATEST version for the publication to succeed. You can use the <b>DryRun</b> parameter of <a>UpdateFunctionCode</a> to verify the hash value that will be returned before publishing your new version.</p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Description [Description] <p>The description for the version you are publishing. If not provided, AWS Lambda copies the description from the $LATEST version.</p>
-- Required key: FunctionName
-- @return PublishVersionRequest structure as a key-value pair table
function M.PublishVersionRequest(args)
	assert(args, "You must provide an argument table when creating PublishVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["RevisionId"] = args["RevisionId"],
		["CodeSha256"] = args["CodeSha256"],
		["FunctionName"] = args["FunctionName"],
		["Description"] = args["Description"],
	}
	asserts.AssertPublishVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAliasRequest = { ["FunctionName"] = true, ["Name"] = true, nil }

function asserts.AssertDeleteAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Name"] then asserts.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAliasRequest[k], "DeleteAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Name [Alias] <p>Name of the alias to delete.</p>
-- Required key: FunctionName
-- Required key: Name
-- @return DeleteAliasRequest structure as a key-value pair table
function M.DeleteAliasRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
        ["{Name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvocationRequest = { ["FunctionName"] = true, ["InvocationType"] = true, ["LogType"] = true, ["ClientContext"] = true, ["Payload"] = true, ["Qualifier"] = true, nil }

function asserts.AssertInvocationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvocationRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertNamespacedFunctionName(struct["FunctionName"]) end
	if struct["InvocationType"] then asserts.AssertInvocationType(struct["InvocationType"]) end
	if struct["LogType"] then asserts.AssertLogType(struct["LogType"]) end
	if struct["ClientContext"] then asserts.AssertString(struct["ClientContext"]) end
	if struct["Payload"] then asserts.AssertBlob(struct["Payload"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvocationRequest[k], "InvocationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvocationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [NamespacedFunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * InvocationType [InvocationType] <p>Choose from the following options.</p> <ul> <li> <p> <code>RequestResponse</code> (default) - Invoke the function synchronously. Keep the connection open until the function returns a response or times out.</p> </li> <li> <p> <code>Event</code> - Invoke the function asynchronously. Send events that fail multiple times to the function's dead-letter queue (if configured).</p> </li> <li> <p> <code>DryRun</code> - Validate parameter values and verify that the user or role has permission to invoke the function.</p> </li> </ul>
-- * LogType [LogType] <p>You can set this optional parameter to <code>Tail</code> in the request only if you specify the <code>InvocationType</code> parameter with value <code>RequestResponse</code>. In this case, AWS Lambda returns the base64-encoded last 4 KB of log data produced by your Lambda function in the <code>x-amz-log-result</code> header. </p>
-- * ClientContext [String] <p>Using the <code>ClientContext</code> you can pass client-specific information to the Lambda function you are invoking. You can then process the client information in your Lambda function as you choose through the context variable. For an example of a <code>ClientContext</code> JSON, see <a href="http://docs.aws.amazon.com/mobileanalytics/latest/ug/PutEvents.html">PutEvents</a> in the <i>Amazon Mobile Analytics API Reference and User Guide</i>.</p> <p>The ClientContext JSON must be base64-encoded and has a maximum size of 3583 bytes.</p> <note> <p> <code>ClientContext</code> information is returned only if you use the synchronous (<code>RequestResponse</code>) invocation type.</p> </note>
-- * Payload [Blob] <p>JSON that you want to provide to your Lambda function as input.</p>
-- * Qualifier [Qualifier] <p>Specify a version or alias to invoke a published version of the function.</p>
-- Required key: FunctionName
-- @return InvocationRequest structure as a key-value pair table
function M.InvocationRequest(args)
	assert(args, "You must provide an argument table when creating InvocationRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
        ["X-Amz-Invocation-Type"] = args["InvocationType"],
        ["X-Amz-Log-Type"] = args["LogType"],
        ["X-Amz-Client-Context"] = args["ClientContext"],
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["InvocationType"] = args["InvocationType"],
		["LogType"] = args["LogType"],
		["ClientContext"] = args["ClientContext"],
		["Payload"] = args["Payload"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertInvocationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAliasRequest = { ["FunctionName"] = true, ["Name"] = true, nil }

function asserts.AssertGetAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Name"] then asserts.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAliasRequest[k], "GetAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Name [Alias] <p>Name of the alias for which you want to retrieve information.</p>
-- Required key: FunctionName
-- Required key: Name
-- @return GetAliasRequest structure as a key-value pair table
function M.GetAliasRequest(args)
	assert(args, "You must provide an argument table when creating GetAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
        ["{Name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Name"] = args["Name"],
	}
	asserts.AssertGetAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFunctionCodeRequest = { ["DryRun"] = true, ["FunctionName"] = true, ["RevisionId"] = true, ["ZipFile"] = true, ["Publish"] = true, ["S3Bucket"] = true, ["S3Key"] = true, ["S3ObjectVersion"] = true, nil }

function asserts.AssertUpdateFunctionCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFunctionCodeRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["DryRun"] then asserts.AssertBoolean(struct["DryRun"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["RevisionId"] then asserts.AssertString(struct["RevisionId"]) end
	if struct["ZipFile"] then asserts.AssertBlob(struct["ZipFile"]) end
	if struct["Publish"] then asserts.AssertBoolean(struct["Publish"]) end
	if struct["S3Bucket"] then asserts.AssertS3Bucket(struct["S3Bucket"]) end
	if struct["S3Key"] then asserts.AssertS3Key(struct["S3Key"]) end
	if struct["S3ObjectVersion"] then asserts.AssertS3ObjectVersion(struct["S3ObjectVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFunctionCodeRequest[k], "UpdateFunctionCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFunctionCodeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DryRun [Boolean] <p>This boolean parameter can be used to test your request to AWS Lambda to update the Lambda function and publish a version as an atomic operation. It will do all necessary computation and validation of your code but will not upload it or a publish a version. Each time this operation is invoked, the <code>CodeSha256</code> hash value of the provided code will also be computed and returned in the response.</p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * RevisionId [String] <p>An optional value you can use to ensure you are updating the latest update of the function version or alias. If the <code>RevisionID</code> you pass doesn't match the latest <code>RevisionId</code> of the function or alias, it will fail with an error message, advising you to retrieve the latest function version or alias <code>RevisionID</code> using either using using either <a>GetFunction</a> or <a>GetAlias</a>.</p>
-- * ZipFile [Blob] <p>The contents of your zip file containing your deployment package. If you are using the web API directly, the contents of the zip file must be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the SDKs or CLI will do the encoding for you. For more information about creating a .zip file, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html">Execution Permissions</a>. </p>
-- * Publish [Boolean] <p>This boolean parameter can be used to request AWS Lambda to update the Lambda function and publish a version as an atomic operation.</p>
-- * S3Bucket [S3Bucket] <p>Amazon S3 bucket name where the .zip file containing your deployment package is stored. This bucket must reside in the same AWS Region where you are creating the Lambda function.</p>
-- * S3Key [S3Key] <p>The Amazon S3 object (the deployment package) key name you want to upload.</p>
-- * S3ObjectVersion [S3ObjectVersion] <p>The Amazon S3 object (the deployment package) version you want to upload.</p>
-- Required key: FunctionName
-- @return UpdateFunctionCodeRequest structure as a key-value pair table
function M.UpdateFunctionCodeRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFunctionCodeRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DryRun"] = args["DryRun"],
		["FunctionName"] = args["FunctionName"],
		["RevisionId"] = args["RevisionId"],
		["ZipFile"] = args["ZipFile"],
		["Publish"] = args["Publish"],
		["S3Bucket"] = args["S3Bucket"],
		["S3Key"] = args["S3Key"],
		["S3ObjectVersion"] = args["S3ObjectVersion"],
	}
	asserts.AssertUpdateFunctionCodeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateFunctionConfigurationRequest = { ["TracingConfig"] = true, ["DeadLetterConfig"] = true, ["FunctionName"] = true, ["VpcConfig"] = true, ["KMSKeyArn"] = true, ["RevisionId"] = true, ["MemorySize"] = true, ["Environment"] = true, ["Handler"] = true, ["Role"] = true, ["Timeout"] = true, ["Runtime"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateFunctionConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFunctionConfigurationRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["TracingConfig"] then asserts.AssertTracingConfig(struct["TracingConfig"]) end
	if struct["DeadLetterConfig"] then asserts.AssertDeadLetterConfig(struct["DeadLetterConfig"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["KMSKeyArn"] then asserts.AssertKMSKeyArn(struct["KMSKeyArn"]) end
	if struct["RevisionId"] then asserts.AssertString(struct["RevisionId"]) end
	if struct["MemorySize"] then asserts.AssertMemorySize(struct["MemorySize"]) end
	if struct["Environment"] then asserts.AssertEnvironment(struct["Environment"]) end
	if struct["Handler"] then asserts.AssertHandler(struct["Handler"]) end
	if struct["Role"] then asserts.AssertRoleArn(struct["Role"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["Runtime"] then asserts.AssertRuntime(struct["Runtime"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFunctionConfigurationRequest[k], "UpdateFunctionConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFunctionConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TracingConfig [TracingConfig] <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with AWS X-Ray.</p>
-- * DeadLetterConfig [DeadLetterConfig] <p>A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/dlq.html">Dead Letter Queues</a>.</p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * VpcConfig [VpcConfig] <p>Specify security groups and subnets in a VPC to which your Lambda function needs access.</p>
-- * KMSKeyArn [KMSKeyArn] <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If you elect to use the AWS Lambda default service key, pass in an empty string ("") for this parameter.</p>
-- * RevisionId [String] <p>An optional value you can use to ensure you are updating the latest update of the function version or alias. If the <code>RevisionID</code> you pass doesn't match the latest <code>RevisionId</code> of the function or alias, it will fail with an error message, advising you to retrieve the latest function version or alias <code>RevisionID</code> using either <a>GetFunction</a> or <a>GetAlias</a>.</p>
-- * MemorySize [MemorySize] <p>The amount of memory, in MB, your Lambda function is given. AWS Lambda uses this memory size to infer the amount of CPU allocated to your function. Your function use-case determines your CPU and memory requirements. For example, a database operation might need less memory compared to an image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.</p>
-- * Environment [Environment] <p>The parent object that contains your environment's configuration settings.</p>
-- * Handler [Handler] <p>The function that Lambda calls to begin executing your function. For Node.js, it is the <code>module-name.export</code> value in your function. </p>
-- * Role [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role that Lambda will assume when it executes your function.</p>
-- * Timeout [Timeout] <p>The amount of time that Lambda allows a function to run before terminating it. The default is 3 seconds. The maximum allowed value is 900 seconds.</p>
-- * Runtime [Runtime] <p>The runtime version for the function.</p>
-- * Description [Description] <p>A short user-defined function description. AWS Lambda does not use this value. Assign a meaningful description as you see fit.</p>
-- Required key: FunctionName
-- @return UpdateFunctionConfigurationRequest structure as a key-value pair table
function M.UpdateFunctionConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFunctionConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["TracingConfig"] = args["TracingConfig"],
		["DeadLetterConfig"] = args["DeadLetterConfig"],
		["FunctionName"] = args["FunctionName"],
		["VpcConfig"] = args["VpcConfig"],
		["KMSKeyArn"] = args["KMSKeyArn"],
		["RevisionId"] = args["RevisionId"],
		["MemorySize"] = args["MemorySize"],
		["Environment"] = args["Environment"],
		["Handler"] = args["Handler"],
		["Role"] = args["Role"],
		["Timeout"] = args["Timeout"],
		["Runtime"] = args["Runtime"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateFunctionConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AliasConfiguration = { ["Name"] = true, ["AliasArn"] = true, ["RevisionId"] = true, ["FunctionVersion"] = true, ["RoutingConfig"] = true, ["Description"] = true, nil }

function asserts.AssertAliasConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasConfiguration to be of type 'table'")
	if struct["Name"] then asserts.AssertAlias(struct["Name"]) end
	if struct["AliasArn"] then asserts.AssertFunctionArn(struct["AliasArn"]) end
	if struct["RevisionId"] then asserts.AssertString(struct["RevisionId"]) end
	if struct["FunctionVersion"] then asserts.AssertVersion(struct["FunctionVersion"]) end
	if struct["RoutingConfig"] then asserts.AssertAliasRoutingConfiguration(struct["RoutingConfig"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.AliasConfiguration[k], "AliasConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasConfiguration
-- <p>Provides configuration information about a Lambda function version alias.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [Alias] <p>Alias name.</p>
-- * AliasArn [FunctionArn] <p>Lambda function ARN that is qualified using the alias name as the suffix. For example, if you create an alias called <code>BETA</code> that points to a helloworld function version, the ARN is <code>arn:aws:lambda:aws-regions:acct-id:function:helloworld:BETA</code>.</p>
-- * RevisionId [String] <p>Represents the latest updated revision of the function or alias.</p>
-- * FunctionVersion [Version] <p>Function version to which the alias points.</p>
-- * RoutingConfig [AliasRoutingConfiguration] <p>Specifies an additional function versions the alias points to, allowing you to dictate what percentage of traffic will invoke each version.</p>
-- * Description [Description] <p>Alias description.</p>
-- @return AliasConfiguration structure as a key-value pair table
function M.AliasConfiguration(args)
	assert(args, "You must provide an argument table when creating AliasConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["AliasArn"] = args["AliasArn"],
		["RevisionId"] = args["RevisionId"],
		["FunctionVersion"] = args["FunctionVersion"],
		["RoutingConfig"] = args["RoutingConfig"],
		["Description"] = args["Description"],
	}
	asserts.AssertAliasConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountSettingsResponse = { ["AccountLimit"] = true, ["AccountUsage"] = true, nil }

function asserts.AssertGetAccountSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsResponse to be of type 'table'")
	if struct["AccountLimit"] then asserts.AssertAccountLimit(struct["AccountLimit"]) end
	if struct["AccountUsage"] then asserts.AssertAccountUsage(struct["AccountUsage"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountSettingsResponse[k], "GetAccountSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountLimit [AccountLimit] <p>Limits related to concurrency and code storage.</p>
-- * AccountUsage [AccountUsage] <p>The number of functions and amount of storage in use.</p>
-- @return GetAccountSettingsResponse structure as a key-value pair table
function M.GetAccountSettingsResponse(args)
	assert(args, "You must provide an argument table when creating GetAccountSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountLimit"] = args["AccountLimit"],
		["AccountUsage"] = args["AccountUsage"],
	}
	asserts.AssertGetAccountSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcConfigResponse = { ["SubnetIds"] = true, ["VpcId"] = true, ["SecurityGroupIds"] = true, nil }

function asserts.AssertVpcConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfigResponse to be of type 'table'")
	if struct["SubnetIds"] then asserts.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIds(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcConfigResponse[k], "VpcConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfigResponse
-- <p>The VPC security groups and subnets attached to a Lambda function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIds] <p>A list of VPC subnet IDs.</p>
-- * VpcId [VpcId] <p>The ID of the VPC.</p>
-- * SecurityGroupIds [SecurityGroupIds] <p>A list of VPC security groups IDs.</p>
-- @return VpcConfigResponse structure as a key-value pair table
function M.VpcConfigResponse(args)
	assert(args, "You must provide an argument table when creating VpcConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["VpcId"] = args["VpcId"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
	}
	asserts.AssertVpcConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvocationResponse = { ["LogResult"] = true, ["FunctionError"] = true, ["Payload"] = true, ["ExecutedVersion"] = true, ["StatusCode"] = true, nil }

function asserts.AssertInvocationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvocationResponse to be of type 'table'")
	if struct["LogResult"] then asserts.AssertString(struct["LogResult"]) end
	if struct["FunctionError"] then asserts.AssertString(struct["FunctionError"]) end
	if struct["Payload"] then asserts.AssertBlob(struct["Payload"]) end
	if struct["ExecutedVersion"] then asserts.AssertVersion(struct["ExecutedVersion"]) end
	if struct["StatusCode"] then asserts.AssertInteger(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvocationResponse[k], "InvocationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvocationResponse
-- <p>Upon success, returns an empty response. Otherwise, throws an exception.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LogResult [String] <p> It is the base64-encoded logs for the Lambda function invocation. This is present only if the invocation type is <code>RequestResponse</code> and the logs were requested. </p>
-- * FunctionError [String] <p>Indicates whether an error occurred while executing the Lambda function. If an error occurred this field will have one of two values; <code>Handled</code> or <code>Unhandled</code>. <code>Handled</code> errors are errors that are reported by the function while the <code>Unhandled</code> errors are those detected and reported by AWS Lambda. Unhandled errors include out of memory errors and function timeouts. For information about how to report an <code>Handled</code> error, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/programming-model.html">Programming Model</a>. </p>
-- * Payload [Blob] <p> It is the JSON representation of the object returned by the Lambda function. This is present only if the invocation type is <code>RequestResponse</code>. </p> <p>In the event of a function error this field contains a message describing the error. For the <code>Handled</code> errors the Lambda function will report this message. For <code>Unhandled</code> errors AWS Lambda reports the message. </p>
-- * ExecutedVersion [Version] <p>The function version that has been executed. This value is returned only if the invocation type is <code>RequestResponse</code>. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">Traffic Shifting Using Aliases</a>.</p>
-- * StatusCode [Integer] <p>The HTTP status code will be in the 200 range for successful request. For the <code>RequestResponse</code> invocation type this status code will be 200. For the <code>Event</code> invocation type this status code will be 202. For the <code>DryRun</code> invocation type the status code will be 204. </p>
-- @return InvocationResponse structure as a key-value pair table
function M.InvocationResponse(args)
	assert(args, "You must provide an argument table when creating InvocationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["X-Amz-Log-Result"] = args["LogResult"],
        ["X-Amz-Function-Error"] = args["FunctionError"],
        ["X-Amz-Executed-Version"] = args["ExecutedVersion"],
    }
	local all_args = { 
		["LogResult"] = args["LogResult"],
		["FunctionError"] = args["FunctionError"],
		["Payload"] = args["Payload"],
		["ExecutedVersion"] = args["ExecutedVersion"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertInvocationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEventSourceMappingRequest = { ["FunctionName"] = true, ["StartingPositionTimestamp"] = true, ["BatchSize"] = true, ["Enabled"] = true, ["EventSourceArn"] = true, ["StartingPosition"] = true, nil }

function asserts.AssertCreateEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSourceMappingRequest to be of type 'table'")
	assert(struct["EventSourceArn"], "Expected key EventSourceArn to exist in table")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["StartingPositionTimestamp"] then asserts.AssertDate(struct["StartingPositionTimestamp"]) end
	if struct["BatchSize"] then asserts.AssertBatchSize(struct["BatchSize"]) end
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	if struct["EventSourceArn"] then asserts.AssertArn(struct["EventSourceArn"]) end
	if struct["StartingPosition"] then asserts.AssertEventSourcePosition(struct["StartingPosition"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEventSourceMappingRequest[k], "CreateEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSourceMappingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * StartingPositionTimestamp [Date] <p>The timestamp of the data record from which to start reading. Used with <a href="http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType">shard iterator type</a> AT_TIMESTAMP. If a record with this exact timestamp does not exist, the iterator returned is for the next (later) record. If the timestamp is older than the current trim horizon, the iterator returned is for the oldest untrimmed data record (TRIM_HORIZON). Valid only for <a href="http://docs.aws.amazon.com/streams/latest/dev/amazon-kinesis-streams.html">Kinesis streams</a>. </p>
-- * BatchSize [BatchSize] <p>The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Your function receives an event with all the retrieved records. The default for Amazon Kinesis and Amazon DynamoDB is 100 records. Both the default and maximum for Amazon SQS are 10 messages.</p>
-- * Enabled [Enabled] <p>Set to false to disable the event source upon creation. </p>
-- * EventSourceArn [Arn] <p>The Amazon Resource Name (ARN) of the event source.</p>
-- * StartingPosition [EventSourcePosition] <p>The position in the DynamoDB or Kinesis stream where AWS Lambda should start reading. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType">GetShardIterator</a> in the <i>Amazon Kinesis API Reference Guide</i> or <a href="http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_streams_GetShardIterator.html">GetShardIterator</a> in the <i>Amazon DynamoDB API Reference Guide</i>. The <code>AT_TIMESTAMP</code> value is supported only for <a href="http://docs.aws.amazon.com/streams/latest/dev/amazon-kinesis-streams.html">Kinesis streams</a>. </p>
-- Required key: EventSourceArn
-- Required key: FunctionName
-- @return CreateEventSourceMappingRequest structure as a key-value pair table
function M.CreateEventSourceMappingRequest(args)
	assert(args, "You must provide an argument table when creating CreateEventSourceMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["StartingPositionTimestamp"] = args["StartingPositionTimestamp"],
		["BatchSize"] = args["BatchSize"],
		["Enabled"] = args["Enabled"],
		["EventSourceArn"] = args["EventSourceArn"],
		["StartingPosition"] = args["StartingPosition"],
	}
	asserts.AssertCreateEventSourceMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemovePermissionRequest = { ["RevisionId"] = true, ["StatementId"] = true, ["FunctionName"] = true, ["Qualifier"] = true, nil }

function asserts.AssertRemovePermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemovePermissionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["StatementId"], "Expected key StatementId to exist in table")
	if struct["RevisionId"] then asserts.AssertString(struct["RevisionId"]) end
	if struct["StatementId"] then asserts.AssertNamespacedStatementId(struct["StatementId"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemovePermissionRequest[k], "RemovePermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemovePermissionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RevisionId [String] <p>An optional value you can use to ensure you are updating the latest update of the function version or alias. If the <code>RevisionID</code> you pass doesn't match the latest <code>RevisionId</code> of the function or alias, it will fail with an error message, advising you to retrieve the latest function version or alias <code>RevisionID</code> using either <a>GetFunction</a> or <a>GetAlias</a>.</p>
-- * StatementId [NamespacedStatementId] <p>Statement ID of the permission to remove.</p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Qualifier [Qualifier] <p>Specify a version or alias to remove permissions from a published version of the function.</p>
-- Required key: FunctionName
-- Required key: StatementId
-- @return RemovePermissionRequest structure as a key-value pair table
function M.RemovePermissionRequest(args)
	assert(args, "You must provide an argument table when creating RemovePermissionRequest")
    local query_args = { 
        ["RevisionId"] = args["RevisionId"],
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{StatementId}"] = args["StatementId"],
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["RevisionId"] = args["RevisionId"],
		["StatementId"] = args["StatementId"],
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertRemovePermissionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFunctionsRequest = { ["Marker"] = true, ["MasterRegion"] = true, ["FunctionVersion"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListFunctionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MasterRegion"] then asserts.AssertMasterRegion(struct["MasterRegion"]) end
	if struct["FunctionVersion"] then asserts.AssertFunctionVersion(struct["FunctionVersion"]) end
	if struct["MaxItems"] then asserts.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFunctionsRequest[k], "ListFunctionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Optional string. An opaque pagination token returned from a previous <code>ListFunctions</code> operation. If present, indicates where to continue the listing. </p>
-- * MasterRegion [MasterRegion] <p>Specify a region (e.g. <code>us-east-2</code>) to only list functions that were created in that region, or <code>ALL</code> to include functions replicated from any region. If specified, you also must specify the <code>FunctionVersion</code>.</p>
-- * FunctionVersion [FunctionVersion] <p>Set to <code>ALL</code> to list all published versions. If not specified, only the latest unpublished version ARN is returned.</p>
-- * MaxItems [MaxListItems] <p>Optional integer. Specifies the maximum number of AWS Lambda functions to return in response. This parameter value must be greater than 0. The absolute maximum of AWS Lambda functions that can be returned is 50.</p>
-- @return ListFunctionsRequest structure as a key-value pair table
function M.ListFunctionsRequest(args)
	assert(args, "You must provide an argument table when creating ListFunctionsRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["MasterRegion"] = args["MasterRegion"],
        ["FunctionVersion"] = args["FunctionVersion"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MasterRegion"] = args["MasterRegion"],
		["FunctionVersion"] = args["FunctionVersion"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListFunctionsRequest(all_args)
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
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["Resource"] then asserts.AssertFunctionArn(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKeys [TagKeyList] <p>The list of tag keys to be deleted from the function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/tagging.html">Tagging Lambda Functions</a> in the <b>AWS Lambda Developer Guide</b>.</p>
-- * Resource [FunctionArn] <p>The ARN (Amazon Resource Name) of the function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/tagging.html">Tagging Lambda Functions</a> in the <b>AWS Lambda Developer Guide</b>.</p>
-- Required key: Resource
-- Required key: TagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
        ["tagKeys"] = args["TagKeys"],
    }
    local uri_args = { 
        ["{ARN}"] = args["Resource"],
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

keys.PutFunctionConcurrencyRequest = { ["ReservedConcurrentExecutions"] = true, ["FunctionName"] = true, nil }

function asserts.AssertPutFunctionConcurrencyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutFunctionConcurrencyRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["ReservedConcurrentExecutions"], "Expected key ReservedConcurrentExecutions to exist in table")
	if struct["ReservedConcurrentExecutions"] then asserts.AssertReservedConcurrentExecutions(struct["ReservedConcurrentExecutions"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutFunctionConcurrencyRequest[k], "PutFunctionConcurrencyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutFunctionConcurrencyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservedConcurrentExecutions [ReservedConcurrentExecutions] <p>The concurrent execution limit reserved for this function.</p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- Required key: FunctionName
-- Required key: ReservedConcurrentExecutions
-- @return PutFunctionConcurrencyRequest structure as a key-value pair table
function M.PutFunctionConcurrencyRequest(args)
	assert(args, "You must provide an argument table when creating PutFunctionConcurrencyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservedConcurrentExecutions"] = args["ReservedConcurrentExecutions"],
		["FunctionName"] = args["FunctionName"],
	}
	asserts.AssertPutFunctionConcurrencyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateFunctionRequest = { ["TracingConfig"] = true, ["Code"] = true, ["DeadLetterConfig"] = true, ["FunctionName"] = true, ["VpcConfig"] = true, ["Tags"] = true, ["KMSKeyArn"] = true, ["MemorySize"] = true, ["Publish"] = true, ["Environment"] = true, ["Handler"] = true, ["Role"] = true, ["Timeout"] = true, ["Runtime"] = true, ["Description"] = true, nil }

function asserts.AssertCreateFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Runtime"], "Expected key Runtime to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["Handler"], "Expected key Handler to exist in table")
	assert(struct["Code"], "Expected key Code to exist in table")
	if struct["TracingConfig"] then asserts.AssertTracingConfig(struct["TracingConfig"]) end
	if struct["Code"] then asserts.AssertFunctionCode(struct["Code"]) end
	if struct["DeadLetterConfig"] then asserts.AssertDeadLetterConfig(struct["DeadLetterConfig"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["KMSKeyArn"] then asserts.AssertKMSKeyArn(struct["KMSKeyArn"]) end
	if struct["MemorySize"] then asserts.AssertMemorySize(struct["MemorySize"]) end
	if struct["Publish"] then asserts.AssertBoolean(struct["Publish"]) end
	if struct["Environment"] then asserts.AssertEnvironment(struct["Environment"]) end
	if struct["Handler"] then asserts.AssertHandler(struct["Handler"]) end
	if struct["Role"] then asserts.AssertRoleArn(struct["Role"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["Runtime"] then asserts.AssertRuntime(struct["Runtime"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFunctionRequest[k], "CreateFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TracingConfig [TracingConfig] <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with AWS X-Ray.</p>
-- * Code [FunctionCode] <p>The code for the function.</p>
-- * DeadLetterConfig [DeadLetterConfig] <p>A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/dlq.html">Dead Letter Queues</a>. </p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * VpcConfig [VpcConfig] <p>If your Lambda function accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and one subnet ID.</p>
-- * Tags [Tags] <p>The list of tags (key-value pairs) assigned to the new function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/tagging.html">Tagging Lambda Functions</a> in the <b>AWS Lambda Developer Guide</b>.</p>
-- * KMSKeyArn [KMSKeyArn] <p>The ARN of the KMS key used to encrypt your function's environment variables. If not provided, AWS Lambda will use a default service key.</p>
-- * MemorySize [MemorySize] <p>The amount of memory that your function has access to. Increasing the function's memory also increases it's CPU allocation. The default value is 128 MB. The value must be a multiple of 64 MB.</p>
-- * Publish [Boolean] <p>Set to true to publish the first version of the function during creation.</p>
-- * Environment [Environment] <p>Environment variables that are accessible from function code during execution.</p>
-- * Handler [Handler] <p>The name of the method within your code that Lambda calls to execute your function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html">Programming Model</a>.</p>
-- * Role [RoleArn] <p>The Amazon Resource Name (ARN) of the function's <a href="http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role">execution role</a>.</p>
-- * Timeout [Timeout] <p>The amount of time that Lambda allows a function to run before terminating it. The default is 3 seconds. The maximum allowed value is 900 seconds.</p>
-- * Runtime [Runtime] <p>The runtime version for the function.</p>
-- * Description [Description] <p>A description of the function.</p>
-- Required key: FunctionName
-- Required key: Runtime
-- Required key: Role
-- Required key: Handler
-- Required key: Code
-- @return CreateFunctionRequest structure as a key-value pair table
function M.CreateFunctionRequest(args)
	assert(args, "You must provide an argument table when creating CreateFunctionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TracingConfig"] = args["TracingConfig"],
		["Code"] = args["Code"],
		["DeadLetterConfig"] = args["DeadLetterConfig"],
		["FunctionName"] = args["FunctionName"],
		["VpcConfig"] = args["VpcConfig"],
		["Tags"] = args["Tags"],
		["KMSKeyArn"] = args["KMSKeyArn"],
		["MemorySize"] = args["MemorySize"],
		["Publish"] = args["Publish"],
		["Environment"] = args["Environment"],
		["Handler"] = args["Handler"],
		["Role"] = args["Role"],
		["Timeout"] = args["Timeout"],
		["Runtime"] = args["Runtime"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentResponse = { ["Variables"] = true, ["Error"] = true, nil }

function asserts.AssertEnvironmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentResponse to be of type 'table'")
	if struct["Variables"] then asserts.AssertEnvironmentVariables(struct["Variables"]) end
	if struct["Error"] then asserts.AssertEnvironmentError(struct["Error"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentResponse[k], "EnvironmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentResponse
-- <p>The results of a configuration update that applied environment variables.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Variables [EnvironmentVariables] <p>Environment variable key-value pairs.</p>
-- * Error [EnvironmentError] <p>Error messages for environment variables that could not be applied.</p>
-- @return EnvironmentResponse structure as a key-value pair table
function M.EnvironmentResponse(args)
	assert(args, "You must provide an argument table when creating EnvironmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Variables"] = args["Variables"],
		["Error"] = args["Error"],
	}
	asserts.AssertEnvironmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Environment = { ["Variables"] = true, nil }

function asserts.AssertEnvironment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Environment to be of type 'table'")
	if struct["Variables"] then asserts.AssertEnvironmentVariables(struct["Variables"]) end
	for k,_ in pairs(struct) do
		assert(keys.Environment[k], "Environment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Environment
-- <p>A function's environment variable settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Variables [EnvironmentVariables] <p>Environment variable key-value pairs.</p>
-- @return Environment structure as a key-value pair table
function M.Environment(args)
	assert(args, "You must provide an argument table when creating Environment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Variables"] = args["Variables"],
	}
	asserts.AssertEnvironment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FunctionConfiguration = { ["TracingConfig"] = true, ["Version"] = true, ["CodeSha256"] = true, ["FunctionName"] = true, ["VpcConfig"] = true, ["KMSKeyArn"] = true, ["MemorySize"] = true, ["RevisionId"] = true, ["CodeSize"] = true, ["MasterArn"] = true, ["FunctionArn"] = true, ["Environment"] = true, ["Handler"] = true, ["Role"] = true, ["Timeout"] = true, ["LastModified"] = true, ["DeadLetterConfig"] = true, ["Runtime"] = true, ["Description"] = true, nil }

function asserts.AssertFunctionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionConfiguration to be of type 'table'")
	if struct["TracingConfig"] then asserts.AssertTracingConfigResponse(struct["TracingConfig"]) end
	if struct["Version"] then asserts.AssertVersion(struct["Version"]) end
	if struct["CodeSha256"] then asserts.AssertString(struct["CodeSha256"]) end
	if struct["FunctionName"] then asserts.AssertNamespacedFunctionName(struct["FunctionName"]) end
	if struct["VpcConfig"] then asserts.AssertVpcConfigResponse(struct["VpcConfig"]) end
	if struct["KMSKeyArn"] then asserts.AssertKMSKeyArn(struct["KMSKeyArn"]) end
	if struct["MemorySize"] then asserts.AssertMemorySize(struct["MemorySize"]) end
	if struct["RevisionId"] then asserts.AssertString(struct["RevisionId"]) end
	if struct["CodeSize"] then asserts.AssertLong(struct["CodeSize"]) end
	if struct["MasterArn"] then asserts.AssertFunctionArn(struct["MasterArn"]) end
	if struct["FunctionArn"] then asserts.AssertNameSpacedFunctionArn(struct["FunctionArn"]) end
	if struct["Environment"] then asserts.AssertEnvironmentResponse(struct["Environment"]) end
	if struct["Handler"] then asserts.AssertHandler(struct["Handler"]) end
	if struct["Role"] then asserts.AssertRoleArn(struct["Role"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["LastModified"] then asserts.AssertTimestamp(struct["LastModified"]) end
	if struct["DeadLetterConfig"] then asserts.AssertDeadLetterConfig(struct["DeadLetterConfig"]) end
	if struct["Runtime"] then asserts.AssertRuntime(struct["Runtime"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.FunctionConfiguration[k], "FunctionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionConfiguration
-- <p>A Lambda function's configuration settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TracingConfig [TracingConfigResponse] <p>The function's AWS X-Ray tracing configuration.</p>
-- * Version [Version] <p>The version of the Lambda function.</p>
-- * CodeSha256 [String] <p>The SHA256 hash of the function's deployment package.</p>
-- * FunctionName [NamespacedFunctionName] <p>The name of the function.</p>
-- * VpcConfig [VpcConfigResponse] <p>The function's networking configuration.</p>
-- * KMSKeyArn [KMSKeyArn] <p>The KMS key used to encrypt the function's environment variables. Only returned if you've configured a customer managed CMK.</p>
-- * MemorySize [MemorySize] <p>The memory allocated to the function</p>
-- * RevisionId [String] <p>Represents the latest updated revision of the function or alias.</p>
-- * CodeSize [Long] <p>The size of the function's deployment package in bytes.</p>
-- * MasterArn [FunctionArn] <p>The ARN of the master function.</p>
-- * FunctionArn [NameSpacedFunctionArn] <p>The function's Amazon Resource Name.</p>
-- * Environment [EnvironmentResponse] <p>The function's environment variables.</p>
-- * Handler [Handler] <p>The function Lambda calls to begin executing your function.</p>
-- * Role [RoleArn] <p>The function's execution role.</p>
-- * Timeout [Timeout] <p>The amount of time that Lambda allows a function to run before terminating it.</p>
-- * LastModified [Timestamp] <p>The date and time that the function was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ssTZD).</p>
-- * DeadLetterConfig [DeadLetterConfig] <p>The function's dead letter queue.</p>
-- * Runtime [Runtime] <p>The runtime environment for the Lambda function.</p>
-- * Description [Description] <p>The function's description.</p>
-- @return FunctionConfiguration structure as a key-value pair table
function M.FunctionConfiguration(args)
	assert(args, "You must provide an argument table when creating FunctionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TracingConfig"] = args["TracingConfig"],
		["Version"] = args["Version"],
		["CodeSha256"] = args["CodeSha256"],
		["FunctionName"] = args["FunctionName"],
		["VpcConfig"] = args["VpcConfig"],
		["KMSKeyArn"] = args["KMSKeyArn"],
		["MemorySize"] = args["MemorySize"],
		["RevisionId"] = args["RevisionId"],
		["CodeSize"] = args["CodeSize"],
		["MasterArn"] = args["MasterArn"],
		["FunctionArn"] = args["FunctionArn"],
		["Environment"] = args["Environment"],
		["Handler"] = args["Handler"],
		["Role"] = args["Role"],
		["Timeout"] = args["Timeout"],
		["LastModified"] = args["LastModified"],
		["DeadLetterConfig"] = args["DeadLetterConfig"],
		["Runtime"] = args["Runtime"],
		["Description"] = args["Description"],
	}
	asserts.AssertFunctionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvokeAsyncResponse = { ["Status"] = true, nil }

function asserts.AssertInvokeAsyncResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvokeAsyncResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertHttpStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvokeAsyncResponse[k], "InvokeAsyncResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvokeAsyncResponse
-- <p>Upon success, it returns empty response. Otherwise, throws an exception.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [HttpStatus] <p>It will be 202 upon success.</p>
-- @return InvokeAsyncResponse structure as a key-value pair table
function M.InvokeAsyncResponse(args)
	assert(args, "You must provide an argument table when creating InvokeAsyncResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertInvokeAsyncResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAliasRequest = { ["Description"] = true, ["FunctionVersion"] = true, ["FunctionName"] = true, ["RoutingConfig"] = true, ["Name"] = true, nil }

function asserts.AssertCreateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["FunctionVersion"], "Expected key FunctionVersion to exist in table")
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["FunctionVersion"] then asserts.AssertVersion(struct["FunctionVersion"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["RoutingConfig"] then asserts.AssertAliasRoutingConfiguration(struct["RoutingConfig"]) end
	if struct["Name"] then asserts.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAliasRequest[k], "CreateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [Description] <p>Description of the alias.</p>
-- * FunctionVersion [Version] <p>Lambda function version for which you are creating the alias.</p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * RoutingConfig [AliasRoutingConfiguration] <p>Specifies an additional version your alias can point to, allowing you to dictate what percentage of traffic will invoke each version. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">Traffic Shifting Using Aliases</a>.</p>
-- * Name [Alias] <p>Name for the alias you are creating.</p>
-- Required key: FunctionName
-- Required key: Name
-- Required key: FunctionVersion
-- @return CreateAliasRequest structure as a key-value pair table
function M.CreateAliasRequest(args)
	assert(args, "You must provide an argument table when creating CreateAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["FunctionVersion"] = args["FunctionVersion"],
		["FunctionName"] = args["FunctionName"],
		["RoutingConfig"] = args["RoutingConfig"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEventSourceMappingRequest = { ["UUID"] = true, nil }

function asserts.AssertDeleteEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSourceMappingRequest to be of type 'table'")
	assert(struct["UUID"], "Expected key UUID to exist in table")
	if struct["UUID"] then asserts.AssertString(struct["UUID"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEventSourceMappingRequest[k], "DeleteEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSourceMappingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UUID [String] <p>The event source mapping ID.</p>
-- Required key: UUID
-- @return DeleteEventSourceMappingRequest structure as a key-value pair table
function M.DeleteEventSourceMappingRequest(args)
	assert(args, "You must provide an argument table when creating DeleteEventSourceMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{UUID}"] = args["UUID"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UUID"] = args["UUID"],
	}
	asserts.AssertDeleteEventSourceMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEventSourceMappingRequest = { ["BatchSize"] = true, ["Enabled"] = true, ["UUID"] = true, ["FunctionName"] = true, nil }

function asserts.AssertUpdateEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEventSourceMappingRequest to be of type 'table'")
	assert(struct["UUID"], "Expected key UUID to exist in table")
	if struct["BatchSize"] then asserts.AssertBatchSize(struct["BatchSize"]) end
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	if struct["UUID"] then asserts.AssertString(struct["UUID"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEventSourceMappingRequest[k], "UpdateEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEventSourceMappingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BatchSize [BatchSize] <p>The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Your function receives an event with all the retrieved records.</p>
-- * Enabled [Enabled] <p>Specifies whether AWS Lambda should actively poll the stream or not. If disabled, AWS Lambda will not poll the stream.</p>
-- * UUID [String] <p>The event source mapping identifier.</p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- Required key: UUID
-- @return UpdateEventSourceMappingRequest structure as a key-value pair table
function M.UpdateEventSourceMappingRequest(args)
	assert(args, "You must provide an argument table when creating UpdateEventSourceMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{UUID}"] = args["UUID"],
    }
    local header_args = { 
    }
	local all_args = { 
		["BatchSize"] = args["BatchSize"],
		["Enabled"] = args["Enabled"],
		["UUID"] = args["UUID"],
		["FunctionName"] = args["FunctionName"],
	}
	asserts.AssertUpdateEventSourceMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountSettingsRequest = { nil }

function asserts.AssertGetAccountSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetAccountSettingsRequest[k], "GetAccountSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetAccountSettingsRequest structure as a key-value pair table
function M.GetAccountSettingsRequest(args)
	assert(args, "You must provide an argument table when creating GetAccountSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetAccountSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteFunctionConcurrencyRequest = { ["FunctionName"] = true, nil }

function asserts.AssertDeleteFunctionConcurrencyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFunctionConcurrencyRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFunctionConcurrencyRequest[k], "DeleteFunctionConcurrencyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFunctionConcurrencyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- Required key: FunctionName
-- @return DeleteFunctionConcurrencyRequest structure as a key-value pair table
function M.DeleteFunctionConcurrencyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFunctionConcurrencyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
	}
	asserts.AssertDeleteFunctionConcurrencyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFunctionResponse = { ["Code"] = true, ["Configuration"] = true, ["Concurrency"] = true, ["Tags"] = true, nil }

function asserts.AssertGetFunctionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionResponse to be of type 'table'")
	if struct["Code"] then asserts.AssertFunctionCodeLocation(struct["Code"]) end
	if struct["Configuration"] then asserts.AssertFunctionConfiguration(struct["Configuration"]) end
	if struct["Concurrency"] then asserts.AssertConcurrency(struct["Concurrency"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFunctionResponse[k], "GetFunctionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionResponse
-- <p>This response contains the object for the Lambda function location (see <a>FunctionCodeLocation</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Code [FunctionCodeLocation] <p>The function's code.</p>
-- * Configuration [FunctionConfiguration] <p>The function's configuration.</p>
-- * Concurrency [Concurrency] <p>The concurrent execution limit set for this function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">Managing Concurrency</a>.</p>
-- * Tags [Tags] <p>Returns the list of tags associated with the function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/tagging.html">Tagging Lambda Functions</a> in the <b>AWS Lambda Developer Guide</b>.</p>
-- @return GetFunctionResponse structure as a key-value pair table
function M.GetFunctionResponse(args)
	assert(args, "You must provide an argument table when creating GetFunctionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Code"] = args["Code"],
		["Configuration"] = args["Configuration"],
		["Concurrency"] = args["Concurrency"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertGetFunctionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FunctionCode = { ["S3Bucket"] = true, ["S3Key"] = true, ["ZipFile"] = true, ["S3ObjectVersion"] = true, nil }

function asserts.AssertFunctionCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionCode to be of type 'table'")
	if struct["S3Bucket"] then asserts.AssertS3Bucket(struct["S3Bucket"]) end
	if struct["S3Key"] then asserts.AssertS3Key(struct["S3Key"]) end
	if struct["ZipFile"] then asserts.AssertBlob(struct["ZipFile"]) end
	if struct["S3ObjectVersion"] then asserts.AssertS3ObjectVersion(struct["S3ObjectVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.FunctionCode[k], "FunctionCode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionCode
-- <p>The code for the Lambda function. You can specify either an S3 location, or upload a deployment package directly.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Bucket [S3Bucket] <p>An Amazon S3 bucket in the same region as your function.</p>
-- * S3Key [S3Key] <p>The Amazon S3 key of the deployment package.</p>
-- * ZipFile [Blob] <p>The base64-encoded contents of your zip file containing your deployment package. AWS SDK and AWS CLI clients handle the encoding for you.</p>
-- * S3ObjectVersion [S3ObjectVersion] <p>For versioned objects, the version of the deployment package object to use.</p>
-- @return FunctionCode structure as a key-value pair table
function M.FunctionCode(args)
	assert(args, "You must provide an argument table when creating FunctionCode")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3Bucket"] = args["S3Bucket"],
		["S3Key"] = args["S3Key"],
		["ZipFile"] = args["ZipFile"],
		["S3ObjectVersion"] = args["S3ObjectVersion"],
	}
	asserts.AssertFunctionCode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TracingConfigResponse = { ["Mode"] = true, nil }

function asserts.AssertTracingConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TracingConfigResponse to be of type 'table'")
	if struct["Mode"] then asserts.AssertTracingMode(struct["Mode"]) end
	for k,_ in pairs(struct) do
		assert(keys.TracingConfigResponse[k], "TracingConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TracingConfigResponse
-- <p>The function's AWS X-Ray tracing configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Mode [TracingMode] <p>The tracing mode.</p>
-- @return TracingConfigResponse structure as a key-value pair table
function M.TracingConfigResponse(args)
	assert(args, "You must provide an argument table when creating TracingConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Mode"] = args["Mode"],
	}
	asserts.AssertTracingConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FunctionCodeLocation = { ["RepositoryType"] = true, ["Location"] = true, nil }

function asserts.AssertFunctionCodeLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionCodeLocation to be of type 'table'")
	if struct["RepositoryType"] then asserts.AssertString(struct["RepositoryType"]) end
	if struct["Location"] then asserts.AssertString(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.FunctionCodeLocation[k], "FunctionCodeLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionCodeLocation
-- <p>The object for the Lambda function location.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RepositoryType [String] <p>The repository from which you can download the function.</p>
-- * Location [String] <p>The presigned URL you can use to download the function's .zip file that you previously uploaded. The URL is valid for up to 10 minutes.</p>
-- @return FunctionCodeLocation structure as a key-value pair table
function M.FunctionCodeLocation(args)
	assert(args, "You must provide an argument table when creating FunctionCodeLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RepositoryType"] = args["RepositoryType"],
		["Location"] = args["Location"],
	}
	asserts.AssertFunctionCodeLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountLimit = { ["CodeSizeUnzipped"] = true, ["UnreservedConcurrentExecutions"] = true, ["ConcurrentExecutions"] = true, ["CodeSizeZipped"] = true, ["TotalCodeSize"] = true, nil }

function asserts.AssertAccountLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountLimit to be of type 'table'")
	if struct["CodeSizeUnzipped"] then asserts.AssertLong(struct["CodeSizeUnzipped"]) end
	if struct["UnreservedConcurrentExecutions"] then asserts.AssertUnreservedConcurrentExecutions(struct["UnreservedConcurrentExecutions"]) end
	if struct["ConcurrentExecutions"] then asserts.AssertInteger(struct["ConcurrentExecutions"]) end
	if struct["CodeSizeZipped"] then asserts.AssertLong(struct["CodeSizeZipped"]) end
	if struct["TotalCodeSize"] then asserts.AssertLong(struct["TotalCodeSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountLimit[k], "AccountLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountLimit
-- <p>Provides limits of code size and concurrency associated with the current account and region. For more information or to request a limit increase for concurrent executions, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/limits.html">Lambda Limits</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodeSizeUnzipped [Long] <p>Size, in bytes, of code/dependencies that you can zip into a deployment package (uncompressed zip/jar size) for uploading. The default limit is 250 MB.</p>
-- * UnreservedConcurrentExecutions [UnreservedConcurrentExecutions] <p>The number of concurrent executions available to functions that do not have concurrency limits set. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">Managing Concurrency</a>.</p>
-- * ConcurrentExecutions [Integer] <p>Number of simultaneous executions of your function per region. The default limit is 1000.</p>
-- * CodeSizeZipped [Long] <p>Size, in bytes, of a single zipped code/dependencies package you can upload for your Lambda function(.zip/.jar file). Try using Amazon S3 for uploading larger files. Default limit is 50 MB.</p>
-- * TotalCodeSize [Long] <p>Maximum size, in bytes, of a code package you can upload per region. The default size is 75 GB. </p>
-- @return AccountLimit structure as a key-value pair table
function M.AccountLimit(args)
	assert(args, "You must provide an argument table when creating AccountLimit")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodeSizeUnzipped"] = args["CodeSizeUnzipped"],
		["UnreservedConcurrentExecutions"] = args["UnreservedConcurrentExecutions"],
		["ConcurrentExecutions"] = args["ConcurrentExecutions"],
		["CodeSizeZipped"] = args["CodeSizeZipped"],
		["TotalCodeSize"] = args["TotalCodeSize"],
	}
	asserts.AssertAccountLimit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventSourceMappingConfiguration = { ["UUID"] = true, ["StateTransitionReason"] = true, ["LastModified"] = true, ["BatchSize"] = true, ["State"] = true, ["FunctionArn"] = true, ["EventSourceArn"] = true, ["LastProcessingResult"] = true, nil }

function asserts.AssertEventSourceMappingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSourceMappingConfiguration to be of type 'table'")
	if struct["UUID"] then asserts.AssertString(struct["UUID"]) end
	if struct["StateTransitionReason"] then asserts.AssertString(struct["StateTransitionReason"]) end
	if struct["LastModified"] then asserts.AssertDate(struct["LastModified"]) end
	if struct["BatchSize"] then asserts.AssertBatchSize(struct["BatchSize"]) end
	if struct["State"] then asserts.AssertString(struct["State"]) end
	if struct["FunctionArn"] then asserts.AssertFunctionArn(struct["FunctionArn"]) end
	if struct["EventSourceArn"] then asserts.AssertArn(struct["EventSourceArn"]) end
	if struct["LastProcessingResult"] then asserts.AssertString(struct["LastProcessingResult"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventSourceMappingConfiguration[k], "EventSourceMappingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSourceMappingConfiguration
-- <p>Describes mapping between an Amazon Kinesis or DynamoDB stream and a Lambda function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UUID [String] <p>The AWS Lambda assigned opaque identifier for the mapping.</p>
-- * StateTransitionReason [String] <p>The reason the event source mapping is in its current state. It is either user-requested or an AWS Lambda-initiated state transition.</p>
-- * LastModified [Date] <p>The UTC time string indicating the last time the event mapping was updated.</p>
-- * BatchSize [BatchSize] <p>The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Your function receives an event with all the retrieved records.</p>
-- * State [String] <p>The state of the event source mapping. It can be <code>Creating</code>, <code>Enabled</code>, <code>Disabled</code>, <code>Enabling</code>, <code>Disabling</code>, <code>Updating</code>, or <code>Deleting</code>.</p>
-- * FunctionArn [FunctionArn] <p>The Lambda function to invoke when AWS Lambda detects an event on the poll-based source.</p>
-- * EventSourceArn [Arn] <p>The Amazon Resource Name (ARN) of the Amazon Kinesis or DynamoDB stream that is the source of events.</p>
-- * LastProcessingResult [String] <p>The result of the last AWS Lambda invocation of your Lambda function. This value will be null if an SQS queue is the event source.</p>
-- @return EventSourceMappingConfiguration structure as a key-value pair table
function M.EventSourceMappingConfiguration(args)
	assert(args, "You must provide an argument table when creating EventSourceMappingConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UUID"] = args["UUID"],
		["StateTransitionReason"] = args["StateTransitionReason"],
		["LastModified"] = args["LastModified"],
		["BatchSize"] = args["BatchSize"],
		["State"] = args["State"],
		["FunctionArn"] = args["FunctionArn"],
		["EventSourceArn"] = args["EventSourceArn"],
		["LastProcessingResult"] = args["LastProcessingResult"],
	}
	asserts.AssertEventSourceMappingConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnvironmentError = { ["ErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertEnvironmentError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentError to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertString(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertSensitiveString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnvironmentError[k], "EnvironmentError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentError
-- <p>Error messages for environment variables that could not be applied.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [String] <p>The error code.</p>
-- * Message [SensitiveString] <p>The error message.</p>
-- @return EnvironmentError structure as a key-value pair table
function M.EnvironmentError(args)
	assert(args, "You must provide an argument table when creating EnvironmentError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["Message"] = args["Message"],
	}
	asserts.AssertEnvironmentError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPolicyRequest = { ["FunctionName"] = true, ["Qualifier"] = true, nil }

function asserts.AssertGetPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertNamespacedFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyRequest[k], "GetPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [NamespacedFunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Qualifier [Qualifier] <p>You can specify this optional query parameter to specify a function version or an alias name in which case this API will return all permissions associated with the specific qualified ARN. If you don't provide this parameter, the API will return permissions that apply to the unqualified function ARN.</p>
-- Required key: FunctionName
-- @return GetPolicyRequest structure as a key-value pair table
function M.GetPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetPolicyRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertGetPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetEventSourceMappingRequest = { ["UUID"] = true, nil }

function asserts.AssertGetEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventSourceMappingRequest to be of type 'table'")
	assert(struct["UUID"], "Expected key UUID to exist in table")
	if struct["UUID"] then asserts.AssertString(struct["UUID"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEventSourceMappingRequest[k], "GetEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventSourceMappingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UUID [String] <p>The AWS Lambda assigned ID of the event source mapping.</p>
-- Required key: UUID
-- @return GetEventSourceMappingRequest structure as a key-value pair table
function M.GetEventSourceMappingRequest(args)
	assert(args, "You must provide an argument table when creating GetEventSourceMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{UUID}"] = args["UUID"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UUID"] = args["UUID"],
	}
	asserts.AssertGetEventSourceMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeadLetterConfig = { ["TargetArn"] = true, nil }

function asserts.AssertDeadLetterConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeadLetterConfig to be of type 'table'")
	if struct["TargetArn"] then asserts.AssertResourceArn(struct["TargetArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeadLetterConfig[k], "DeadLetterConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeadLetterConfig
-- <p>The <a href="http://docs.aws.amazon.com/lambda/latest/dg/dlq.html">dead letter queue</a> for failed asynchronous invocations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetArn [ResourceArn] <p>The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.</p>
-- @return DeadLetterConfig structure as a key-value pair table
function M.DeadLetterConfig(args)
	assert(args, "You must provide an argument table when creating DeadLetterConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetArn"] = args["TargetArn"],
	}
	asserts.AssertDeadLetterConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFunctionConfigurationRequest = { ["FunctionName"] = true, ["Qualifier"] = true, nil }

function asserts.AssertGetFunctionConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionConfigurationRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertNamespacedFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFunctionConfigurationRequest[k], "GetFunctionConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [NamespacedFunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * Qualifier [Qualifier] <p>Specify a version or alias to get details about a published version of the function.</p>
-- Required key: FunctionName
-- @return GetFunctionConfigurationRequest structure as a key-value pair table
function M.GetFunctionConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetFunctionConfigurationRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["Qualifier"] = args["Qualifier"],
	}
	asserts.AssertGetFunctionConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFunctionsResponse = { ["Functions"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListFunctionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionsResponse to be of type 'table'")
	if struct["Functions"] then asserts.AssertFunctionList(struct["Functions"]) end
	if struct["NextMarker"] then asserts.AssertString(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFunctionsResponse[k], "ListFunctionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionsResponse
-- <p>A list of Lambda functions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Functions [FunctionList] <p>A list of Lambda functions.</p>
-- * NextMarker [String] <p>A string, present if there are more functions.</p>
-- @return ListFunctionsResponse structure as a key-value pair table
function M.ListFunctionsResponse(args)
	assert(args, "You must provide an argument table when creating ListFunctionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Functions"] = args["Functions"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListFunctionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPolicyResponse = { ["Policy"] = true, ["RevisionId"] = true, nil }

function asserts.AssertGetPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertString(struct["Policy"]) end
	if struct["RevisionId"] then asserts.AssertString(struct["RevisionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyResponse[k], "GetPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [String] <p>The resource policy associated with the specified function. The response returns the same as a string using a backslash ("\") as an escape character in the JSON.</p>
-- * RevisionId [String] <p>Represents the latest updated revision of the function or alias.</p>
-- @return GetPolicyResponse structure as a key-value pair table
function M.GetPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["RevisionId"] = args["RevisionId"],
	}
	asserts.AssertGetPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAliasesRequest = { ["Marker"] = true, ["FunctionVersion"] = true, ["FunctionName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["FunctionVersion"] then asserts.AssertVersion(struct["FunctionVersion"]) end
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["MaxItems"] then asserts.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesRequest[k], "ListAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Optional string. An opaque pagination token returned from a previous <code>ListAliases</code> operation. If present, indicates where to continue the listing.</p>
-- * FunctionVersion [Version] <p>If you specify this optional parameter, the API returns only the aliases that are pointing to the specific Lambda function version, otherwise the API returns all of the aliases created for the Lambda function.</p>
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * MaxItems [MaxListItems] <p>Optional integer. Specifies the maximum number of aliases to return in response. This parameter value must be greater than 0.</p>
-- Required key: FunctionName
-- @return ListAliasesRequest structure as a key-value pair table
function M.ListAliasesRequest(args)
	assert(args, "You must provide an argument table when creating ListAliasesRequest")
    local query_args = { 
        ["Marker"] = args["Marker"],
        ["FunctionVersion"] = args["FunctionVersion"],
        ["MaxItems"] = args["MaxItems"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["FunctionVersion"] = args["FunctionVersion"],
		["FunctionName"] = args["FunctionName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListAliasesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEventSourceMappingsResponse = { ["NextMarker"] = true, ["EventSourceMappings"] = true, nil }

function asserts.AssertListEventSourceMappingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEventSourceMappingsResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertString(struct["NextMarker"]) end
	if struct["EventSourceMappings"] then asserts.AssertEventSourceMappingsList(struct["EventSourceMappings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEventSourceMappingsResponse[k], "ListEventSourceMappingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEventSourceMappingsResponse
-- <p>Contains a list of event sources (see <a>EventSourceMappingConfiguration</a>)</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextMarker [String] <p>A string, present if there are more event source mappings.</p>
-- * EventSourceMappings [EventSourceMappingsList] <p>An array of <code>EventSourceMappingConfiguration</code> objects.</p>
-- @return ListEventSourceMappingsResponse structure as a key-value pair table
function M.ListEventSourceMappingsResponse(args)
	assert(args, "You must provide an argument table when creating ListEventSourceMappingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextMarker"] = args["NextMarker"],
		["EventSourceMappings"] = args["EventSourceMappings"],
	}
	asserts.AssertListEventSourceMappingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddPermissionResponse = { ["Statement"] = true, nil }

function asserts.AssertAddPermissionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionResponse to be of type 'table'")
	if struct["Statement"] then asserts.AssertString(struct["Statement"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddPermissionResponse[k], "AddPermissionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Statement [String] <p>The permission statement you specified in the request. The response returns the same as a string using a backslash ("\") as an escape character in the JSON.</p>
-- @return AddPermissionResponse structure as a key-value pair table
function M.AddPermissionResponse(args)
	assert(args, "You must provide an argument table when creating AddPermissionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Statement"] = args["Statement"],
	}
	asserts.AssertAddPermissionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddPermissionRequest = { ["FunctionName"] = true, ["RevisionId"] = true, ["Qualifier"] = true, ["StatementId"] = true, ["Action"] = true, ["SourceAccount"] = true, ["SourceArn"] = true, ["EventSourceToken"] = true, ["Principal"] = true, nil }

function asserts.AssertAddPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["StatementId"], "Expected key StatementId to exist in table")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Principal"], "Expected key Principal to exist in table")
	if struct["FunctionName"] then asserts.AssertFunctionName(struct["FunctionName"]) end
	if struct["RevisionId"] then asserts.AssertString(struct["RevisionId"]) end
	if struct["Qualifier"] then asserts.AssertQualifier(struct["Qualifier"]) end
	if struct["StatementId"] then asserts.AssertStatementId(struct["StatementId"]) end
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["SourceAccount"] then asserts.AssertSourceOwner(struct["SourceAccount"]) end
	if struct["SourceArn"] then asserts.AssertArn(struct["SourceArn"]) end
	if struct["EventSourceToken"] then asserts.AssertEventSourceToken(struct["EventSourceToken"]) end
	if struct["Principal"] then asserts.AssertPrincipal(struct["Principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddPermissionRequest[k], "AddPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [FunctionName] <p>The name of the lambda function.</p> <p class="title"> <b>Name formats</b> </p> <ul> <li> <p> <b>Function name</b> - <code>MyFunction</code>.</p> </li> <li> <p> <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p> </li> <li> <p> <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
-- * RevisionId [String] <p>An optional value you can use to ensure you are updating the latest update of the function version or alias. If the <code>RevisionID</code> you pass doesn't match the latest <code>RevisionId</code> of the function or alias, it will fail with an error message, advising you to retrieve the latest function version or alias <code>RevisionID</code> using either <a>GetFunction</a> or <a>GetAlias</a> </p>
-- * Qualifier [Qualifier] <p>Specify a version or alias to add permissions to a published version of the function.</p>
-- * StatementId [StatementId] <p>A unique statement identifier.</p>
-- * Action [Action] <p>The AWS Lambda action you want to allow in this statement. Each Lambda action is a string starting with <code>lambda:</code> followed by the API name . For example, <code>lambda:CreateFunction</code>. You can use wildcard (<code>lambda:*</code>) to grant permission for all AWS Lambda actions. </p>
-- * SourceAccount [SourceOwner] <p>This parameter is used for S3 and SES. The AWS account ID (without a hyphen) of the source owner. For example, if the <code>SourceArn</code> identifies a bucket, then this is the bucket owner's account ID. You can use this additional condition to ensure the bucket you specify is owned by a specific account (it is possible the bucket owner deleted the bucket and some other AWS account created the bucket). You can also use this condition to specify all sources (that is, you don't specify the <code>SourceArn</code>) owned by a specific account. </p>
-- * SourceArn [Arn] <p>The Amazon Resource Name of the invoker. </p> <important> <p>If you add a permission to a service principal without providing the source ARN, any AWS account that creates a mapping to your function ARN can invoke your Lambda function.</p> </important>
-- * EventSourceToken [EventSourceToken] <p>A unique token that must be supplied by the principal invoking the function. This is currently only used for Alexa Smart Home functions.</p>
-- * Principal [Principal] <p>The principal who is getting this permission. The principal can be an AWS service (e.g. <code>s3.amazonaws.com</code> or <code>sns.amazonaws.com</code>) for service triggers, or an account ID for cross-account access. If you specify a service as a principal, use the <code>SourceArn</code> parameter to limit who can invoke the function through that service.</p>
-- Required key: FunctionName
-- Required key: StatementId
-- Required key: Action
-- Required key: Principal
-- @return AddPermissionRequest structure as a key-value pair table
function M.AddPermissionRequest(args)
	assert(args, "You must provide an argument table when creating AddPermissionRequest")
    local query_args = { 
        ["Qualifier"] = args["Qualifier"],
    }
    local uri_args = { 
        ["{FunctionName}"] = args["FunctionName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["RevisionId"] = args["RevisionId"],
		["Qualifier"] = args["Qualifier"],
		["StatementId"] = args["StatementId"],
		["Action"] = args["Action"],
		["SourceAccount"] = args["SourceAccount"],
		["SourceArn"] = args["SourceArn"],
		["EventSourceToken"] = args["EventSourceToken"],
		["Principal"] = args["Principal"],
	}
	asserts.AssertAddPermissionRequest(all_args)
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
	if struct["Resource"] then asserts.AssertFunctionArn(struct["Resource"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Resource [FunctionArn] <p>The ARN (Amazon Resource Name) of the Lambda function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/tagging.html">Tagging Lambda Functions</a> in the <b>AWS Lambda Developer Guide</b>.</p>
-- * Tags [Tags] <p>The list of tags (key-value pairs) you are assigning to the Lambda function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/tagging.html">Tagging Lambda Functions</a> in the <b>AWS Lambda Developer Guide</b>.</p>
-- Required key: Resource
-- Required key: Tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ARN}"] = args["Resource"],
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

keys.ListTagsResponse = { ["Tags"] = true, nil }

function asserts.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsResponse[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p>The list of tags assigned to the function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/tagging.html">Tagging Lambda Functions</a> in the <b>AWS Lambda Developer Guide</b>.</p>
-- @return ListTagsResponse structure as a key-value pair table
function M.ListTagsResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcConfig = { ["SubnetIds"] = true, ["SecurityGroupIds"] = true, nil }

function asserts.AssertVpcConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfig to be of type 'table'")
	if struct["SubnetIds"] then asserts.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIds(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcConfig[k], "VpcConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfig
-- <p>The VPC security groups and subnets attached to a Lambda function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIds] <p>A list of VPC subnet IDs.</p>
-- * SecurityGroupIds [SecurityGroupIds] <p>A list of VPC security groups IDs.</p>
-- @return VpcConfig structure as a key-value pair table
function M.VpcConfig(args)
	assert(args, "You must provide an argument table when creating VpcConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
	}
	asserts.AssertVpcConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Concurrency = { ["ReservedConcurrentExecutions"] = true, nil }

function asserts.AssertConcurrency(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Concurrency to be of type 'table'")
	if struct["ReservedConcurrentExecutions"] then asserts.AssertReservedConcurrentExecutions(struct["ReservedConcurrentExecutions"]) end
	for k,_ in pairs(struct) do
		assert(keys.Concurrency[k], "Concurrency contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Concurrency
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservedConcurrentExecutions [ReservedConcurrentExecutions] <p>The number of concurrent executions reserved for this function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">Managing Concurrency</a>.</p>
-- @return Concurrency structure as a key-value pair table
function M.Concurrency(args)
	assert(args, "You must provide an argument table when creating Concurrency")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservedConcurrentExecutions"] = args["ReservedConcurrentExecutions"],
	}
	asserts.AssertConcurrency(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertSensitiveString(str)
	assert(str)
	assert(type(str) == "string", "Expected SensitiveString to be of type 'string'")
end

--  
function M.SensitiveString(str)
	asserts.AssertSensitiveString(str)
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

function asserts.AssertQualifier(str)
	assert(str)
	assert(type(str) == "string", "Expected Qualifier to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Qualifier(str)
	asserts.AssertQualifier(str)
	return str
end

function asserts.AssertEnvironmentVariableValue(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentVariableValue to be of type 'string'")
end

--  
function M.EnvironmentVariableValue(str)
	asserts.AssertEnvironmentVariableValue(str)
	return str
end

function asserts.AssertFunctionName(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionName to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FunctionName(str)
	asserts.AssertFunctionName(str)
	return str
end

function asserts.AssertEventSourceToken(str)
	assert(str)
	assert(type(str) == "string", "Expected EventSourceToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.EventSourceToken(str)
	asserts.AssertEventSourceToken(str)
	return str
end

function asserts.AssertAdditionalVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected AdditionalVersion to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AdditionalVersion(str)
	asserts.AssertAdditionalVersion(str)
	return str
end

function asserts.AssertKMSKeyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected KMSKeyArn to be of type 'string'")
end

--  
function M.KMSKeyArn(str)
	asserts.AssertKMSKeyArn(str)
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

function asserts.AssertEventSourcePosition(str)
	assert(str)
	assert(type(str) == "string", "Expected EventSourcePosition to be of type 'string'")
end

--  
function M.EventSourcePosition(str)
	asserts.AssertEventSourcePosition(str)
	return str
end

function asserts.AssertMasterRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected MasterRegion to be of type 'string'")
end

--  
function M.MasterRegion(str)
	asserts.AssertMasterRegion(str)
	return str
end

function asserts.AssertNameSpacedFunctionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected NameSpacedFunctionArn to be of type 'string'")
end

--  
function M.NameSpacedFunctionArn(str)
	asserts.AssertNameSpacedFunctionArn(str)
	return str
end

function asserts.AssertNamespacedFunctionName(str)
	assert(str)
	assert(type(str) == "string", "Expected NamespacedFunctionName to be of type 'string'")
	assert(#str <= 170, "Expected string to be max 170 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NamespacedFunctionName(str)
	asserts.AssertNamespacedFunctionName(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	asserts.AssertSubnetId(str)
	return str
end

function asserts.AssertTimestamp(str)
	assert(str)
	assert(type(str) == "string", "Expected Timestamp to be of type 'string'")
end

--  
function M.Timestamp(str)
	asserts.AssertTimestamp(str)
	return str
end

function asserts.AssertTracingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected TracingMode to be of type 'string'")
end

--  
function M.TracingMode(str)
	asserts.AssertTracingMode(str)
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

function asserts.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
end

--  
function M.SecurityGroupId(str)
	asserts.AssertSecurityGroupId(str)
	return str
end

function asserts.AssertFunctionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionArn to be of type 'string'")
end

--  
function M.FunctionArn(str)
	asserts.AssertFunctionArn(str)
	return str
end

function asserts.AssertSourceOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceOwner to be of type 'string'")
end

--  
function M.SourceOwner(str)
	asserts.AssertSourceOwner(str)
	return str
end

function asserts.AssertNamespacedStatementId(str)
	assert(str)
	assert(type(str) == "string", "Expected NamespacedStatementId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NamespacedStatementId(str)
	asserts.AssertNamespacedStatementId(str)
	return str
end

function asserts.AssertEnvironmentVariableName(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentVariableName to be of type 'string'")
end

--  
function M.EnvironmentVariableName(str)
	asserts.AssertEnvironmentVariableName(str)
	return str
end

function asserts.AssertHandler(str)
	assert(str)
	assert(type(str) == "string", "Expected Handler to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.Handler(str)
	asserts.AssertHandler(str)
	return str
end

function asserts.AssertRuntime(str)
	assert(str)
	assert(type(str) == "string", "Expected Runtime to be of type 'string'")
end

--  
function M.Runtime(str)
	asserts.AssertRuntime(str)
	return str
end

function asserts.AssertLogType(str)
	assert(str)
	assert(type(str) == "string", "Expected LogType to be of type 'string'")
end

--  
function M.LogType(str)
	asserts.AssertLogType(str)
	return str
end

function asserts.AssertAction(str)
	assert(str)
	assert(type(str) == "string", "Expected Action to be of type 'string'")
end

--  
function M.Action(str)
	asserts.AssertAction(str)
	return str
end

function asserts.AssertS3Key(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Key to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.S3Key(str)
	asserts.AssertS3Key(str)
	return str
end

function asserts.AssertStatementId(str)
	assert(str)
	assert(type(str) == "string", "Expected StatementId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StatementId(str)
	asserts.AssertStatementId(str)
	return str
end

function asserts.AssertS3ObjectVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected S3ObjectVersion to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.S3ObjectVersion(str)
	asserts.AssertS3ObjectVersion(str)
	return str
end

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
	return str
end

function asserts.AssertFunctionVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionVersion to be of type 'string'")
end

--  
function M.FunctionVersion(str)
	asserts.AssertFunctionVersion(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertInvocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected InvocationType to be of type 'string'")
end

--  
function M.InvocationType(str)
	asserts.AssertInvocationType(str)
	return str
end

function asserts.AssertS3Bucket(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Bucket to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.S3Bucket(str)
	asserts.AssertS3Bucket(str)
	return str
end

function asserts.AssertAlias(str)
	assert(str)
	assert(type(str) == "string", "Expected Alias to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Alias(str)
	asserts.AssertAlias(str)
	return str
end

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
end

--  
function M.VpcId(str)
	asserts.AssertVpcId(str)
	return str
end

function asserts.AssertPrincipal(str)
	assert(str)
	assert(type(str) == "string", "Expected Principal to be of type 'string'")
end

--  
function M.Principal(str)
	asserts.AssertPrincipal(str)
	return str
end

function asserts.AssertWeight(double)
	assert(double)
	assert(type(double) == "number", "Expected Weight to be of type 'number'")
end

function M.Weight(double)
	asserts.AssertWeight(double)
	return double
end

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertHttpStatus(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HttpStatus to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.HttpStatus(integer)
	asserts.AssertHttpStatus(integer)
	return integer
end

function asserts.AssertUnreservedConcurrentExecutions(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected UnreservedConcurrentExecutions to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.UnreservedConcurrentExecutions(integer)
	asserts.AssertUnreservedConcurrentExecutions(integer)
	return integer
end

function asserts.AssertMemorySize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MemorySize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 3008, "Expected integer to be max 3008")
	assert(integer >= 128, "Expected integer to be min 128")
end

function M.MemorySize(integer)
	asserts.AssertMemorySize(integer)
	return integer
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Timeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Timeout(integer)
	asserts.AssertTimeout(integer)
	return integer
end

function asserts.AssertReservedConcurrentExecutions(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ReservedConcurrentExecutions to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ReservedConcurrentExecutions(integer)
	asserts.AssertReservedConcurrentExecutions(integer)
	return integer
end

function asserts.AssertBatchSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BatchSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.BatchSize(integer)
	asserts.AssertBatchSize(integer)
	return integer
end

function asserts.AssertMaxListItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxListItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxListItems(integer)
	asserts.AssertMaxListItems(integer)
	return integer
end

function asserts.AssertEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Enabled to be of type 'boolean'")
end

function M.Enabled(boolean)
	asserts.AssertEnabled(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertAdditionalVersionWeights(map)
	assert(map)
	assert(type(map) == "table", "Expected AdditionalVersionWeights to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAdditionalVersion(k)
		asserts.AssertWeight(v)
	end
end

function M.AdditionalVersionWeights(map)
	asserts.AssertAdditionalVersionWeights(map)
	return map
end

function asserts.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.Tags(map)
	asserts.AssertTags(map)
	return map
end

function asserts.AssertEnvironmentVariables(map)
	assert(map)
	assert(type(map) == "table", "Expected EnvironmentVariables to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertEnvironmentVariableName(k)
		asserts.AssertEnvironmentVariableValue(v)
	end
end

function M.EnvironmentVariables(map)
	asserts.AssertEnvironmentVariables(map)
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

function asserts.AssertBlobStream(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected BlobStream to be of type 'string'")
end

function M.BlobStream(blob)
	asserts.AssertBlobStream(blob)
	return blob
end

function asserts.AssertBlob(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected Blob to be of type 'string'")
end

function M.Blob(blob)
	asserts.AssertBlob(blob)
	return blob
end

function asserts.AssertSubnetIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIds to be of type ''table")
	assert(#list <= 16, "Expected list to be contain 16 elements")
	for _,v in ipairs(list) do
		asserts.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.SubnetIds(list)
	asserts.AssertSubnetIds(list)
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
		asserts.AssertAliasConfiguration(v)
	end
end

--  
-- List of AliasConfiguration objects
function M.AliasList(list)
	asserts.AssertAliasList(list)
	return list
end

function asserts.AssertFunctionList(list)
	assert(list)
	assert(type(list) == "table", "Expected FunctionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFunctionConfiguration(v)
	end
end

--  
-- List of FunctionConfiguration objects
function M.FunctionList(list)
	asserts.AssertFunctionList(list)
	return list
end

function asserts.AssertEventSourceMappingsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventSourceMappingsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventSourceMappingConfiguration(v)
	end
end

--  
-- List of EventSourceMappingConfiguration objects
function M.EventSourceMappingsList(list)
	asserts.AssertEventSourceMappingsList(list)
	return list
end

function asserts.AssertSecurityGroupIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIds to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertSecurityGroupId(v)
	end
end

--  
-- List of SecurityGroupId objects
function M.SecurityGroupIds(list)
	asserts.AssertSecurityGroupIds(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "lambda.amazonaws.com"
		end
	end
	local ss = { "lambda" }
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
--- Call ListEventSourceMappings asynchronously, invoking a callback when done
-- @param ListEventSourceMappingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListEventSourceMappingsAsync(ListEventSourceMappingsRequest, cb)
	assert(ListEventSourceMappingsRequest, "You must provide a ListEventSourceMappingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListEventSourceMappings",
	}
	for header,value in pairs(ListEventSourceMappingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/event-source-mappings/", ListEventSourceMappingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListEventSourceMappings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListEventSourceMappingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListEventSourceMappingsSync(ListEventSourceMappingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEventSourceMappingsAsync(ListEventSourceMappingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFunction asynchronously, invoking a callback when done
-- @param DeleteFunctionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFunctionAsync(DeleteFunctionRequest, cb)
	assert(DeleteFunctionRequest, "You must provide a DeleteFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFunction",
	}
	for header,value in pairs(DeleteFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}", DeleteFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFunctionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFunctionSync(DeleteFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFunctionAsync(DeleteFunctionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEventSourceMapping asynchronously, invoking a callback when done
-- @param UpdateEventSourceMappingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEventSourceMappingAsync(UpdateEventSourceMappingRequest, cb)
	assert(UpdateEventSourceMappingRequest, "You must provide a UpdateEventSourceMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateEventSourceMapping",
	}
	for header,value in pairs(UpdateEventSourceMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/event-source-mappings/{UUID}", UpdateEventSourceMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEventSourceMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEventSourceMappingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEventSourceMappingSync(UpdateEventSourceMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEventSourceMappingAsync(UpdateEventSourceMappingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAlias asynchronously, invoking a callback when done
-- @param UpdateAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAliasAsync(UpdateAliasRequest, cb)
	assert(UpdateAliasRequest, "You must provide a UpdateAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAlias",
	}
	for header,value in pairs(UpdateAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/aliases/{Name}", UpdateAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAliasSync(UpdateAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAliasAsync(UpdateAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFunctions asynchronously, invoking a callback when done
-- @param ListFunctionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFunctionsAsync(ListFunctionsRequest, cb)
	assert(ListFunctionsRequest, "You must provide a ListFunctionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFunctions",
	}
	for header,value in pairs(ListFunctionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/", ListFunctionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFunctions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFunctionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListFunctionsSync(ListFunctionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFunctionsAsync(ListFunctionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEventSourceMapping asynchronously, invoking a callback when done
-- @param CreateEventSourceMappingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateEventSourceMappingAsync(CreateEventSourceMappingRequest, cb)
	assert(CreateEventSourceMappingRequest, "You must provide a CreateEventSourceMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateEventSourceMapping",
	}
	for header,value in pairs(CreateEventSourceMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/event-source-mappings/", CreateEventSourceMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEventSourceMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEventSourceMappingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateEventSourceMappingSync(CreateEventSourceMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEventSourceMappingAsync(CreateEventSourceMappingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFunctionConfiguration asynchronously, invoking a callback when done
-- @param GetFunctionConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFunctionConfigurationAsync(GetFunctionConfigurationRequest, cb)
	assert(GetFunctionConfigurationRequest, "You must provide a GetFunctionConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFunctionConfiguration",
	}
	for header,value in pairs(GetFunctionConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/configuration", GetFunctionConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFunctionConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFunctionConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFunctionConfigurationSync(GetFunctionConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFunctionConfigurationAsync(GetFunctionConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFunctionConcurrency asynchronously, invoking a callback when done
-- @param DeleteFunctionConcurrencyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteFunctionConcurrencyAsync(DeleteFunctionConcurrencyRequest, cb)
	assert(DeleteFunctionConcurrencyRequest, "You must provide a DeleteFunctionConcurrencyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFunctionConcurrency",
	}
	for header,value in pairs(DeleteFunctionConcurrencyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2017-10-31/functions/{FunctionName}/concurrency", DeleteFunctionConcurrencyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFunctionConcurrency synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFunctionConcurrencyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteFunctionConcurrencySync(DeleteFunctionConcurrencyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFunctionConcurrencyAsync(DeleteFunctionConcurrencyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAliases asynchronously, invoking a callback when done
-- @param ListAliasesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAliasesAsync(ListAliasesRequest, cb)
	assert(ListAliasesRequest, "You must provide a ListAliasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAliases",
	}
	for header,value in pairs(ListAliasesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/aliases", ListAliasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAliases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAliasesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAliasesSync(ListAliasesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAliasesAsync(ListAliasesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutFunctionConcurrency asynchronously, invoking a callback when done
-- @param PutFunctionConcurrencyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutFunctionConcurrencyAsync(PutFunctionConcurrencyRequest, cb)
	assert(PutFunctionConcurrencyRequest, "You must provide a PutFunctionConcurrencyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutFunctionConcurrency",
	}
	for header,value in pairs(PutFunctionConcurrencyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2017-10-31/functions/{FunctionName}/concurrency", PutFunctionConcurrencyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutFunctionConcurrency synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutFunctionConcurrencyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutFunctionConcurrencySync(PutFunctionConcurrencyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutFunctionConcurrencyAsync(PutFunctionConcurrencyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPolicy asynchronously, invoking a callback when done
-- @param GetPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPolicyAsync(GetPolicyRequest, cb)
	assert(GetPolicyRequest, "You must provide a GetPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPolicy",
	}
	for header,value in pairs(GetPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/policy", GetPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPolicySync(GetPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPolicyAsync(GetPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Invoke asynchronously, invoking a callback when done
-- @param InvocationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InvokeAsync(InvocationRequest, cb)
	assert(InvocationRequest, "You must provide a InvocationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Invoke",
	}
	for header,value in pairs(InvocationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/invocations", InvocationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Invoke synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InvocationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InvokeSync(InvocationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InvokeAsync(InvocationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PublishVersion asynchronously, invoking a callback when done
-- @param PublishVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PublishVersionAsync(PublishVersionRequest, cb)
	assert(PublishVersionRequest, "You must provide a PublishVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PublishVersion",
	}
	for header,value in pairs(PublishVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/versions", PublishVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PublishVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PublishVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PublishVersionSync(PublishVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PublishVersionAsync(PublishVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFunction asynchronously, invoking a callback when done
-- @param GetFunctionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFunctionAsync(GetFunctionRequest, cb)
	assert(GetFunctionRequest, "You must provide a GetFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFunction",
	}
	for header,value in pairs(GetFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}", GetFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFunctionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFunctionSync(GetFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFunctionAsync(GetFunctionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAlias asynchronously, invoking a callback when done
-- @param DeleteAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAliasAsync(DeleteAliasRequest, cb)
	assert(DeleteAliasRequest, "You must provide a DeleteAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAlias",
	}
	for header,value in pairs(DeleteAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/aliases/{Name}", DeleteAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAliasSync(DeleteAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAliasAsync(DeleteAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddPermission asynchronously, invoking a callback when done
-- @param AddPermissionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddPermissionAsync(AddPermissionRequest, cb)
	assert(AddPermissionRequest, "You must provide a AddPermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddPermission",
	}
	for header,value in pairs(AddPermissionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/policy", AddPermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddPermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddPermissionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AddPermissionSync(AddPermissionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddPermissionAsync(AddPermissionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVersionsByFunction asynchronously, invoking a callback when done
-- @param ListVersionsByFunctionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListVersionsByFunctionAsync(ListVersionsByFunctionRequest, cb)
	assert(ListVersionsByFunctionRequest, "You must provide a ListVersionsByFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListVersionsByFunction",
	}
	for header,value in pairs(ListVersionsByFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/versions", ListVersionsByFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVersionsByFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListVersionsByFunctionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListVersionsByFunctionSync(ListVersionsByFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVersionsByFunctionAsync(ListVersionsByFunctionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemovePermission asynchronously, invoking a callback when done
-- @param RemovePermissionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemovePermissionAsync(RemovePermissionRequest, cb)
	assert(RemovePermissionRequest, "You must provide a RemovePermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemovePermission",
	}
	for header,value in pairs(RemovePermissionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", RemovePermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemovePermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemovePermissionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemovePermissionSync(RemovePermissionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemovePermissionAsync(RemovePermissionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAlias asynchronously, invoking a callback when done
-- @param CreateAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAliasAsync(CreateAliasRequest, cb)
	assert(CreateAliasRequest, "You must provide a CreateAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateAlias",
	}
	for header,value in pairs(CreateAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/aliases", CreateAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAliasSync(CreateAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAliasAsync(CreateAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTags asynchronously, invoking a callback when done
-- @param ListTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTags",
	}
	for header,value in pairs(ListTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-03-31/tags/{ARN}", ListTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsSync(ListTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsAsync(ListTagsRequest, function(response, error_type, error_message)
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

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2017-03-31/tags/{ARN}", TagResourceRequest, headers, settings, cb)
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

--- Call DeleteEventSourceMapping asynchronously, invoking a callback when done
-- @param DeleteEventSourceMappingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEventSourceMappingAsync(DeleteEventSourceMappingRequest, cb)
	assert(DeleteEventSourceMappingRequest, "You must provide a DeleteEventSourceMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEventSourceMapping",
	}
	for header,value in pairs(DeleteEventSourceMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/event-source-mappings/{UUID}", DeleteEventSourceMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEventSourceMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEventSourceMappingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEventSourceMappingSync(DeleteEventSourceMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEventSourceMappingAsync(DeleteEventSourceMappingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFunctionConfiguration asynchronously, invoking a callback when done
-- @param UpdateFunctionConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateFunctionConfigurationAsync(UpdateFunctionConfigurationRequest, cb)
	assert(UpdateFunctionConfigurationRequest, "You must provide a UpdateFunctionConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFunctionConfiguration",
	}
	for header,value in pairs(UpdateFunctionConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/configuration", UpdateFunctionConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFunctionConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFunctionConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateFunctionConfigurationSync(UpdateFunctionConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFunctionConfigurationAsync(UpdateFunctionConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEventSourceMapping asynchronously, invoking a callback when done
-- @param GetEventSourceMappingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetEventSourceMappingAsync(GetEventSourceMappingRequest, cb)
	assert(GetEventSourceMappingRequest, "You must provide a GetEventSourceMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetEventSourceMapping",
	}
	for header,value in pairs(GetEventSourceMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/event-source-mappings/{UUID}", GetEventSourceMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetEventSourceMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEventSourceMappingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetEventSourceMappingSync(GetEventSourceMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEventSourceMappingAsync(GetEventSourceMappingRequest, function(response, error_type, error_message)
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

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2017-03-31/tags/{ARN}", UntagResourceRequest, headers, settings, cb)
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

--- Call GetAlias asynchronously, invoking a callback when done
-- @param GetAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAliasAsync(GetAliasRequest, cb)
	assert(GetAliasRequest, "You must provide a GetAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAlias",
	}
	for header,value in pairs(GetAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/aliases/{Name}", GetAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAliasSync(GetAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAliasAsync(GetAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccountSettings asynchronously, invoking a callback when done
-- @param GetAccountSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccountSettingsAsync(GetAccountSettingsRequest, cb)
	assert(GetAccountSettingsRequest, "You must provide a GetAccountSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccountSettings",
	}
	for header,value in pairs(GetAccountSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2016-08-19/account-settings/", GetAccountSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccountSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAccountSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAccountSettingsSync(GetAccountSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountSettingsAsync(GetAccountSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFunction asynchronously, invoking a callback when done
-- @param CreateFunctionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateFunctionAsync(CreateFunctionRequest, cb)
	assert(CreateFunctionRequest, "You must provide a CreateFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateFunction",
	}
	for header,value in pairs(CreateFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions", CreateFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFunctionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateFunctionSync(CreateFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFunctionAsync(CreateFunctionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFunctionCode asynchronously, invoking a callback when done
-- @param UpdateFunctionCodeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateFunctionCodeAsync(UpdateFunctionCodeRequest, cb)
	assert(UpdateFunctionCodeRequest, "You must provide a UpdateFunctionCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFunctionCode",
	}
	for header,value in pairs(UpdateFunctionCodeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2015-03-31/functions/{FunctionName}/code", UpdateFunctionCodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFunctionCode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFunctionCodeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateFunctionCodeSync(UpdateFunctionCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFunctionCodeAsync(UpdateFunctionCodeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
