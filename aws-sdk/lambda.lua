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

local ListTagsRequest_keys = { "Resource" = true, nil }

function M.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	if struct["Resource"] then M.AssertFunctionArn(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsRequest_keys[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
--  
-- @param Resource [FunctionArn] &lt;p&gt;The ARN (Amazon Resource Name) of the function.&lt;/p&gt;
-- Required parameter: Resource
function M.ListTagsRequest(Resource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsRequest")
	local t = { 
		["Resource"] = Resource,
	}
	M.AssertListTagsRequest(t)
	return t
end

local ListAliasesResponse_keys = { "NextMarker" = true, "Aliases" = true, nil }

function M.AssertListAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesResponse to be of type 'table'")
	if struct["NextMarker"] then M.AssertString(struct["NextMarker"]) end
	if struct["Aliases"] then M.AssertAliasList(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(ListAliasesResponse_keys[k], "ListAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesResponse
--  
-- @param NextMarker [String] &lt;p&gt;A string, present if there are more aliases.&lt;/p&gt;
-- @param Aliases [AliasList] &lt;p&gt;A list of aliases.&lt;/p&gt;
function M.ListAliasesResponse(NextMarker, Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAliasesResponse")
	local t = { 
		["NextMarker"] = NextMarker,
		["Aliases"] = Aliases,
	}
	M.AssertListAliasesResponse(t)
	return t
end

local ListVersionsByFunctionRequest_keys = { "Marker" = true, "FunctionName" = true, "MaxItems" = true, nil }

function M.AssertListVersionsByFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVersionsByFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["MaxItems"] then M.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListVersionsByFunctionRequest_keys[k], "ListVersionsByFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVersionsByFunctionRequest
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt; Optional string. An opaque pagination token returned from a previous &lt;code&gt;ListVersionsByFunction&lt;/code&gt; operation. If present, indicates where to continue the listing. &lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;Function name whose versions to list. You can specify a function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). AWS Lambda also allows you to specify a partial ARN (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param MaxItems [MaxListItems] &lt;p&gt;Optional integer. Specifies the maximum number of AWS Lambda function versions to return in response. This parameter value must be greater than 0.&lt;/p&gt;
-- Required parameter: FunctionName
function M.ListVersionsByFunctionRequest(Marker, FunctionName, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVersionsByFunctionRequest")
	local t = { 
		["Marker"] = Marker,
		["FunctionName"] = FunctionName,
		["MaxItems"] = MaxItems,
	}
	M.AssertListVersionsByFunctionRequest(t)
	return t
end

local TracingConfig_keys = { "Mode" = true, nil }

function M.AssertTracingConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TracingConfig to be of type 'table'")
	if struct["Mode"] then M.AssertTracingMode(struct["Mode"]) end
	for k,_ in pairs(struct) do
		assert(TracingConfig_keys[k], "TracingConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TracingConfig
-- &lt;p&gt;The parent object that contains your function's tracing settings.&lt;/p&gt;
-- @param Mode [TracingMode] &lt;p&gt;Can be either PassThrough or Active. If PassThrough, Lambda will only trace the request from an upstream service if it contains a tracing header with &quot;sampled=1&quot;. If Active, Lambda will respect any tracing header it receives from an upstream service. If no tracing header is received, Lambda will call X-Ray for a tracing decision.&lt;/p&gt;
function M.TracingConfig(Mode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TracingConfig")
	local t = { 
		["Mode"] = Mode,
	}
	M.AssertTracingConfig(t)
	return t
end

local UpdateAliasRequest_keys = { "Description" = true, "FunctionVersion" = true, "FunctionName" = true, "Name" = true, nil }

function M.AssertUpdateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["FunctionVersion"] then M.AssertVersion(struct["FunctionVersion"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Name"] then M.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAliasRequest_keys[k], "UpdateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAliasRequest
--  
-- @param Description [Description] &lt;p&gt;You can change the description of the alias using this parameter.&lt;/p&gt;
-- @param FunctionVersion [Version] &lt;p&gt;Using this parameter you can change the Lambda function version to which the alias points.&lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The function name for which the alias is created. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.&lt;/p&gt;
-- @param Name [Alias] &lt;p&gt;The alias name.&lt;/p&gt;
-- Required parameter: FunctionName
-- Required parameter: Name
function M.UpdateAliasRequest(Description, FunctionVersion, FunctionName, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAliasRequest")
	local t = { 
		["Description"] = Description,
		["FunctionVersion"] = FunctionVersion,
		["FunctionName"] = FunctionName,
		["Name"] = Name,
	}
	M.AssertUpdateAliasRequest(t)
	return t
end

local KMSInvalidStateException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertKMSInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSInvalidStateException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(KMSInvalidStateException_keys[k], "KMSInvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSInvalidStateException
-- &lt;p&gt;Lambda was unable to decrypt the environment variables because the KMS key used is in an invalid state for Decrypt. Check the function's KMS key settings.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;Lambda was unable to decrypt the environment variables because the KMS key used is in an invalid state for Decrypt. Check the function's KMS key settings.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;Lambda was unable to decrypt the environment variables because the KMS key used is in an invalid state for Decrypt. Check the function's KMS key settings.&lt;/p&gt;
function M.KMSInvalidStateException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSInvalidStateException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertKMSInvalidStateException(t)
	return t
end

local InvokeAsyncRequest_keys = { "FunctionName" = true, "InvokeArgs" = true, nil }

function M.AssertInvokeAsyncRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvokeAsyncRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["InvokeArgs"], "Expected key InvokeArgs to exist in table")
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["InvokeArgs"] then M.AssertBlobStream(struct["InvokeArgs"]) end
	for k,_ in pairs(struct) do
		assert(InvokeAsyncRequest_keys[k], "InvokeAsyncRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvokeAsyncRequest
-- &lt;p/&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The Lambda function name. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.&lt;/p&gt;
-- @param InvokeArgs [BlobStream] &lt;p&gt;JSON that you want to provide to your Lambda function as input.&lt;/p&gt;
-- Required parameter: FunctionName
-- Required parameter: InvokeArgs
function M.InvokeAsyncRequest(FunctionName, InvokeArgs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvokeAsyncRequest")
	local t = { 
		["FunctionName"] = FunctionName,
		["InvokeArgs"] = InvokeArgs,
	}
	M.AssertInvokeAsyncRequest(t)
	return t
end

local Environment_keys = { "Variables" = true, nil }

function M.AssertEnvironment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Environment to be of type 'table'")
	if struct["Variables"] then M.AssertEnvironmentVariables(struct["Variables"]) end
	for k,_ in pairs(struct) do
		assert(Environment_keys[k], "Environment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Environment
-- &lt;p&gt;The parent object that contains your environment's configuration settings.&lt;/p&gt;
-- @param Variables [EnvironmentVariables] &lt;p&gt;The key-value pairs that represent your environment's configuration settings.&lt;/p&gt;
function M.Environment(Variables, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Environment")
	local t = { 
		["Variables"] = Variables,
	}
	M.AssertEnvironment(t)
	return t
end

local ListVersionsByFunctionResponse_keys = { "NextMarker" = true, "Versions" = true, nil }

function M.AssertListVersionsByFunctionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVersionsByFunctionResponse to be of type 'table'")
	if struct["NextMarker"] then M.AssertString(struct["NextMarker"]) end
	if struct["Versions"] then M.AssertFunctionList(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(ListVersionsByFunctionResponse_keys[k], "ListVersionsByFunctionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVersionsByFunctionResponse
-- &lt;p/&gt;
-- @param NextMarker [String] &lt;p&gt;A string, present if there are more function versions.&lt;/p&gt;
-- @param Versions [FunctionList] &lt;p&gt;A list of Lambda function versions.&lt;/p&gt;
function M.ListVersionsByFunctionResponse(NextMarker, Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVersionsByFunctionResponse")
	local t = { 
		["NextMarker"] = NextMarker,
		["Versions"] = Versions,
	}
	M.AssertListVersionsByFunctionResponse(t)
	return t
end

local ListEventSourceMappingsRequest_keys = { "Marker" = true, "EventSourceArn" = true, "FunctionName" = true, "MaxItems" = true, nil }

function M.AssertListEventSourceMappingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEventSourceMappingsRequest to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["EventSourceArn"] then M.AssertArn(struct["EventSourceArn"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["MaxItems"] then M.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListEventSourceMappingsRequest_keys[k], "ListEventSourceMappingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEventSourceMappingsRequest
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;Optional string. An opaque pagination token returned from a previous &lt;code&gt;ListEventSourceMappings&lt;/code&gt; operation. If present, specifies to continue the list from where the returning call left off. &lt;/p&gt;
-- @param EventSourceArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon Kinesis stream. (This parameter is optional.)&lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The name of the Lambda function.&lt;/p&gt; &lt;p&gt; You can specify the function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param MaxItems [MaxListItems] &lt;p&gt;Optional integer. Specifies the maximum number of event sources to return in response. This value must be greater than 0.&lt;/p&gt;
function M.ListEventSourceMappingsRequest(Marker, EventSourceArn, FunctionName, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEventSourceMappingsRequest")
	local t = { 
		["Marker"] = Marker,
		["EventSourceArn"] = EventSourceArn,
		["FunctionName"] = FunctionName,
		["MaxItems"] = MaxItems,
	}
	M.AssertListEventSourceMappingsRequest(t)
	return t
end

local AccountUsage_keys = { "FunctionCount" = true, "TotalCodeSize" = true, nil }

function M.AssertAccountUsage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountUsage to be of type 'table'")
	if struct["FunctionCount"] then M.AssertLong(struct["FunctionCount"]) end
	if struct["TotalCodeSize"] then M.AssertLong(struct["TotalCodeSize"]) end
	for k,_ in pairs(struct) do
		assert(AccountUsage_keys[k], "AccountUsage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountUsage
-- &lt;p&gt;Provides code size usage and function count associated with the current account and region.&lt;/p&gt;
-- @param FunctionCount [Long] &lt;p&gt;The number of your account's existing functions per region.&lt;/p&gt;
-- @param TotalCodeSize [Long] &lt;p&gt;Total size, in bytes, of the account's deployment packages per region.&lt;/p&gt;
function M.AccountUsage(FunctionCount, TotalCodeSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountUsage")
	local t = { 
		["FunctionCount"] = FunctionCount,
		["TotalCodeSize"] = TotalCodeSize,
	}
	M.AssertAccountUsage(t)
	return t
end

local KMSNotFoundException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertKMSNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(KMSNotFoundException_keys[k], "KMSNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSNotFoundException
-- &lt;p&gt;Lambda was unable to decrypt the environment variables because the KMS key was not found. Check the function's KMS key settings. &lt;/p&gt;
-- @param Message [String] &lt;p&gt;Lambda was unable to decrypt the environment variables because the KMS key was not found. Check the function's KMS key settings. &lt;/p&gt;
-- @param Type [String] &lt;p&gt;Lambda was unable to decrypt the environment variables because the KMS key was not found. Check the function's KMS key settings. &lt;/p&gt;
function M.KMSNotFoundException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSNotFoundException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertKMSNotFoundException(t)
	return t
end

local DeleteFunctionRequest_keys = { "FunctionName" = true, "Qualifier" = true, nil }

function M.AssertDeleteFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then M.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFunctionRequest_keys[k], "DeleteFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFunctionRequest
--  
-- @param FunctionName [FunctionName] &lt;p&gt;The Lambda function to delete.&lt;/p&gt; &lt;p&gt; You can specify the function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param Qualifier [Qualifier] &lt;p&gt;Using this optional parameter you can specify a function version (but not the &lt;code&gt;$LATEST&lt;/code&gt; version) to direct AWS Lambda to delete a specific function version. If the function version has one or more aliases pointing to it, you will get an error because you cannot have aliases pointing to it. You can delete any function version but not the &lt;code&gt;$LATEST&lt;/code&gt;, that is, you cannot specify &lt;code&gt;$LATEST&lt;/code&gt; as the value of this parameter. The &lt;code&gt;$LATEST&lt;/code&gt; version can be deleted only when you want to delete all the function versions and aliases.&lt;/p&gt; &lt;p&gt;You can only specify a function version, not an alias name, using this parameter. You cannot delete a function version using its alias.&lt;/p&gt; &lt;p&gt;If you don't specify this parameter, AWS Lambda will delete the function, including all of its versions and aliases.&lt;/p&gt;
-- Required parameter: FunctionName
function M.DeleteFunctionRequest(FunctionName, Qualifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFunctionRequest")
	local t = { 
		["FunctionName"] = FunctionName,
		["Qualifier"] = Qualifier,
	}
	M.AssertDeleteFunctionRequest(t)
	return t
end

local GetFunctionRequest_keys = { "FunctionName" = true, "Qualifier" = true, nil }

function M.AssertGetFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then M.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(GetFunctionRequest_keys[k], "GetFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionRequest
-- &lt;p/&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The Lambda function name.&lt;/p&gt; &lt;p&gt; You can specify a function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). AWS Lambda also allows you to specify a partial ARN (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param Qualifier [Qualifier] &lt;p&gt;Using this optional parameter to specify a function version or an alias name. If you specify function version, the API uses qualified function ARN for the request and returns information about the specific Lambda function version. If you specify an alias name, the API uses the alias ARN and returns information about the function version to which the alias points. If you don't provide this parameter, the API uses unqualified function ARN and returns information about the &lt;code&gt;$LATEST&lt;/code&gt; version of the Lambda function.&lt;/p&gt;
-- Required parameter: FunctionName
function M.GetFunctionRequest(FunctionName, Qualifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionRequest")
	local t = { 
		["FunctionName"] = FunctionName,
		["Qualifier"] = Qualifier,
	}
	M.AssertGetFunctionRequest(t)
	return t
end

local PublishVersionRequest_keys = { "CodeSha256" = true, "FunctionName" = true, "Description" = true, nil }

function M.AssertPublishVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishVersionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["CodeSha256"] then M.AssertString(struct["CodeSha256"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(PublishVersionRequest_keys[k], "PublishVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishVersionRequest
-- &lt;p/&gt;
-- @param CodeSha256 [String] &lt;p&gt;The SHA256 hash of the deployment package you want to publish. This provides validation on the code you are publishing. If you provide this parameter value must match the SHA256 of the $LATEST version for the publication to succeed.&lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The Lambda function name. You can specify a function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). AWS Lambda also allows you to specify a partial ARN (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param Description [Description] &lt;p&gt;The description for the version you are publishing. If not provided, AWS Lambda copies the description from the $LATEST version.&lt;/p&gt;
-- Required parameter: FunctionName
function M.PublishVersionRequest(CodeSha256, FunctionName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishVersionRequest")
	local t = { 
		["CodeSha256"] = CodeSha256,
		["FunctionName"] = FunctionName,
		["Description"] = Description,
	}
	M.AssertPublishVersionRequest(t)
	return t
end

local DeleteAliasRequest_keys = { "FunctionName" = true, "Name" = true, nil }

function M.AssertDeleteAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Name"] then M.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAliasRequest_keys[k], "DeleteAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAliasRequest
--  
-- @param FunctionName [FunctionName] &lt;p&gt;The Lambda function name for which the alias is created. Deleting an alias does not delete the function version to which it is pointing. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.&lt;/p&gt;
-- @param Name [Alias] &lt;p&gt;Name of the alias to delete.&lt;/p&gt;
-- Required parameter: FunctionName
-- Required parameter: Name
function M.DeleteAliasRequest(FunctionName, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAliasRequest")
	local t = { 
		["FunctionName"] = FunctionName,
		["Name"] = Name,
	}
	M.AssertDeleteAliasRequest(t)
	return t
end

local InvocationRequest_keys = { "FunctionName" = true, "InvocationType" = true, "LogType" = true, "ClientContext" = true, "Payload" = true, "Qualifier" = true, nil }

function M.AssertInvocationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvocationRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["InvocationType"] then M.AssertInvocationType(struct["InvocationType"]) end
	if struct["LogType"] then M.AssertLogType(struct["LogType"]) end
	if struct["ClientContext"] then M.AssertString(struct["ClientContext"]) end
	if struct["Payload"] then M.AssertBlob(struct["Payload"]) end
	if struct["Qualifier"] then M.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(InvocationRequest_keys[k], "InvocationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvocationRequest
-- &lt;p/&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The Lambda function name.&lt;/p&gt; &lt;p&gt; You can specify a function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). AWS Lambda also allows you to specify a partial ARN (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param InvocationType [InvocationType] &lt;p&gt;By default, the &lt;code&gt;Invoke&lt;/code&gt; API assumes &lt;code&gt;RequestResponse&lt;/code&gt; invocation type. You can optionally request asynchronous execution by specifying &lt;code&gt;Event&lt;/code&gt; as the &lt;code&gt;InvocationType&lt;/code&gt;. You can also use this parameter to request AWS Lambda to not execute the function but do some verification, such as if the caller is authorized to invoke the function and if the inputs are valid. You request this by specifying &lt;code&gt;DryRun&lt;/code&gt; as the &lt;code&gt;InvocationType&lt;/code&gt;. This is useful in a cross-account scenario when you want to verify access to a function without running it. &lt;/p&gt;
-- @param LogType [LogType] &lt;p&gt;You can set this optional parameter to &lt;code&gt;Tail&lt;/code&gt; in the request only if you specify the &lt;code&gt;InvocationType&lt;/code&gt; parameter with value &lt;code&gt;RequestResponse&lt;/code&gt;. In this case, AWS Lambda returns the base64-encoded last 4 KB of log data produced by your Lambda function in the &lt;code&gt;x-amz-log-result&lt;/code&gt; header. &lt;/p&gt;
-- @param ClientContext [String] &lt;p&gt;Using the &lt;code&gt;ClientContext&lt;/code&gt; you can pass client-specific information to the Lambda function you are invoking. You can then process the client information in your Lambda function as you choose through the context variable. For an example of a &lt;code&gt;ClientContext&lt;/code&gt; JSON, see &lt;a href=&quot;http://docs.aws.amazon.com/mobileanalytics/latest/ug/PutEvents.html&quot;&gt;PutEvents&lt;/a&gt; in the &lt;i&gt;Amazon Mobile Analytics API Reference and User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;The ClientContext JSON must be base64-encoded.&lt;/p&gt;
-- @param Payload [Blob] &lt;p&gt;JSON that you want to provide to your Lambda function as input.&lt;/p&gt;
-- @param Qualifier [Qualifier] &lt;p&gt;You can use this optional parameter to specify a Lambda function version or alias name. If you specify a function version, the API uses the qualified function ARN to invoke a specific Lambda function. If you specify an alias name, the API uses the alias ARN to invoke the Lambda function version to which the alias points.&lt;/p&gt; &lt;p&gt;If you don't provide this parameter, then the API uses unqualified function ARN which results in invocation of the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt;
-- Required parameter: FunctionName
function M.InvocationRequest(FunctionName, InvocationType, LogType, ClientContext, Payload, Qualifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvocationRequest")
	local t = { 
		["FunctionName"] = FunctionName,
		["InvocationType"] = InvocationType,
		["LogType"] = LogType,
		["ClientContext"] = ClientContext,
		["Payload"] = Payload,
		["Qualifier"] = Qualifier,
	}
	M.AssertInvocationRequest(t)
	return t
end

local GetAliasRequest_keys = { "FunctionName" = true, "Name" = true, nil }

function M.AssertGetAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Name"] then M.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(GetAliasRequest_keys[k], "GetAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAliasRequest
--  
-- @param FunctionName [FunctionName] &lt;p&gt;Function name for which the alias is created. An alias is a subresource that exists only in the context of an existing Lambda function so you must specify the function name. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.&lt;/p&gt;
-- @param Name [Alias] &lt;p&gt;Name of the alias for which you want to retrieve information.&lt;/p&gt;
-- Required parameter: FunctionName
-- Required parameter: Name
function M.GetAliasRequest(FunctionName, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAliasRequest")
	local t = { 
		["FunctionName"] = FunctionName,
		["Name"] = Name,
	}
	M.AssertGetAliasRequest(t)
	return t
end

local UpdateFunctionCodeRequest_keys = { "DryRun" = true, "FunctionName" = true, "ZipFile" = true, "Publish" = true, "S3Bucket" = true, "S3Key" = true, "S3ObjectVersion" = true, nil }

function M.AssertUpdateFunctionCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFunctionCodeRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["DryRun"] then M.AssertBoolean(struct["DryRun"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["ZipFile"] then M.AssertBlob(struct["ZipFile"]) end
	if struct["Publish"] then M.AssertBoolean(struct["Publish"]) end
	if struct["S3Bucket"] then M.AssertS3Bucket(struct["S3Bucket"]) end
	if struct["S3Key"] then M.AssertS3Key(struct["S3Key"]) end
	if struct["S3ObjectVersion"] then M.AssertS3ObjectVersion(struct["S3ObjectVersion"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFunctionCodeRequest_keys[k], "UpdateFunctionCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFunctionCodeRequest
-- &lt;p/&gt;
-- @param DryRun [Boolean] &lt;p&gt;This boolean parameter can be used to test your request to AWS Lambda to update the Lambda function and publish a version as an atomic operation. It will do all necessary computation and validation of your code but will not upload it or a publish a version. Each time this operation is invoked, the &lt;code&gt;CodeSha256&lt;/code&gt; hash value the provided code will also be computed and returned in the response.&lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The existing Lambda function name whose code you want to replace.&lt;/p&gt; &lt;p&gt; You can specify a function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). AWS Lambda also allows you to specify a partial ARN (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param ZipFile [Blob] &lt;p&gt;The contents of your zip file containing your deployment package. If you are using the web API directly, the contents of the zip file must be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the SDKs or CLI will do the encoding for you. For more information about creating a .zip file, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html&quot;&gt;Execution Permissions&lt;/a&gt; in the &lt;i&gt;AWS Lambda Developer Guide&lt;/i&gt;. &lt;/p&gt;
-- @param Publish [Boolean] &lt;p&gt;This boolean parameter can be used to request AWS Lambda to update the Lambda function and publish a version as an atomic operation.&lt;/p&gt;
-- @param S3Bucket [S3Bucket] &lt;p&gt;Amazon S3 bucket name where the .zip file containing your deployment package is stored. This bucket must reside in the same AWS Region where you are creating the Lambda function.&lt;/p&gt;
-- @param S3Key [S3Key] &lt;p&gt;The Amazon S3 object (the deployment package) key name you want to upload.&lt;/p&gt;
-- @param S3ObjectVersion [S3ObjectVersion] &lt;p&gt;The Amazon S3 object (the deployment package) version you want to upload.&lt;/p&gt;
-- Required parameter: FunctionName
function M.UpdateFunctionCodeRequest(DryRun, FunctionName, ZipFile, Publish, S3Bucket, S3Key, S3ObjectVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFunctionCodeRequest")
	local t = { 
		["DryRun"] = DryRun,
		["FunctionName"] = FunctionName,
		["ZipFile"] = ZipFile,
		["Publish"] = Publish,
		["S3Bucket"] = S3Bucket,
		["S3Key"] = S3Key,
		["S3ObjectVersion"] = S3ObjectVersion,
	}
	M.AssertUpdateFunctionCodeRequest(t)
	return t
end

local UpdateFunctionConfigurationRequest_keys = { "TracingConfig" = true, "DeadLetterConfig" = true, "FunctionName" = true, "VpcConfig" = true, "KMSKeyArn" = true, "MemorySize" = true, "Environment" = true, "Handler" = true, "Role" = true, "Timeout" = true, "Runtime" = true, "Description" = true, nil }

function M.AssertUpdateFunctionConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFunctionConfigurationRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["TracingConfig"] then M.AssertTracingConfig(struct["TracingConfig"]) end
	if struct["DeadLetterConfig"] then M.AssertDeadLetterConfig(struct["DeadLetterConfig"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["VpcConfig"] then M.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["KMSKeyArn"] then M.AssertKMSKeyArn(struct["KMSKeyArn"]) end
	if struct["MemorySize"] then M.AssertMemorySize(struct["MemorySize"]) end
	if struct["Environment"] then M.AssertEnvironment(struct["Environment"]) end
	if struct["Handler"] then M.AssertHandler(struct["Handler"]) end
	if struct["Role"] then M.AssertRoleArn(struct["Role"]) end
	if struct["Timeout"] then M.AssertTimeout(struct["Timeout"]) end
	if struct["Runtime"] then M.AssertRuntime(struct["Runtime"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFunctionConfigurationRequest_keys[k], "UpdateFunctionConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFunctionConfigurationRequest
-- &lt;p/&gt;
-- @param TracingConfig [TracingConfig] &lt;p&gt;The parent object that contains your function's tracing settings.&lt;/p&gt;
-- @param DeadLetterConfig [DeadLetterConfig] &lt;p&gt;The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic.&lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The name of the Lambda function.&lt;/p&gt; &lt;p&gt; You can specify a function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). AWS Lambda also allows you to specify a partial ARN (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 character in length. &lt;/p&gt;
-- @param VpcConfig [VpcConfig] &lt;p/&gt;
-- @param KMSKeyArn [KMSKeyArn] &lt;p&gt;The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If you elect to use the AWS Lambda default service key, pass in an empty string (&quot;&quot;) for this parameter.&lt;/p&gt;
-- @param MemorySize [MemorySize] &lt;p&gt;The amount of memory, in MB, your Lambda function is given. AWS Lambda uses this memory size to infer the amount of CPU allocated to your function. Your function use-case determines your CPU and memory requirements. For example, a database operation might need less memory compared to an image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.&lt;/p&gt;
-- @param Environment [Environment] &lt;p&gt;The parent object that contains your environment's configuration settings.&lt;/p&gt;
-- @param Handler [Handler] &lt;p&gt;The function that Lambda calls to begin executing your function. For Node.js, it is the &lt;code&gt;module-name.export&lt;/code&gt; value in your function. &lt;/p&gt;
-- @param Role [RoleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role that Lambda will assume when it executes your function.&lt;/p&gt;
-- @param Timeout [Timeout] &lt;p&gt;The function execution time at which AWS Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds.&lt;/p&gt;
-- @param Runtime [Runtime] &lt;p&gt;The runtime environment for the Lambda function.&lt;/p&gt; &lt;p&gt;To use the Python runtime v3.6, set the value to &quot;python3.6&quot;. To use the Python runtime v2.7, set the value to &quot;python2.7&quot;. To use the Node.js runtime v6.10, set the value to &quot;nodejs6.10&quot;. To use the Node.js runtime v4.3, set the value to &quot;nodejs4.3&quot;. To use the Python runtime v3.6, set the value to &quot;python3.6&quot;. To use the Python runtime v2.7, set the value to &quot;python2.7&quot;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Node v0.10.42 is currently marked as deprecated. You must migrate existing functions to the newer Node.js runtime versions available on AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. You can request a one-time extension until June 30, 2017 by going to the Lambda console and following the instructions provided. Failure to do so will result in an invalid parameter value error being returned. Note that you will have to follow this procedure for each region that contains functions written in the Node v0.10.42 runtime.&lt;/p&gt; &lt;/note&gt;
-- @param Description [Description] &lt;p&gt;A short user-defined function description. AWS Lambda does not use this value. Assign a meaningful description as you see fit.&lt;/p&gt;
-- Required parameter: FunctionName
function M.UpdateFunctionConfigurationRequest(TracingConfig, DeadLetterConfig, FunctionName, VpcConfig, KMSKeyArn, MemorySize, Environment, Handler, Role, Timeout, Runtime, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFunctionConfigurationRequest")
	local t = { 
		["TracingConfig"] = TracingConfig,
		["DeadLetterConfig"] = DeadLetterConfig,
		["FunctionName"] = FunctionName,
		["VpcConfig"] = VpcConfig,
		["KMSKeyArn"] = KMSKeyArn,
		["MemorySize"] = MemorySize,
		["Environment"] = Environment,
		["Handler"] = Handler,
		["Role"] = Role,
		["Timeout"] = Timeout,
		["Runtime"] = Runtime,
		["Description"] = Description,
	}
	M.AssertUpdateFunctionConfigurationRequest(t)
	return t
end

local AliasConfiguration_keys = { "AliasArn" = true, "FunctionVersion" = true, "Name" = true, "Description" = true, nil }

function M.AssertAliasConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasConfiguration to be of type 'table'")
	if struct["AliasArn"] then M.AssertFunctionArn(struct["AliasArn"]) end
	if struct["FunctionVersion"] then M.AssertVersion(struct["FunctionVersion"]) end
	if struct["Name"] then M.AssertAlias(struct["Name"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(AliasConfiguration_keys[k], "AliasConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasConfiguration
-- &lt;p&gt;Provides configuration information about a Lambda function version alias.&lt;/p&gt;
-- @param AliasArn [FunctionArn] &lt;p&gt;Lambda function ARN that is qualified using the alias name as the suffix. For example, if you create an alias called &lt;code&gt;BETA&lt;/code&gt; that points to a helloworld function version, the ARN is &lt;code&gt;arn:aws:lambda:aws-regions:acct-id:function:helloworld:BETA&lt;/code&gt;.&lt;/p&gt;
-- @param FunctionVersion [Version] &lt;p&gt;Function version to which the alias points.&lt;/p&gt;
-- @param Name [Alias] &lt;p&gt;Alias name.&lt;/p&gt;
-- @param Description [Description] &lt;p&gt;Alias description.&lt;/p&gt;
function M.AliasConfiguration(AliasArn, FunctionVersion, Name, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AliasConfiguration")
	local t = { 
		["AliasArn"] = AliasArn,
		["FunctionVersion"] = FunctionVersion,
		["Name"] = Name,
		["Description"] = Description,
	}
	M.AssertAliasConfiguration(t)
	return t
end

local GetAccountSettingsResponse_keys = { "AccountLimit" = true, "AccountUsage" = true, nil }

function M.AssertGetAccountSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsResponse to be of type 'table'")
	if struct["AccountLimit"] then M.AssertAccountLimit(struct["AccountLimit"]) end
	if struct["AccountUsage"] then M.AssertAccountUsage(struct["AccountUsage"]) end
	for k,_ in pairs(struct) do
		assert(GetAccountSettingsResponse_keys[k], "GetAccountSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsResponse
--  
-- @param AccountLimit [AccountLimit]  
-- @param AccountUsage [AccountUsage]  
function M.GetAccountSettingsResponse(AccountLimit, AccountUsage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountSettingsResponse")
	local t = { 
		["AccountLimit"] = AccountLimit,
		["AccountUsage"] = AccountUsage,
	}
	M.AssertGetAccountSettingsResponse(t)
	return t
end

local VpcConfigResponse_keys = { "SubnetIds" = true, "VpcId" = true, "SecurityGroupIds" = true, nil }

function M.AssertVpcConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfigResponse to be of type 'table'")
	if struct["SubnetIds"] then M.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["VpcId"] then M.AssertVpcId(struct["VpcId"]) end
	if struct["SecurityGroupIds"] then M.AssertSecurityGroupIds(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(VpcConfigResponse_keys[k], "VpcConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfigResponse
-- &lt;p&gt;VPC configuration associated with your Lambda function.&lt;/p&gt;
-- @param SubnetIds [SubnetIds] &lt;p&gt;A list of subnet IDs associated with the Lambda function.&lt;/p&gt;
-- @param VpcId [VpcId] &lt;p&gt;The VPC ID associated with you Lambda function.&lt;/p&gt;
-- @param SecurityGroupIds [SecurityGroupIds] &lt;p&gt;A list of security group IDs associated with the Lambda function.&lt;/p&gt;
function M.VpcConfigResponse(SubnetIds, VpcId, SecurityGroupIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VpcConfigResponse")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["VpcId"] = VpcId,
		["SecurityGroupIds"] = SecurityGroupIds,
	}
	M.AssertVpcConfigResponse(t)
	return t
end

local InvocationResponse_keys = { "LogResult" = true, "FunctionError" = true, "Payload" = true, "StatusCode" = true, nil }

function M.AssertInvocationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvocationResponse to be of type 'table'")
	if struct["LogResult"] then M.AssertString(struct["LogResult"]) end
	if struct["FunctionError"] then M.AssertString(struct["FunctionError"]) end
	if struct["Payload"] then M.AssertBlob(struct["Payload"]) end
	if struct["StatusCode"] then M.AssertInteger(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(InvocationResponse_keys[k], "InvocationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvocationResponse
-- &lt;p&gt;Upon success, returns an empty response. Otherwise, throws an exception.&lt;/p&gt;
-- @param LogResult [String] &lt;p&gt; It is the base64-encoded logs for the Lambda function invocation. This is present only if the invocation type is &lt;code&gt;RequestResponse&lt;/code&gt; and the logs were requested. &lt;/p&gt;
-- @param FunctionError [String] &lt;p&gt;Indicates whether an error occurred while executing the Lambda function. If an error occurred this field will have one of two values; &lt;code&gt;Handled&lt;/code&gt; or &lt;code&gt;Unhandled&lt;/code&gt;. &lt;code&gt;Handled&lt;/code&gt; errors are errors that are reported by the function while the &lt;code&gt;Unhandled&lt;/code&gt; errors are those detected and reported by AWS Lambda. Unhandled errors include out of memory errors and function timeouts. For information about how to report an &lt;code&gt;Handled&lt;/code&gt; error, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/programming-model.html&quot;&gt;Programming Model&lt;/a&gt;. &lt;/p&gt;
-- @param Payload [Blob] &lt;p&gt; It is the JSON representation of the object returned by the Lambda function. This is present only if the invocation type is &lt;code&gt;RequestResponse&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;In the event of a function error this field contains a message describing the error. For the &lt;code&gt;Handled&lt;/code&gt; errors the Lambda function will report this message. For &lt;code&gt;Unhandled&lt;/code&gt; errors AWS Lambda reports the message. &lt;/p&gt;
-- @param StatusCode [Integer] &lt;p&gt;The HTTP status code will be in the 200 range for successful request. For the &lt;code&gt;RequestResponse&lt;/code&gt; invocation type this status code will be 200. For the &lt;code&gt;Event&lt;/code&gt; invocation type this status code will be 202. For the &lt;code&gt;DryRun&lt;/code&gt; invocation type the status code will be 204. &lt;/p&gt;
function M.InvocationResponse(LogResult, FunctionError, Payload, StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvocationResponse")
	local t = { 
		["LogResult"] = LogResult,
		["FunctionError"] = FunctionError,
		["Payload"] = Payload,
		["StatusCode"] = StatusCode,
	}
	M.AssertInvocationResponse(t)
	return t
end

local CodeStorageExceededException_keys = { "message" = true, "Type" = true, nil }

function M.AssertCodeStorageExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeStorageExceededException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(CodeStorageExceededException_keys[k], "CodeStorageExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeStorageExceededException
-- &lt;p&gt;You have exceeded your maximum total code size per account. &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/limits.html&quot;&gt;Limits&lt;/a&gt; &lt;/p&gt;
-- @param message [String] &lt;p&gt;You have exceeded your maximum total code size per account. &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/limits.html&quot;&gt;Limits&lt;/a&gt; &lt;/p&gt;
-- @param Type [String] &lt;p/&gt;
function M.CodeStorageExceededException(message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CodeStorageExceededException")
	local t = { 
		["message"] = message,
		["Type"] = Type,
	}
	M.AssertCodeStorageExceededException(t)
	return t
end

local TooManyRequestsException_keys = { "message" = true, "Type" = true, "Reason" = true, "retryAfterSeconds" = true, nil }

function M.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	if struct["Reason"] then M.AssertThrottleReason(struct["Reason"]) end
	if struct["retryAfterSeconds"] then M.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(TooManyRequestsException_keys[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- &lt;p/&gt;
-- @param message [String] &lt;p/&gt;
-- @param Type [String] &lt;p/&gt;
-- @param Reason [ThrottleReason] &lt;p/&gt;
-- @param retryAfterSeconds [String] &lt;p&gt;The number of seconds the caller should wait before retrying.&lt;/p&gt;
function M.TooManyRequestsException(message, Type, Reason, retryAfterSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["message"] = message,
		["Type"] = Type,
		["Reason"] = Reason,
		["retryAfterSeconds"] = retryAfterSeconds,
	}
	M.AssertTooManyRequestsException(t)
	return t
end

local ENILimitReachedException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertENILimitReachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ENILimitReachedException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(ENILimitReachedException_keys[k], "ENILimitReachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ENILimitReachedException
-- &lt;p&gt;AWS Lambda was not able to create an Elastic Network Interface (ENI) in the VPC, specified as part of Lambda function configuration, because the limit for network interfaces has been reached.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;AWS Lambda was not able to create an Elastic Network Interface (ENI) in the VPC, specified as part of Lambda function configuration, because the limit for network interfaces has been reached.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;AWS Lambda was not able to create an Elastic Network Interface (ENI) in the VPC, specified as part of Lambda function configuration, because the limit for network interfaces has been reached.&lt;/p&gt;
function M.ENILimitReachedException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ENILimitReachedException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertENILimitReachedException(t)
	return t
end

local CreateEventSourceMappingRequest_keys = { "FunctionName" = true, "StartingPositionTimestamp" = true, "BatchSize" = true, "Enabled" = true, "EventSourceArn" = true, "StartingPosition" = true, nil }

function M.AssertCreateEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSourceMappingRequest to be of type 'table'")
	assert(struct["EventSourceArn"], "Expected key EventSourceArn to exist in table")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["StartingPosition"], "Expected key StartingPosition to exist in table")
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["StartingPositionTimestamp"] then M.AssertDate(struct["StartingPositionTimestamp"]) end
	if struct["BatchSize"] then M.AssertBatchSize(struct["BatchSize"]) end
	if struct["Enabled"] then M.AssertEnabled(struct["Enabled"]) end
	if struct["EventSourceArn"] then M.AssertArn(struct["EventSourceArn"]) end
	if struct["StartingPosition"] then M.AssertEventSourcePosition(struct["StartingPosition"]) end
	for k,_ in pairs(struct) do
		assert(CreateEventSourceMappingRequest_keys[k], "CreateEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSourceMappingRequest
-- &lt;p/&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The Lambda function to invoke when AWS Lambda detects an event on the stream.&lt;/p&gt; &lt;p&gt; You can specify the function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). &lt;/p&gt; &lt;p&gt; If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). For more information about versioning, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html&quot;&gt;AWS Lambda Function Versioning and Aliases&lt;/a&gt; &lt;/p&gt; &lt;p&gt;AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). &lt;/p&gt; &lt;p&gt;Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.&lt;/p&gt;
-- @param StartingPositionTimestamp [Date] &lt;p&gt;The timestamp of the data record from which to start reading. Used with &lt;a href=&quot;http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType&quot;&gt;shard iterator type&lt;/a&gt; AT_TIMESTAMP. If a record with this exact timestamp does not exist, the iterator returned is for the next (later) record. If the timestamp is older than the current trim horizon, the iterator returned is for the oldest untrimmed data record (TRIM_HORIZON). Valid only for Kinesis streams. &lt;/p&gt;
-- @param BatchSize [BatchSize] &lt;p&gt;The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Your function receives an event with all the retrieved records. The default is 100 records.&lt;/p&gt;
-- @param Enabled [Enabled] &lt;p&gt;Indicates whether AWS Lambda should begin polling the event source. By default, &lt;code&gt;Enabled&lt;/code&gt; is true. &lt;/p&gt;
-- @param EventSourceArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon Kinesis or the Amazon DynamoDB stream that is the event source. Any record added to this stream could cause AWS Lambda to invoke your Lambda function, it depends on the &lt;code&gt;BatchSize&lt;/code&gt;. AWS Lambda POSTs the Amazon Kinesis event, containing records, to your Lambda function as JSON.&lt;/p&gt;
-- @param StartingPosition [EventSourcePosition] &lt;p&gt;The position in the stream where AWS Lambda should start reading. Valid only for Kinesis streams. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType&quot;&gt;ShardIteratorType&lt;/a&gt; in the &lt;i&gt;Amazon Kinesis API Reference&lt;/i&gt;. &lt;/p&gt;
-- Required parameter: EventSourceArn
-- Required parameter: FunctionName
-- Required parameter: StartingPosition
function M.CreateEventSourceMappingRequest(FunctionName, StartingPositionTimestamp, BatchSize, Enabled, EventSourceArn, StartingPosition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEventSourceMappingRequest")
	local t = { 
		["FunctionName"] = FunctionName,
		["StartingPositionTimestamp"] = StartingPositionTimestamp,
		["BatchSize"] = BatchSize,
		["Enabled"] = Enabled,
		["EventSourceArn"] = EventSourceArn,
		["StartingPosition"] = StartingPosition,
	}
	M.AssertCreateEventSourceMappingRequest(t)
	return t
end

local RemovePermissionRequest_keys = { "StatementId" = true, "FunctionName" = true, "Qualifier" = true, nil }

function M.AssertRemovePermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemovePermissionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["StatementId"], "Expected key StatementId to exist in table")
	if struct["StatementId"] then M.AssertStatementId(struct["StatementId"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then M.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(RemovePermissionRequest_keys[k], "RemovePermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemovePermissionRequest
-- &lt;p/&gt;
-- @param StatementId [StatementId] &lt;p&gt;Statement ID of the permission to remove.&lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;Lambda function whose resource policy you want to remove a permission from.&lt;/p&gt; &lt;p&gt; You can specify a function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). AWS Lambda also allows you to specify a partial ARN (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param Qualifier [Qualifier] &lt;p&gt;You can specify this optional parameter to remove permission associated with a specific function version or function alias. If you don't specify this parameter, the API removes permission associated with the unqualified function ARN.&lt;/p&gt;
-- Required parameter: FunctionName
-- Required parameter: StatementId
function M.RemovePermissionRequest(StatementId, FunctionName, Qualifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemovePermissionRequest")
	local t = { 
		["StatementId"] = StatementId,
		["FunctionName"] = FunctionName,
		["Qualifier"] = Qualifier,
	}
	M.AssertRemovePermissionRequest(t)
	return t
end

local ListFunctionsRequest_keys = { "Marker" = true, "MaxItems" = true, nil }

function M.AssertListFunctionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionsRequest to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListFunctionsRequest_keys[k], "ListFunctionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionsRequest
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;Optional string. An opaque pagination token returned from a previous &lt;code&gt;ListFunctions&lt;/code&gt; operation. If present, indicates where to continue the listing. &lt;/p&gt;
-- @param MaxItems [MaxListItems] &lt;p&gt;Optional integer. Specifies the maximum number of AWS Lambda functions to return in response. This parameter value must be greater than 0.&lt;/p&gt;
function M.ListFunctionsRequest(Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFunctionsRequest")
	local t = { 
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListFunctionsRequest(t)
	return t
end

local EC2UnexpectedException_keys = { "Message" = true, "Type" = true, "EC2ErrorCode" = true, nil }

function M.AssertEC2UnexpectedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2UnexpectedException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	if struct["EC2ErrorCode"] then M.AssertString(struct["EC2ErrorCode"]) end
	for k,_ in pairs(struct) do
		assert(EC2UnexpectedException_keys[k], "EC2UnexpectedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2UnexpectedException
-- &lt;p&gt;AWS Lambda received an unexpected EC2 client exception while setting up for the Lambda function.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;AWS Lambda received an unexpected EC2 client exception while setting up for the Lambda function.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;AWS Lambda received an unexpected EC2 client exception while setting up for the Lambda function.&lt;/p&gt;
-- @param EC2ErrorCode [String] &lt;p&gt;AWS Lambda received an unexpected EC2 client exception while setting up for the Lambda function.&lt;/p&gt;
function M.EC2UnexpectedException(Message, Type, EC2ErrorCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2UnexpectedException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
		["EC2ErrorCode"] = EC2ErrorCode,
	}
	M.AssertEC2UnexpectedException(t)
	return t
end

local UntagResourceRequest_keys = { "TagKeys" = true, "Resource" = true, nil }

function M.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	if struct["Resource"] then M.AssertFunctionArn(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourceRequest_keys[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param TagKeys [TagKeyList] &lt;p&gt;The list of tag keys to be deleted from the function.&lt;/p&gt;
-- @param Resource [FunctionArn] &lt;p&gt;The ARN (Amazon Resource Name) of the function.&lt;/p&gt;
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

local CreateFunctionRequest_keys = { "TracingConfig" = true, "Code" = true, "DeadLetterConfig" = true, "FunctionName" = true, "VpcConfig" = true, "Tags" = true, "KMSKeyArn" = true, "MemorySize" = true, "Publish" = true, "Environment" = true, "Handler" = true, "Role" = true, "Timeout" = true, "Runtime" = true, "Description" = true, nil }

function M.AssertCreateFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Runtime"], "Expected key Runtime to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["Handler"], "Expected key Handler to exist in table")
	assert(struct["Code"], "Expected key Code to exist in table")
	if struct["TracingConfig"] then M.AssertTracingConfig(struct["TracingConfig"]) end
	if struct["Code"] then M.AssertFunctionCode(struct["Code"]) end
	if struct["DeadLetterConfig"] then M.AssertDeadLetterConfig(struct["DeadLetterConfig"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["VpcConfig"] then M.AssertVpcConfig(struct["VpcConfig"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	if struct["KMSKeyArn"] then M.AssertKMSKeyArn(struct["KMSKeyArn"]) end
	if struct["MemorySize"] then M.AssertMemorySize(struct["MemorySize"]) end
	if struct["Publish"] then M.AssertBoolean(struct["Publish"]) end
	if struct["Environment"] then M.AssertEnvironment(struct["Environment"]) end
	if struct["Handler"] then M.AssertHandler(struct["Handler"]) end
	if struct["Role"] then M.AssertRoleArn(struct["Role"]) end
	if struct["Timeout"] then M.AssertTimeout(struct["Timeout"]) end
	if struct["Runtime"] then M.AssertRuntime(struct["Runtime"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateFunctionRequest_keys[k], "CreateFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionRequest
-- &lt;p/&gt;
-- @param TracingConfig [TracingConfig] &lt;p&gt;The parent object that contains your function's tracing settings.&lt;/p&gt;
-- @param Code [FunctionCode] &lt;p&gt;The code for the Lambda function.&lt;/p&gt;
-- @param DeadLetterConfig [DeadLetterConfig] &lt;p&gt;The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic. &lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The name you want to assign to the function you are uploading. The function names appear in the console and are returned in the &lt;a&gt;ListFunctions&lt;/a&gt; API. Function names are used to specify functions to other AWS Lambda API operations, such as &lt;a&gt;Invoke&lt;/a&gt;. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param VpcConfig [VpcConfig] &lt;p&gt;If your Lambda function accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and one subnet ID.&lt;/p&gt;
-- @param Tags [Tags] &lt;p&gt;The list of tags (key-value pairs) assigned to the new function.&lt;/p&gt;
-- @param KMSKeyArn [KMSKeyArn] &lt;p&gt;The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If not provided, AWS Lambda will use a default service key.&lt;/p&gt;
-- @param MemorySize [MemorySize] &lt;p&gt;The amount of memory, in MB, your Lambda function is given. Lambda uses this memory size to infer the amount of CPU and memory allocated to your function. Your function use-case determines your CPU and memory requirements. For example, a database operation might need less memory compared to an image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.&lt;/p&gt;
-- @param Publish [Boolean] &lt;p&gt;This boolean parameter can be used to request AWS Lambda to create the Lambda function and publish a version as an atomic operation.&lt;/p&gt;
-- @param Environment [Environment] &lt;p/&gt;
-- @param Handler [Handler] &lt;p&gt;The function within your code that Lambda calls to begin execution. For Node.js, it is the &lt;i&gt;module-name&lt;/i&gt;.&lt;i&gt;export&lt;/i&gt; value in your function. For Java, it can be &lt;code&gt;package.class-name::handler&lt;/code&gt; or &lt;code&gt;package.class-name&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/java-programming-model-handler-types.html&quot;&gt;Lambda Function Handler (Java)&lt;/a&gt;. &lt;/p&gt;
-- @param Role [RoleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html&quot;&gt;AWS Lambda: How it Works&lt;/a&gt;. &lt;/p&gt;
-- @param Timeout [Timeout] &lt;p&gt;The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds.&lt;/p&gt;
-- @param Runtime [Runtime] &lt;p&gt;The runtime environment for the Lambda function you are uploading.&lt;/p&gt; &lt;p&gt;To use the Python runtime v3.6, set the value to &quot;python3.6&quot;. To use the Python runtime v2.7, set the value to &quot;python2.7&quot;. To use the Node.js runtime v6.10, set the value to &quot;nodejs6.10&quot;. To use the Node.js runtime v4.3, set the value to &quot;nodejs4.3&quot;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Node v0.10.42 is currently marked as deprecated. You must migrate existing functions to the newer Node.js runtime versions available on AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. You can request a one-time extension until June 30, 2017 by going to the Lambda console and following the instructions provided. Failure to do so will result in an invalid parmaeter error being returned. Note that you will have to follow this procedure for each region that contains functions written in the Node v0.10.42 runtime.&lt;/p&gt; &lt;/note&gt;
-- @param Description [Description] &lt;p&gt;A short, user-defined function description. Lambda does not use this value. Assign a meaningful description as you see fit.&lt;/p&gt;
-- Required parameter: FunctionName
-- Required parameter: Runtime
-- Required parameter: Role
-- Required parameter: Handler
-- Required parameter: Code
function M.CreateFunctionRequest(TracingConfig, Code, DeadLetterConfig, FunctionName, VpcConfig, Tags, KMSKeyArn, MemorySize, Publish, Environment, Handler, Role, Timeout, Runtime, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFunctionRequest")
	local t = { 
		["TracingConfig"] = TracingConfig,
		["Code"] = Code,
		["DeadLetterConfig"] = DeadLetterConfig,
		["FunctionName"] = FunctionName,
		["VpcConfig"] = VpcConfig,
		["Tags"] = Tags,
		["KMSKeyArn"] = KMSKeyArn,
		["MemorySize"] = MemorySize,
		["Publish"] = Publish,
		["Environment"] = Environment,
		["Handler"] = Handler,
		["Role"] = Role,
		["Timeout"] = Timeout,
		["Runtime"] = Runtime,
		["Description"] = Description,
	}
	M.AssertCreateFunctionRequest(t)
	return t
end

local KMSDisabledException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertKMSDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSDisabledException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(KMSDisabledException_keys[k], "KMSDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSDisabledException
-- &lt;p&gt;Lambda was unable to decrypt the environment variables because the KMS key used is disabled. Check the Lambda function's KMS key settings.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;Lambda was unable to decrypt the environment variables because the KMS key used is disabled. Check the Lambda function's KMS key settings.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;Lambda was unable to decrypt the environment variables because the KMS key used is disabled. Check the Lambda function's KMS key settings.&lt;/p&gt;
function M.KMSDisabledException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSDisabledException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertKMSDisabledException(t)
	return t
end

local KMSAccessDeniedException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertKMSAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSAccessDeniedException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(KMSAccessDeniedException_keys[k], "KMSAccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSAccessDeniedException
-- &lt;p&gt;Lambda was unable to decrypt the environment variables because KMS access was denied. Check the Lambda function's KMS permissions.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;Lambda was unable to decrypt the environment variables because KMS access was denied. Check the Lambda function's KMS permissions.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;Lambda was unable to decrypt the environment variables because KMS access was denied. Check the Lambda function's KMS permissions.&lt;/p&gt;
function M.KMSAccessDeniedException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSAccessDeniedException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertKMSAccessDeniedException(t)
	return t
end

local EnvironmentResponse_keys = { "Variables" = true, "Error" = true, nil }

function M.AssertEnvironmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentResponse to be of type 'table'")
	if struct["Variables"] then M.AssertEnvironmentVariables(struct["Variables"]) end
	if struct["Error"] then M.AssertEnvironmentError(struct["Error"]) end
	for k,_ in pairs(struct) do
		assert(EnvironmentResponse_keys[k], "EnvironmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentResponse
-- &lt;p&gt;The parent object returned that contains your environment's configuration settings or any error information associated with your configuration settings.&lt;/p&gt;
-- @param Variables [EnvironmentVariables] &lt;p&gt;The key-value pairs returned that represent your environment's configuration settings or error information.&lt;/p&gt;
-- @param Error [EnvironmentError] &lt;p&gt;The parent object returned that contains your environment's configuration settings or any error information associated with your configuration settings.&lt;/p&gt;
function M.EnvironmentResponse(Variables, Error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentResponse")
	local t = { 
		["Variables"] = Variables,
		["Error"] = Error,
	}
	M.AssertEnvironmentResponse(t)
	return t
end

local EC2AccessDeniedException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertEC2AccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2AccessDeniedException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(EC2AccessDeniedException_keys[k], "EC2AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2AccessDeniedException
-- &lt;p/&gt;
-- @param Message [String] &lt;p/&gt;
-- @param Type [String] &lt;p/&gt;
function M.EC2AccessDeniedException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2AccessDeniedException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertEC2AccessDeniedException(t)
	return t
end

local InvalidRequestContentException_keys = { "message" = true, "Type" = true, nil }

function M.AssertInvalidRequestContentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestContentException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRequestContentException_keys[k], "InvalidRequestContentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestContentException
-- &lt;p&gt;The request body could not be parsed as JSON.&lt;/p&gt;
-- @param message [String] &lt;p/&gt;
-- @param Type [String] &lt;p/&gt;
function M.InvalidRequestContentException(message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestContentException")
	local t = { 
		["message"] = message,
		["Type"] = Type,
	}
	M.AssertInvalidRequestContentException(t)
	return t
end

local FunctionConfiguration_keys = { "TracingConfig" = true, "Version" = true, "CodeSha256" = true, "FunctionName" = true, "VpcConfig" = true, "KMSKeyArn" = true, "MemorySize" = true, "CodeSize" = true, "FunctionArn" = true, "Environment" = true, "Handler" = true, "Role" = true, "Timeout" = true, "LastModified" = true, "DeadLetterConfig" = true, "Runtime" = true, "Description" = true, nil }

function M.AssertFunctionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionConfiguration to be of type 'table'")
	if struct["TracingConfig"] then M.AssertTracingConfigResponse(struct["TracingConfig"]) end
	if struct["Version"] then M.AssertVersion(struct["Version"]) end
	if struct["CodeSha256"] then M.AssertString(struct["CodeSha256"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["VpcConfig"] then M.AssertVpcConfigResponse(struct["VpcConfig"]) end
	if struct["KMSKeyArn"] then M.AssertKMSKeyArn(struct["KMSKeyArn"]) end
	if struct["MemorySize"] then M.AssertMemorySize(struct["MemorySize"]) end
	if struct["CodeSize"] then M.AssertLong(struct["CodeSize"]) end
	if struct["FunctionArn"] then M.AssertFunctionArn(struct["FunctionArn"]) end
	if struct["Environment"] then M.AssertEnvironmentResponse(struct["Environment"]) end
	if struct["Handler"] then M.AssertHandler(struct["Handler"]) end
	if struct["Role"] then M.AssertRoleArn(struct["Role"]) end
	if struct["Timeout"] then M.AssertTimeout(struct["Timeout"]) end
	if struct["LastModified"] then M.AssertTimestamp(struct["LastModified"]) end
	if struct["DeadLetterConfig"] then M.AssertDeadLetterConfig(struct["DeadLetterConfig"]) end
	if struct["Runtime"] then M.AssertRuntime(struct["Runtime"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(FunctionConfiguration_keys[k], "FunctionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionConfiguration
-- &lt;p&gt;A complex type that describes function metadata.&lt;/p&gt;
-- @param TracingConfig [TracingConfigResponse] &lt;p&gt;The parent object that contains your function's tracing settings.&lt;/p&gt;
-- @param Version [Version] &lt;p&gt;The version of the Lambda function.&lt;/p&gt;
-- @param CodeSha256 [String] &lt;p&gt;It is the SHA256 hash of your function deployment package.&lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The name of the function. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.&lt;/p&gt;
-- @param VpcConfig [VpcConfigResponse] &lt;p&gt;VPC configuration associated with your Lambda function.&lt;/p&gt;
-- @param KMSKeyArn [KMSKeyArn] &lt;p&gt;The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If empty, it means you are using the AWS Lambda default service key.&lt;/p&gt;
-- @param MemorySize [MemorySize] &lt;p&gt;The memory size, in MB, you configured for the function. Must be a multiple of 64 MB.&lt;/p&gt;
-- @param CodeSize [Long] &lt;p&gt;The size, in bytes, of the function .zip file you uploaded.&lt;/p&gt;
-- @param FunctionArn [FunctionArn] &lt;p&gt;The Amazon Resource Name (ARN) assigned to the function.&lt;/p&gt;
-- @param Environment [EnvironmentResponse] &lt;p&gt;The parent object that contains your environment's configuration settings.&lt;/p&gt;
-- @param Handler [Handler] &lt;p&gt;The function Lambda calls to begin executing your function.&lt;/p&gt;
-- @param Role [RoleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources.&lt;/p&gt;
-- @param Timeout [Timeout] &lt;p&gt;The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds.&lt;/p&gt;
-- @param LastModified [Timestamp] &lt;p&gt;The time stamp of the last time you updated the function. The time stamp is conveyed as a string complying with ISO-8601 in this way YYYY-MM-DDThh:mm:ssTZD (e.g., 1997-07-16T19:20:30+01:00). For more information, see &lt;a href=&quot;https://www.w3.org/TR/NOTE-datetime&quot;&gt;Date and Time Formats&lt;/a&gt;.&lt;/p&gt;
-- @param DeadLetterConfig [DeadLetterConfig] &lt;p&gt;The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic.&lt;/p&gt;
-- @param Runtime [Runtime] &lt;p&gt;The runtime environment for the Lambda function.&lt;/p&gt;
-- @param Description [Description] &lt;p&gt;The user-provided description.&lt;/p&gt;
function M.FunctionConfiguration(TracingConfig, Version, CodeSha256, FunctionName, VpcConfig, KMSKeyArn, MemorySize, CodeSize, FunctionArn, Environment, Handler, Role, Timeout, LastModified, DeadLetterConfig, Runtime, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FunctionConfiguration")
	local t = { 
		["TracingConfig"] = TracingConfig,
		["Version"] = Version,
		["CodeSha256"] = CodeSha256,
		["FunctionName"] = FunctionName,
		["VpcConfig"] = VpcConfig,
		["KMSKeyArn"] = KMSKeyArn,
		["MemorySize"] = MemorySize,
		["CodeSize"] = CodeSize,
		["FunctionArn"] = FunctionArn,
		["Environment"] = Environment,
		["Handler"] = Handler,
		["Role"] = Role,
		["Timeout"] = Timeout,
		["LastModified"] = LastModified,
		["DeadLetterConfig"] = DeadLetterConfig,
		["Runtime"] = Runtime,
		["Description"] = Description,
	}
	M.AssertFunctionConfiguration(t)
	return t
end

local InvalidSecurityGroupIDException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertInvalidSecurityGroupIDException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSecurityGroupIDException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSecurityGroupIDException_keys[k], "InvalidSecurityGroupIDException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSecurityGroupIDException
-- &lt;p&gt;The Security Group ID provided in the Lambda function VPC configuration is invalid.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The Security Group ID provided in the Lambda function VPC configuration is invalid.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The Security Group ID provided in the Lambda function VPC configuration is invalid.&lt;/p&gt;
function M.InvalidSecurityGroupIDException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSecurityGroupIDException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertInvalidSecurityGroupIDException(t)
	return t
end

local InvokeAsyncResponse_keys = { "Status" = true, nil }

function M.AssertInvokeAsyncResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvokeAsyncResponse to be of type 'table'")
	if struct["Status"] then M.AssertHttpStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(InvokeAsyncResponse_keys[k], "InvokeAsyncResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvokeAsyncResponse
-- &lt;p&gt;Upon success, it returns empty response. Otherwise, throws an exception.&lt;/p&gt;
-- @param Status [HttpStatus] &lt;p&gt;It will be 202 upon success.&lt;/p&gt;
function M.InvokeAsyncResponse(Status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvokeAsyncResponse")
	local t = { 
		["Status"] = Status,
	}
	M.AssertInvokeAsyncResponse(t)
	return t
end

local ServiceException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(ServiceException_keys[k], "ServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceException
-- &lt;p&gt;The AWS Lambda service encountered an internal error.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The AWS Lambda service encountered an internal error.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The AWS Lambda service encountered an internal error.&lt;/p&gt;
function M.ServiceException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertServiceException(t)
	return t
end

local CreateAliasRequest_keys = { "Description" = true, "FunctionVersion" = true, "FunctionName" = true, "Name" = true, nil }

function M.AssertCreateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["FunctionVersion"], "Expected key FunctionVersion to exist in table")
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["FunctionVersion"] then M.AssertVersion(struct["FunctionVersion"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Name"] then M.AssertAlias(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateAliasRequest_keys[k], "CreateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasRequest
--  
-- @param Description [Description] &lt;p&gt;Description of the alias.&lt;/p&gt;
-- @param FunctionVersion [Version] &lt;p&gt;Lambda function version for which you are creating the alias.&lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;Name of the Lambda function for which you want to create an alias. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.&lt;/p&gt;
-- @param Name [Alias] &lt;p&gt;Name for the alias you are creating.&lt;/p&gt;
-- Required parameter: FunctionName
-- Required parameter: Name
-- Required parameter: FunctionVersion
function M.CreateAliasRequest(Description, FunctionVersion, FunctionName, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAliasRequest")
	local t = { 
		["Description"] = Description,
		["FunctionVersion"] = FunctionVersion,
		["FunctionName"] = FunctionName,
		["Name"] = Name,
	}
	M.AssertCreateAliasRequest(t)
	return t
end

local DeleteEventSourceMappingRequest_keys = { "UUID" = true, nil }

function M.AssertDeleteEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSourceMappingRequest to be of type 'table'")
	assert(struct["UUID"], "Expected key UUID to exist in table")
	if struct["UUID"] then M.AssertString(struct["UUID"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEventSourceMappingRequest_keys[k], "DeleteEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSourceMappingRequest
-- &lt;p/&gt;
-- @param UUID [String] &lt;p&gt;The event source mapping ID.&lt;/p&gt;
-- Required parameter: UUID
function M.DeleteEventSourceMappingRequest(UUID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSourceMappingRequest")
	local t = { 
		["UUID"] = UUID,
	}
	M.AssertDeleteEventSourceMappingRequest(t)
	return t
end

local UnsupportedMediaTypeException_keys = { "message" = true, "Type" = true, nil }

function M.AssertUnsupportedMediaTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedMediaTypeException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedMediaTypeException_keys[k], "UnsupportedMediaTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedMediaTypeException
-- &lt;p&gt;The content type of the &lt;code&gt;Invoke&lt;/code&gt; request body is not JSON.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The content type of the &lt;code&gt;Invoke&lt;/code&gt; request body is not JSON.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The content type of the &lt;code&gt;Invoke&lt;/code&gt; request body is not JSON.&lt;/p&gt;
function M.UnsupportedMediaTypeException(message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedMediaTypeException")
	local t = { 
		["message"] = message,
		["Type"] = Type,
	}
	M.AssertUnsupportedMediaTypeException(t)
	return t
end

local UpdateEventSourceMappingRequest_keys = { "BatchSize" = true, "Enabled" = true, "UUID" = true, "FunctionName" = true, nil }

function M.AssertUpdateEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEventSourceMappingRequest to be of type 'table'")
	assert(struct["UUID"], "Expected key UUID to exist in table")
	if struct["BatchSize"] then M.AssertBatchSize(struct["BatchSize"]) end
	if struct["Enabled"] then M.AssertEnabled(struct["Enabled"]) end
	if struct["UUID"] then M.AssertString(struct["UUID"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateEventSourceMappingRequest_keys[k], "UpdateEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEventSourceMappingRequest
-- &lt;p/&gt;
-- @param BatchSize [BatchSize] &lt;p&gt;The maximum number of stream records that can be sent to your Lambda function for a single invocation.&lt;/p&gt;
-- @param Enabled [Enabled] &lt;p&gt;Specifies whether AWS Lambda should actively poll the stream or not. If disabled, AWS Lambda will not poll the stream.&lt;/p&gt;
-- @param UUID [String] &lt;p&gt;The event source mapping identifier.&lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The Lambda function to which you want the stream records sent.&lt;/p&gt; &lt;p&gt; You can specify a function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). AWS Lambda also allows you to specify a partial ARN (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt; &lt;p&gt;If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). For more information about versioning, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html&quot;&gt;AWS Lambda Function Versioning and Aliases&lt;/a&gt; &lt;/p&gt; &lt;p&gt;Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 character in length.&lt;/p&gt;
-- Required parameter: UUID
function M.UpdateEventSourceMappingRequest(BatchSize, Enabled, UUID, FunctionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEventSourceMappingRequest")
	local t = { 
		["BatchSize"] = BatchSize,
		["Enabled"] = Enabled,
		["UUID"] = UUID,
		["FunctionName"] = FunctionName,
	}
	M.AssertUpdateEventSourceMappingRequest(t)
	return t
end

local GetAccountSettingsRequest_keys = { nil }

function M.AssertGetAccountSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSettingsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetAccountSettingsRequest_keys[k], "GetAccountSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSettingsRequest
--  
function M.GetAccountSettingsRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountSettingsRequest")
	local t = { 
	}
	M.AssertGetAccountSettingsRequest(t)
	return t
end

local InvalidRuntimeException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertInvalidRuntimeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRuntimeException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRuntimeException_keys[k], "InvalidRuntimeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRuntimeException
-- &lt;p&gt;The runtime or runtime version specified is not supported.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The runtime or runtime version specified is not supported.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The runtime or runtime version specified is not supported.&lt;/p&gt;
function M.InvalidRuntimeException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRuntimeException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertInvalidRuntimeException(t)
	return t
end

local GetFunctionResponse_keys = { "Code" = true, "Configuration" = true, "Tags" = true, nil }

function M.AssertGetFunctionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionResponse to be of type 'table'")
	if struct["Code"] then M.AssertFunctionCodeLocation(struct["Code"]) end
	if struct["Configuration"] then M.AssertFunctionConfiguration(struct["Configuration"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(GetFunctionResponse_keys[k], "GetFunctionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionResponse
-- &lt;p&gt;This response contains the object for the Lambda function location (see &lt;a&gt;FunctionCodeLocation&lt;/a&gt;.&lt;/p&gt;
-- @param Code [FunctionCodeLocation] &lt;p&gt;This response contains the object for the Lambda function location (see &lt;a&gt;FunctionCodeLocation&lt;/a&gt;.&lt;/p&gt;
-- @param Configuration [FunctionConfiguration] &lt;p&gt;This response contains the object for the Lambda function location (see &lt;a&gt;FunctionCodeLocation&lt;/a&gt;.&lt;/p&gt;
-- @param Tags [Tags] &lt;p&gt;Returns the list of tags associated with the function.&lt;/p&gt;
function M.GetFunctionResponse(Code, Configuration, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionResponse")
	local t = { 
		["Code"] = Code,
		["Configuration"] = Configuration,
		["Tags"] = Tags,
	}
	M.AssertGetFunctionResponse(t)
	return t
end

local FunctionCode_keys = { "S3Bucket" = true, "S3Key" = true, "ZipFile" = true, "S3ObjectVersion" = true, nil }

function M.AssertFunctionCode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionCode to be of type 'table'")
	if struct["S3Bucket"] then M.AssertS3Bucket(struct["S3Bucket"]) end
	if struct["S3Key"] then M.AssertS3Key(struct["S3Key"]) end
	if struct["ZipFile"] then M.AssertBlob(struct["ZipFile"]) end
	if struct["S3ObjectVersion"] then M.AssertS3ObjectVersion(struct["S3ObjectVersion"]) end
	for k,_ in pairs(struct) do
		assert(FunctionCode_keys[k], "FunctionCode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionCode
-- &lt;p&gt;The code for the Lambda function.&lt;/p&gt;
-- @param S3Bucket [S3Bucket] &lt;p&gt;Amazon S3 bucket name where the .zip file containing your deployment package is stored. This bucket must reside in the same AWS region where you are creating the Lambda function.&lt;/p&gt;
-- @param S3Key [S3Key] &lt;p&gt;The Amazon S3 object (the deployment package) key name you want to upload.&lt;/p&gt;
-- @param ZipFile [Blob] &lt;p&gt;The contents of your zip file containing your deployment package. If you are using the web API directly, the contents of the zip file must be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the SDKs or CLI will do the encoding for you. For more information about creating a .zip file, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html&quot;&gt;Execution Permissions&lt;/a&gt; in the &lt;i&gt;AWS Lambda Developer Guide&lt;/i&gt;. &lt;/p&gt;
-- @param S3ObjectVersion [S3ObjectVersion] &lt;p&gt;The Amazon S3 object (the deployment package) version you want to upload.&lt;/p&gt;
function M.FunctionCode(S3Bucket, S3Key, ZipFile, S3ObjectVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FunctionCode")
	local t = { 
		["S3Bucket"] = S3Bucket,
		["S3Key"] = S3Key,
		["ZipFile"] = ZipFile,
		["S3ObjectVersion"] = S3ObjectVersion,
	}
	M.AssertFunctionCode(t)
	return t
end

local ResourceNotFoundException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;The resource (for example, a Lambda function or access policy statement) specified in the request does not exist.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The resource (for example, a Lambda function or access policy statement) specified in the request does not exist.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The resource (for example, a Lambda function or access policy statement) specified in the request does not exist.&lt;/p&gt;
function M.ResourceNotFoundException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local TracingConfigResponse_keys = { "Mode" = true, nil }

function M.AssertTracingConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TracingConfigResponse to be of type 'table'")
	if struct["Mode"] then M.AssertTracingMode(struct["Mode"]) end
	for k,_ in pairs(struct) do
		assert(TracingConfigResponse_keys[k], "TracingConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TracingConfigResponse
-- &lt;p&gt;Parent object of the tracing information associated with your Lambda function.&lt;/p&gt;
-- @param Mode [TracingMode] &lt;p&gt;The tracing mode associated with your Lambda function.&lt;/p&gt;
function M.TracingConfigResponse(Mode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TracingConfigResponse")
	local t = { 
		["Mode"] = Mode,
	}
	M.AssertTracingConfigResponse(t)
	return t
end

local FunctionCodeLocation_keys = { "RepositoryType" = true, "Location" = true, nil }

function M.AssertFunctionCodeLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionCodeLocation to be of type 'table'")
	if struct["RepositoryType"] then M.AssertString(struct["RepositoryType"]) end
	if struct["Location"] then M.AssertString(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(FunctionCodeLocation_keys[k], "FunctionCodeLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionCodeLocation
-- &lt;p&gt;The object for the Lambda function location.&lt;/p&gt;
-- @param RepositoryType [String] &lt;p&gt;The repository from which you can download the function.&lt;/p&gt;
-- @param Location [String] &lt;p&gt;The presigned URL you can use to download the function's .zip file that you previously uploaded. The URL is valid for up to 10 minutes.&lt;/p&gt;
function M.FunctionCodeLocation(RepositoryType, Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FunctionCodeLocation")
	local t = { 
		["RepositoryType"] = RepositoryType,
		["Location"] = Location,
	}
	M.AssertFunctionCodeLocation(t)
	return t
end

local AccountLimit_keys = { "CodeSizeUnzipped" = true, "ConcurrentExecutions" = true, "CodeSizeZipped" = true, "TotalCodeSize" = true, nil }

function M.AssertAccountLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountLimit to be of type 'table'")
	if struct["CodeSizeUnzipped"] then M.AssertLong(struct["CodeSizeUnzipped"]) end
	if struct["ConcurrentExecutions"] then M.AssertInteger(struct["ConcurrentExecutions"]) end
	if struct["CodeSizeZipped"] then M.AssertLong(struct["CodeSizeZipped"]) end
	if struct["TotalCodeSize"] then M.AssertLong(struct["TotalCodeSize"]) end
	for k,_ in pairs(struct) do
		assert(AccountLimit_keys[k], "AccountLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountLimit
-- &lt;p&gt;Provides limits of code size and concurrency associated with the current account and region.&lt;/p&gt;
-- @param CodeSizeUnzipped [Long] &lt;p&gt;Size, in bytes, of code/dependencies that you can zip into a deployment package (uncompressed zip/jar size) for uploading. The default limit is 250 MB.&lt;/p&gt;
-- @param ConcurrentExecutions [Integer] &lt;p&gt;Number of simultaneous executions of your function per region. For more information or to request a limit increase for concurrent executions, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html&quot;&gt;Lambda Function Concurrent Executions&lt;/a&gt;. The default limit is 100.&lt;/p&gt;
-- @param CodeSizeZipped [Long] &lt;p&gt;Size, in bytes, of a single zipped code/dependencies package you can upload for your Lambda function(.zip/.jar file). Try using Amazon S3 for uploading larger files. Default limit is 50 MB.&lt;/p&gt;
-- @param TotalCodeSize [Long] &lt;p&gt;Maximum size, in bytes, of a code package you can upload per region. The default size is 75 GB. &lt;/p&gt;
function M.AccountLimit(CodeSizeUnzipped, ConcurrentExecutions, CodeSizeZipped, TotalCodeSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountLimit")
	local t = { 
		["CodeSizeUnzipped"] = CodeSizeUnzipped,
		["ConcurrentExecutions"] = ConcurrentExecutions,
		["CodeSizeZipped"] = CodeSizeZipped,
		["TotalCodeSize"] = TotalCodeSize,
	}
	M.AssertAccountLimit(t)
	return t
end

local EventSourceMappingConfiguration_keys = { "UUID" = true, "StateTransitionReason" = true, "LastModified" = true, "BatchSize" = true, "State" = true, "FunctionArn" = true, "EventSourceArn" = true, "LastProcessingResult" = true, nil }

function M.AssertEventSourceMappingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSourceMappingConfiguration to be of type 'table'")
	if struct["UUID"] then M.AssertString(struct["UUID"]) end
	if struct["StateTransitionReason"] then M.AssertString(struct["StateTransitionReason"]) end
	if struct["LastModified"] then M.AssertDate(struct["LastModified"]) end
	if struct["BatchSize"] then M.AssertBatchSize(struct["BatchSize"]) end
	if struct["State"] then M.AssertString(struct["State"]) end
	if struct["FunctionArn"] then M.AssertFunctionArn(struct["FunctionArn"]) end
	if struct["EventSourceArn"] then M.AssertArn(struct["EventSourceArn"]) end
	if struct["LastProcessingResult"] then M.AssertString(struct["LastProcessingResult"]) end
	for k,_ in pairs(struct) do
		assert(EventSourceMappingConfiguration_keys[k], "EventSourceMappingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSourceMappingConfiguration
-- &lt;p&gt;Describes mapping between an Amazon Kinesis stream and a Lambda function.&lt;/p&gt;
-- @param UUID [String] &lt;p&gt;The AWS Lambda assigned opaque identifier for the mapping.&lt;/p&gt;
-- @param StateTransitionReason [String] &lt;p&gt;The reason the event source mapping is in its current state. It is either user-requested or an AWS Lambda-initiated state transition.&lt;/p&gt;
-- @param LastModified [Date] &lt;p&gt;The UTC time string indicating the last time the event mapping was updated.&lt;/p&gt;
-- @param BatchSize [BatchSize] &lt;p&gt;The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. Your function receives an event with all the retrieved records.&lt;/p&gt;
-- @param State [String] &lt;p&gt;The state of the event source mapping. It can be &lt;code&gt;Creating&lt;/code&gt;, &lt;code&gt;Enabled&lt;/code&gt;, &lt;code&gt;Disabled&lt;/code&gt;, &lt;code&gt;Enabling&lt;/code&gt;, &lt;code&gt;Disabling&lt;/code&gt;, &lt;code&gt;Updating&lt;/code&gt;, or &lt;code&gt;Deleting&lt;/code&gt;.&lt;/p&gt;
-- @param FunctionArn [FunctionArn] &lt;p&gt;The Lambda function to invoke when AWS Lambda detects an event on the stream.&lt;/p&gt;
-- @param EventSourceArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is the source of events.&lt;/p&gt;
-- @param LastProcessingResult [String] &lt;p&gt;The result of the last AWS Lambda invocation of your Lambda function.&lt;/p&gt;
function M.EventSourceMappingConfiguration(UUID, StateTransitionReason, LastModified, BatchSize, State, FunctionArn, EventSourceArn, LastProcessingResult, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSourceMappingConfiguration")
	local t = { 
		["UUID"] = UUID,
		["StateTransitionReason"] = StateTransitionReason,
		["LastModified"] = LastModified,
		["BatchSize"] = BatchSize,
		["State"] = State,
		["FunctionArn"] = FunctionArn,
		["EventSourceArn"] = EventSourceArn,
		["LastProcessingResult"] = LastProcessingResult,
	}
	M.AssertEventSourceMappingConfiguration(t)
	return t
end

local EnvironmentError_keys = { "ErrorCode" = true, "Message" = true, nil }

function M.AssertEnvironmentError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnvironmentError to be of type 'table'")
	if struct["ErrorCode"] then M.AssertString(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertSensitiveString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(EnvironmentError_keys[k], "EnvironmentError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnvironmentError
-- &lt;p&gt;The parent object that contains error information associated with your configuration settings.&lt;/p&gt;
-- @param ErrorCode [String] &lt;p&gt;The error code returned by the environment error object.&lt;/p&gt;
-- @param Message [SensitiveString] &lt;p&gt;The message returned by the environment error object.&lt;/p&gt;
function M.EnvironmentError(ErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnvironmentError")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
	}
	M.AssertEnvironmentError(t)
	return t
end

local GetPolicyRequest_keys = { "FunctionName" = true, "Qualifier" = true, nil }

function M.AssertGetPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then M.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(GetPolicyRequest_keys[k], "GetPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyRequest
-- &lt;p/&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;Function name whose resource policy you want to retrieve.&lt;/p&gt; &lt;p&gt; You can specify the function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). If you are using versioning, you can also provide a qualified function ARN (ARN that is qualified with function version or alias name as suffix). AWS Lambda also allows you to specify only the function name with the account ID qualifier (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param Qualifier [Qualifier] &lt;p&gt;You can specify this optional query parameter to specify a function version or an alias name in which case this API will return all permissions associated with the specific qualified ARN. If you don't provide this parameter, the API will return permissions that apply to the unqualified function ARN.&lt;/p&gt;
-- Required parameter: FunctionName
function M.GetPolicyRequest(FunctionName, Qualifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyRequest")
	local t = { 
		["FunctionName"] = FunctionName,
		["Qualifier"] = Qualifier,
	}
	M.AssertGetPolicyRequest(t)
	return t
end

local SubnetIPAddressLimitReachedException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertSubnetIPAddressLimitReachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetIPAddressLimitReachedException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(SubnetIPAddressLimitReachedException_keys[k], "SubnetIPAddressLimitReachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetIPAddressLimitReachedException
-- &lt;p&gt;AWS Lambda was not able to set up VPC access for the Lambda function because one or more configured subnets has no available IP addresses.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;AWS Lambda was not able to set up VPC access for the Lambda function because one or more configured subnets has no available IP addresses.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;AWS Lambda was not able to set up VPC access for the Lambda function because one or more configured subnets has no available IP addresses.&lt;/p&gt;
function M.SubnetIPAddressLimitReachedException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetIPAddressLimitReachedException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertSubnetIPAddressLimitReachedException(t)
	return t
end

local GetEventSourceMappingRequest_keys = { "UUID" = true, nil }

function M.AssertGetEventSourceMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventSourceMappingRequest to be of type 'table'")
	assert(struct["UUID"], "Expected key UUID to exist in table")
	if struct["UUID"] then M.AssertString(struct["UUID"]) end
	for k,_ in pairs(struct) do
		assert(GetEventSourceMappingRequest_keys[k], "GetEventSourceMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventSourceMappingRequest
-- &lt;p/&gt;
-- @param UUID [String] &lt;p&gt;The AWS Lambda assigned ID of the event source mapping.&lt;/p&gt;
-- Required parameter: UUID
function M.GetEventSourceMappingRequest(UUID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEventSourceMappingRequest")
	local t = { 
		["UUID"] = UUID,
	}
	M.AssertGetEventSourceMappingRequest(t)
	return t
end

local EC2ThrottledException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertEC2ThrottledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2ThrottledException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(EC2ThrottledException_keys[k], "EC2ThrottledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2ThrottledException
-- &lt;p&gt;AWS Lambda was throttled by Amazon EC2 during Lambda function initialization using the execution role provided for the Lambda function.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;AWS Lambda was throttled by Amazon EC2 during Lambda function initialization using the execution role provided for the Lambda function.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;AWS Lambda was throttled by Amazon EC2 during Lambda function initialization using the execution role provided for the Lambda function.&lt;/p&gt;
function M.EC2ThrottledException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2ThrottledException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertEC2ThrottledException(t)
	return t
end

local AddPermissionResponse_keys = { "Statement" = true, nil }

function M.AssertAddPermissionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionResponse to be of type 'table'")
	if struct["Statement"] then M.AssertString(struct["Statement"]) end
	for k,_ in pairs(struct) do
		assert(AddPermissionResponse_keys[k], "AddPermissionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionResponse
-- &lt;p/&gt;
-- @param Statement [String] &lt;p&gt;The permission statement you specified in the request. The response returns the same as a string using a backslash (&quot;\&quot;) as an escape character in the JSON.&lt;/p&gt;
function M.AddPermissionResponse(Statement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddPermissionResponse")
	local t = { 
		["Statement"] = Statement,
	}
	M.AssertAddPermissionResponse(t)
	return t
end

local GetFunctionConfigurationRequest_keys = { "FunctionName" = true, "Qualifier" = true, nil }

function M.AssertGetFunctionConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionConfigurationRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then M.AssertQualifier(struct["Qualifier"]) end
	for k,_ in pairs(struct) do
		assert(GetFunctionConfigurationRequest_keys[k], "GetFunctionConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionConfigurationRequest
-- &lt;p/&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;The name of the Lambda function for which you want to retrieve the configuration information.&lt;/p&gt; &lt;p&gt; You can specify a function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). AWS Lambda also allows you to specify a partial ARN (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param Qualifier [Qualifier] &lt;p&gt;Using this optional parameter you can specify a function version or an alias name. If you specify function version, the API uses qualified function ARN and returns information about the specific function version. If you specify an alias name, the API uses the alias ARN and returns information about the function version to which the alias points.&lt;/p&gt; &lt;p&gt;If you don't specify this parameter, the API uses unqualified function ARN, and returns information about the &lt;code&gt;$LATEST&lt;/code&gt; function version.&lt;/p&gt;
-- Required parameter: FunctionName
function M.GetFunctionConfigurationRequest(FunctionName, Qualifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionConfigurationRequest")
	local t = { 
		["FunctionName"] = FunctionName,
		["Qualifier"] = Qualifier,
	}
	M.AssertGetFunctionConfigurationRequest(t)
	return t
end

local ListFunctionsResponse_keys = { "Functions" = true, "NextMarker" = true, nil }

function M.AssertListFunctionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionsResponse to be of type 'table'")
	if struct["Functions"] then M.AssertFunctionList(struct["Functions"]) end
	if struct["NextMarker"] then M.AssertString(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListFunctionsResponse_keys[k], "ListFunctionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionsResponse
-- &lt;p&gt;Contains a list of AWS Lambda function configurations (see &lt;a&gt;FunctionConfiguration&lt;/a&gt;.&lt;/p&gt;
-- @param Functions [FunctionList] &lt;p&gt;A list of Lambda functions.&lt;/p&gt;
-- @param NextMarker [String] &lt;p&gt;A string, present if there are more functions.&lt;/p&gt;
function M.ListFunctionsResponse(Functions, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFunctionsResponse")
	local t = { 
		["Functions"] = Functions,
		["NextMarker"] = NextMarker,
	}
	M.AssertListFunctionsResponse(t)
	return t
end

local InvalidSubnetIDException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertInvalidSubnetIDException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubnetIDException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSubnetIDException_keys[k], "InvalidSubnetIDException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubnetIDException
-- &lt;p&gt;The Subnet ID provided in the Lambda function VPC configuration is invalid.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The Subnet ID provided in the Lambda function VPC configuration is invalid.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The Subnet ID provided in the Lambda function VPC configuration is invalid.&lt;/p&gt;
function M.InvalidSubnetIDException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnetIDException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertInvalidSubnetIDException(t)
	return t
end

local GetPolicyResponse_keys = { "Policy" = true, nil }

function M.AssertGetPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyResponse to be of type 'table'")
	if struct["Policy"] then M.AssertString(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(GetPolicyResponse_keys[k], "GetPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyResponse
-- &lt;p/&gt;
-- @param Policy [String] &lt;p&gt;The resource policy associated with the specified function. The response returns the same as a string using a backslash (&quot;\&quot;) as an escape character in the JSON.&lt;/p&gt;
function M.GetPolicyResponse(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyResponse")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertGetPolicyResponse(t)
	return t
end

local ListAliasesRequest_keys = { "Marker" = true, "FunctionVersion" = true, "FunctionName" = true, "MaxItems" = true, nil }

function M.AssertListAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["FunctionVersion"] then M.AssertVersion(struct["FunctionVersion"]) end
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["MaxItems"] then M.AssertMaxListItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListAliasesRequest_keys[k], "ListAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesRequest
--  
-- @param Marker [String] &lt;p&gt;Optional string. An opaque pagination token returned from a previous &lt;code&gt;ListAliases&lt;/code&gt; operation. If present, indicates where to continue the listing.&lt;/p&gt;
-- @param FunctionVersion [Version] &lt;p&gt;If you specify this optional parameter, the API returns only the aliases that are pointing to the specific Lambda function version, otherwise the API returns all of the aliases created for the Lambda function.&lt;/p&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;Lambda function name for which the alias is created. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.&lt;/p&gt;
-- @param MaxItems [MaxListItems] &lt;p&gt;Optional integer. Specifies the maximum number of aliases to return in response. This parameter value must be greater than 0.&lt;/p&gt;
-- Required parameter: FunctionName
function M.ListAliasesRequest(Marker, FunctionVersion, FunctionName, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAliasesRequest")
	local t = { 
		["Marker"] = Marker,
		["FunctionVersion"] = FunctionVersion,
		["FunctionName"] = FunctionName,
		["MaxItems"] = MaxItems,
	}
	M.AssertListAliasesRequest(t)
	return t
end

local RequestTooLargeException_keys = { "message" = true, "Type" = true, nil }

function M.AssertRequestTooLargeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestTooLargeException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(RequestTooLargeException_keys[k], "RequestTooLargeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestTooLargeException
-- &lt;p&gt;The request payload exceeded the &lt;code&gt;Invoke&lt;/code&gt; request body JSON input limit. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/limits.html&quot;&gt;Limits&lt;/a&gt;. &lt;/p&gt;
-- @param message [String] &lt;p&gt;The request payload exceeded the &lt;code&gt;Invoke&lt;/code&gt; request body JSON input limit. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/limits.html&quot;&gt;Limits&lt;/a&gt;. &lt;/p&gt;
-- @param Type [String] &lt;p&gt;The request payload exceeded the &lt;code&gt;Invoke&lt;/code&gt; request body JSON input limit. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/limits.html&quot;&gt;Limits&lt;/a&gt;. &lt;/p&gt;
function M.RequestTooLargeException(message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestTooLargeException")
	local t = { 
		["message"] = message,
		["Type"] = Type,
	}
	M.AssertRequestTooLargeException(t)
	return t
end

local ListEventSourceMappingsResponse_keys = { "NextMarker" = true, "EventSourceMappings" = true, nil }

function M.AssertListEventSourceMappingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEventSourceMappingsResponse to be of type 'table'")
	if struct["NextMarker"] then M.AssertString(struct["NextMarker"]) end
	if struct["EventSourceMappings"] then M.AssertEventSourceMappingsList(struct["EventSourceMappings"]) end
	for k,_ in pairs(struct) do
		assert(ListEventSourceMappingsResponse_keys[k], "ListEventSourceMappingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEventSourceMappingsResponse
-- &lt;p&gt;Contains a list of event sources (see &lt;a&gt;EventSourceMappingConfiguration&lt;/a&gt;)&lt;/p&gt;
-- @param NextMarker [String] &lt;p&gt;A string, present if there are more event source mappings.&lt;/p&gt;
-- @param EventSourceMappings [EventSourceMappingsList] &lt;p&gt;An array of &lt;code&gt;EventSourceMappingConfiguration&lt;/code&gt; objects.&lt;/p&gt;
function M.ListEventSourceMappingsResponse(NextMarker, EventSourceMappings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEventSourceMappingsResponse")
	local t = { 
		["NextMarker"] = NextMarker,
		["EventSourceMappings"] = EventSourceMappings,
	}
	M.AssertListEventSourceMappingsResponse(t)
	return t
end

local DeadLetterConfig_keys = { "TargetArn" = true, nil }

function M.AssertDeadLetterConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeadLetterConfig to be of type 'table'")
	if struct["TargetArn"] then M.AssertResourceArn(struct["TargetArn"]) end
	for k,_ in pairs(struct) do
		assert(DeadLetterConfig_keys[k], "DeadLetterConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeadLetterConfig
-- &lt;p&gt;The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic.&lt;/p&gt;
-- @param TargetArn [ResourceArn] &lt;p&gt;The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic you specify as your Dead Letter Queue (DLQ).&lt;/p&gt;
function M.DeadLetterConfig(TargetArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeadLetterConfig")
	local t = { 
		["TargetArn"] = TargetArn,
	}
	M.AssertDeadLetterConfig(t)
	return t
end

local AddPermissionRequest_keys = { "FunctionName" = true, "Qualifier" = true, "StatementId" = true, "Action" = true, "SourceAccount" = true, "SourceArn" = true, "EventSourceToken" = true, "Principal" = true, nil }

function M.AssertAddPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionRequest to be of type 'table'")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["StatementId"], "Expected key StatementId to exist in table")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Principal"], "Expected key Principal to exist in table")
	if struct["FunctionName"] then M.AssertFunctionName(struct["FunctionName"]) end
	if struct["Qualifier"] then M.AssertQualifier(struct["Qualifier"]) end
	if struct["StatementId"] then M.AssertStatementId(struct["StatementId"]) end
	if struct["Action"] then M.AssertAction(struct["Action"]) end
	if struct["SourceAccount"] then M.AssertSourceOwner(struct["SourceAccount"]) end
	if struct["SourceArn"] then M.AssertArn(struct["SourceArn"]) end
	if struct["EventSourceToken"] then M.AssertEventSourceToken(struct["EventSourceToken"]) end
	if struct["Principal"] then M.AssertPrincipal(struct["Principal"]) end
	for k,_ in pairs(struct) do
		assert(AddPermissionRequest_keys[k], "AddPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionRequest
-- &lt;p/&gt;
-- @param FunctionName [FunctionName] &lt;p&gt;Name of the Lambda function whose resource policy you are updating by adding a new permission.&lt;/p&gt; &lt;p&gt; You can specify a function name (for example, &lt;code&gt;Thumbnail&lt;/code&gt;) or you can specify Amazon Resource Name (ARN) of the function (for example, &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:ThumbNail&lt;/code&gt;). AWS Lambda also allows you to specify partial ARN (for example, &lt;code&gt;account-id:Thumbnail&lt;/code&gt;). Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length. &lt;/p&gt;
-- @param Qualifier [Qualifier] &lt;p&gt;You can use this optional query parameter to describe a qualified ARN using a function version or an alias name. The permission will then apply to the specific qualified ARN. For example, if you specify function version 2 as the qualifier, then permission applies only when request is made using qualified function ARN:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:lambda:aws-region:acct-id:function:function-name:2&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you specify an alias name, for example &lt;code&gt;PROD&lt;/code&gt;, then the permission is valid only for requests made using the alias ARN:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:lambda:aws-region:acct-id:function:function-name:PROD&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If the qualifier is not specified, the permission is valid only when requests is made using unqualified function ARN.&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:lambda:aws-region:acct-id:function:function-name&lt;/code&gt; &lt;/p&gt;
-- @param StatementId [StatementId] &lt;p&gt;A unique statement identifier.&lt;/p&gt;
-- @param Action [Action] &lt;p&gt;The AWS Lambda action you want to allow in this statement. Each Lambda action is a string starting with &lt;code&gt;lambda:&lt;/code&gt; followed by the API name . For example, &lt;code&gt;lambda:CreateFunction&lt;/code&gt;. You can use wildcard (&lt;code&gt;lambda:*&lt;/code&gt;) to grant permission for all AWS Lambda actions. &lt;/p&gt;
-- @param SourceAccount [SourceOwner] &lt;p&gt;This parameter is used for S3 and SES. The AWS account ID (without a hyphen) of the source owner. For example, if the &lt;code&gt;SourceArn&lt;/code&gt; identifies a bucket, then this is the bucket owner's account ID. You can use this additional condition to ensure the bucket you specify is owned by a specific account (it is possible the bucket owner deleted the bucket and some other AWS account created the bucket). You can also use this condition to specify all sources (that is, you don't specify the &lt;code&gt;SourceArn&lt;/code&gt;) owned by a specific account. &lt;/p&gt;
-- @param SourceArn [Arn] &lt;p&gt;This is optional; however, when granting permission to invoke your function, you should specify this field with the Amazon Resource Name (ARN) as its value. This ensures that only events generated from the specified source can invoke the function.&lt;/p&gt; &lt;important&gt; &lt;p&gt;If you add a permission without providing the source ARN, any AWS account that creates a mapping to your function ARN can send events to invoke your Lambda function.&lt;/p&gt; &lt;/important&gt;
-- @param EventSourceToken [EventSourceToken] &lt;p&gt;A unique token that must be supplied by the principal invoking the function. This is currently only used for Alexa Smart Home functions.&lt;/p&gt;
-- @param Principal [Principal] &lt;p&gt;The principal who is getting this permission. It can be Amazon S3 service Principal (&lt;code&gt;s3.amazonaws.com&lt;/code&gt;) if you want Amazon S3 to invoke the function, an AWS account ID if you are granting cross-account permission, or any valid AWS service principal such as &lt;code&gt;sns.amazonaws.com&lt;/code&gt;. For example, you might want to allow a custom application in another AWS account to push events to AWS Lambda by invoking your function. &lt;/p&gt;
-- Required parameter: FunctionName
-- Required parameter: StatementId
-- Required parameter: Action
-- Required parameter: Principal
function M.AddPermissionRequest(FunctionName, Qualifier, StatementId, Action, SourceAccount, SourceArn, EventSourceToken, Principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddPermissionRequest")
	local t = { 
		["FunctionName"] = FunctionName,
		["Qualifier"] = Qualifier,
		["StatementId"] = StatementId,
		["Action"] = Action,
		["SourceAccount"] = SourceAccount,
		["SourceArn"] = SourceArn,
		["EventSourceToken"] = EventSourceToken,
		["Principal"] = Principal,
	}
	M.AssertAddPermissionRequest(t)
	return t
end

local TagResourceRequest_keys = { "Resource" = true, "Tags" = true, nil }

function M.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["Resource"], "Expected key Resource to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Resource"] then M.AssertFunctionArn(struct["Resource"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagResourceRequest_keys[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param Resource [FunctionArn] &lt;p&gt;The ARN (Amazon Resource Name) of the Lambda function.&lt;/p&gt;
-- @param Tags [Tags] &lt;p&gt;The list of tags (key-value pairs) you are assigning to the Lambda function.&lt;/p&gt;
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

local ListTagsResponse_keys = { "Tags" = true, nil }

function M.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsResponse_keys[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
--  
-- @param Tags [Tags] &lt;p&gt;The list of tags assigned to the function.&lt;/p&gt;
function M.ListTagsResponse(Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsResponse")
	local t = { 
		["Tags"] = Tags,
	}
	M.AssertListTagsResponse(t)
	return t
end

local ResourceConflictException_keys = { "message" = true, "Type" = true, nil }

function M.AssertResourceConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceConflictException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(ResourceConflictException_keys[k], "ResourceConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceConflictException
-- &lt;p&gt;The resource already exists.&lt;/p&gt;
-- @param message [String] &lt;p/&gt;
-- @param Type [String] &lt;p/&gt;
function M.ResourceConflictException(message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceConflictException")
	local t = { 
		["message"] = message,
		["Type"] = Type,
	}
	M.AssertResourceConflictException(t)
	return t
end

local VpcConfig_keys = { "SubnetIds" = true, "SecurityGroupIds" = true, nil }

function M.AssertVpcConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfig to be of type 'table'")
	if struct["SubnetIds"] then M.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["SecurityGroupIds"] then M.AssertSecurityGroupIds(struct["SecurityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(VpcConfig_keys[k], "VpcConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfig
-- &lt;p&gt;If your Lambda function accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and one subnet ID.&lt;/p&gt;
-- @param SubnetIds [SubnetIds] &lt;p&gt;A list of one or more subnet IDs in your VPC.&lt;/p&gt;
-- @param SecurityGroupIds [SecurityGroupIds] &lt;p&gt;A list of one or more security groups IDs in your VPC.&lt;/p&gt;
function M.VpcConfig(SubnetIds, SecurityGroupIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VpcConfig")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["SecurityGroupIds"] = SecurityGroupIds,
	}
	M.AssertVpcConfig(t)
	return t
end

local InvalidParameterValueException_keys = { "message" = true, "Type" = true, nil }

function M.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterValueException_keys[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- &lt;p&gt;One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the &lt;code&gt;CreateFunction&lt;/code&gt; or the &lt;code&gt;UpdateFunctionConfiguration&lt;/code&gt; API, that AWS Lambda is unable to assume you will get this exception. You will also get this exception if you have selected a deprecated runtime, such as Node v0.10.42. &lt;/p&gt;
-- @param message [String] &lt;p/&gt;
-- @param Type [String] &lt;p/&gt;
function M.InvalidParameterValueException(message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = message,
		["Type"] = Type,
	}
	M.AssertInvalidParameterValueException(t)
	return t
end

local InvalidZipFileException_keys = { "Message" = true, "Type" = true, nil }

function M.AssertInvalidZipFileException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidZipFileException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(InvalidZipFileException_keys[k], "InvalidZipFileException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidZipFileException
-- &lt;p&gt;AWS Lambda could not unzip the function zip file.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;AWS Lambda could not unzip the function zip file.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;AWS Lambda could not unzip the function zip file.&lt;/p&gt;
function M.InvalidZipFileException(Message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidZipFileException")
	local t = { 
		["Message"] = Message,
		["Type"] = Type,
	}
	M.AssertInvalidZipFileException(t)
	return t
end

local PolicyLengthExceededException_keys = { "message" = true, "Type" = true, nil }

function M.AssertPolicyLengthExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyLengthExceededException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(PolicyLengthExceededException_keys[k], "PolicyLengthExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyLengthExceededException
-- &lt;p&gt;Lambda function access policy is limited to 20 KB.&lt;/p&gt;
-- @param message [String] &lt;p&gt;Lambda function access policy is limited to 20 KB.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;Lambda function access policy is limited to 20 KB.&lt;/p&gt;
function M.PolicyLengthExceededException(message, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyLengthExceededException")
	local t = { 
		["message"] = message,
		["Type"] = Type,
	}
	M.AssertPolicyLengthExceededException(t)
	return t
end

function M.AssertSensitiveString(str)
	assert(str)
	assert(type(str) == "string", "Expected SensitiveString to be of type 'string'")
end

--  
function M.SensitiveString(str)
	M.AssertSensitiveString(str)
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

function M.AssertQualifier(str)
	assert(str)
	assert(type(str) == "string", "Expected Qualifier to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("(|[a-zA-Z0-9$_-]+)"), "Expected string to match pattern '(|[a-zA-Z0-9$_-]+)'")
end

--  
function M.Qualifier(str)
	M.AssertQualifier(str)
	return str
end

function M.AssertEnvironmentVariableValue(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentVariableValue to be of type 'string'")
end

--  
function M.EnvironmentVariableValue(str)
	M.AssertEnvironmentVariableValue(str)
	return str
end

function M.AssertFunctionName(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionName to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("(arn:aws:lambda:)?([a-z]{2}-[a-z]+-%d{1}:)?(%d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(%$LATEST|[a-zA-Z0-9-_]+))?"), "Expected string to match pattern '(arn:aws:lambda:)?([a-z]{2}-[a-z]+-%d{1}:)?(%d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(%$LATEST|[a-zA-Z0-9-_]+))?'")
end

--  
function M.FunctionName(str)
	M.AssertFunctionName(str)
	return str
end

function M.AssertEventSourceToken(str)
	assert(str)
	assert(type(str) == "string", "Expected EventSourceToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("[a-zA-Z0-9._%-]+"), "Expected string to match pattern '[a-zA-Z0-9._%-]+'")
end

--  
function M.EventSourceToken(str)
	M.AssertEventSourceToken(str)
	return str
end

function M.AssertKMSKeyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected KMSKeyArn to be of type 'string'")
	assert(str:match("(arn:aws:[a-z0-9-.]+:.*)|()"), "Expected string to match pattern '(arn:aws:[a-z0-9-.]+:.*)|()'")
end

--  
function M.KMSKeyArn(str)
	M.AssertKMSKeyArn(str)
	return str
end

function M.AssertThrottleReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ThrottleReason to be of type 'string'")
end

--  
function M.ThrottleReason(str)
	M.AssertThrottleReason(str)
	return str
end

function M.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(str:match("arn:aws:([a-zA-Z0-9%-])+:([a-z]{2}-[a-z]+-%d{1})?:(%d{12})?:(.*)"), "Expected string to match pattern 'arn:aws:([a-zA-Z0-9%-])+:([a-z]{2}-[a-z]+-%d{1})?:(%d{12})?:(.*)'")
end

--  
function M.Arn(str)
	M.AssertArn(str)
	return str
end

function M.AssertEventSourcePosition(str)
	assert(str)
	assert(type(str) == "string", "Expected EventSourcePosition to be of type 'string'")
end

--  
function M.EventSourcePosition(str)
	M.AssertEventSourcePosition(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
	assert(str:match("(arn:aws:[a-z0-9-.]+:.*)|()"), "Expected string to match pattern '(arn:aws:[a-z0-9-.]+:.*)|()'")
end

--  
function M.ResourceArn(str)
	M.AssertResourceArn(str)
	return str
end

function M.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	M.AssertSubnetId(str)
	return str
end

function M.AssertTimestamp(str)
	assert(str)
	assert(type(str) == "string", "Expected Timestamp to be of type 'string'")
end

--  
function M.Timestamp(str)
	M.AssertTimestamp(str)
	return str
end

function M.AssertTracingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected TracingMode to be of type 'string'")
end

--  
function M.TracingMode(str)
	M.AssertTracingMode(str)
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

function M.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
end

--  
function M.SecurityGroupId(str)
	M.AssertSecurityGroupId(str)
	return str
end

function M.AssertFunctionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionArn to be of type 'string'")
	assert(str:match("arn:aws:lambda:[a-z]{2}-[a-z]+-%d{1}:%d{12}:function:[a-zA-Z0-9-_]+(:(%$LATEST|[a-zA-Z0-9-_]+))?"), "Expected string to match pattern 'arn:aws:lambda:[a-z]{2}-[a-z]+-%d{1}:%d{12}:function:[a-zA-Z0-9-_]+(:(%$LATEST|[a-zA-Z0-9-_]+))?'")
end

--  
function M.FunctionArn(str)
	M.AssertFunctionArn(str)
	return str
end

function M.AssertSourceOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceOwner to be of type 'string'")
	assert(str:match("%d{12}"), "Expected string to match pattern '%d{12}'")
end

--  
function M.SourceOwner(str)
	M.AssertSourceOwner(str)
	return str
end

function M.AssertEnvironmentVariableName(str)
	assert(str)
	assert(type(str) == "string", "Expected EnvironmentVariableName to be of type 'string'")
	assert(str:match("[a-zA-Z]([a-zA-Z0-9_])+"), "Expected string to match pattern '[a-zA-Z]([a-zA-Z0-9_])+'")
end

--  
function M.EnvironmentVariableName(str)
	M.AssertEnvironmentVariableName(str)
	return str
end

function M.AssertHandler(str)
	assert(str)
	assert(type(str) == "string", "Expected Handler to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(str:match("[^%s]+"), "Expected string to match pattern '[^%s]+'")
end

--  
function M.Handler(str)
	M.AssertHandler(str)
	return str
end

function M.AssertRuntime(str)
	assert(str)
	assert(type(str) == "string", "Expected Runtime to be of type 'string'")
end

--  
function M.Runtime(str)
	M.AssertRuntime(str)
	return str
end

function M.AssertLogType(str)
	assert(str)
	assert(type(str) == "string", "Expected LogType to be of type 'string'")
end

--  
function M.LogType(str)
	M.AssertLogType(str)
	return str
end

function M.AssertAction(str)
	assert(str)
	assert(type(str) == "string", "Expected Action to be of type 'string'")
	assert(str:match("(lambda:[*]|lambda:[a-zA-Z]+|[*])"), "Expected string to match pattern '(lambda:[*]|lambda:[a-zA-Z]+|[*])'")
end

--  
function M.Action(str)
	M.AssertAction(str)
	return str
end

function M.AssertS3Key(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Key to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.S3Key(str)
	M.AssertS3Key(str)
	return str
end

function M.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("(%$LATEST|[0-9]+)"), "Expected string to match pattern '(%$LATEST|[0-9]+)'")
end

--  
function M.Version(str)
	M.AssertVersion(str)
	return str
end

function M.AssertS3ObjectVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected S3ObjectVersion to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.S3ObjectVersion(str)
	M.AssertS3ObjectVersion(str)
	return str
end

function M.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(str:match("arn:aws:iam::%d{12}:role/?[a-zA-Z_0-9+=,.@%-_/]+"), "Expected string to match pattern 'arn:aws:iam::%d{12}:role/?[a-zA-Z_0-9+=,.@%-_/]+'")
end

--  
function M.RoleArn(str)
	M.AssertRoleArn(str)
	return str
end

function M.AssertStatementId(str)
	assert(str)
	assert(type(str) == "string", "Expected StatementId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("([a-zA-Z0-9-_]+)"), "Expected string to match pattern '([a-zA-Z0-9-_]+)'")
end

--  
function M.StatementId(str)
	M.AssertStatementId(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertInvocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected InvocationType to be of type 'string'")
end

--  
function M.InvocationType(str)
	M.AssertInvocationType(str)
	return str
end

function M.AssertS3Bucket(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Bucket to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("^[0-9A-Za-z%.%-_]*(?&lt;!%.)$"), "Expected string to match pattern '^[0-9A-Za-z%.%-_]*(?&lt;!%.)$'")
end

--  
function M.S3Bucket(str)
	M.AssertS3Bucket(str)
	return str
end

function M.AssertAlias(str)
	assert(str)
	assert(type(str) == "string", "Expected Alias to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("(?!^[0-9]+$)([a-zA-Z0-9-_]+)"), "Expected string to match pattern '(?!^[0-9]+$)([a-zA-Z0-9-_]+)'")
end

--  
function M.Alias(str)
	M.AssertAlias(str)
	return str
end

function M.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
end

--  
function M.VpcId(str)
	M.AssertVpcId(str)
	return str
end

function M.AssertPrincipal(str)
	assert(str)
	assert(type(str) == "string", "Expected Principal to be of type 'string'")
	assert(str:match(".*"), "Expected string to match pattern '.*'")
end

--  
function M.Principal(str)
	M.AssertPrincipal(str)
	return str
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertHttpStatus(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HttpStatus to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.HttpStatus(integer)
	M.AssertHttpStatus(integer)
	return integer
end

function M.AssertMemorySize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MemorySize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1536, "Expected integer to be max 1536")
	assert(integer >= 128, "Expected integer to be min 128")
end

function M.MemorySize(integer)
	M.AssertMemorySize(integer)
	return integer
end

function M.AssertMaxListItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxListItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxListItems(integer)
	M.AssertMaxListItems(integer)
	return integer
end

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Timeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Timeout(integer)
	M.AssertTimeout(integer)
	return integer
end

function M.AssertBatchSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BatchSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.BatchSize(integer)
	M.AssertBatchSize(integer)
	return integer
end

function M.AssertEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Enabled to be of type 'boolean'")
end

function M.Enabled(boolean)
	M.AssertEnabled(boolean)
	return boolean
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertTagKey(k)
		M.AssertTagValue(v)
	end
end

function M.Tags(map)
	M.AssertTags(map)
	return map
end

function M.AssertEnvironmentVariables(map)
	assert(map)
	assert(type(map) == "table", "Expected EnvironmentVariables to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertEnvironmentVariableName(k)
		M.AssertEnvironmentVariableValue(v)
	end
end

function M.EnvironmentVariables(map)
	M.AssertEnvironmentVariables(map)
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

function M.AssertBlobStream(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BlobStream to be of type 'string'")
end

function M.BlobStream(blob)
	M.AssertBlobStream(blob)
	return blob
end

function M.AssertBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Blob to be of type 'string'")
end

function M.Blob(blob)
	M.AssertBlob(blob)
	return blob
end

function M.AssertSubnetIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIds to be of type ''table")
	assert(#list <= 16, "Expected list to be contain 16 elements")
	for _,v in ipairs(list) do
		M.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.SubnetIds(list)
	M.AssertSubnetIds(list)
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
		M.AssertAliasConfiguration(v)
	end
end

--  
-- List of AliasConfiguration objects
function M.AliasList(list)
	M.AssertAliasList(list)
	return list
end

function M.AssertFunctionList(list)
	assert(list)
	assert(type(list) == "table", "Expected FunctionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFunctionConfiguration(v)
	end
end

--  
-- List of FunctionConfiguration objects
function M.FunctionList(list)
	M.AssertFunctionList(list)
	return list
end

function M.AssertEventSourceMappingsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventSourceMappingsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventSourceMappingConfiguration(v)
	end
end

--  
-- List of EventSourceMappingConfiguration objects
function M.EventSourceMappingsList(list)
	M.AssertEventSourceMappingsList(list)
	return list
end

function M.AssertSecurityGroupIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIds to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertSecurityGroupId(v)
	end
end

--  
-- List of SecurityGroupId objects
function M.SecurityGroupIds(list)
	M.AssertSecurityGroupIds(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- ListEventSourceMappings
-- @param ListEventSourceMappingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListEventSourceMappingsAsync(ListEventSourceMappingsRequest, cb)
	assert(ListEventSourceMappingsRequest, "You must provide a ListEventSourceMappingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListEventSourceMappings",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-03-31/event-source-mappings/", ListEventSourceMappingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteFunction
-- @param DeleteFunctionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFunctionAsync(DeleteFunctionRequest, cb)
	assert(DeleteFunctionRequest, "You must provide a DeleteFunctionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteFunction",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}", DeleteFunctionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateEventSourceMapping
-- @param UpdateEventSourceMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateEventSourceMappingAsync(UpdateEventSourceMappingRequest, cb)
	assert(UpdateEventSourceMappingRequest, "You must provide a UpdateEventSourceMappingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateEventSourceMapping",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2015-03-31/event-source-mappings/{UUID}", UpdateEventSourceMappingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAlias
-- @param UpdateAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAliasAsync(UpdateAliasRequest, cb)
	assert(UpdateAliasRequest, "You must provide a UpdateAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/aliases/{Name}", UpdateAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListFunctions
-- @param ListFunctionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListFunctionsAsync(ListFunctionsRequest, cb)
	assert(ListFunctionsRequest, "You must provide a ListFunctionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListFunctions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/", ListFunctionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateEventSourceMapping
-- @param CreateEventSourceMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateEventSourceMappingAsync(CreateEventSourceMappingRequest, cb)
	assert(CreateEventSourceMappingRequest, "You must provide a CreateEventSourceMappingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateEventSourceMapping",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-03-31/event-source-mappings/", CreateEventSourceMappingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetFunctionConfiguration
-- @param GetFunctionConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFunctionConfigurationAsync(GetFunctionConfigurationRequest, cb)
	assert(GetFunctionConfigurationRequest, "You must provide a GetFunctionConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetFunctionConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/configuration", GetFunctionConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAliases
-- @param ListAliasesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAliasesAsync(ListAliasesRequest, cb)
	assert(ListAliasesRequest, "You must provide a ListAliasesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListAliases",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/aliases", ListAliasesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPolicy
-- @param GetPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPolicyAsync(GetPolicyRequest, cb)
	assert(GetPolicyRequest, "You must provide a GetPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/policy", GetPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Invoke
-- @param InvocationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.InvokeAsync(InvocationRequest, cb)
	assert(InvocationRequest, "You must provide a InvocationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".Invoke",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/invocations", InvocationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PublishVersion
-- @param PublishVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PublishVersionAsync(PublishVersionRequest, cb)
	assert(PublishVersionRequest, "You must provide a PublishVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PublishVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/versions", PublishVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetFunction
-- @param GetFunctionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFunctionAsync(GetFunctionRequest, cb)
	assert(GetFunctionRequest, "You must provide a GetFunctionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetFunction",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}", GetFunctionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAlias
-- @param DeleteAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAliasAsync(DeleteAliasRequest, cb)
	assert(DeleteAliasRequest, "You must provide a DeleteAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteAlias",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/aliases/{Name}", DeleteAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddPermission
-- @param AddPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddPermissionAsync(AddPermissionRequest, cb)
	assert(AddPermissionRequest, "You must provide a AddPermissionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/policy", AddPermissionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListVersionsByFunction
-- @param ListVersionsByFunctionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListVersionsByFunctionAsync(ListVersionsByFunctionRequest, cb)
	assert(ListVersionsByFunctionRequest, "You must provide a ListVersionsByFunctionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListVersionsByFunction",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/versions", ListVersionsByFunctionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemovePermission
-- @param RemovePermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemovePermissionAsync(RemovePermissionRequest, cb)
	assert(RemovePermissionRequest, "You must provide a RemovePermissionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemovePermission",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", RemovePermissionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- InvokeAsync
-- @param InvokeAsyncRequest
-- @param cb Callback function accepting two args: response, error_message
function M.InvokeAsyncAsync(InvokeAsyncRequest, cb)
	assert(InvokeAsyncRequest, "You must provide a InvokeAsyncRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".InvokeAsync",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2014-11-13/functions/{FunctionName}/invoke-async/", InvokeAsyncRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAlias
-- @param CreateAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAliasAsync(CreateAliasRequest, cb)
	assert(CreateAliasRequest, "You must provide a CreateAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/aliases", CreateAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTags
-- @param ListTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTags",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2017-03-31/tags/{ARN}", ListTagsRequest, headers, M.metadata, cb)
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

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2017-03-31/tags/{ARN}", TagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteEventSourceMapping
-- @param DeleteEventSourceMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEventSourceMappingAsync(DeleteEventSourceMappingRequest, cb)
	assert(DeleteEventSourceMappingRequest, "You must provide a DeleteEventSourceMappingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteEventSourceMapping",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2015-03-31/event-source-mappings/{UUID}", DeleteEventSourceMappingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateFunctionConfiguration
-- @param UpdateFunctionConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFunctionConfigurationAsync(UpdateFunctionConfigurationRequest, cb)
	assert(UpdateFunctionConfigurationRequest, "You must provide a UpdateFunctionConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateFunctionConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/configuration", UpdateFunctionConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetEventSourceMapping
-- @param GetEventSourceMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetEventSourceMappingAsync(GetEventSourceMappingRequest, cb)
	assert(GetEventSourceMappingRequest, "You must provide a GetEventSourceMappingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetEventSourceMapping",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-03-31/event-source-mappings/{UUID}", GetEventSourceMappingRequest, headers, M.metadata, cb)
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

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2017-03-31/tags/{ARN}", UntagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAlias
-- @param GetAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAliasAsync(GetAliasRequest, cb)
	assert(GetAliasRequest, "You must provide a GetAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAlias",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/aliases/{Name}", GetAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAccountSettings
-- @param GetAccountSettingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountSettingsAsync(GetAccountSettingsRequest, cb)
	assert(GetAccountSettingsRequest, "You must provide a GetAccountSettingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAccountSettings",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2016-08-19/account-settings/", GetAccountSettingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateFunction
-- @param CreateFunctionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFunctionAsync(CreateFunctionRequest, cb)
	assert(CreateFunctionRequest, "You must provide a CreateFunctionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateFunction",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions", CreateFunctionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateFunctionCode
-- @param UpdateFunctionCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFunctionCodeAsync(UpdateFunctionCodeRequest, cb)
	assert(UpdateFunctionCodeRequest, "You must provide a UpdateFunctionCodeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateFunctionCode",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2015-03-31/functions/{FunctionName}/code", UpdateFunctionCodeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
