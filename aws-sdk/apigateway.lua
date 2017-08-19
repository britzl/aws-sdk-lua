--- GENERATED CODE - DO NOT MODIFY
-- Amazon API Gateway (apigateway-2015-07-09)

local M = {}

M.metadata = {
	api_version = "2015-07-09",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "apigateway",
	service_abbreviation = "",
	service_full_name = "Amazon API Gateway",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "apigateway-2015-07-09",
}

local keys = {}
local asserts = {}

keys.UpdateIntegrationRequest = { ["resourceId"] = true, ["patchOperations"] = true, ["restApiId"] = true, ["httpMethod"] = true, nil }

function asserts.AssertUpdateIntegrationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIntegrationRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateIntegrationRequest[k], "UpdateIntegrationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIntegrationRequest
-- <p>Represents an update integration request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>Represents an update integration request's resource identifier.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * restApiId [String] <p>Represents an update integration request's API identifier.</p>
-- * httpMethod [String] <p>Represents an update integration request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return UpdateIntegrationRequest structure as a key-value pair table
function M.UpdateIntegrationRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateIntegrationRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["patchOperations"] = args["patchOperations"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertUpdateIntegrationRequest(t)
	return t
end

keys.CreateResourceRequest = { ["restApiId"] = true, ["pathPart"] = true, ["parentId"] = true, nil }

function asserts.AssertCreateResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResourceRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["parentId"], "Expected key parentId to exist in table")
	assert(struct["pathPart"], "Expected key pathPart to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["pathPart"] then asserts.AssertString(struct["pathPart"]) end
	if struct["parentId"] then asserts.AssertString(struct["parentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateResourceRequest[k], "CreateResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResourceRequest
-- <p>Requests Amazon API Gateway to create a <a>Resource</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> for the resource. </p>
-- * pathPart [String] <p>The last path segment for this resource.</p>
-- * parentId [String] <p>The parent resource's identifier.</p>
-- Required key: restApiId
-- Required key: parentId
-- Required key: pathPart
-- @return CreateResourceRequest structure as a key-value pair table
function M.CreateResourceRequest(args)
	assert(args, "You must provdide an argument table when creating CreateResourceRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["pathPart"] = args["pathPart"],
		["parentId"] = args["parentId"],
	}
	asserts.AssertCreateResourceRequest(t)
	return t
end

keys.UpdateStageRequest = { ["restApiId"] = true, ["stageName"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateStageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStageRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStageRequest[k], "UpdateStageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStageRequest
-- <p>Requests Amazon API Gateway to change information about a <a>Stage</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Stage</a> resource to change information about.</p>
-- * stageName [String] <p>The name of the <a>Stage</a> resource to change information about.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: stageName
-- @return UpdateStageRequest structure as a key-value pair table
function M.UpdateStageRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateStageRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateStageRequest(t)
	return t
end

keys.ServiceUnavailableException = { ["message"] = true, ["retryAfterSeconds"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["retryAfterSeconds"] then asserts.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- * retryAfterSeconds [String] 
-- @return ServiceUnavailableException structure as a key-value pair table
function M.ServiceUnavailableException(args)
	assert(args, "You must provdide an argument table when creating ServiceUnavailableException")
	local t = { 
		["message"] = args["message"],
		["retryAfterSeconds"] = args["retryAfterSeconds"],
	}
	asserts.AssertServiceUnavailableException(t)
	return t
end

keys.BadRequestException = { ["message"] = true, nil }

function asserts.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadRequestException[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return BadRequestException structure as a key-value pair table
function M.BadRequestException(args)
	assert(args, "You must provdide an argument table when creating BadRequestException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertBadRequestException(t)
	return t
end

keys.ClientCertificates = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertClientCertificates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientCertificates to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfClientCertificate(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClientCertificates[k], "ClientCertificates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientCertificates
-- <p>Represents a collection of <a>ClientCertificate</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html">Use Client-Side Certificate</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfClientCertificate] <p>The current page of any <a>ClientCertificate</a> resources in the collection of <a>ClientCertificate</a> resources.</p>
-- @return ClientCertificates structure as a key-value pair table
function M.ClientCertificates(args)
	assert(args, "You must provdide an argument table when creating ClientCertificates")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertClientCertificates(t)
	return t
end

keys.UnauthorizedException = { ["message"] = true, nil }

function asserts.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedException[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return UnauthorizedException structure as a key-value pair table
function M.UnauthorizedException(args)
	assert(args, "You must provdide an argument table when creating UnauthorizedException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUnauthorizedException(t)
	return t
end

keys.GetApiKeyRequest = { ["apiKey"] = true, ["includeValue"] = true, nil }

function asserts.AssertGetApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApiKeyRequest to be of type 'table'")
	assert(struct["apiKey"], "Expected key apiKey to exist in table")
	if struct["apiKey"] then asserts.AssertString(struct["apiKey"]) end
	if struct["includeValue"] then asserts.AssertNullableBoolean(struct["includeValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApiKeyRequest[k], "GetApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApiKeyRequest
-- <p>A request to get information about the current <a>ApiKey</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiKey [String] <p>The identifier of the <a>ApiKey</a> resource.</p>
-- * includeValue [NullableBoolean] <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains the key value.</p>
-- Required key: apiKey
-- @return GetApiKeyRequest structure as a key-value pair table
function M.GetApiKeyRequest(args)
	assert(args, "You must provdide an argument table when creating GetApiKeyRequest")
	local t = { 
		["apiKey"] = args["apiKey"],
		["includeValue"] = args["includeValue"],
	}
	asserts.AssertGetApiKeyRequest(t)
	return t
end

keys.Template = { ["value"] = true, nil }

function asserts.AssertTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Template to be of type 'table'")
	if struct["value"] then asserts.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Template[k], "Template contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Template
-- <p>Represents a mapping template used to transform a payload.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html#models-mappings-mappings">Mapping Templates</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [String] <p>The Apache <a href="http://velocity.apache.org/engine/devel/vtl-reference-guide.html" target="_blank">Velocity Template Language (VTL)</a> template content used for the template resource.</p>
-- @return Template structure as a key-value pair table
function M.Template(args)
	assert(args, "You must provdide an argument table when creating Template")
	local t = { 
		["value"] = args["value"],
	}
	asserts.AssertTemplate(t)
	return t
end

keys.GenerateClientCertificateRequest = { ["description"] = true, nil }

function asserts.AssertGenerateClientCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateClientCertificateRequest to be of type 'table'")
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateClientCertificateRequest[k], "GenerateClientCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateClientCertificateRequest
-- <p>A request to generate a <a>ClientCertificate</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [String] <p>The description of the <a>ClientCertificate</a>.</p>
-- @return GenerateClientCertificateRequest structure as a key-value pair table
function M.GenerateClientCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating GenerateClientCertificateRequest")
	local t = { 
		["description"] = args["description"],
	}
	asserts.AssertGenerateClientCertificateRequest(t)
	return t
end

keys.Resources = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertResources(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resources to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfResource(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.Resources[k], "Resources contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resources
-- <p>Represents a collection of <a>Resource</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfResource] <p>Gets the current <a>Resource</a> resource in the collection.</p>
-- @return Resources structure as a key-value pair table
function M.Resources(args)
	assert(args, "You must provdide an argument table when creating Resources")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertResources(t)
	return t
end

keys.GetDomainNameRequest = { ["domainName"] = true, nil }

function asserts.AssertGetDomainNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainNameRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDomainNameRequest[k], "GetDomainNameRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainNameRequest
-- <p>Request to get the name of a <a>DomainName</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainName [String] <p>The name of the <a>DomainName</a> resource.</p>
-- Required key: domainName
-- @return GetDomainNameRequest structure as a key-value pair table
function M.GetDomainNameRequest(args)
	assert(args, "You must provdide an argument table when creating GetDomainNameRequest")
	local t = { 
		["domainName"] = args["domainName"],
	}
	asserts.AssertGetDomainNameRequest(t)
	return t
end

keys.PutMethodRequest = { ["restApiId"] = true, ["requestParameters"] = true, ["requestModels"] = true, ["resourceId"] = true, ["authorizationType"] = true, ["operationName"] = true, ["apiKeyRequired"] = true, ["httpMethod"] = true, ["requestValidatorId"] = true, ["authorizerId"] = true, nil }

function asserts.AssertPutMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["authorizationType"], "Expected key authorizationType to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["requestParameters"] then asserts.AssertMapOfStringToBoolean(struct["requestParameters"]) end
	if struct["requestModels"] then asserts.AssertMapOfStringToString(struct["requestModels"]) end
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["authorizationType"] then asserts.AssertString(struct["authorizationType"]) end
	if struct["operationName"] then asserts.AssertString(struct["operationName"]) end
	if struct["apiKeyRequired"] then asserts.AssertBoolean(struct["apiKeyRequired"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	if struct["requestValidatorId"] then asserts.AssertString(struct["requestValidatorId"]) end
	if struct["authorizerId"] then asserts.AssertString(struct["authorizerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutMethodRequest[k], "PutMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMethodRequest
-- <p>Request to add a method to an existing <a>Resource</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the new <a>Method</a> resource.</p>
-- * requestParameters [MapOfStringToBoolean] <p>A key-value map defining required or optional method request parameters that can be accepted by Amazon API Gateway. A key defines a method request parameter name matching the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>). The method request parameter names defined here are available in <a>Integration</a> to be mapped to integration request parameters or body-mapping templates.</p>
-- * requestModels [MapOfStringToString] <p>Specifies the <a>Model</a> resources used for the request's content type. Request models are represented as a key/value map, with a content type as the key and a <a>Model</a> name as the value.</p>
-- * resourceId [String] <p>The <a>Resource</a> identifier for the new <a>Method</a> resource.</p>
-- * authorizationType [String] <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
-- * operationName [String] <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in <a href="http://petstore-demo-endpoint.execute-api.com/petstore/pets">PetStore</a> example.</p>
-- * apiKeyRequired [Boolean] <p>Specifies whether the method required a valid <a>ApiKey</a>.</p>
-- * httpMethod [String] <p>Specifies the method request's HTTP method type.</p>
-- * requestValidatorId [String] <p>The identifier of a <a>RequestValidator</a> for validating the method request.</p>
-- * authorizerId [String] <p>Specifies the identifier of an <a>Authorizer</a> to use on this Method, if the type is CUSTOM.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: authorizationType
-- @return PutMethodRequest structure as a key-value pair table
function M.PutMethodRequest(args)
	assert(args, "You must provdide an argument table when creating PutMethodRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["requestParameters"] = args["requestParameters"],
		["requestModels"] = args["requestModels"],
		["resourceId"] = args["resourceId"],
		["authorizationType"] = args["authorizationType"],
		["operationName"] = args["operationName"],
		["apiKeyRequired"] = args["apiKeyRequired"],
		["httpMethod"] = args["httpMethod"],
		["requestValidatorId"] = args["requestValidatorId"],
		["authorizerId"] = args["authorizerId"],
	}
	asserts.AssertPutMethodRequest(t)
	return t
end

keys.DocumentationPart = { ["properties"] = true, ["id"] = true, ["location"] = true, nil }

function asserts.AssertDocumentationPart(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationPart to be of type 'table'")
	if struct["properties"] then asserts.AssertString(struct["properties"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["location"] then asserts.AssertDocumentationPartLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentationPart[k], "DocumentationPart contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationPart
-- <p>A documentation part for a targeted API entity.</p> <div class="remarks"> <p>A documentation part consists of a content map (<code>properties</code>) and a target (<code>location</code>). The target specifies an API entity to which the documentation content applies. The supported API entity types are <code>API</code>, <code>AUTHORIZER</code>, <code>MODEL</code>, <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. Valid <code>location</code> fields depend on the API entity type. All valid fields are not required.</p> <p>The content map is a JSON string of API-specific key-value pairs. Although an API can use any shape for the content map, only the Swagger-compliant documentation fields will be injected into the associated API entity definition in the exported Swagger definition file.</p></div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationParts</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * properties [String] <p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>"{ \"description\": \"The API does ...\" }"</code>. Only Swagger-compliant documentation-related fields from the <literal>properties</literal> map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a Swagger extension of <code>x-amazon-apigateway-documentation</code>.</p>
-- * id [String] <p>The <a>DocumentationPart</a> identifier, generated by Amazon API Gateway when the <code>DocumentationPart</code> is created.</p>
-- * location [DocumentationPartLocation] <p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>
-- @return DocumentationPart structure as a key-value pair table
function M.DocumentationPart(args)
	assert(args, "You must provdide an argument table when creating DocumentationPart")
	local t = { 
		["properties"] = args["properties"],
		["id"] = args["id"],
		["location"] = args["location"],
	}
	asserts.AssertDocumentationPart(t)
	return t
end

keys.TestInvokeAuthorizerResponse = { ["latency"] = true, ["log"] = true, ["principalId"] = true, ["policy"] = true, ["claims"] = true, ["authorization"] = true, ["clientStatus"] = true, nil }

function asserts.AssertTestInvokeAuthorizerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestInvokeAuthorizerResponse to be of type 'table'")
	if struct["latency"] then asserts.AssertLong(struct["latency"]) end
	if struct["log"] then asserts.AssertString(struct["log"]) end
	if struct["principalId"] then asserts.AssertString(struct["principalId"]) end
	if struct["policy"] then asserts.AssertString(struct["policy"]) end
	if struct["claims"] then asserts.AssertMapOfStringToString(struct["claims"]) end
	if struct["authorization"] then asserts.AssertMapOfStringToList(struct["authorization"]) end
	if struct["clientStatus"] then asserts.AssertInteger(struct["clientStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestInvokeAuthorizerResponse[k], "TestInvokeAuthorizerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestInvokeAuthorizerResponse
-- <p>Represents the response of the test invoke request for a custom <a>Authorizer</a></p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * latency [Long] <p>The execution latency of the test authorizer request.</p>
-- * log [String] <p>The Amazon API Gateway execution log for the test authorizer request.</p>
-- * principalId [String] <p>The principal identity returned by the <a>Authorizer</a></p>
-- * policy [String] <p>The JSON policy document returned by the <a>Authorizer</a></p>
-- * claims [MapOfStringToString] <p>The <a href="http://openid.net/specs/openid-connect-core-1_0.html#StandardClaims">open identity claims</a>, with any supported custom attributes, returned from the Cognito Your User Pool configured for the API.</p>
-- * authorization [MapOfStringToList] 
-- * clientStatus [Integer] <p>The HTTP status code that the client would have received. Value is 0 if the authorizer succeeded.</p>
-- @return TestInvokeAuthorizerResponse structure as a key-value pair table
function M.TestInvokeAuthorizerResponse(args)
	assert(args, "You must provdide an argument table when creating TestInvokeAuthorizerResponse")
	local t = { 
		["latency"] = args["latency"],
		["log"] = args["log"],
		["principalId"] = args["principalId"],
		["policy"] = args["policy"],
		["claims"] = args["claims"],
		["authorization"] = args["authorization"],
		["clientStatus"] = args["clientStatus"],
	}
	asserts.AssertTestInvokeAuthorizerResponse(t)
	return t
end

keys.GetClientCertificateRequest = { ["clientCertificateId"] = true, nil }

function asserts.AssertGetClientCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetClientCertificateRequest to be of type 'table'")
	assert(struct["clientCertificateId"], "Expected key clientCertificateId to exist in table")
	if struct["clientCertificateId"] then asserts.AssertString(struct["clientCertificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetClientCertificateRequest[k], "GetClientCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetClientCertificateRequest
-- <p>A request to get information about the current <a>ClientCertificate</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientCertificateId [String] <p>The identifier of the <a>ClientCertificate</a> resource to be described.</p>
-- Required key: clientCertificateId
-- @return GetClientCertificateRequest structure as a key-value pair table
function M.GetClientCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating GetClientCertificateRequest")
	local t = { 
		["clientCertificateId"] = args["clientCertificateId"],
	}
	asserts.AssertGetClientCertificateRequest(t)
	return t
end

keys.GetIntegrationRequest = { ["resourceId"] = true, ["restApiId"] = true, ["httpMethod"] = true, nil }

function asserts.AssertGetIntegrationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntegrationRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIntegrationRequest[k], "GetIntegrationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntegrationRequest
-- <p>Represents a get integration request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>Specifies a get integration request's resource identifier</p>
-- * restApiId [String] <p>Specifies a get integration request's API identifier.</p>
-- * httpMethod [String] <p>Specifies a get integration request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return GetIntegrationRequest structure as a key-value pair table
function M.GetIntegrationRequest(args)
	assert(args, "You must provdide an argument table when creating GetIntegrationRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertGetIntegrationRequest(t)
	return t
end

keys.SdkResponse = { ["body"] = true, ["contentType"] = true, ["contentDisposition"] = true, nil }

function asserts.AssertSdkResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SdkResponse to be of type 'table'")
	if struct["body"] then asserts.AssertBlob(struct["body"]) end
	if struct["contentType"] then asserts.AssertString(struct["contentType"]) end
	if struct["contentDisposition"] then asserts.AssertString(struct["contentDisposition"]) end
	for k,_ in pairs(struct) do
		assert(keys.SdkResponse[k], "SdkResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SdkResponse
-- <p>The binary blob response to <a>GetSdk</a>, which contains the generated SDK.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Blob] <p>The binary blob response to <a>GetSdk</a>, which contains the generated SDK.</p>
-- * contentType [String] <p>The content-type header value in the HTTP response.</p>
-- * contentDisposition [String] <p>The content-disposition header value in the HTTP response.</p>
-- @return SdkResponse structure as a key-value pair table
function M.SdkResponse(args)
	assert(args, "You must provdide an argument table when creating SdkResponse")
	local t = { 
		["body"] = args["body"],
		["contentType"] = args["contentType"],
		["contentDisposition"] = args["contentDisposition"],
	}
	asserts.AssertSdkResponse(t)
	return t
end

keys.Account = { ["cloudwatchRoleArn"] = true, ["throttleSettings"] = true, ["features"] = true, ["apiKeyVersion"] = true, nil }

function asserts.AssertAccount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Account to be of type 'table'")
	if struct["cloudwatchRoleArn"] then asserts.AssertString(struct["cloudwatchRoleArn"]) end
	if struct["throttleSettings"] then asserts.AssertThrottleSettings(struct["throttleSettings"]) end
	if struct["features"] then asserts.AssertListOfString(struct["features"]) end
	if struct["apiKeyVersion"] then asserts.AssertString(struct["apiKeyVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.Account[k], "Account contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Account
-- <p>Represents an AWS account that is associated with Amazon API Gateway.</p> <div class="remarks"> <p>To view the account info, call <code>GET</code> on this resource.</p> <h4>Error Codes</h4> <p>The following exception may be thrown when the request fails.</p> <ul> <li>UnauthorizedException</li> <li>NotFoundException</li> <li>TooManyRequestsException</li> </ul> <p>For detailed error code information, including the corresponding HTTP Status Codes, see <a href="http://docs.aws.amazon.com/apigateway/api-reference/handling-errors/#api-error-codes">API Gateway Error Codes</a></p> <h4>Example: Get the information about an account.</h4> <h5>Request</h5> <pre><code>GET /account HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160531T184618Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash} </code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/account-apigateway-{rel}.html", "name": "account", "templated": true }, "self": { "href": "/account" }, "account:update": { "href": "/account" } }, "cloudwatchRoleArn": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "throttleSettings": { "rateLimit": 500, "burstLimit": 1000 } } </code></pre> <p>In addition to making the REST API call directly, you can use the AWS CLI and an AWS SDK to access this resource.</p> </div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-limits.html">API Gateway Limits</a> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html">Developer Guide</a>, <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-account.html">AWS CLI</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cloudwatchRoleArn [String] <p>The ARN of an Amazon CloudWatch role for the current <a>Account</a>. </p>
-- * throttleSettings [ThrottleSettings] <p>Specifies the API request limits configured for the current <a>Account</a>.</p>
-- * features [ListOfString] <p>A list of features supported for the account. When usage plans are enabled, the features list will include an entry of <code>"UsagePlans"</code>.</p>
-- * apiKeyVersion [String] <p>The version of the API keys used for the account.</p>
-- @return Account structure as a key-value pair table
function M.Account(args)
	assert(args, "You must provdide an argument table when creating Account")
	local t = { 
		["cloudwatchRoleArn"] = args["cloudwatchRoleArn"],
		["throttleSettings"] = args["throttleSettings"],
		["features"] = args["features"],
		["apiKeyVersion"] = args["apiKeyVersion"],
	}
	asserts.AssertAccount(t)
	return t
end

keys.UpdateBasePathMappingRequest = { ["basePath"] = true, ["patchOperations"] = true, ["domainName"] = true, nil }

function asserts.AssertUpdateBasePathMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBasePathMappingRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["basePath"], "Expected key basePath to exist in table")
	if struct["basePath"] then asserts.AssertString(struct["basePath"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBasePathMappingRequest[k], "UpdateBasePathMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBasePathMappingRequest
-- <p>A request to change information about the <a>BasePathMapping</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * basePath [String] <p>The base path of the <a>BasePathMapping</a> resource to change.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * domainName [String] <p>The domain name of the <a>BasePathMapping</a> resource to change.</p>
-- Required key: domainName
-- Required key: basePath
-- @return UpdateBasePathMappingRequest structure as a key-value pair table
function M.UpdateBasePathMappingRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateBasePathMappingRequest")
	local t = { 
		["basePath"] = args["basePath"],
		["patchOperations"] = args["patchOperations"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertUpdateBasePathMappingRequest(t)
	return t
end

keys.GetStagesRequest = { ["deploymentId"] = true, ["restApiId"] = true, nil }

function asserts.AssertGetStagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStagesRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["deploymentId"] then asserts.AssertString(struct["deploymentId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStagesRequest[k], "GetStagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStagesRequest
-- <p>Requests Amazon API Gateway to get information about one or more <a>Stage</a> resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [String] <p>The stages' deployment identifiers.</p>
-- * restApiId [String] <p>The stages' API identifiers.</p>
-- Required key: restApiId
-- @return GetStagesRequest structure as a key-value pair table
function M.GetStagesRequest(args)
	assert(args, "You must provdide an argument table when creating GetStagesRequest")
	local t = { 
		["deploymentId"] = args["deploymentId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetStagesRequest(t)
	return t
end

keys.GetRestApisRequest = { ["position"] = true, ["limit"] = true, nil }

function asserts.AssertGetRestApisRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRestApisRequest to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRestApisRequest[k], "GetRestApisRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRestApisRequest
-- <p>The GET request to list existing <a>RestApis</a> defined for your collection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- @return GetRestApisRequest structure as a key-value pair table
function M.GetRestApisRequest(args)
	assert(args, "You must provdide an argument table when creating GetRestApisRequest")
	local t = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetRestApisRequest(t)
	return t
end

keys.DeleteDocumentationPartRequest = { ["documentationPartId"] = true, ["restApiId"] = true, nil }

function asserts.AssertDeleteDocumentationPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDocumentationPartRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationPartId"], "Expected key documentationPartId to exist in table")
	if struct["documentationPartId"] then asserts.AssertString(struct["documentationPartId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDocumentationPartRequest[k], "DeleteDocumentationPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDocumentationPartRequest
-- <p>Deletes an existing documentation part of an API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * documentationPartId [String] <p>[Required] The identifier of the to-be-deleted documentation part.</p>
-- * restApiId [String] <p>[Required] Specifies the identifier of an API of the to-be-deleted documentation part.</p>
-- Required key: restApiId
-- Required key: documentationPartId
-- @return DeleteDocumentationPartRequest structure as a key-value pair table
function M.DeleteDocumentationPartRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteDocumentationPartRequest")
	local t = { 
		["documentationPartId"] = args["documentationPartId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteDocumentationPartRequest(t)
	return t
end

keys.GetStageRequest = { ["restApiId"] = true, ["stageName"] = true, nil }

function asserts.AssertGetStageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStageRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStageRequest[k], "GetStageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStageRequest
-- <p>Requests Amazon API Gateway to get information about a <a>Stage</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Stage</a> resource to get information about.</p>
-- * stageName [String] <p>The name of the <a>Stage</a> resource to get information about.</p>
-- Required key: restApiId
-- Required key: stageName
-- @return GetStageRequest structure as a key-value pair table
function M.GetStageRequest(args)
	assert(args, "You must provdide an argument table when creating GetStageRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertGetStageRequest(t)
	return t
end

keys.DeleteUsagePlanRequest = { ["usagePlanId"] = true, nil }

function asserts.AssertDeleteUsagePlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUsagePlanRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	if struct["usagePlanId"] then asserts.AssertString(struct["usagePlanId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUsagePlanRequest[k], "DeleteUsagePlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUsagePlanRequest
-- <p>The DELETE request to delete a uasge plan of a given plan Id.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * usagePlanId [String] <p>The Id of the to-be-deleted usage plan.</p>
-- Required key: usagePlanId
-- @return DeleteUsagePlanRequest structure as a key-value pair table
function M.DeleteUsagePlanRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteUsagePlanRequest")
	local t = { 
		["usagePlanId"] = args["usagePlanId"],
	}
	asserts.AssertDeleteUsagePlanRequest(t)
	return t
end

keys.Deployments = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertDeployments(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployments to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfDeployment(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.Deployments[k], "Deployments contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployments
-- <p>Represents a collection resource that contains zero or more references to your existing deployments, and links that guide you on how to interact with your collection. The collection offers a paginated view of the contained deployments.</p> <div class="remarks">To create a new deployment of a <a>RestApi</a>, make a <code>POST</code> request against this resource. To view, update, or delete an existing deployment, make a <code>GET</code>, <code>PATCH</code>, or <code>DELETE</code> request, respectively, on a specified <a>Deployment</a> resource.</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html">Deploying an API</a>, <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html">AWS CLI</a>, <a href="https://aws.amazon.com/tools/">AWS SDKs</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfDeployment] <p>The current page of any <a>Deployment</a> resources in the collection of deployment resources.</p>
-- @return Deployments structure as a key-value pair table
function M.Deployments(args)
	assert(args, "You must provdide an argument table when creating Deployments")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertDeployments(t)
	return t
end

keys.ApiKeys = { ["position"] = true, ["items"] = true, ["warnings"] = true, nil }

function asserts.AssertApiKeys(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiKeys to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfApiKey(struct["items"]) end
	if struct["warnings"] then asserts.AssertListOfString(struct["warnings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApiKeys[k], "ApiKeys contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiKeys
-- <p>Represents a collection of API keys as represented by an <a>ApiKeys</a> resource.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html">Use API Keys</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfApiKey] <p>The current page of any <a>ApiKey</a> resources in the collection of <a>ApiKey</a> resources.</p>
-- * warnings [ListOfString] <p>A list of warning messages logged during the import of API keys when the <code>failOnWarnings</code> option is set to true.</p>
-- @return ApiKeys structure as a key-value pair table
function M.ApiKeys(args)
	assert(args, "You must provdide an argument table when creating ApiKeys")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
		["warnings"] = args["warnings"],
	}
	asserts.AssertApiKeys(t)
	return t
end

keys.ImportRestApiRequest = { ["body"] = true, ["failOnWarnings"] = true, ["parameters"] = true, nil }

function asserts.AssertImportRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportRestApiRequest to be of type 'table'")
	assert(struct["body"], "Expected key body to exist in table")
	if struct["body"] then asserts.AssertBlob(struct["body"]) end
	if struct["failOnWarnings"] then asserts.AssertBoolean(struct["failOnWarnings"]) end
	if struct["parameters"] then asserts.AssertMapOfStringToString(struct["parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportRestApiRequest[k], "ImportRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportRestApiRequest
-- <p>A POST request to import an API to Amazon API Gateway using an input of an API definition file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Blob] <p>The POST request body containing external API definitions. Currently, only Swagger definition JSON files are supported.</p>
-- * failOnWarnings [Boolean] <p>A query parameter to indicate whether to rollback the API creation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
-- * parameters [MapOfStringToString] <p>Custom header parameters as part of the request.</p>
-- Required key: body
-- @return ImportRestApiRequest structure as a key-value pair table
function M.ImportRestApiRequest(args)
	assert(args, "You must provdide an argument table when creating ImportRestApiRequest")
	local t = { 
		["body"] = args["body"],
		["failOnWarnings"] = args["failOnWarnings"],
		["parameters"] = args["parameters"],
	}
	asserts.AssertImportRestApiRequest(t)
	return t
end

keys.UpdateDomainNameRequest = { ["patchOperations"] = true, ["domainName"] = true, nil }

function asserts.AssertUpdateDomainNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainNameRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDomainNameRequest[k], "UpdateDomainNameRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainNameRequest
-- <p>A request to change information about the <a>DomainName</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * domainName [String] <p>The name of the <a>DomainName</a> resource to be changed.</p>
-- Required key: domainName
-- @return UpdateDomainNameRequest structure as a key-value pair table
function M.UpdateDomainNameRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateDomainNameRequest")
	local t = { 
		["patchOperations"] = args["patchOperations"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertUpdateDomainNameRequest(t)
	return t
end

keys.CreateRequestValidatorRequest = { ["validateRequestParameters"] = true, ["validateRequestBody"] = true, ["restApiId"] = true, ["name"] = true, nil }

function asserts.AssertCreateRequestValidatorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRequestValidatorRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["validateRequestParameters"] then asserts.AssertBoolean(struct["validateRequestParameters"]) end
	if struct["validateRequestBody"] then asserts.AssertBoolean(struct["validateRequestBody"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRequestValidatorRequest[k], "CreateRequestValidatorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRequestValidatorRequest
-- <p>Creates a <a>RequestValidator</a> of a given <a>RestApi</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * validateRequestParameters [Boolean] <p>A Boolean flag to indicate whether to validate request parameters, <code>true</code>, or not <code>false</code>.</p>
-- * validateRequestBody [Boolean] <p>A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (<code>true</code>) or not (<code>false</code>).</p>
-- * restApiId [String] <p>[Required] The identifier of the <a>RestApi</a> for which the <a>RequestValidator</a> is created.</p>
-- * name [String] <p>The name of the to-be-created <a>RequestValidator</a>.</p>
-- Required key: restApiId
-- @return CreateRequestValidatorRequest structure as a key-value pair table
function M.CreateRequestValidatorRequest(args)
	assert(args, "You must provdide an argument table when creating CreateRequestValidatorRequest")
	local t = { 
		["validateRequestParameters"] = args["validateRequestParameters"],
		["validateRequestBody"] = args["validateRequestBody"],
		["restApiId"] = args["restApiId"],
		["name"] = args["name"],
	}
	asserts.AssertCreateRequestValidatorRequest(t)
	return t
end

keys.DeleteDeploymentRequest = { ["deploymentId"] = true, ["restApiId"] = true, nil }

function asserts.AssertDeleteDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeploymentRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["deploymentId"] then asserts.AssertString(struct["deploymentId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeploymentRequest[k], "DeleteDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeploymentRequest
-- <p>Requests Amazon API Gateway to delete a <a>Deployment</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [String] <p>The identifier of the <a>Deployment</a> resource to delete.</p>
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Deployment</a> resource to delete.</p>
-- Required key: restApiId
-- Required key: deploymentId
-- @return DeleteDeploymentRequest structure as a key-value pair table
function M.DeleteDeploymentRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteDeploymentRequest")
	local t = { 
		["deploymentId"] = args["deploymentId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteDeploymentRequest(t)
	return t
end

keys.UsagePlanKey = { ["type"] = true, ["id"] = true, ["value"] = true, ["name"] = true, nil }

function asserts.AssertUsagePlanKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsagePlanKey to be of type 'table'")
	if struct["type"] then asserts.AssertString(struct["type"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["value"] then asserts.AssertString(struct["value"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UsagePlanKey[k], "UsagePlanKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsagePlanKey
-- <p>Represents a usage plan key to identify a plan customer.</p> <div class="remarks"> <p>To associate an API stage with a selected API key in a usage plan, you must create a UsagePlanKey resource to represent the selected <a>ApiKey</a>.</p> </div>" <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [String] <p>The type of a usage plan key. Currently, the valid key type is <code>API_KEY</code>.</p>
-- * id [String] <p>The Id of a usage plan key.</p>
-- * value [String] <p>The value of a usage plan key.</p>
-- * name [String] <p>The name of a usage plan key.</p>
-- @return UsagePlanKey structure as a key-value pair table
function M.UsagePlanKey(args)
	assert(args, "You must provdide an argument table when creating UsagePlanKey")
	local t = { 
		["type"] = args["type"],
		["id"] = args["id"],
		["value"] = args["value"],
		["name"] = args["name"],
	}
	asserts.AssertUsagePlanKey(t)
	return t
end

keys.DeleteStageRequest = { ["restApiId"] = true, ["stageName"] = true, nil }

function asserts.AssertDeleteStageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStageRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStageRequest[k], "DeleteStageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStageRequest
-- <p>Requests Amazon API Gateway to delete a <a>Stage</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Stage</a> resource to delete.</p>
-- * stageName [String] <p>The name of the <a>Stage</a> resource to delete.</p>
-- Required key: restApiId
-- Required key: stageName
-- @return DeleteStageRequest structure as a key-value pair table
function M.DeleteStageRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteStageRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertDeleteStageRequest(t)
	return t
end

keys.GetExportRequest = { ["exportType"] = true, ["accepts"] = true, ["restApiId"] = true, ["parameters"] = true, ["stageName"] = true, nil }

function asserts.AssertGetExportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExportRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["exportType"], "Expected key exportType to exist in table")
	if struct["exportType"] then asserts.AssertString(struct["exportType"]) end
	if struct["accepts"] then asserts.AssertString(struct["accepts"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["parameters"] then asserts.AssertMapOfStringToString(struct["parameters"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetExportRequest[k], "GetExportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExportRequest
-- <p>Request a new export of a <a>RestApi</a> for a particular <a>Stage</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exportType [String] <p>The type of export. Currently only 'swagger' is supported.</p>
-- * accepts [String] <p>The content-type of the export, for example <code>application/json</code>. Currently <code>application/json</code> and <code>application/yaml</code> are supported for <code>exportType</code> of <code>swagger</code>. This should be specified in the <code>Accept</code> header for direct API requests.</p>
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> to be exported.</p>
-- * parameters [MapOfStringToString] <p>A key-value map of query string parameters that specify properties of the export, depending on the requested <code>exportType</code>. For <code>exportType</code> <code>swagger</code>, any combination of the following parameters are supported: <code>integrations</code> will export the API with x-amazon-apigateway-integration extensions. <code>authorizers</code> will export the API with x-amazon-apigateway-authorizer extensions. <code>postman</code> will export the API with Postman extensions, allowing for import to the Postman tool</p>
-- * stageName [String] <p>The name of the <a>Stage</a> that will be exported.</p>
-- Required key: restApiId
-- Required key: stageName
-- Required key: exportType
-- @return GetExportRequest structure as a key-value pair table
function M.GetExportRequest(args)
	assert(args, "You must provdide an argument table when creating GetExportRequest")
	local t = { 
		["exportType"] = args["exportType"],
		["accepts"] = args["accepts"],
		["restApiId"] = args["restApiId"],
		["parameters"] = args["parameters"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertGetExportRequest(t)
	return t
end

keys.GetDomainNamesRequest = { ["position"] = true, ["limit"] = true, nil }

function asserts.AssertGetDomainNamesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainNamesRequest to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDomainNamesRequest[k], "GetDomainNamesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainNamesRequest
-- <p>Request to describe a collection of <a>DomainName</a> resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- @return GetDomainNamesRequest structure as a key-value pair table
function M.GetDomainNamesRequest(args)
	assert(args, "You must provdide an argument table when creating GetDomainNamesRequest")
	local t = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetDomainNamesRequest(t)
	return t
end

keys.CreateStageRequest = { ["restApiId"] = true, ["description"] = true, ["stageName"] = true, ["cacheClusterSize"] = true, ["variables"] = true, ["cacheClusterEnabled"] = true, ["documentationVersion"] = true, ["deploymentId"] = true, nil }

function asserts.AssertCreateStageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStageRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	if struct["cacheClusterSize"] then asserts.AssertCacheClusterSize(struct["cacheClusterSize"]) end
	if struct["variables"] then asserts.AssertMapOfStringToString(struct["variables"]) end
	if struct["cacheClusterEnabled"] then asserts.AssertBoolean(struct["cacheClusterEnabled"]) end
	if struct["documentationVersion"] then asserts.AssertString(struct["documentationVersion"]) end
	if struct["deploymentId"] then asserts.AssertString(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStageRequest[k], "CreateStageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStageRequest
-- <p>Requests Amazon API Gateway to create a <a>Stage</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Stage</a> resource to create.</p>
-- * description [String] <p>The description of the <a>Stage</a> resource.</p>
-- * stageName [String] <p>The name for the <a>Stage</a> resource.</p>
-- * cacheClusterSize [CacheClusterSize] <p>The stage's cache cluster size.</p>
-- * variables [MapOfStringToString] <p>A map that defines the stage variables for the new <a>Stage</a> resource. Variable names can have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&amp;=,]+</code>.</p>
-- * cacheClusterEnabled [Boolean] <p>Whether cache clustering is enabled for the stage.</p>
-- * documentationVersion [String] <p>The version of the associated API documentation.</p>
-- * deploymentId [String] <p>The identifier of the <a>Deployment</a> resource for the <a>Stage</a> resource.</p>
-- Required key: restApiId
-- Required key: stageName
-- Required key: deploymentId
-- @return CreateStageRequest structure as a key-value pair table
function M.CreateStageRequest(args)
	assert(args, "You must provdide an argument table when creating CreateStageRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["description"] = args["description"],
		["stageName"] = args["stageName"],
		["cacheClusterSize"] = args["cacheClusterSize"],
		["variables"] = args["variables"],
		["cacheClusterEnabled"] = args["cacheClusterEnabled"],
		["documentationVersion"] = args["documentationVersion"],
		["deploymentId"] = args["deploymentId"],
	}
	asserts.AssertCreateStageRequest(t)
	return t
end

keys.ApiKeyIds = { ["ids"] = true, ["warnings"] = true, nil }

function asserts.AssertApiKeyIds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiKeyIds to be of type 'table'")
	if struct["ids"] then asserts.AssertListOfString(struct["ids"]) end
	if struct["warnings"] then asserts.AssertListOfString(struct["warnings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApiKeyIds[k], "ApiKeyIds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiKeyIds
-- <p>The identifier of an <a>ApiKey</a> used in a <a>UsagePlan</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ids [ListOfString] <p>A list of all the <a>ApiKey</a> identifiers.</p>
-- * warnings [ListOfString] <p>A list of warning messages.</p>
-- @return ApiKeyIds structure as a key-value pair table
function M.ApiKeyIds(args)
	assert(args, "You must provdide an argument table when creating ApiKeyIds")
	local t = { 
		["ids"] = args["ids"],
		["warnings"] = args["warnings"],
	}
	asserts.AssertApiKeyIds(t)
	return t
end

keys.GetMethodResponseRequest = { ["resourceId"] = true, ["statusCode"] = true, ["restApiId"] = true, ["httpMethod"] = true, nil }

function asserts.AssertGetMethodResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMethodResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMethodResponseRequest[k], "GetMethodResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMethodResponseRequest
-- <p>Request to describe a <a>MethodResponse</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
-- * statusCode [StatusCode] <p>The status code for the <a>MethodResponse</a> resource.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>MethodResponse</a> resource.</p>
-- * httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return GetMethodResponseRequest structure as a key-value pair table
function M.GetMethodResponseRequest(args)
	assert(args, "You must provdide an argument table when creating GetMethodResponseRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertGetMethodResponseRequest(t)
	return t
end

keys.UpdateClientCertificateRequest = { ["clientCertificateId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateClientCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClientCertificateRequest to be of type 'table'")
	assert(struct["clientCertificateId"], "Expected key clientCertificateId to exist in table")
	if struct["clientCertificateId"] then asserts.AssertString(struct["clientCertificateId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateClientCertificateRequest[k], "UpdateClientCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClientCertificateRequest
-- <p>A request to change information about an <a>ClientCertificate</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientCertificateId [String] <p>The identifier of the <a>ClientCertificate</a> resource to be updated.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: clientCertificateId
-- @return UpdateClientCertificateRequest structure as a key-value pair table
function M.UpdateClientCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateClientCertificateRequest")
	local t = { 
		["clientCertificateId"] = args["clientCertificateId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateClientCertificateRequest(t)
	return t
end

keys.DeleteDomainNameRequest = { ["domainName"] = true, nil }

function asserts.AssertDeleteDomainNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainNameRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDomainNameRequest[k], "DeleteDomainNameRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainNameRequest
-- <p>A request to delete the <a>DomainName</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainName [String] <p>The name of the <a>DomainName</a> resource to be deleted.</p>
-- Required key: domainName
-- @return DeleteDomainNameRequest structure as a key-value pair table
function M.DeleteDomainNameRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteDomainNameRequest")
	local t = { 
		["domainName"] = args["domainName"],
	}
	asserts.AssertDeleteDomainNameRequest(t)
	return t
end

keys.DeleteModelRequest = { ["modelName"] = true, ["restApiId"] = true, nil }

function asserts.AssertDeleteModelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteModelRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["modelName"], "Expected key modelName to exist in table")
	if struct["modelName"] then asserts.AssertString(struct["modelName"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteModelRequest[k], "DeleteModelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteModelRequest
-- <p>Request to delete an existing model in an existing <a>RestApi</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * modelName [String] <p>The name of the model to delete.</p>
-- * restApiId [String] <p>The <a>RestApi</a> under which the model will be deleted.</p>
-- Required key: restApiId
-- Required key: modelName
-- @return DeleteModelRequest structure as a key-value pair table
function M.DeleteModelRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteModelRequest")
	local t = { 
		["modelName"] = args["modelName"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteModelRequest(t)
	return t
end

keys.Authorizer = { ["authType"] = true, ["name"] = true, ["providerARNs"] = true, ["authorizerUri"] = true, ["identityValidationExpression"] = true, ["authorizerResultTtlInSeconds"] = true, ["authorizerCredentials"] = true, ["identitySource"] = true, ["type"] = true, ["id"] = true, nil }

function asserts.AssertAuthorizer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Authorizer to be of type 'table'")
	if struct["authType"] then asserts.AssertString(struct["authType"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["providerARNs"] then asserts.AssertListOfARNs(struct["providerARNs"]) end
	if struct["authorizerUri"] then asserts.AssertString(struct["authorizerUri"]) end
	if struct["identityValidationExpression"] then asserts.AssertString(struct["identityValidationExpression"]) end
	if struct["authorizerResultTtlInSeconds"] then asserts.AssertNullableInteger(struct["authorizerResultTtlInSeconds"]) end
	if struct["authorizerCredentials"] then asserts.AssertString(struct["authorizerCredentials"]) end
	if struct["identitySource"] then asserts.AssertString(struct["identitySource"]) end
	if struct["type"] then asserts.AssertAuthorizerType(struct["type"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Authorizer[k], "Authorizer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Authorizer
-- <p>Represents an authorization layer for methods. If enabled on a method, API Gateway will activate the authorizer when a client calls the method.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html">Enable custom authorization</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * authType [String] <p>Optional customer-defined field, used in Swagger imports/exports. Has no functional impact.</p>
-- * name [String] <p>[Required] The name of the authorizer.</p>
-- * providerARNs [ListOfARNs] <p>A list of the provider ARNs of the authorizer. For an <code>TOKEN</code> authorizer, this is not defined. For authorizers of the <code>COGNITO_USER_POOLS</code> type, each element corresponds to a user pool ARN of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. </p>
-- * authorizerUri [String] <p>[Required] Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations.</p>
-- * identityValidationExpression [String] <p>A validation expression for the incoming identity. For <code>TOKEN</code> authorizers, this value should be a regular expression. The incoming token from the client is matched against this expression, and will proceed if the token matches. If the token doesn't match, the client receives a 401 Unauthorized response.</p>
-- * authorizerResultTtlInSeconds [NullableInteger] <p>The TTL in seconds of cached authorizer results. If greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
-- * authorizerCredentials [String] <p>Specifies the credentials required for the authorizer, if any. Two options are available. To specify an IAM role for Amazon API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
-- * identitySource [String] <p>[Required] The source of the identity in an incoming request. For a <code>TOKEN</code> authorizer, this value is a mapping expression with the same syntax as integration parameter mappings. The only valid source for tokens is 'header', so the expression should match 'method.request.header.[headerName]'. The value of the header '[headerName]' will be interpreted as the incoming token. For <code>COGNITO_USER_POOLS</code> authorizers, this property is used.</p>
-- * type [AuthorizerType] <p>[Required] The type of the authorizer. Currently, the valid type is <code>TOKEN</code> for a Lambda function or <code>COGNITO_USER_POOLS</code> for an Amazon Cognito user pool.</p>
-- * id [String] <p>The identifier for the authorizer resource.</p>
-- @return Authorizer structure as a key-value pair table
function M.Authorizer(args)
	assert(args, "You must provdide an argument table when creating Authorizer")
	local t = { 
		["authType"] = args["authType"],
		["name"] = args["name"],
		["providerARNs"] = args["providerARNs"],
		["authorizerUri"] = args["authorizerUri"],
		["identityValidationExpression"] = args["identityValidationExpression"],
		["authorizerResultTtlInSeconds"] = args["authorizerResultTtlInSeconds"],
		["authorizerCredentials"] = args["authorizerCredentials"],
		["identitySource"] = args["identitySource"],
		["type"] = args["type"],
		["id"] = args["id"],
	}
	asserts.AssertAuthorizer(t)
	return t
end

keys.ImportDocumentationPartsRequest = { ["body"] = true, ["failOnWarnings"] = true, ["restApiId"] = true, ["mode"] = true, nil }

function asserts.AssertImportDocumentationPartsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportDocumentationPartsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["body"], "Expected key body to exist in table")
	if struct["body"] then asserts.AssertBlob(struct["body"]) end
	if struct["failOnWarnings"] then asserts.AssertBoolean(struct["failOnWarnings"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["mode"] then asserts.AssertPutMode(struct["mode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportDocumentationPartsRequest[k], "ImportDocumentationPartsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportDocumentationPartsRequest
-- <p>Import documentation parts from an external (e.g., Swagger) definition file. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Blob] <p>[Required] Raw byte array representing the to-be-imported documentation parts. To import from a Swagger file, this is a JSON object.</p>
-- * failOnWarnings [Boolean] <p>A query parameter to specify whether to rollback the documentation importation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
-- * restApiId [String] <p>[Required] The identifier of an API of the to-be-imported documentation parts.</p>
-- * mode [PutMode] <p>A query parameter to indicate whether to overwrite (<code>OVERWRITE</code>) any existing <a>DocumentationParts</a> definition or to merge (<code>MERGE</code>) the new definition into the existing one. The default value is <code>MERGE</code>.</p>
-- Required key: restApiId
-- Required key: body
-- @return ImportDocumentationPartsRequest structure as a key-value pair table
function M.ImportDocumentationPartsRequest(args)
	assert(args, "You must provdide an argument table when creating ImportDocumentationPartsRequest")
	local t = { 
		["body"] = args["body"],
		["failOnWarnings"] = args["failOnWarnings"],
		["restApiId"] = args["restApiId"],
		["mode"] = args["mode"],
	}
	asserts.AssertImportDocumentationPartsRequest(t)
	return t
end

keys.DomainName = { ["certificateArn"] = true, ["distributionDomainName"] = true, ["certificateUploadDate"] = true, ["certificateName"] = true, ["domainName"] = true, nil }

function asserts.AssertDomainName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainName to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertString(struct["certificateArn"]) end
	if struct["distributionDomainName"] then asserts.AssertString(struct["distributionDomainName"]) end
	if struct["certificateUploadDate"] then asserts.AssertTimestamp(struct["certificateUploadDate"]) end
	if struct["certificateName"] then asserts.AssertString(struct["certificateName"]) end
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainName[k], "DomainName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainName
-- <p>Represents a domain name that is contained in a simpler, more intuitive URL that can be called.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Client-Side Certificate</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [String] <p>The reference to an AWS-managed certificate. AWS Certificate Manager is the only supported source.</p>
-- * distributionDomainName [String] <p>The domain name of the Amazon CloudFront distribution. For more information, see the <a href="http://aws.amazon.com/documentation/cloudfront/" target="_blank">Amazon CloudFront documentation</a>.</p>
-- * certificateUploadDate [Timestamp] <p>The timestamp when the certificate was uploaded.</p>
-- * certificateName [String] <p>The name of the certificate.</p>
-- * domainName [String] <p>The name of the <a>DomainName</a> resource.</p>
-- @return DomainName structure as a key-value pair table
function M.DomainName(args)
	assert(args, "You must provdide an argument table when creating DomainName")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["distributionDomainName"] = args["distributionDomainName"],
		["certificateUploadDate"] = args["certificateUploadDate"],
		["certificateName"] = args["certificateName"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertDomainName(t)
	return t
end

keys.CreateDeploymentRequest = { ["stageDescription"] = true, ["restApiId"] = true, ["description"] = true, ["stageName"] = true, ["cacheClusterSize"] = true, ["variables"] = true, ["cacheClusterEnabled"] = true, nil }

function asserts.AssertCreateDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["stageDescription"] then asserts.AssertString(struct["stageDescription"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	if struct["cacheClusterSize"] then asserts.AssertCacheClusterSize(struct["cacheClusterSize"]) end
	if struct["variables"] then asserts.AssertMapOfStringToString(struct["variables"]) end
	if struct["cacheClusterEnabled"] then asserts.AssertNullableBoolean(struct["cacheClusterEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentRequest[k], "CreateDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentRequest
-- <p>Requests Amazon API Gateway to create a <a>Deployment</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stageDescription [String] <p>The description of the <a>Stage</a> resource for the <a>Deployment</a> resource to create.</p>
-- * restApiId [String] <p>The <a>RestApi</a> resource identifier for the <a>Deployment</a> resource to create.</p>
-- * description [String] <p>The description for the <a>Deployment</a> resource to create.</p>
-- * stageName [String] <p>The name of the <a>Stage</a> resource for the <a>Deployment</a> resource to create.</p>
-- * cacheClusterSize [CacheClusterSize] <p>Specifies the cache cluster size for the <a>Stage</a> resource specified in the input, if a cache cluster is enabled.</p>
-- * variables [MapOfStringToString] <p>A map that defines the stage variables for the <a>Stage</a> resource that is associated with the new deployment. Variable names can have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&amp;=,]+</code>.</p>
-- * cacheClusterEnabled [NullableBoolean] <p>Enables a cache cluster for the <a>Stage</a> resource specified in the input.</p>
-- Required key: restApiId
-- @return CreateDeploymentRequest structure as a key-value pair table
function M.CreateDeploymentRequest(args)
	assert(args, "You must provdide an argument table when creating CreateDeploymentRequest")
	local t = { 
		["stageDescription"] = args["stageDescription"],
		["restApiId"] = args["restApiId"],
		["description"] = args["description"],
		["stageName"] = args["stageName"],
		["cacheClusterSize"] = args["cacheClusterSize"],
		["variables"] = args["variables"],
		["cacheClusterEnabled"] = args["cacheClusterEnabled"],
	}
	asserts.AssertCreateDeploymentRequest(t)
	return t
end

keys.DeleteBasePathMappingRequest = { ["basePath"] = true, ["domainName"] = true, nil }

function asserts.AssertDeleteBasePathMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBasePathMappingRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["basePath"], "Expected key basePath to exist in table")
	if struct["basePath"] then asserts.AssertString(struct["basePath"]) end
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBasePathMappingRequest[k], "DeleteBasePathMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBasePathMappingRequest
-- <p>A request to delete the <a>BasePathMapping</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * basePath [String] <p>The base path name of the <a>BasePathMapping</a> resource to delete.</p>
-- * domainName [String] <p>The domain name of the <a>BasePathMapping</a> resource to delete.</p>
-- Required key: domainName
-- Required key: basePath
-- @return DeleteBasePathMappingRequest structure as a key-value pair table
function M.DeleteBasePathMappingRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteBasePathMappingRequest")
	local t = { 
		["basePath"] = args["basePath"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertDeleteBasePathMappingRequest(t)
	return t
end

keys.Usage = { ["startDate"] = true, ["items"] = true, ["usagePlanId"] = true, ["endDate"] = true, ["position"] = true, nil }

function asserts.AssertUsage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Usage to be of type 'table'")
	if struct["startDate"] then asserts.AssertString(struct["startDate"]) end
	if struct["items"] then asserts.AssertMapOfKeyUsages(struct["items"]) end
	if struct["usagePlanId"] then asserts.AssertString(struct["usagePlanId"]) end
	if struct["endDate"] then asserts.AssertString(struct["endDate"]) end
	if struct["position"] then asserts.AssertString(struct["position"]) end
	for k,_ in pairs(struct) do
		assert(keys.Usage[k], "Usage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Usage
-- <p>Represents the usage data of a usage plan.</p> <div class="remarks"/> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a>, <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-create-usage-plans-with-console.html#api-gateway-usage-plan-manage-usage">Manage Usage in a Usage Plan</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startDate [String] <p>The starting date of the usage data.</p>
-- * items [MapOfKeyUsages] <p>The usage data, as daily logs of used and remaining quotas, over the specified time interval indexed over the API keys in a usage plan. For example, <code>{..., "values" : { "{api_key}" : [ [0, 100], [10, 90], [100, 10]]}</code>, where <code>{api_key}</code> stands for an API key value and the daily log entry is of the format <code>[used quota, remaining quota]</code>.</p>
-- * usagePlanId [String] <p>The plan Id associated with this usage data.</p>
-- * endDate [String] <p>The ending date of the usage data.</p>
-- * position [String] 
-- @return Usage structure as a key-value pair table
function M.Usage(args)
	assert(args, "You must provdide an argument table when creating Usage")
	local t = { 
		["startDate"] = args["startDate"],
		["items"] = args["items"],
		["usagePlanId"] = args["usagePlanId"],
		["endDate"] = args["endDate"],
		["position"] = args["position"],
	}
	asserts.AssertUsage(t)
	return t
end

keys.SdkType = { ["friendlyName"] = true, ["configurationProperties"] = true, ["id"] = true, ["description"] = true, nil }

function asserts.AssertSdkType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SdkType to be of type 'table'")
	if struct["friendlyName"] then asserts.AssertString(struct["friendlyName"]) end
	if struct["configurationProperties"] then asserts.AssertListOfSdkConfigurationProperty(struct["configurationProperties"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.SdkType[k], "SdkType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SdkType
-- <p>A type of SDK that API Gateway can generate.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * friendlyName [String] <p>The user-friendly name of an <a>SdkType</a> instance.</p>
-- * configurationProperties [ListOfSdkConfigurationProperty] <p>A list of configuration properties of an <a>SdkType</a>.</p>
-- * id [String] <p>The identifier of an <a>SdkType</a> instance.</p>
-- * description [String] <p>The description of an <a>SdkType</a>.</p>
-- @return SdkType structure as a key-value pair table
function M.SdkType(args)
	assert(args, "You must provdide an argument table when creating SdkType")
	local t = { 
		["friendlyName"] = args["friendlyName"],
		["configurationProperties"] = args["configurationProperties"],
		["id"] = args["id"],
		["description"] = args["description"],
	}
	asserts.AssertSdkType(t)
	return t
end

keys.MethodSnapshot = { ["apiKeyRequired"] = true, ["authorizationType"] = true, nil }

function asserts.AssertMethodSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MethodSnapshot to be of type 'table'")
	if struct["apiKeyRequired"] then asserts.AssertBoolean(struct["apiKeyRequired"]) end
	if struct["authorizationType"] then asserts.AssertString(struct["authorizationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.MethodSnapshot[k], "MethodSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MethodSnapshot
-- <p>Represents a summary of a <a>Method</a> resource, given a particular date and time.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiKeyRequired [Boolean] <p>Specifies whether the method requires a valid <a>ApiKey</a>.</p>
-- * authorizationType [String] <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
-- @return MethodSnapshot structure as a key-value pair table
function M.MethodSnapshot(args)
	assert(args, "You must provdide an argument table when creating MethodSnapshot")
	local t = { 
		["apiKeyRequired"] = args["apiKeyRequired"],
		["authorizationType"] = args["authorizationType"],
	}
	asserts.AssertMethodSnapshot(t)
	return t
end

keys.Resource = { ["path"] = true, ["resourceMethods"] = true, ["id"] = true, ["pathPart"] = true, ["parentId"] = true, nil }

function asserts.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	if struct["path"] then asserts.AssertString(struct["path"]) end
	if struct["resourceMethods"] then asserts.AssertMapOfMethod(struct["resourceMethods"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["pathPart"] then asserts.AssertString(struct["pathPart"]) end
	if struct["parentId"] then asserts.AssertString(struct["parentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Resource[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- <p>Represents an API resource.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * path [String] <p>The full path for this resource.</p>
-- * resourceMethods [MapOfMethod] <p>Gets an API resource's method of a given HTTP verb.</p> <div class="remarks"> <p>The resource methods are a map of methods indexed by methods' HTTP verbs enabled on the resource. This method map is included in the <code>200 OK</code> response of the <code>GET /restapis/{restapi_id}/resources/{resource_id}</code> or <code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code> request.</p> <h4>Example: Get the GET method of an API resource</h4> <h5>Request</h5> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20170223T031827Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20170223/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <pre><code>{ "_links": { "curies": [ { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html", "name": "integration", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-{rel}.html", "name": "method", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true } ], "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET", "name": "GET", "title": "GET" }, "integration:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "method:integration": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "method:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "methodresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/{status_code}", "templated": true } }, "apiKeyRequired": false, "authorizationType": "NONE", "httpMethod": "GET", "_embedded": { "method:integration": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integration:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integrationresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/{status_code}", "templated": true } }, "cacheKeyParameters": [], "cacheNamespace": "3kzxbg5sa2", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestParameters": { "integration.request.header.Content-Type": "'application/x-amz-json-1.1'" }, "requestTemplates": { "application/json": "{\n}" }, "type": "AWS", "uri": "arn:aws:apigateway:us-east-1:kinesis:action/ListStreams", "_embedded": { "integration:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\")\n" }, "statusCode": "200" } } }, "method:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.Content-Type": false }, "statusCode": "200" } } }</code></pre> <p>If the <code>OPTIONS</code> is enabled on the resource, you can follow the example here to get that method. Just replace the <code>GET</code> of the last path segment in the request URL with <code>OPTIONS</code>.</p> </div> <div class="seeAlso"> </div>
-- * id [String] <p>The resource's identifier.</p>
-- * pathPart [String] <p>The last path segment for this resource.</p>
-- * parentId [String] <p>The parent resource's identifier.</p>
-- @return Resource structure as a key-value pair table
function M.Resource(args)
	assert(args, "You must provdide an argument table when creating Resource")
	local t = { 
		["path"] = args["path"],
		["resourceMethods"] = args["resourceMethods"],
		["id"] = args["id"],
		["pathPart"] = args["pathPart"],
		["parentId"] = args["parentId"],
	}
	asserts.AssertResource(t)
	return t
end

keys.DeleteUsagePlanKeyRequest = { ["keyId"] = true, ["usagePlanId"] = true, nil }

function asserts.AssertDeleteUsagePlanKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUsagePlanKeyRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	assert(struct["keyId"], "Expected key keyId to exist in table")
	if struct["keyId"] then asserts.AssertString(struct["keyId"]) end
	if struct["usagePlanId"] then asserts.AssertString(struct["usagePlanId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUsagePlanKeyRequest[k], "DeleteUsagePlanKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUsagePlanKeyRequest
-- <p>The DELETE request to delete a usage plan key and remove the underlying API key from the associated usage plan.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * keyId [String] <p>The Id of the <a>UsagePlanKey</a> resource to be deleted.</p>
-- * usagePlanId [String] <p>The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-deleted <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- Required key: usagePlanId
-- Required key: keyId
-- @return DeleteUsagePlanKeyRequest structure as a key-value pair table
function M.DeleteUsagePlanKeyRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteUsagePlanKeyRequest")
	local t = { 
		["keyId"] = args["keyId"],
		["usagePlanId"] = args["usagePlanId"],
	}
	asserts.AssertDeleteUsagePlanKeyRequest(t)
	return t
end

keys.DomainNames = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertDomainNames(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainNames to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfDomainName(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainNames[k], "DomainNames contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainNames
-- <p>Represents a collection of <a>DomainName</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Client-Side Certificate</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfDomainName] <p>The current page of any <a>DomainName</a> resources in the collection of <a>DomainName</a> resources.</p>
-- @return DomainNames structure as a key-value pair table
function M.DomainNames(args)
	assert(args, "You must provdide an argument table when creating DomainNames")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertDomainNames(t)
	return t
end

keys.FlushStageAuthorizersCacheRequest = { ["restApiId"] = true, ["stageName"] = true, nil }

function asserts.AssertFlushStageAuthorizersCacheRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FlushStageAuthorizersCacheRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.FlushStageAuthorizersCacheRequest[k], "FlushStageAuthorizersCacheRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FlushStageAuthorizersCacheRequest
-- <p>Request to flush authorizer cache entries on a specified stage.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The API identifier of the stage to flush.</p>
-- * stageName [String] <p>The name of the stage to flush.</p>
-- Required key: restApiId
-- Required key: stageName
-- @return FlushStageAuthorizersCacheRequest structure as a key-value pair table
function M.FlushStageAuthorizersCacheRequest(args)
	assert(args, "You must provdide an argument table when creating FlushStageAuthorizersCacheRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertFlushStageAuthorizersCacheRequest(t)
	return t
end

keys.DeleteClientCertificateRequest = { ["clientCertificateId"] = true, nil }

function asserts.AssertDeleteClientCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClientCertificateRequest to be of type 'table'")
	assert(struct["clientCertificateId"], "Expected key clientCertificateId to exist in table")
	if struct["clientCertificateId"] then asserts.AssertString(struct["clientCertificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClientCertificateRequest[k], "DeleteClientCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClientCertificateRequest
-- <p>A request to delete the <a>ClientCertificate</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientCertificateId [String] <p>The identifier of the <a>ClientCertificate</a> resource to be deleted.</p>
-- Required key: clientCertificateId
-- @return DeleteClientCertificateRequest structure as a key-value pair table
function M.DeleteClientCertificateRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteClientCertificateRequest")
	local t = { 
		["clientCertificateId"] = args["clientCertificateId"],
	}
	asserts.AssertDeleteClientCertificateRequest(t)
	return t
end

keys.DocumentationVersion = { ["version"] = true, ["description"] = true, ["createdDate"] = true, nil }

function asserts.AssertDocumentationVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationVersion to be of type 'table'")
	if struct["version"] then asserts.AssertString(struct["version"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentationVersion[k], "DocumentationVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationVersion
-- <p>A snapshot of the documentation of an API.</p> <div class="remarks"><p>Publishing API documentation involves creating a documentation version associated with an API stage and exporting the versioned documentation to an external (e.g., Swagger) file.</p></div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a>, <a>DocumentationVersions</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [String] <p>The version identifier of the API documentation snapshot.</p>
-- * description [String] <p>The description of the API documentation snapshot.</p>
-- * createdDate [Timestamp] <p>The date when the API documentation snapshot is created.</p>
-- @return DocumentationVersion structure as a key-value pair table
function M.DocumentationVersion(args)
	assert(args, "You must provdide an argument table when creating DocumentationVersion")
	local t = { 
		["version"] = args["version"],
		["description"] = args["description"],
		["createdDate"] = args["createdDate"],
	}
	asserts.AssertDocumentationVersion(t)
	return t
end

keys.GetModelsRequest = { ["position"] = true, ["restApiId"] = true, ["limit"] = true, nil }

function asserts.AssertGetModelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetModelsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetModelsRequest[k], "GetModelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetModelsRequest
-- <p>Request to list existing <a>Models</a> defined for a <a>RestApi</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- Required key: restApiId
-- @return GetModelsRequest structure as a key-value pair table
function M.GetModelsRequest(args)
	assert(args, "You must provdide an argument table when creating GetModelsRequest")
	local t = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetModelsRequest(t)
	return t
end

keys.ThrottleSettings = { ["rateLimit"] = true, ["burstLimit"] = true, nil }

function asserts.AssertThrottleSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottleSettings to be of type 'table'")
	if struct["rateLimit"] then asserts.AssertDouble(struct["rateLimit"]) end
	if struct["burstLimit"] then asserts.AssertInteger(struct["burstLimit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThrottleSettings[k], "ThrottleSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottleSettings
-- <p> The API request rate limits.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rateLimit [Double] <p>The API request steady-state rate limit.</p>
-- * burstLimit [Integer] <p>The API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity.</p>
-- @return ThrottleSettings structure as a key-value pair table
function M.ThrottleSettings(args)
	assert(args, "You must provdide an argument table when creating ThrottleSettings")
	local t = { 
		["rateLimit"] = args["rateLimit"],
		["burstLimit"] = args["burstLimit"],
	}
	asserts.AssertThrottleSettings(t)
	return t
end

keys.UsagePlan = { ["productCode"] = true, ["throttle"] = true, ["description"] = true, ["quota"] = true, ["apiStages"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertUsagePlan(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsagePlan to be of type 'table'")
	if struct["productCode"] then asserts.AssertString(struct["productCode"]) end
	if struct["throttle"] then asserts.AssertThrottleSettings(struct["throttle"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["quota"] then asserts.AssertQuotaSettings(struct["quota"]) end
	if struct["apiStages"] then asserts.AssertListOfApiStage(struct["apiStages"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UsagePlan[k], "UsagePlan contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsagePlan
-- <p>Represents a usage plan than can specify who can assess associated API stages with specified request limits and quotas.</p> <div class="remarks"> <p>In a usage plan, you associate an API by specifying the API's Id and a stage name of the specified API. You add plan customers by adding API keys to the plan. </p> </div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * productCode [String] <p>The AWS Markeplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.</p>
-- * throttle [ThrottleSettings] <p>The request throttle limits of a usage plan.</p>
-- * description [String] <p>The description of a usage plan.</p>
-- * quota [QuotaSettings] <p>The maximum number of permitted requests per a given unit time interval.</p>
-- * apiStages [ListOfApiStage] <p>The associated API stages of a usage plan.</p>
-- * id [String] <p>The identifier of a <a>UsagePlan</a> resource.</p>
-- * name [String] <p>The name of a usage plan.</p>
-- @return UsagePlan structure as a key-value pair table
function M.UsagePlan(args)
	assert(args, "You must provdide an argument table when creating UsagePlan")
	local t = { 
		["productCode"] = args["productCode"],
		["throttle"] = args["throttle"],
		["description"] = args["description"],
		["quota"] = args["quota"],
		["apiStages"] = args["apiStages"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertUsagePlan(t)
	return t
end

keys.CreateRestApiRequest = { ["binaryMediaTypes"] = true, ["version"] = true, ["name"] = true, ["cloneFrom"] = true, ["description"] = true, nil }

function asserts.AssertCreateRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRestApiRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["binaryMediaTypes"] then asserts.AssertListOfString(struct["binaryMediaTypes"]) end
	if struct["version"] then asserts.AssertString(struct["version"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["cloneFrom"] then asserts.AssertString(struct["cloneFrom"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRestApiRequest[k], "CreateRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRestApiRequest
-- <p>The POST Request to add a new <a>RestApi</a> resource to your collection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * binaryMediaTypes [ListOfString] <p>The list of binary media types supported by the <a>RestApi</a>. By default, the <a>RestApi</a> supports only UTF-8-encoded text payloads.</p>
-- * version [String] <p>A version identifier for the API.</p>
-- * name [String] <p>The name of the <a>RestApi</a>.</p>
-- * cloneFrom [String] <p>The ID of the <a>RestApi</a> that you want to clone from.</p>
-- * description [String] <p>The description of the <a>RestApi</a>.</p>
-- Required key: name
-- @return CreateRestApiRequest structure as a key-value pair table
function M.CreateRestApiRequest(args)
	assert(args, "You must provdide an argument table when creating CreateRestApiRequest")
	local t = { 
		["binaryMediaTypes"] = args["binaryMediaTypes"],
		["version"] = args["version"],
		["name"] = args["name"],
		["cloneFrom"] = args["cloneFrom"],
		["description"] = args["description"],
	}
	asserts.AssertCreateRestApiRequest(t)
	return t
end

keys.Stage = { ["clientCertificateId"] = true, ["description"] = true, ["stageName"] = true, ["cacheClusterSize"] = true, ["variables"] = true, ["cacheClusterEnabled"] = true, ["documentationVersion"] = true, ["cacheClusterStatus"] = true, ["deploymentId"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["methodSettings"] = true, nil }

function asserts.AssertStage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stage to be of type 'table'")
	if struct["clientCertificateId"] then asserts.AssertString(struct["clientCertificateId"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	if struct["cacheClusterSize"] then asserts.AssertCacheClusterSize(struct["cacheClusterSize"]) end
	if struct["variables"] then asserts.AssertMapOfStringToString(struct["variables"]) end
	if struct["cacheClusterEnabled"] then asserts.AssertBoolean(struct["cacheClusterEnabled"]) end
	if struct["documentationVersion"] then asserts.AssertString(struct["documentationVersion"]) end
	if struct["cacheClusterStatus"] then asserts.AssertCacheClusterStatus(struct["cacheClusterStatus"]) end
	if struct["deploymentId"] then asserts.AssertString(struct["deploymentId"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["methodSettings"] then asserts.AssertMapOfMethodSettings(struct["methodSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.Stage[k], "Stage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stage
-- <p>Represents a unique identifier for a version of a deployed <a>RestApi</a> that is callable by users.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html">Deploy an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientCertificateId [String] <p>The identifier of a client certificate for an API stage.</p>
-- * description [String] <p>The stage's description.</p>
-- * stageName [String] <p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to Amazon API Gateway.</p>
-- * cacheClusterSize [CacheClusterSize] <p>The size of the cache cluster for the stage, if enabled.</p>
-- * variables [MapOfStringToString] <p>A map that defines the stage variables for a <a>Stage</a> resource. Variable names can have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&amp;=,]+</code>.</p>
-- * cacheClusterEnabled [Boolean] <p>Specifies whether a cache cluster is enabled for the stage.</p>
-- * documentationVersion [String] <p>The version of the associated API documentation.</p>
-- * cacheClusterStatus [CacheClusterStatus] <p>The status of the cache cluster for the stage, if enabled.</p>
-- * deploymentId [String] <p>The identifier of the <a>Deployment</a> that the stage points to.</p>
-- * lastUpdatedDate [Timestamp] <p>The timestamp when the stage last updated.</p>
-- * createdDate [Timestamp] <p>The timestamp when the stage was created.</p>
-- * methodSettings [MapOfMethodSettings] <p>A map that defines the method settings for a <a>Stage</a> resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\*/\*</code> for overriding all methods in the stage. </p>
-- @return Stage structure as a key-value pair table
function M.Stage(args)
	assert(args, "You must provdide an argument table when creating Stage")
	local t = { 
		["clientCertificateId"] = args["clientCertificateId"],
		["description"] = args["description"],
		["stageName"] = args["stageName"],
		["cacheClusterSize"] = args["cacheClusterSize"],
		["variables"] = args["variables"],
		["cacheClusterEnabled"] = args["cacheClusterEnabled"],
		["documentationVersion"] = args["documentationVersion"],
		["cacheClusterStatus"] = args["cacheClusterStatus"],
		["deploymentId"] = args["deploymentId"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["methodSettings"] = args["methodSettings"],
	}
	asserts.AssertStage(t)
	return t
end

keys.DocumentationParts = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertDocumentationParts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationParts to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfDocumentationPart(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentationParts[k], "DocumentationParts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationParts
-- <p>The collection of documentation parts of an API.</p> <div class="remarks"/> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfDocumentationPart] <p>The current page of <a>DocumentationPart</a> resources in the <a>DocumentationParts</a> collection.</p>
-- @return DocumentationParts structure as a key-value pair table
function M.DocumentationParts(args)
	assert(args, "You must provdide an argument table when creating DocumentationParts")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertDocumentationParts(t)
	return t
end

keys.GetMethodRequest = { ["resourceId"] = true, ["restApiId"] = true, ["httpMethod"] = true, nil }

function asserts.AssertGetMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMethodRequest[k], "GetMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMethodRequest
-- <p>Request to describe an existing <a>Method</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Method</a> resource.</p>
-- * httpMethod [String] <p>Specifies the method request's HTTP method type.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return GetMethodRequest structure as a key-value pair table
function M.GetMethodRequest(args)
	assert(args, "You must provdide an argument table when creating GetMethodRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertGetMethodRequest(t)
	return t
end

keys.SdkTypes = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertSdkTypes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SdkTypes to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfSdkType(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.SdkTypes[k], "SdkTypes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SdkTypes
-- <p>The collection of <a>SdkType</a> instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfSdkType] <p>The set of <a>SdkType</a> items that comprise this view of the <a>SdkTypes</a> collection.</p>
-- @return SdkTypes structure as a key-value pair table
function M.SdkTypes(args)
	assert(args, "You must provdide an argument table when creating SdkTypes")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertSdkTypes(t)
	return t
end

keys.DocumentationVersions = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertDocumentationVersions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationVersions to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfDocumentationVersion(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentationVersions[k], "DocumentationVersions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationVersions
-- <p>The collection of documentation snapshots of an API. </p> <div class="remarks"><p>Use the <a>DocumentationVersions</a> to manage documentation snapshots associated with various API stages.</p></div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a>, <a>DocumentationVersion</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfDocumentationVersion] <p>The current page of <a>DocumentationVersion</a> items from the <a>DocumentationVersions</a> collection of an API.</p>
-- @return DocumentationVersions structure as a key-value pair table
function M.DocumentationVersions(args)
	assert(args, "You must provdide an argument table when creating DocumentationVersions")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertDocumentationVersions(t)
	return t
end

keys.RestApi = { ["description"] = true, ["warnings"] = true, ["version"] = true, ["createdDate"] = true, ["binaryMediaTypes"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertRestApi(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestApi to be of type 'table'")
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["warnings"] then asserts.AssertListOfString(struct["warnings"]) end
	if struct["version"] then asserts.AssertString(struct["version"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["binaryMediaTypes"] then asserts.AssertListOfString(struct["binaryMediaTypes"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestApi[k], "RestApi contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestApi
-- <p>Represents a REST API.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [String] <p>The API's description.</p>
-- * warnings [ListOfString] <p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>
-- * version [String] <p>A version identifier for the API.</p>
-- * createdDate [Timestamp] <p>The timestamp when the API was created.</p>
-- * binaryMediaTypes [ListOfString] <p>The list of binary media types supported by the <a>RestApi</a>. By default, the <a>RestApi</a> supports only UTF-8-encoded text payloads.</p>
-- * id [String] <p>The API's identifier. This identifier is unique across all of your APIs in Amazon API Gateway.</p>
-- * name [String] <p>The API's name.</p>
-- @return RestApi structure as a key-value pair table
function M.RestApi(args)
	assert(args, "You must provdide an argument table when creating RestApi")
	local t = { 
		["description"] = args["description"],
		["warnings"] = args["warnings"],
		["version"] = args["version"],
		["createdDate"] = args["createdDate"],
		["binaryMediaTypes"] = args["binaryMediaTypes"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertRestApi(t)
	return t
end

keys.BasePathMapping = { ["basePath"] = true, ["restApiId"] = true, ["stage"] = true, nil }

function asserts.AssertBasePathMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BasePathMapping to be of type 'table'")
	if struct["basePath"] then asserts.AssertString(struct["basePath"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["stage"] then asserts.AssertString(struct["stage"]) end
	for k,_ in pairs(struct) do
		assert(keys.BasePathMapping[k], "BasePathMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BasePathMapping
-- <p>Represents the base path that callers of the API must provide as part of the URL after the domain name.</p> <div class="remarks">A custom domain name plus a <code>BasePathMapping</code> specification identifies a deployed <a>RestApi</a> in a given stage of the owner <a>Account</a>.</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Custom Domain Names</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * basePath [String] <p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>
-- * restApiId [String] <p>The name of the API.</p>
-- * stage [String] <p>The name of the API's stage.</p>
-- @return BasePathMapping structure as a key-value pair table
function M.BasePathMapping(args)
	assert(args, "You must provdide an argument table when creating BasePathMapping")
	local t = { 
		["basePath"] = args["basePath"],
		["restApiId"] = args["restApiId"],
		["stage"] = args["stage"],
	}
	asserts.AssertBasePathMapping(t)
	return t
end

keys.TooManyRequestsException = { ["message"] = true, ["retryAfterSeconds"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["retryAfterSeconds"] then asserts.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- * retryAfterSeconds [String] 
-- @return TooManyRequestsException structure as a key-value pair table
function M.TooManyRequestsException(args)
	assert(args, "You must provdide an argument table when creating TooManyRequestsException")
	local t = { 
		["message"] = args["message"],
		["retryAfterSeconds"] = args["retryAfterSeconds"],
	}
	asserts.AssertTooManyRequestsException(t)
	return t
end

keys.GetDocumentationPartsRequest = { ["restApiId"] = true, ["nameQuery"] = true, ["limit"] = true, ["path"] = true, ["position"] = true, ["type"] = true, nil }

function asserts.AssertGetDocumentationPartsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentationPartsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["nameQuery"] then asserts.AssertString(struct["nameQuery"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	if struct["path"] then asserts.AssertString(struct["path"]) end
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["type"] then asserts.AssertDocumentationPartType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentationPartsRequest[k], "GetDocumentationPartsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentationPartsRequest
-- <p>Gets the documentation parts of an API. The result may be filtered by the type, name, or path of API entities (targets).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] The identifier of the API of the to-be-retrieved documentation parts.</p>
-- * nameQuery [String] <p>The name of API entities of the to-be-retrieved documentation parts.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- * path [String] <p>The path of API entities of the to-be-retrieved documentation parts.</p>
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * type [DocumentationPartType] <p>The type of API entities of the to-be-retrieved documentation parts. </p>
-- Required key: restApiId
-- @return GetDocumentationPartsRequest structure as a key-value pair table
function M.GetDocumentationPartsRequest(args)
	assert(args, "You must provdide an argument table when creating GetDocumentationPartsRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["nameQuery"] = args["nameQuery"],
		["limit"] = args["limit"],
		["path"] = args["path"],
		["position"] = args["position"],
		["type"] = args["type"],
	}
	asserts.AssertGetDocumentationPartsRequest(t)
	return t
end

keys.CreateUsagePlanRequest = { ["throttle"] = true, ["quota"] = true, ["apiStages"] = true, ["name"] = true, ["description"] = true, nil }

function asserts.AssertCreateUsagePlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUsagePlanRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["throttle"] then asserts.AssertThrottleSettings(struct["throttle"]) end
	if struct["quota"] then asserts.AssertQuotaSettings(struct["quota"]) end
	if struct["apiStages"] then asserts.AssertListOfApiStage(struct["apiStages"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUsagePlanRequest[k], "CreateUsagePlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUsagePlanRequest
-- <p>The POST request to create a usage plan with the name, description, throttle limits and quota limits, as well as the associated API stages, specified in the payload.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * throttle [ThrottleSettings] <p>The throttling limits of the usage plan.</p>
-- * quota [QuotaSettings] <p>The quota of the usage plan.</p>
-- * apiStages [ListOfApiStage] <p>The associated API stages of the usage plan.</p>
-- * name [String] <p>The name of the usage plan.</p>
-- * description [String] <p>The description of the usage plan.</p>
-- Required key: name
-- @return CreateUsagePlanRequest structure as a key-value pair table
function M.CreateUsagePlanRequest(args)
	assert(args, "You must provdide an argument table when creating CreateUsagePlanRequest")
	local t = { 
		["throttle"] = args["throttle"],
		["quota"] = args["quota"],
		["apiStages"] = args["apiStages"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertCreateUsagePlanRequest(t)
	return t
end

keys.QuotaSettings = { ["limit"] = true, ["period"] = true, ["offset"] = true, nil }

function asserts.AssertQuotaSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QuotaSettings to be of type 'table'")
	if struct["limit"] then asserts.AssertInteger(struct["limit"]) end
	if struct["period"] then asserts.AssertQuotaPeriodType(struct["period"]) end
	if struct["offset"] then asserts.AssertInteger(struct["offset"]) end
	for k,_ in pairs(struct) do
		assert(keys.QuotaSettings[k], "QuotaSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QuotaSettings
-- <p>Quotas configured for a usage plan.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * limit [Integer] <p>The maximum number of requests that can be made in a given time period.</p>
-- * period [QuotaPeriodType] <p>The time period in which the limit applies. Valid values are "DAY", "WEEK" or "MONTH".</p>
-- * offset [Integer] <p>The number of requests subtracted from the given limit in the initial time period.</p>
-- @return QuotaSettings structure as a key-value pair table
function M.QuotaSettings(args)
	assert(args, "You must provdide an argument table when creating QuotaSettings")
	local t = { 
		["limit"] = args["limit"],
		["period"] = args["period"],
		["offset"] = args["offset"],
	}
	asserts.AssertQuotaSettings(t)
	return t
end

keys.Stages = { ["item"] = true, nil }

function asserts.AssertStages(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stages to be of type 'table'")
	if struct["item"] then asserts.AssertListOfStage(struct["item"]) end
	for k,_ in pairs(struct) do
		assert(keys.Stages[k], "Stages contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stages
-- <p>A list of <a>Stage</a> resources that are associated with the <a>ApiKey</a> resource.</p> <div class="seeAlso"><a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/stages.html">Deploying API in Stages</a></div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * item [ListOfStage] <p>An individual <a>Stage</a> resource.</p>
-- @return Stages structure as a key-value pair table
function M.Stages(args)
	assert(args, "You must provdide an argument table when creating Stages")
	local t = { 
		["item"] = args["item"],
	}
	asserts.AssertStages(t)
	return t
end

keys.GetDeploymentRequest = { ["deploymentId"] = true, ["restApiId"] = true, ["embed"] = true, nil }

function asserts.AssertGetDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["deploymentId"] then asserts.AssertString(struct["deploymentId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["embed"] then asserts.AssertListOfString(struct["embed"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentRequest[k], "GetDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentRequest
-- <p>Requests Amazon API Gateway to get information about a <a>Deployment</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [String] <p>The identifier of the <a>Deployment</a> resource to get information about.</p>
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Deployment</a> resource to get information about.</p>
-- * embed [ListOfString] <p>A query parameter to retrieve the specified embedded resources of the returned <a>Deployment</a> resource in the response. In a REST API call, this <code>embed</code> parameter value is a list of comma-separated strings, as in <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2</code>. The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the <code>"apisummary"</code> string. For example, <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary</code>.</p>
-- Required key: restApiId
-- Required key: deploymentId
-- @return GetDeploymentRequest structure as a key-value pair table
function M.GetDeploymentRequest(args)
	assert(args, "You must provdide an argument table when creating GetDeploymentRequest")
	local t = { 
		["deploymentId"] = args["deploymentId"],
		["restApiId"] = args["restApiId"],
		["embed"] = args["embed"],
	}
	asserts.AssertGetDeploymentRequest(t)
	return t
end

keys.CreateDomainNameRequest = { ["certificateArn"] = true, ["certificateName"] = true, ["domainName"] = true, ["certificateChain"] = true, ["certificatePrivateKey"] = true, ["certificateBody"] = true, nil }

function asserts.AssertCreateDomainNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainNameRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["certificateArn"] then asserts.AssertString(struct["certificateArn"]) end
	if struct["certificateName"] then asserts.AssertString(struct["certificateName"]) end
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	if struct["certificateChain"] then asserts.AssertString(struct["certificateChain"]) end
	if struct["certificatePrivateKey"] then asserts.AssertString(struct["certificatePrivateKey"]) end
	if struct["certificateBody"] then asserts.AssertString(struct["certificateBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDomainNameRequest[k], "CreateDomainNameRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainNameRequest
-- <p>A request to create a new domain name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [String] <p>The reference to an AWS-managed certificate. AWS Certificate Manager is the only supported source.</p>
-- * certificateName [String] <p>The user-friendly name of the certificate.</p>
-- * domainName [String] <p>(Required) The name of the <a>DomainName</a> resource.</p>
-- * certificateChain [String] <p>[Deprecated] The intermediate certificates and optionally the root certificate, one after the other without any blank lines. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.</p>
-- * certificatePrivateKey [String] <p>[Deprecated] Your certificate's private key.</p>
-- * certificateBody [String] <p>[Deprecated] The body of the server certificate provided by your certificate authority.</p>
-- Required key: domainName
-- @return CreateDomainNameRequest structure as a key-value pair table
function M.CreateDomainNameRequest(args)
	assert(args, "You must provdide an argument table when creating CreateDomainNameRequest")
	local t = { 
		["certificateArn"] = args["certificateArn"],
		["certificateName"] = args["certificateName"],
		["domainName"] = args["domainName"],
		["certificateChain"] = args["certificateChain"],
		["certificatePrivateKey"] = args["certificatePrivateKey"],
		["certificateBody"] = args["certificateBody"],
	}
	asserts.AssertCreateDomainNameRequest(t)
	return t
end

keys.DeleteApiKeyRequest = { ["apiKey"] = true, nil }

function asserts.AssertDeleteApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApiKeyRequest to be of type 'table'")
	assert(struct["apiKey"], "Expected key apiKey to exist in table")
	if struct["apiKey"] then asserts.AssertString(struct["apiKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApiKeyRequest[k], "DeleteApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApiKeyRequest
-- <p>A request to delete the <a>ApiKey</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiKey [String] <p>The identifier of the <a>ApiKey</a> resource to be deleted.</p>
-- Required key: apiKey
-- @return DeleteApiKeyRequest structure as a key-value pair table
function M.DeleteApiKeyRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteApiKeyRequest")
	local t = { 
		["apiKey"] = args["apiKey"],
	}
	asserts.AssertDeleteApiKeyRequest(t)
	return t
end

keys.DocumentationPartIds = { ["ids"] = true, ["warnings"] = true, nil }

function asserts.AssertDocumentationPartIds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationPartIds to be of type 'table'")
	if struct["ids"] then asserts.AssertListOfString(struct["ids"]) end
	if struct["warnings"] then asserts.AssertListOfString(struct["warnings"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentationPartIds[k], "DocumentationPartIds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationPartIds
-- <p>A collection of the imported <a>DocumentationPart</a> identifiers.</p> <div class="remarks">This is used to return the result when documentation parts in an external (e.g., Swagger) file are imported into Amazon API Gateway</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a href="http://docs.aws.amazon.com/apigateway/api-reference/link-relation/documentationpart-import/">documentationpart:import</a>, <a>DocumentationPart</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ids [ListOfString] <p>A list of the returned documentation part identifiers.</p>
-- * warnings [ListOfString] <p>A list of warning messages reported during import of documentation parts.</p>
-- @return DocumentationPartIds structure as a key-value pair table
function M.DocumentationPartIds(args)
	assert(args, "You must provdide an argument table when creating DocumentationPartIds")
	local t = { 
		["ids"] = args["ids"],
		["warnings"] = args["warnings"],
	}
	asserts.AssertDocumentationPartIds(t)
	return t
end

keys.GetApiKeysRequest = { ["position"] = true, ["nameQuery"] = true, ["includeValues"] = true, ["limit"] = true, ["customerId"] = true, nil }

function asserts.AssertGetApiKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApiKeysRequest to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["nameQuery"] then asserts.AssertString(struct["nameQuery"]) end
	if struct["includeValues"] then asserts.AssertNullableBoolean(struct["includeValues"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	if struct["customerId"] then asserts.AssertString(struct["customerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApiKeysRequest[k], "GetApiKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApiKeysRequest
-- <p>A request to get information about the current <a>ApiKeys</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * nameQuery [String] <p>The name of queried API keys.</p>
-- * includeValues [NullableBoolean] <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains key values.</p>
-- * limit [NullableInteger] <p>The maximum number of <a>ApiKeys</a> to get information about.</p>
-- * customerId [String] <p>The identifier of a customer in AWS Marketplace or an external system, such as a developer portal.</p>
-- @return GetApiKeysRequest structure as a key-value pair table
function M.GetApiKeysRequest(args)
	assert(args, "You must provdide an argument table when creating GetApiKeysRequest")
	local t = { 
		["position"] = args["position"],
		["nameQuery"] = args["nameQuery"],
		["includeValues"] = args["includeValues"],
		["limit"] = args["limit"],
		["customerId"] = args["customerId"],
	}
	asserts.AssertGetApiKeysRequest(t)
	return t
end

keys.DeleteMethodRequest = { ["resourceId"] = true, ["restApiId"] = true, ["httpMethod"] = true, nil }

function asserts.AssertDeleteMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMethodRequest[k], "DeleteMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMethodRequest
-- <p>Request to delete an existing <a>Method</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Method</a> resource.</p>
-- * httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return DeleteMethodRequest structure as a key-value pair table
function M.DeleteMethodRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteMethodRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertDeleteMethodRequest(t)
	return t
end

keys.DeleteDocumentationVersionRequest = { ["restApiId"] = true, ["documentationVersion"] = true, nil }

function asserts.AssertDeleteDocumentationVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDocumentationVersionRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationVersion"], "Expected key documentationVersion to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["documentationVersion"] then asserts.AssertString(struct["documentationVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDocumentationVersionRequest[k], "DeleteDocumentationVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDocumentationVersionRequest
-- <p>Deletes an existing documentation version of an API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] The identifier of an API of a to-be-deleted documentation snapshot.</p>
-- * documentationVersion [String] <p>[Required] The version identifier of a to-be-deleted documentation snapshot.</p>
-- Required key: restApiId
-- Required key: documentationVersion
-- @return DeleteDocumentationVersionRequest structure as a key-value pair table
function M.DeleteDocumentationVersionRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteDocumentationVersionRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["documentationVersion"] = args["documentationVersion"],
	}
	asserts.AssertDeleteDocumentationVersionRequest(t)
	return t
end

keys.GetUsagePlanRequest = { ["usagePlanId"] = true, nil }

function asserts.AssertGetUsagePlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUsagePlanRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	if struct["usagePlanId"] then asserts.AssertString(struct["usagePlanId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUsagePlanRequest[k], "GetUsagePlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUsagePlanRequest
-- <p>The GET request to get a usage plan of a given plan identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * usagePlanId [String] <p>The identifier of the <a>UsagePlan</a> resource to be retrieved.</p>
-- Required key: usagePlanId
-- @return GetUsagePlanRequest structure as a key-value pair table
function M.GetUsagePlanRequest(args)
	assert(args, "You must provdide an argument table when creating GetUsagePlanRequest")
	local t = { 
		["usagePlanId"] = args["usagePlanId"],
	}
	asserts.AssertGetUsagePlanRequest(t)
	return t
end

keys.UsagePlans = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertUsagePlans(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsagePlans to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfUsagePlan(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.UsagePlans[k], "UsagePlans contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsagePlans
-- <p>Represents a collection of usage plans for an AWS account.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfUsagePlan] <p>Gets the current item when enumerating the collection of <a>UsagePlan</a>.</p>
-- @return UsagePlans structure as a key-value pair table
function M.UsagePlans(args)
	assert(args, "You must provdide an argument table when creating UsagePlans")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertUsagePlans(t)
	return t
end

keys.UpdateUsagePlanRequest = { ["usagePlanId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateUsagePlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUsagePlanRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	if struct["usagePlanId"] then asserts.AssertString(struct["usagePlanId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUsagePlanRequest[k], "UpdateUsagePlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUsagePlanRequest
-- <p>The PATCH request to update a usage plan of a given plan Id.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * usagePlanId [String] <p>The Id of the to-be-updated usage plan.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: usagePlanId
-- @return UpdateUsagePlanRequest structure as a key-value pair table
function M.UpdateUsagePlanRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateUsagePlanRequest")
	local t = { 
		["usagePlanId"] = args["usagePlanId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateUsagePlanRequest(t)
	return t
end

keys.GetDocumentationPartRequest = { ["documentationPartId"] = true, ["restApiId"] = true, nil }

function asserts.AssertGetDocumentationPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentationPartRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationPartId"], "Expected key documentationPartId to exist in table")
	if struct["documentationPartId"] then asserts.AssertString(struct["documentationPartId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentationPartRequest[k], "GetDocumentationPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentationPartRequest
-- <p>Gets a specified documentation part of a given API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * documentationPartId [String] <p>[Required] The identifier of the to-be-retrieved documentation part.</p>
-- * restApiId [String] <p>[Required] The identifier of an API of the to-be-retrieved documentation part.</p>
-- Required key: restApiId
-- Required key: documentationPartId
-- @return GetDocumentationPartRequest structure as a key-value pair table
function M.GetDocumentationPartRequest(args)
	assert(args, "You must provdide an argument table when creating GetDocumentationPartRequest")
	local t = { 
		["documentationPartId"] = args["documentationPartId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetDocumentationPartRequest(t)
	return t
end

keys.UpdateAccountRequest = { ["patchOperations"] = true, nil }

function asserts.AssertUpdateAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccountRequest to be of type 'table'")
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAccountRequest[k], "UpdateAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccountRequest
-- <p>Requests Amazon API Gateway to change information about the current <a>Account</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- @return UpdateAccountRequest structure as a key-value pair table
function M.UpdateAccountRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateAccountRequest")
	local t = { 
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateAccountRequest(t)
	return t
end

keys.GetRestApiRequest = { ["restApiId"] = true, nil }

function asserts.AssertGetRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRestApiRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRestApiRequest[k], "GetRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRestApiRequest
-- <p>The GET request to list an existing <a>RestApi</a> defined for your collection. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> resource.</p>
-- Required key: restApiId
-- @return GetRestApiRequest structure as a key-value pair table
function M.GetRestApiRequest(args)
	assert(args, "You must provdide an argument table when creating GetRestApiRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetRestApiRequest(t)
	return t
end

keys.GetSdkTypesRequest = { ["position"] = true, ["limit"] = true, nil }

function asserts.AssertGetSdkTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSdkTypesRequest to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSdkTypesRequest[k], "GetSdkTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSdkTypesRequest
-- <p>Get the <a>SdkTypes</a> collection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- @return GetSdkTypesRequest structure as a key-value pair table
function M.GetSdkTypesRequest(args)
	assert(args, "You must provdide an argument table when creating GetSdkTypesRequest")
	local t = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetSdkTypesRequest(t)
	return t
end

keys.GetAccountRequest = { nil }

function asserts.AssertGetAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetAccountRequest[k], "GetAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountRequest
-- <p>Requests Amazon API Gateway to get information about the current <a>Account</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetAccountRequest structure as a key-value pair table
function M.GetAccountRequest(args)
	assert(args, "You must provdide an argument table when creating GetAccountRequest")
	local t = { 
	}
	asserts.AssertGetAccountRequest(t)
	return t
end

keys.GetUsagePlanKeyRequest = { ["keyId"] = true, ["usagePlanId"] = true, nil }

function asserts.AssertGetUsagePlanKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUsagePlanKeyRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	assert(struct["keyId"], "Expected key keyId to exist in table")
	if struct["keyId"] then asserts.AssertString(struct["keyId"]) end
	if struct["usagePlanId"] then asserts.AssertString(struct["usagePlanId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUsagePlanKeyRequest[k], "GetUsagePlanKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUsagePlanKeyRequest
-- <p>The GET request to get a usage plan key of a given key identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * keyId [String] <p>The key Id of the to-be-retrieved <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- * usagePlanId [String] <p>The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-retrieved <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- Required key: usagePlanId
-- Required key: keyId
-- @return GetUsagePlanKeyRequest structure as a key-value pair table
function M.GetUsagePlanKeyRequest(args)
	assert(args, "You must provdide an argument table when creating GetUsagePlanKeyRequest")
	local t = { 
		["keyId"] = args["keyId"],
		["usagePlanId"] = args["usagePlanId"],
	}
	asserts.AssertGetUsagePlanKeyRequest(t)
	return t
end

keys.DeleteRequestValidatorRequest = { ["requestValidatorId"] = true, ["restApiId"] = true, nil }

function asserts.AssertDeleteRequestValidatorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRequestValidatorRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["requestValidatorId"], "Expected key requestValidatorId to exist in table")
	if struct["requestValidatorId"] then asserts.AssertString(struct["requestValidatorId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRequestValidatorRequest[k], "DeleteRequestValidatorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRequestValidatorRequest
-- <p>Deletes a specified <a>RequestValidator</a> of a given <a>RestApi</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * requestValidatorId [String] <p>[Required] The identifier of the <a>RequestValidator</a> to be deleted.</p>
-- * restApiId [String] <p>[Required] The identifier of the <a>RestApi</a> from which the given <a>RequestValidator</a> is deleted.</p>
-- Required key: restApiId
-- Required key: requestValidatorId
-- @return DeleteRequestValidatorRequest structure as a key-value pair table
function M.DeleteRequestValidatorRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteRequestValidatorRequest")
	local t = { 
		["requestValidatorId"] = args["requestValidatorId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteRequestValidatorRequest(t)
	return t
end

keys.BasePathMappings = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertBasePathMappings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BasePathMappings to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfBasePathMapping(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.BasePathMappings[k], "BasePathMappings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BasePathMappings
-- <p>Represents a collection of <a>BasePathMapping</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Custom Domain Names</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfBasePathMapping] <p>The current page of any <a>BasePathMapping</a> resources in the collection of base path mapping resources.</p>
-- @return BasePathMappings structure as a key-value pair table
function M.BasePathMappings(args)
	assert(args, "You must provdide an argument table when creating BasePathMappings")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertBasePathMappings(t)
	return t
end

keys.RequestValidator = { ["validateRequestParameters"] = true, ["validateRequestBody"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertRequestValidator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestValidator to be of type 'table'")
	if struct["validateRequestParameters"] then asserts.AssertBoolean(struct["validateRequestParameters"]) end
	if struct["validateRequestBody"] then asserts.AssertBoolean(struct["validateRequestBody"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestValidator[k], "RequestValidator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestValidator
-- <p>A set of validation rules for incoming <a>Method</a> requests.</p> <div class="remarks"> <p>In Swagger, a <a>RequestValidator</a> of an API is defined by the <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validators.requestValidator.html">x-amazon-apigateway-request-validators.requestValidator</a> object. It the referenced using the <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validator">x-amazon-apigateway-request-validator</a> property.</p> </div> <div class="seeAlso"><a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html">Enable Basic Request Validation in API Gateway</a></div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * validateRequestParameters [Boolean] <p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>
-- * validateRequestBody [Boolean] <p>A Boolean flag to indicate whether to validate a request body according to the configured <a>Model</a> schema.</p>
-- * id [String] <p>The identifier of this <a>RequestValidator</a>.</p>
-- * name [String] <p>The name of this <a>RequestValidator</a></p>
-- @return RequestValidator structure as a key-value pair table
function M.RequestValidator(args)
	assert(args, "You must provdide an argument table when creating RequestValidator")
	local t = { 
		["validateRequestParameters"] = args["validateRequestParameters"],
		["validateRequestBody"] = args["validateRequestBody"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertRequestValidator(t)
	return t
end

keys.MethodResponse = { ["responseModels"] = true, ["responseParameters"] = true, ["statusCode"] = true, nil }

function asserts.AssertMethodResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MethodResponse to be of type 'table'")
	if struct["responseModels"] then asserts.AssertMapOfStringToString(struct["responseModels"]) end
	if struct["responseParameters"] then asserts.AssertMapOfStringToBoolean(struct["responseParameters"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.MethodResponse[k], "MethodResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MethodResponse
-- <p>Represents a method response of a given HTTP status code returned to the client. The method response is passed from the back end through the associated integration response that can be transformed using a mapping template. </p> <div class="remarks"> <p/> <h4>Example: A <b>MethodResponse</b> instance of an API</h4> <h5>Request</h5> <p>The example request retrieves a <b>MethodResponse</b> of the 200 status code.</p> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160603T222952Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns <code>200 OK</code> status and a payload as follows:</p> <pre><code>{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true }, "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.Content-Type": false }, "statusCode": "200" }</code></pre> <p/> </div> <div class="seeAlso"> <a>Method</a>, <a>IntegrationResponse</a>, <a>Integration</a> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * responseModels [MapOfStringToString] <p>Specifies the <a>Model</a> resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a <a>Model</a> name as the value.</p>
-- * responseParameters [MapOfStringToBoolean] <p>A key-value map specifying required or optional response parameters that Amazon API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. Amazon API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's <a>IntegrationResponse</a>. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
-- * statusCode [StatusCode] <p>The method response's status code.</p>
-- @return MethodResponse structure as a key-value pair table
function M.MethodResponse(args)
	assert(args, "You must provdide an argument table when creating MethodResponse")
	local t = { 
		["responseModels"] = args["responseModels"],
		["responseParameters"] = args["responseParameters"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertMethodResponse(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, ["retryAfterSeconds"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["retryAfterSeconds"] then asserts.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- * retryAfterSeconds [String] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
		["message"] = args["message"],
		["retryAfterSeconds"] = args["retryAfterSeconds"],
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.TestInvokeAuthorizerRequest = { ["body"] = true, ["restApiId"] = true, ["pathWithQueryString"] = true, ["additionalContext"] = true, ["headers"] = true, ["stageVariables"] = true, ["authorizerId"] = true, nil }

function asserts.AssertTestInvokeAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestInvokeAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["authorizerId"], "Expected key authorizerId to exist in table")
	if struct["body"] then asserts.AssertString(struct["body"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["pathWithQueryString"] then asserts.AssertString(struct["pathWithQueryString"]) end
	if struct["additionalContext"] then asserts.AssertMapOfStringToString(struct["additionalContext"]) end
	if struct["headers"] then asserts.AssertMapOfHeaderValues(struct["headers"]) end
	if struct["stageVariables"] then asserts.AssertMapOfStringToString(struct["stageVariables"]) end
	if struct["authorizerId"] then asserts.AssertString(struct["authorizerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestInvokeAuthorizerRequest[k], "TestInvokeAuthorizerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestInvokeAuthorizerRequest
-- <p>Make a request to simulate the execution of an <a>Authorizer</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [String] <p>[Optional] The simulated request body of an incoming invocation request.</p>
-- * restApiId [String] <p>Specifies a test invoke authorizer request's <a>RestApi</a> identifier.</p>
-- * pathWithQueryString [String] <p>[Optional] The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
-- * additionalContext [MapOfStringToString] <p>[Optional] A key-value map of additional context variables.</p>
-- * headers [MapOfHeaderValues] <p>[Required] A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.</p>
-- * stageVariables [MapOfStringToString] <p>A key-value map of stage variables to simulate an invocation on a deployed <a>Stage</a>.</p>
-- * authorizerId [String] <p>Specifies a test invoke authorizer request's <a>Authorizer</a> ID.</p>
-- Required key: restApiId
-- Required key: authorizerId
-- @return TestInvokeAuthorizerRequest structure as a key-value pair table
function M.TestInvokeAuthorizerRequest(args)
	assert(args, "You must provdide an argument table when creating TestInvokeAuthorizerRequest")
	local t = { 
		["body"] = args["body"],
		["restApiId"] = args["restApiId"],
		["pathWithQueryString"] = args["pathWithQueryString"],
		["additionalContext"] = args["additionalContext"],
		["headers"] = args["headers"],
		["stageVariables"] = args["stageVariables"],
		["authorizerId"] = args["authorizerId"],
	}
	asserts.AssertTestInvokeAuthorizerRequest(t)
	return t
end

keys.FlushStageCacheRequest = { ["restApiId"] = true, ["stageName"] = true, nil }

function asserts.AssertFlushStageCacheRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FlushStageCacheRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.FlushStageCacheRequest[k], "FlushStageCacheRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FlushStageCacheRequest
-- <p>Requests Amazon API Gateway to flush a stage's cache.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The API identifier of the stage to flush its cache.</p>
-- * stageName [String] <p>The name of the stage to flush its cache.</p>
-- Required key: restApiId
-- Required key: stageName
-- @return FlushStageCacheRequest structure as a key-value pair table
function M.FlushStageCacheRequest(args)
	assert(args, "You must provdide an argument table when creating FlushStageCacheRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertFlushStageCacheRequest(t)
	return t
end

keys.GetAuthorizerRequest = { ["restApiId"] = true, ["authorizerId"] = true, nil }

function asserts.AssertGetAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["authorizerId"], "Expected key authorizerId to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["authorizerId"] then asserts.AssertString(struct["authorizerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAuthorizerRequest[k], "GetAuthorizerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAuthorizerRequest
-- <p>Request to describe an existing <a>Authorizer</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Authorizer</a> resource.</p>
-- * authorizerId [String] <p>The identifier of the <a>Authorizer</a> resource.</p>
-- Required key: restApiId
-- Required key: authorizerId
-- @return GetAuthorizerRequest structure as a key-value pair table
function M.GetAuthorizerRequest(args)
	assert(args, "You must provdide an argument table when creating GetAuthorizerRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["authorizerId"] = args["authorizerId"],
	}
	asserts.AssertGetAuthorizerRequest(t)
	return t
end

keys.Method = { ["methodResponses"] = true, ["requestParameters"] = true, ["requestModels"] = true, ["authorizationType"] = true, ["operationName"] = true, ["apiKeyRequired"] = true, ["httpMethod"] = true, ["methodIntegration"] = true, ["requestValidatorId"] = true, ["authorizerId"] = true, nil }

function asserts.AssertMethod(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Method to be of type 'table'")
	if struct["methodResponses"] then asserts.AssertMapOfMethodResponse(struct["methodResponses"]) end
	if struct["requestParameters"] then asserts.AssertMapOfStringToBoolean(struct["requestParameters"]) end
	if struct["requestModels"] then asserts.AssertMapOfStringToString(struct["requestModels"]) end
	if struct["authorizationType"] then asserts.AssertString(struct["authorizationType"]) end
	if struct["operationName"] then asserts.AssertString(struct["operationName"]) end
	if struct["apiKeyRequired"] then asserts.AssertNullableBoolean(struct["apiKeyRequired"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	if struct["methodIntegration"] then asserts.AssertIntegration(struct["methodIntegration"]) end
	if struct["requestValidatorId"] then asserts.AssertString(struct["requestValidatorId"]) end
	if struct["authorizerId"] then asserts.AssertString(struct["authorizerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Method[k], "Method contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Method
-- <p> Represents a client-facing interface by which the client calls the API to access back-end resources. A <b>Method</b> resource is integrated with an <a>Integration</a> resource. Both consist of a request and one or more responses. The method request takes the client input that is passed to the back end through the integration request. A method response returns the output from the back end to the client through an integration response. A method request is embodied in a <b>Method</b> resource, whereas an integration request is embodied in an <a>Integration</a> resource. On the other hand, a method response is represented by a <a>MethodResponse</a> resource, whereas an integration response is represented by an <a>IntegrationResponse</a> resource. </p> <div class="remarks"> <p/> <h4>Example: Retrive the GET method on a specified resource</h4> <h5>Request</h5> <p>The following example request retrieves the information about the GET method on an API resource (<code>3kzxbg5sa2</code>) of an API (<code>fugvjdxtri</code>). </p> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160603T210259Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": [ { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html", "name": "integration", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-{rel}.html", "name": "method", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true } ], "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET", "name": "GET", "title": "GET" }, "integration:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "method:integration": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "method:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "methodresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/{status_code}", "templated": true } }, "apiKeyRequired": true, "authorizationType": "NONE", "httpMethod": "GET", "_embedded": { "method:integration": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integration:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integrationresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/{status_code}", "templated": true } }, "cacheKeyParameters": [], "cacheNamespace": "3kzxbg5sa2", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestParameters": { "integration.request.header.Content-Type": "'application/x-amz-json-1.1'" }, "requestTemplates": { "application/json": "{\n}" }, "type": "AWS", "uri": "arn:aws:apigateway:us-east-1:kinesis:action/ListStreams", "_embedded": { "integration:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E\")" }, "statusCode": "200" } } }, "method:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.Content-Type": false }, "statusCode": "200" } } }</code></pre> <p>In the example above, the response template for the <code>200 OK</code> response maps the JSON output from the <code>ListStreams</code> action in the back end to an XML output. The mapping template is URL-encoded as <code>%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E</code> and the output is decoded using the <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#util-templat-reference">$util.urlDecode()</a> helper function.</p> </div> <div class="seeAlso"> <a>MethodResponse</a>, <a>Integration</a>, <a>IntegrationResponse</a>, <a>Resource</a>, <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-method-settings.html">Set up an API's method</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * methodResponses [MapOfMethodResponse] <p>Gets a method response associated with a given HTTP status code. </p> <div class="remarks"> <p>The collection of method responses are encapsulated in a key-value map, where the key is a response's HTTP status code and the value is a <a>MethodResponse</a> resource that specifies the response returned to the caller from the back end through the integration response.</p> <h4>Example: Get a 200 OK response of a GET method</h4> <h5>Request</h5> <p/> <pre><code>GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T215008Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true }, "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.operator": false, "method.response.header.operand_2": false, "method.response.header.operand_1": false }, "statusCode": "200" }</code></pre> <p/> </div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-method-response.html">AWS CLI</a> </div>
-- * requestParameters [MapOfStringToBoolean] <p>A key-value map defining required or optional method request parameters that can be accepted by Amazon API Gateway. A key is a method request parameter name matching the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>). The method request parameter names defined here are available in <a>Integration</a> to be mapped to integration request parameters or templates.</p>
-- * requestModels [MapOfStringToString] <p>A key-value map specifying data schemas, represented by <a>Model</a> resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>
-- * authorizationType [String] <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
-- * operationName [String] <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in <a href="http://petstore-demo-endpoint.execute-api.com/petstore/pets">PetStore</a> example.</p>
-- * apiKeyRequired [NullableBoolean] <p>A boolean flag specifying whether a valid <a>ApiKey</a> is required to invoke this method.</p>
-- * httpMethod [String] <p>The method's HTTP verb.</p>
-- * methodIntegration [Integration] <p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p> <div class="remarks"> <p/> <h4>Example: </h4> <h5>Request</h5> <p/> <pre><code>GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T213210Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": [ { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html", "name": "integration", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true } ], "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integration:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integration:responses": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integration:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integrationresponse:put": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/{status_code}", "templated": true } }, "cacheKeyParameters": [], "cacheNamespace": "0cjtch", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestTemplates": { "application/json": "{\n \"a\": \"$input.params('operand1')\",\n \"b\": \"$input.params('operand2')\", \n \"op\": \"$input.params('operator')\" \n}" }, "type": "AWS", "uri": "arn:aws:apigateway:us-west-2:lambda:path//2015-03-31/functions/arn:aws:lambda:us-west-2:123456789012:function:Calc/invocations", "_embedded": { "integration:responses": { "_links": { "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.operator": "integration.response.body.op", "method.response.header.operand_2": "integration.response.body.b", "method.response.header.operand_1": "integration.response.body.a" }, "responseTemplates": { "application/json": "#set($res = $input.path('$'))\n{\n \"result\": \"$res.a, $res.b, $res.op => $res.c\",\n \"a\" : \"$res.a\",\n \"b\" : \"$res.b\",\n \"op\" : \"$res.op\",\n \"c\" : \"$res.c\"\n}" }, "selectionPattern": "", "statusCode": "200" } } }</code></pre> <p/> </div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-integration.html">AWS CLI</a> </div>
-- * requestValidatorId [String] <p>The identifier of a <a>RequestValidator</a> for request validation.</p>
-- * authorizerId [String] <p>The identifier of an <a>Authorizer</a> to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>
-- @return Method structure as a key-value pair table
function M.Method(args)
	assert(args, "You must provdide an argument table when creating Method")
	local t = { 
		["methodResponses"] = args["methodResponses"],
		["requestParameters"] = args["requestParameters"],
		["requestModels"] = args["requestModels"],
		["authorizationType"] = args["authorizationType"],
		["operationName"] = args["operationName"],
		["apiKeyRequired"] = args["apiKeyRequired"],
		["httpMethod"] = args["httpMethod"],
		["methodIntegration"] = args["methodIntegration"],
		["requestValidatorId"] = args["requestValidatorId"],
		["authorizerId"] = args["authorizerId"],
	}
	asserts.AssertMethod(t)
	return t
end

keys.Models = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertModels(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Models to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfModel(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.Models[k], "Models contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Models
-- <p>Represents a collection of <a>Model</a> resources.</p> <div class="seeAlso"> <a>Method</a>, <a>MethodResponse</a>, <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html">Models and Mappings</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfModel] <p>Gets the current <a>Model</a> resource in the collection.</p>
-- @return Models structure as a key-value pair table
function M.Models(args)
	assert(args, "You must provdide an argument table when creating Models")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertModels(t)
	return t
end

keys.UpdateMethodResponseRequest = { ["resourceId"] = true, ["statusCode"] = true, ["restApiId"] = true, ["patchOperations"] = true, ["httpMethod"] = true, nil }

function asserts.AssertUpdateMethodResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMethodResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateMethodResponseRequest[k], "UpdateMethodResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMethodResponseRequest
-- <p>A request to update an existing <a>MethodResponse</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
-- * statusCode [StatusCode] <p>The status code for the <a>MethodResponse</a> resource.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>MethodResponse</a> resource.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return UpdateMethodResponseRequest structure as a key-value pair table
function M.UpdateMethodResponseRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateMethodResponseRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertUpdateMethodResponseRequest(t)
	return t
end

keys.DeleteAuthorizerRequest = { ["restApiId"] = true, ["authorizerId"] = true, nil }

function asserts.AssertDeleteAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["authorizerId"], "Expected key authorizerId to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["authorizerId"] then asserts.AssertString(struct["authorizerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAuthorizerRequest[k], "DeleteAuthorizerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAuthorizerRequest
-- <p>Request to delete an existing <a>Authorizer</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Authorizer</a> resource.</p>
-- * authorizerId [String] <p>The identifier of the <a>Authorizer</a> resource.</p>
-- Required key: restApiId
-- Required key: authorizerId
-- @return DeleteAuthorizerRequest structure as a key-value pair table
function M.DeleteAuthorizerRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteAuthorizerRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["authorizerId"] = args["authorizerId"],
	}
	asserts.AssertDeleteAuthorizerRequest(t)
	return t
end

keys.CreateAuthorizerRequest = { ["authType"] = true, ["restApiId"] = true, ["name"] = true, ["providerARNs"] = true, ["authorizerUri"] = true, ["identityValidationExpression"] = true, ["authorizerResultTtlInSeconds"] = true, ["authorizerCredentials"] = true, ["identitySource"] = true, ["type"] = true, nil }

function asserts.AssertCreateAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["identitySource"], "Expected key identitySource to exist in table")
	if struct["authType"] then asserts.AssertString(struct["authType"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["providerARNs"] then asserts.AssertListOfARNs(struct["providerARNs"]) end
	if struct["authorizerUri"] then asserts.AssertString(struct["authorizerUri"]) end
	if struct["identityValidationExpression"] then asserts.AssertString(struct["identityValidationExpression"]) end
	if struct["authorizerResultTtlInSeconds"] then asserts.AssertNullableInteger(struct["authorizerResultTtlInSeconds"]) end
	if struct["authorizerCredentials"] then asserts.AssertString(struct["authorizerCredentials"]) end
	if struct["identitySource"] then asserts.AssertString(struct["identitySource"]) end
	if struct["type"] then asserts.AssertAuthorizerType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAuthorizerRequest[k], "CreateAuthorizerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAuthorizerRequest
-- <p>Request to add a new <a>Authorizer</a> to an existing <a>RestApi</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * authType [String] <p>Optional customer-defined field, used in Swagger imports/exports. Has no functional impact.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier under which the <a>Authorizer</a> will be created.</p>
-- * name [String] <p>[Required] The name of the authorizer.</p>
-- * providerARNs [ListOfARNs] <p>A list of the Cognito Your User Pool authorizer's provider ARNs.</p>
-- * authorizerUri [String] <p>[Required] Specifies the authorizer's Uniform Resource Identifier (URI).</p>
-- * identityValidationExpression [String] <p>A validation expression for the incoming identity.</p>
-- * authorizerResultTtlInSeconds [NullableInteger] <p>The TTL of cached authorizer results.</p>
-- * authorizerCredentials [String] <p>Specifies the credentials required for the authorizer, if any.</p>
-- * identitySource [String] <p>[Required] The source of the identity in an incoming request.</p>
-- * type [AuthorizerType] <p>[Required] The type of the authorizer.</p>
-- Required key: restApiId
-- Required key: name
-- Required key: type
-- Required key: identitySource
-- @return CreateAuthorizerRequest structure as a key-value pair table
function M.CreateAuthorizerRequest(args)
	assert(args, "You must provdide an argument table when creating CreateAuthorizerRequest")
	local t = { 
		["authType"] = args["authType"],
		["restApiId"] = args["restApiId"],
		["name"] = args["name"],
		["providerARNs"] = args["providerARNs"],
		["authorizerUri"] = args["authorizerUri"],
		["identityValidationExpression"] = args["identityValidationExpression"],
		["authorizerResultTtlInSeconds"] = args["authorizerResultTtlInSeconds"],
		["authorizerCredentials"] = args["authorizerCredentials"],
		["identitySource"] = args["identitySource"],
		["type"] = args["type"],
	}
	asserts.AssertCreateAuthorizerRequest(t)
	return t
end

keys.MethodSetting = { ["cacheTtlInSeconds"] = true, ["loggingLevel"] = true, ["dataTraceEnabled"] = true, ["metricsEnabled"] = true, ["unauthorizedCacheControlHeaderStrategy"] = true, ["throttlingRateLimit"] = true, ["cacheDataEncrypted"] = true, ["cachingEnabled"] = true, ["throttlingBurstLimit"] = true, ["requireAuthorizationForCacheControl"] = true, nil }

function asserts.AssertMethodSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MethodSetting to be of type 'table'")
	if struct["cacheTtlInSeconds"] then asserts.AssertInteger(struct["cacheTtlInSeconds"]) end
	if struct["loggingLevel"] then asserts.AssertString(struct["loggingLevel"]) end
	if struct["dataTraceEnabled"] then asserts.AssertBoolean(struct["dataTraceEnabled"]) end
	if struct["metricsEnabled"] then asserts.AssertBoolean(struct["metricsEnabled"]) end
	if struct["unauthorizedCacheControlHeaderStrategy"] then asserts.AssertUnauthorizedCacheControlHeaderStrategy(struct["unauthorizedCacheControlHeaderStrategy"]) end
	if struct["throttlingRateLimit"] then asserts.AssertDouble(struct["throttlingRateLimit"]) end
	if struct["cacheDataEncrypted"] then asserts.AssertBoolean(struct["cacheDataEncrypted"]) end
	if struct["cachingEnabled"] then asserts.AssertBoolean(struct["cachingEnabled"]) end
	if struct["throttlingBurstLimit"] then asserts.AssertInteger(struct["throttlingBurstLimit"]) end
	if struct["requireAuthorizationForCacheControl"] then asserts.AssertBoolean(struct["requireAuthorizationForCacheControl"]) end
	for k,_ in pairs(struct) do
		assert(keys.MethodSetting[k], "MethodSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MethodSetting
-- <p>Specifies the method setting properties.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cacheTtlInSeconds [Integer] <p>Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached. The PATCH path for this setting is <code>/{method_setting_key}/caching/ttlInSeconds</code>, and the value is an integer.</p>
-- * loggingLevel [String] <p>Specifies the logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is <code>/{method_setting_key}/logging/loglevel</code>, and the available levels are <code>OFF</code>, <code>ERROR</code>, and <code>INFO</code>.</p>
-- * dataTraceEnabled [Boolean] <p>Specifies whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is <code>/{method_setting_key}/logging/dataTrace</code>, and the value is a Boolean.</p>
-- * metricsEnabled [Boolean] <p>Specifies whether Amazon CloudWatch metrics are enabled for this method. The PATCH path for this setting is <code>/{method_setting_key}/metrics/enabled</code>, and the value is a Boolean.</p>
-- * unauthorizedCacheControlHeaderStrategy [UnauthorizedCacheControlHeaderStrategy] <p>Specifies how to handle unauthorized requests for cache invalidation. The PATCH path for this setting is <code>/{method_setting_key}/caching/unauthorizedCacheControlHeaderStrategy</code>, and the available values are <code>FAIL_WITH_403</code>, <code>SUCCEED_WITH_RESPONSE_HEADER</code>, <code>SUCCEED_WITHOUT_RESPONSE_HEADER</code>.</p>
-- * throttlingRateLimit [Double] <p>Specifies the throttling rate limit. The PATCH path for this setting is <code>/{method_setting_key}/throttling/rateLimit</code>, and the value is a double.</p>
-- * cacheDataEncrypted [Boolean] <p>Specifies whether the cached responses are encrypted. The PATCH path for this setting is <code>/{method_setting_key}/caching/dataEncrypted</code>, and the value is a Boolean.</p>
-- * cachingEnabled [Boolean] <p>Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached. The PATCH path for this setting is <code>/{method_setting_key}/caching/enabled</code>, and the value is a Boolean.</p>
-- * throttlingBurstLimit [Integer] <p>Specifies the throttling burst limit. The PATCH path for this setting is <code>/{method_setting_key}/throttling/burstLimit</code>, and the value is an integer.</p>
-- * requireAuthorizationForCacheControl [Boolean] <p>Specifies whether authorization is required for a cache invalidation request. The PATCH path for this setting is <code>/{method_setting_key}/caching/requireAuthorizationForCacheControl</code>, and the value is a Boolean.</p>
-- @return MethodSetting structure as a key-value pair table
function M.MethodSetting(args)
	assert(args, "You must provdide an argument table when creating MethodSetting")
	local t = { 
		["cacheTtlInSeconds"] = args["cacheTtlInSeconds"],
		["loggingLevel"] = args["loggingLevel"],
		["dataTraceEnabled"] = args["dataTraceEnabled"],
		["metricsEnabled"] = args["metricsEnabled"],
		["unauthorizedCacheControlHeaderStrategy"] = args["unauthorizedCacheControlHeaderStrategy"],
		["throttlingRateLimit"] = args["throttlingRateLimit"],
		["cacheDataEncrypted"] = args["cacheDataEncrypted"],
		["cachingEnabled"] = args["cachingEnabled"],
		["throttlingBurstLimit"] = args["throttlingBurstLimit"],
		["requireAuthorizationForCacheControl"] = args["requireAuthorizationForCacheControl"],
	}
	asserts.AssertMethodSetting(t)
	return t
end

keys.GetDocumentationVersionsRequest = { ["position"] = true, ["restApiId"] = true, ["limit"] = true, nil }

function asserts.AssertGetDocumentationVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentationVersionsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentationVersionsRequest[k], "GetDocumentationVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentationVersionsRequest
-- <p>Gets the documentation versions of an API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * restApiId [String] <p>[Required] The identifier of an API of the to-be-retrieved documentation versions.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- Required key: restApiId
-- @return GetDocumentationVersionsRequest structure as a key-value pair table
function M.GetDocumentationVersionsRequest(args)
	assert(args, "You must provdide an argument table when creating GetDocumentationVersionsRequest")
	local t = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetDocumentationVersionsRequest(t)
	return t
end

keys.DeleteMethodResponseRequest = { ["resourceId"] = true, ["statusCode"] = true, ["restApiId"] = true, ["httpMethod"] = true, nil }

function asserts.AssertDeleteMethodResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMethodResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMethodResponseRequest[k], "DeleteMethodResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMethodResponseRequest
-- <p>A request to delete an existing <a>MethodResponse</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
-- * statusCode [StatusCode] <p>The status code identifier for the <a>MethodResponse</a> resource.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>MethodResponse</a> resource.</p>
-- * httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return DeleteMethodResponseRequest structure as a key-value pair table
function M.DeleteMethodResponseRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteMethodResponseRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertDeleteMethodResponseRequest(t)
	return t
end

keys.GetUsageRequest = { ["startDate"] = true, ["keyId"] = true, ["usagePlanId"] = true, ["limit"] = true, ["position"] = true, ["endDate"] = true, nil }

function asserts.AssertGetUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUsageRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	assert(struct["startDate"], "Expected key startDate to exist in table")
	assert(struct["endDate"], "Expected key endDate to exist in table")
	if struct["startDate"] then asserts.AssertString(struct["startDate"]) end
	if struct["keyId"] then asserts.AssertString(struct["keyId"]) end
	if struct["usagePlanId"] then asserts.AssertString(struct["usagePlanId"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["endDate"] then asserts.AssertString(struct["endDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUsageRequest[k], "GetUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUsageRequest
-- <p>The GET request to get the usage data of a usage plan in a specified time interval.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startDate [String] <p>The starting date (e.g., 2016-01-01) of the usage data.</p>
-- * keyId [String] <p>The Id of the API key associated with the resultant usage data.</p>
-- * usagePlanId [String] <p>The Id of the usage plan associated with the usage data.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * endDate [String] <p>The ending date (e.g., 2016-12-31) of the usage data.</p>
-- Required key: usagePlanId
-- Required key: startDate
-- Required key: endDate
-- @return GetUsageRequest structure as a key-value pair table
function M.GetUsageRequest(args)
	assert(args, "You must provdide an argument table when creating GetUsageRequest")
	local t = { 
		["startDate"] = args["startDate"],
		["keyId"] = args["keyId"],
		["usagePlanId"] = args["usagePlanId"],
		["limit"] = args["limit"],
		["position"] = args["position"],
		["endDate"] = args["endDate"],
	}
	asserts.AssertGetUsageRequest(t)
	return t
end

keys.UpdateRequestValidatorRequest = { ["requestValidatorId"] = true, ["restApiId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateRequestValidatorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRequestValidatorRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["requestValidatorId"], "Expected key requestValidatorId to exist in table")
	if struct["requestValidatorId"] then asserts.AssertString(struct["requestValidatorId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRequestValidatorRequest[k], "UpdateRequestValidatorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRequestValidatorRequest
-- <p>Updates a <a>RequestValidator</a> of a given <a>RestApi</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * requestValidatorId [String] <p>[Required] The identifier of <a>RequestValidator</a> to be updated.</p>
-- * restApiId [String] <p>[Required] The identifier of the <a>RestApi</a> for which the given <a>RequestValidator</a> is updated.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: requestValidatorId
-- @return UpdateRequestValidatorRequest structure as a key-value pair table
function M.UpdateRequestValidatorRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateRequestValidatorRequest")
	local t = { 
		["requestValidatorId"] = args["requestValidatorId"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateRequestValidatorRequest(t)
	return t
end

keys.DeleteIntegrationRequest = { ["resourceId"] = true, ["restApiId"] = true, ["httpMethod"] = true, nil }

function asserts.AssertDeleteIntegrationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIntegrationRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIntegrationRequest[k], "DeleteIntegrationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIntegrationRequest
-- <p>Represents a delete integration request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>Specifies a delete integration request's resource identifier.</p>
-- * restApiId [String] <p>Specifies a delete integration request's API identifier.</p>
-- * httpMethod [String] <p>Specifies a delete integration request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return DeleteIntegrationRequest structure as a key-value pair table
function M.DeleteIntegrationRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteIntegrationRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertDeleteIntegrationRequest(t)
	return t
end

keys.UpdateApiKeyRequest = { ["apiKey"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApiKeyRequest to be of type 'table'")
	assert(struct["apiKey"], "Expected key apiKey to exist in table")
	if struct["apiKey"] then asserts.AssertString(struct["apiKey"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApiKeyRequest[k], "UpdateApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApiKeyRequest
-- <p>A request to change information about an <a>ApiKey</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiKey [String] <p>The identifier of the <a>ApiKey</a> resource to be updated.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: apiKey
-- @return UpdateApiKeyRequest structure as a key-value pair table
function M.UpdateApiKeyRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateApiKeyRequest")
	local t = { 
		["apiKey"] = args["apiKey"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateApiKeyRequest(t)
	return t
end

keys.TestInvokeMethodRequest = { ["body"] = true, ["clientCertificateId"] = true, ["restApiId"] = true, ["httpMethod"] = true, ["resourceId"] = true, ["pathWithQueryString"] = true, ["headers"] = true, ["stageVariables"] = true, nil }

function asserts.AssertTestInvokeMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestInvokeMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["body"] then asserts.AssertString(struct["body"]) end
	if struct["clientCertificateId"] then asserts.AssertString(struct["clientCertificateId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["pathWithQueryString"] then asserts.AssertString(struct["pathWithQueryString"]) end
	if struct["headers"] then asserts.AssertMapOfHeaderValues(struct["headers"]) end
	if struct["stageVariables"] then asserts.AssertMapOfStringToString(struct["stageVariables"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestInvokeMethodRequest[k], "TestInvokeMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestInvokeMethodRequest
-- <p>Make a request to simulate the execution of a <a>Method</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [String] <p>The simulated request body of an incoming invocation request.</p>
-- * clientCertificateId [String] <p>A <a>ClientCertificate</a> identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.</p>
-- * restApiId [String] <p>Specifies a test invoke method request's API identifier.</p>
-- * httpMethod [String] <p>Specifies a test invoke method request's HTTP method.</p>
-- * resourceId [String] <p>Specifies a test invoke method request's resource ID.</p>
-- * pathWithQueryString [String] <p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
-- * headers [MapOfHeaderValues] <p>A key-value map of headers to simulate an incoming invocation request.</p>
-- * stageVariables [MapOfStringToString] <p>A key-value map of stage variables to simulate an invocation on a deployed <a>Stage</a>.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return TestInvokeMethodRequest structure as a key-value pair table
function M.TestInvokeMethodRequest(args)
	assert(args, "You must provdide an argument table when creating TestInvokeMethodRequest")
	local t = { 
		["body"] = args["body"],
		["clientCertificateId"] = args["clientCertificateId"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
		["resourceId"] = args["resourceId"],
		["pathWithQueryString"] = args["pathWithQueryString"],
		["headers"] = args["headers"],
		["stageVariables"] = args["stageVariables"],
	}
	asserts.AssertTestInvokeMethodRequest(t)
	return t
end

keys.ConflictException = { ["message"] = true, nil }

function asserts.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConflictException[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ConflictException structure as a key-value pair table
function M.ConflictException(args)
	assert(args, "You must provdide an argument table when creating ConflictException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertConflictException(t)
	return t
end

keys.UpdateModelRequest = { ["modelName"] = true, ["restApiId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateModelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateModelRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["modelName"], "Expected key modelName to exist in table")
	if struct["modelName"] then asserts.AssertString(struct["modelName"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateModelRequest[k], "UpdateModelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateModelRequest
-- <p>Request to update an existing model in an existing <a>RestApi</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * modelName [String] <p>The name of the model to update.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier under which the model exists.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: modelName
-- @return UpdateModelRequest structure as a key-value pair table
function M.UpdateModelRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateModelRequest")
	local t = { 
		["modelName"] = args["modelName"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateModelRequest(t)
	return t
end

keys.UpdateDeploymentRequest = { ["deploymentId"] = true, ["restApiId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeploymentRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["deploymentId"] then asserts.AssertString(struct["deploymentId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeploymentRequest[k], "UpdateDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeploymentRequest
-- <p>Requests Amazon API Gateway to change information about a <a>Deployment</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [String] <p>The replacement identifier for the <a>Deployment</a> resource to change information about.</p>
-- * restApiId [String] <p>The replacement identifier of the <a>RestApi</a> resource for the <a>Deployment</a> resource to change information about.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: deploymentId
-- @return UpdateDeploymentRequest structure as a key-value pair table
function M.UpdateDeploymentRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateDeploymentRequest")
	local t = { 
		["deploymentId"] = args["deploymentId"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateDeploymentRequest(t)
	return t
end

keys.PutRestApiRequest = { ["body"] = true, ["failOnWarnings"] = true, ["restApiId"] = true, ["mode"] = true, ["parameters"] = true, nil }

function asserts.AssertPutRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRestApiRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["body"], "Expected key body to exist in table")
	if struct["body"] then asserts.AssertBlob(struct["body"]) end
	if struct["failOnWarnings"] then asserts.AssertBoolean(struct["failOnWarnings"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["mode"] then asserts.AssertPutMode(struct["mode"]) end
	if struct["parameters"] then asserts.AssertMapOfStringToString(struct["parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRestApiRequest[k], "PutRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRestApiRequest
-- <p>A PUT request to update an existing API, with external API definitions specified as the request body.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Blob] <p>The PUT request body containing external API definitions. Currently, only Swagger definition JSON files are supported.</p>
-- * failOnWarnings [Boolean] <p>A query parameter to indicate whether to rollback the API update (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> to be updated. </p>
-- * mode [PutMode] <p>The <code>mode</code> query parameter to specify the update mode. Valid values are "merge" and "overwrite". By default, the update mode is "merge".</p>
-- * parameters [MapOfStringToString] <p>Custom headers supplied as part of the request. </p>
-- Required key: restApiId
-- Required key: body
-- @return PutRestApiRequest structure as a key-value pair table
function M.PutRestApiRequest(args)
	assert(args, "You must provdide an argument table when creating PutRestApiRequest")
	local t = { 
		["body"] = args["body"],
		["failOnWarnings"] = args["failOnWarnings"],
		["restApiId"] = args["restApiId"],
		["mode"] = args["mode"],
		["parameters"] = args["parameters"],
	}
	asserts.AssertPutRestApiRequest(t)
	return t
end

keys.GetSdkRequest = { ["sdkType"] = true, ["restApiId"] = true, ["parameters"] = true, ["stageName"] = true, nil }

function asserts.AssertGetSdkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSdkRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["sdkType"], "Expected key sdkType to exist in table")
	if struct["sdkType"] then asserts.AssertString(struct["sdkType"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["parameters"] then asserts.AssertMapOfStringToString(struct["parameters"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSdkRequest[k], "GetSdkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSdkRequest
-- <p>Request a new generated client SDK for a <a>RestApi</a> and <a>Stage</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sdkType [String] <p>The language for the generated SDK. Currently <code>javascript</code>, <code>android</code>, and <code>objectivec</code> (for iOS) are supported.</p>
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> that the SDK will use.</p>
-- * parameters [MapOfStringToString] <p>A key-value map of query string parameters that specify properties of the SDK, depending on the requested <code>sdkType</code>. For <code>sdkType</code> of <code>objectivec</code>, a parameter named <code>classPrefix</code> is required. For <code>sdkType</code> of <code>android</code>, parameters named <code>groupId</code>, <code>artifactId</code>, <code>artifactVersion</code>, and <code>invokerPackage</code> are required.</p>
-- * stageName [String] <p>The name of the <a>Stage</a> that the SDK will use.</p>
-- Required key: restApiId
-- Required key: stageName
-- Required key: sdkType
-- @return GetSdkRequest structure as a key-value pair table
function M.GetSdkRequest(args)
	assert(args, "You must provdide an argument table when creating GetSdkRequest")
	local t = { 
		["sdkType"] = args["sdkType"],
		["restApiId"] = args["restApiId"],
		["parameters"] = args["parameters"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertGetSdkRequest(t)
	return t
end

keys.UpdateUsageRequest = { ["keyId"] = true, ["usagePlanId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUsageRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	assert(struct["keyId"], "Expected key keyId to exist in table")
	if struct["keyId"] then asserts.AssertString(struct["keyId"]) end
	if struct["usagePlanId"] then asserts.AssertString(struct["usagePlanId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUsageRequest[k], "UpdateUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUsageRequest
-- <p>The PATCH request to grant a temporary extension to the reamining quota of a usage plan associated with a specified API key.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * keyId [String] <p>The identifier of the API key associated with the usage plan in which a temporary extension is granted to the remaining quota.</p>
-- * usagePlanId [String] <p>The Id of the usage plan associated with the usage data.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: usagePlanId
-- Required key: keyId
-- @return UpdateUsageRequest structure as a key-value pair table
function M.UpdateUsageRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateUsageRequest")
	local t = { 
		["keyId"] = args["keyId"],
		["usagePlanId"] = args["usagePlanId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateUsageRequest(t)
	return t
end

keys.StageKey = { ["restApiId"] = true, ["stageName"] = true, nil }

function asserts.AssertStageKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageKey to be of type 'table'")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StageKey[k], "StageKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageKey
-- <p>A reference to a unique stage identified in the format <code>{restApiId}/{stage}</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>A list of <a>Stage</a> resources that are associated with the <a>ApiKey</a> resource.</p>
-- * stageName [String] <p>The stage name in the <a>RestApi</a> that the stage key references.</p>
-- @return StageKey structure as a key-value pair table
function M.StageKey(args)
	assert(args, "You must provdide an argument table when creating StageKey")
	local t = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertStageKey(t)
	return t
end

keys.CreateModelRequest = { ["contentType"] = true, ["schema"] = true, ["restApiId"] = true, ["name"] = true, ["description"] = true, nil }

function asserts.AssertCreateModelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateModelRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["contentType"], "Expected key contentType to exist in table")
	if struct["contentType"] then asserts.AssertString(struct["contentType"]) end
	if struct["schema"] then asserts.AssertString(struct["schema"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateModelRequest[k], "CreateModelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateModelRequest
-- <p>Request to add a new <a>Model</a> to an existing <a>RestApi</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * contentType [String] <p>The content-type for the model.</p>
-- * schema [String] <p>The schema for the model. For <code>application/json</code> models, this should be <a href="http://json-schema.org/documentation.html" target="_blank">JSON-schema draft v4</a> model.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier under which the <a>Model</a> will be created.</p>
-- * name [String] <p>The name of the model.</p>
-- * description [String] <p>The description of the model.</p>
-- Required key: restApiId
-- Required key: name
-- Required key: contentType
-- @return CreateModelRequest structure as a key-value pair table
function M.CreateModelRequest(args)
	assert(args, "You must provdide an argument table when creating CreateModelRequest")
	local t = { 
		["contentType"] = args["contentType"],
		["schema"] = args["schema"],
		["restApiId"] = args["restApiId"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertCreateModelRequest(t)
	return t
end

keys.RequestValidators = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertRequestValidators(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestValidators to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfRequestValidator(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestValidators[k], "RequestValidators contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestValidators
-- <p>A collection of <a>RequestValidator</a> resources of a given <a>RestApi</a>.</p> <div class="remarks"> <p>In Swagger, the <a>RequestValidators</a> of an API is defined by the <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validators.html">x-amazon-apigateway-request-validators</a> extension.</p> </div> <div class="seeAlso"><a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html">Enable Basic Request Validation in API Gateway</a></div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfRequestValidator] <p>The current page of <a>RequestValidator</a> resources in the <a>RequestValidators</a> collection.</p>
-- @return RequestValidators structure as a key-value pair table
function M.RequestValidators(args)
	assert(args, "You must provdide an argument table when creating RequestValidators")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertRequestValidators(t)
	return t
end

keys.PutMethodResponseRequest = { ["responseModels"] = true, ["restApiId"] = true, ["resourceId"] = true, ["httpMethod"] = true, ["responseParameters"] = true, ["statusCode"] = true, nil }

function asserts.AssertPutMethodResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMethodResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["responseModels"] then asserts.AssertMapOfStringToString(struct["responseModels"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	if struct["responseParameters"] then asserts.AssertMapOfStringToBoolean(struct["responseParameters"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutMethodResponseRequest[k], "PutMethodResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMethodResponseRequest
-- <p>Request to add a <a>MethodResponse</a> to an existing <a>Method</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * responseModels [MapOfStringToString] <p>Specifies the <a>Model</a> resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a <a>Model</a> name as the value.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Method</a> resource.</p>
-- * resourceId [String] <p>The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- * httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- * responseParameters [MapOfStringToBoolean] <p>A key-value map specifying required or optional response parameters that Amazon API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
-- * statusCode [StatusCode] <p>The method response's status code.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return PutMethodResponseRequest structure as a key-value pair table
function M.PutMethodResponseRequest(args)
	assert(args, "You must provdide an argument table when creating PutMethodResponseRequest")
	local t = { 
		["responseModels"] = args["responseModels"],
		["restApiId"] = args["restApiId"],
		["resourceId"] = args["resourceId"],
		["httpMethod"] = args["httpMethod"],
		["responseParameters"] = args["responseParameters"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertPutMethodResponseRequest(t)
	return t
end

keys.GetDeploymentsRequest = { ["position"] = true, ["restApiId"] = true, ["limit"] = true, nil }

function asserts.AssertGetDeploymentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentsRequest[k], "GetDeploymentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentsRequest
-- <p>Requests Amazon API Gateway to get information about a <a>Deployments</a> collection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the collection of <a>Deployment</a> resources to get information about.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- Required key: restApiId
-- @return GetDeploymentsRequest structure as a key-value pair table
function M.GetDeploymentsRequest(args)
	assert(args, "You must provdide an argument table when creating GetDeploymentsRequest")
	local t = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetDeploymentsRequest(t)
	return t
end

keys.PutIntegrationRequest = { ["passthroughBehavior"] = true, ["restApiId"] = true, ["cacheKeyParameters"] = true, ["requestParameters"] = true, ["integrationHttpMethod"] = true, ["resourceId"] = true, ["uri"] = true, ["httpMethod"] = true, ["contentHandling"] = true, ["requestTemplates"] = true, ["cacheNamespace"] = true, ["credentials"] = true, ["type"] = true, nil }

function asserts.AssertPutIntegrationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIntegrationRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["passthroughBehavior"] then asserts.AssertString(struct["passthroughBehavior"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["cacheKeyParameters"] then asserts.AssertListOfString(struct["cacheKeyParameters"]) end
	if struct["requestParameters"] then asserts.AssertMapOfStringToString(struct["requestParameters"]) end
	if struct["integrationHttpMethod"] then asserts.AssertString(struct["integrationHttpMethod"]) end
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["uri"] then asserts.AssertString(struct["uri"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	if struct["contentHandling"] then asserts.AssertContentHandlingStrategy(struct["contentHandling"]) end
	if struct["requestTemplates"] then asserts.AssertMapOfStringToString(struct["requestTemplates"]) end
	if struct["cacheNamespace"] then asserts.AssertString(struct["cacheNamespace"]) end
	if struct["credentials"] then asserts.AssertString(struct["credentials"]) end
	if struct["type"] then asserts.AssertIntegrationType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutIntegrationRequest[k], "PutIntegrationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIntegrationRequest
-- <p>Represents a put integration request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * passthroughBehavior [String] <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the <code>requestTemplates</code> property on the Integration resource. There are three valid values: <code>WHEN_NO_MATCH</code>, <code>WHEN_NO_TEMPLATES</code>, and <code>NEVER</code>. </p> <ul> <li><p><code>WHEN_NO_MATCH</code> passes the request body for unmapped content types through to the integration back end without transformation.</p></li> <li><p><code>NEVER</code> rejects unmapped content types with an HTTP 415 'Unsupported Media Type' response.</p></li> <li><p><code>WHEN_NO_TEMPLATES</code> allows pass-through when the integration has NO content types mapped to templates. However if there is at least one content type defined, unmapped content types will be rejected with the same 415 response.</p></li> </ul>
-- * restApiId [String] <p>Specifies a put integration request's API identifier.</p>
-- * cacheKeyParameters [ListOfString] <p>Specifies a put integration input's cache key parameters.</p>
-- * requestParameters [MapOfStringToString] <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
-- * integrationHttpMethod [String] <p>Specifies a put integration HTTP method. When the integration type is HTTP or AWS, this field is required.</p>
-- * resourceId [String] <p>Specifies a put integration request's resource ID.</p>
-- * uri [String] <p>Specifies a put integration input's Uniform Resource Identifier (URI). When the integration type is HTTP or AWS, this field is required. For integration with Lambda as an AWS service proxy, this value is of the 'arn:aws:apigateway:&lt;region&gt;:lambda:path/2015-03-31/functions/&lt;functionArn&gt;/invocations' format.</p>
-- * httpMethod [String] <p>Specifies a put integration request's HTTP method.</p>
-- * contentHandling [ContentHandlingStrategy] <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a request payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a request payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehaviors</code> is configured to support payload pass-through.</p>
-- * requestTemplates [MapOfStringToString] <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
-- * cacheNamespace [String] <p>Specifies a put integration input's cache namespace.</p>
-- * credentials [String] <p>Specifies whether credentials are required for a put integration.</p>
-- * type [IntegrationType] <p>Specifies a put integration input's type.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: type
-- @return PutIntegrationRequest structure as a key-value pair table
function M.PutIntegrationRequest(args)
	assert(args, "You must provdide an argument table when creating PutIntegrationRequest")
	local t = { 
		["passthroughBehavior"] = args["passthroughBehavior"],
		["restApiId"] = args["restApiId"],
		["cacheKeyParameters"] = args["cacheKeyParameters"],
		["requestParameters"] = args["requestParameters"],
		["integrationHttpMethod"] = args["integrationHttpMethod"],
		["resourceId"] = args["resourceId"],
		["uri"] = args["uri"],
		["httpMethod"] = args["httpMethod"],
		["contentHandling"] = args["contentHandling"],
		["requestTemplates"] = args["requestTemplates"],
		["cacheNamespace"] = args["cacheNamespace"],
		["credentials"] = args["credentials"],
		["type"] = args["type"],
	}
	asserts.AssertPutIntegrationRequest(t)
	return t
end

keys.UpdateAuthorizerRequest = { ["restApiId"] = true, ["authorizerId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["authorizerId"], "Expected key authorizerId to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["authorizerId"] then asserts.AssertString(struct["authorizerId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAuthorizerRequest[k], "UpdateAuthorizerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAuthorizerRequest
-- <p>Request to update an existing <a>Authorizer</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Authorizer</a> resource.</p>
-- * authorizerId [String] <p>The identifier of the <a>Authorizer</a> resource.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: authorizerId
-- @return UpdateAuthorizerRequest structure as a key-value pair table
function M.UpdateAuthorizerRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateAuthorizerRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["authorizerId"] = args["authorizerId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateAuthorizerRequest(t)
	return t
end

keys.GetDocumentationVersionRequest = { ["restApiId"] = true, ["documentationVersion"] = true, nil }

function asserts.AssertGetDocumentationVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentationVersionRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationVersion"], "Expected key documentationVersion to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["documentationVersion"] then asserts.AssertString(struct["documentationVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentationVersionRequest[k], "GetDocumentationVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentationVersionRequest
-- <p>Gets a documentation snapshot of an API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] The identifier of the API of the to-be-retrieved documentation snapshot.</p>
-- * documentationVersion [String] <p>[Required] The version identifier of the to-be-retrieved documentation snapshot.</p>
-- Required key: restApiId
-- Required key: documentationVersion
-- @return GetDocumentationVersionRequest structure as a key-value pair table
function M.GetDocumentationVersionRequest(args)
	assert(args, "You must provdide an argument table when creating GetDocumentationVersionRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["documentationVersion"] = args["documentationVersion"],
	}
	asserts.AssertGetDocumentationVersionRequest(t)
	return t
end

keys.CreateDocumentationVersionRequest = { ["restApiId"] = true, ["stageName"] = true, ["documentationVersion"] = true, ["description"] = true, nil }

function asserts.AssertCreateDocumentationVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDocumentationVersionRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationVersion"], "Expected key documentationVersion to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	if struct["documentationVersion"] then asserts.AssertString(struct["documentationVersion"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDocumentationVersionRequest[k], "CreateDocumentationVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDocumentationVersionRequest
-- <p>Creates a new documentation version of a given API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] Specifies the API identifier of the to-be-created documentation version.</p>
-- * stageName [String] <p>The stage name to be associated with the new documentation snapshot.</p>
-- * documentationVersion [String] <p>[Required] The version identifier of the new snapshot.</p>
-- * description [String] <p>A description about the new documentation snapshot.</p>
-- Required key: restApiId
-- Required key: documentationVersion
-- @return CreateDocumentationVersionRequest structure as a key-value pair table
function M.CreateDocumentationVersionRequest(args)
	assert(args, "You must provdide an argument table when creating CreateDocumentationVersionRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
		["documentationVersion"] = args["documentationVersion"],
		["description"] = args["description"],
	}
	asserts.AssertCreateDocumentationVersionRequest(t)
	return t
end

keys.UpdateRestApiRequest = { ["restApiId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRestApiRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRestApiRequest[k], "UpdateRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRestApiRequest
-- <p>Request to update an existing <a>RestApi</a> resource in your collection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The ID of the <a>RestApi</a> you want to update.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- @return UpdateRestApiRequest structure as a key-value pair table
function M.UpdateRestApiRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateRestApiRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateRestApiRequest(t)
	return t
end

keys.UpdateResourceRequest = { ["resourceId"] = true, ["restApiId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateResourceRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateResourceRequest[k], "UpdateResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateResourceRequest
-- <p>Request to change information about a <a>Resource</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>The identifier of the <a>Resource</a> resource.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Resource</a> resource.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: resourceId
-- @return UpdateResourceRequest structure as a key-value pair table
function M.UpdateResourceRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateResourceRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateResourceRequest(t)
	return t
end

keys.PutIntegrationResponseRequest = { ["contentHandling"] = true, ["restApiId"] = true, ["resourceId"] = true, ["responseTemplates"] = true, ["httpMethod"] = true, ["selectionPattern"] = true, ["statusCode"] = true, ["responseParameters"] = true, nil }

function asserts.AssertPutIntegrationResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIntegrationResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["contentHandling"] then asserts.AssertContentHandlingStrategy(struct["contentHandling"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["responseTemplates"] then asserts.AssertMapOfStringToString(struct["responseTemplates"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	if struct["selectionPattern"] then asserts.AssertString(struct["selectionPattern"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	if struct["responseParameters"] then asserts.AssertMapOfStringToString(struct["responseParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutIntegrationResponseRequest[k], "PutIntegrationResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIntegrationResponseRequest
-- <p>Represents a put integration response request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * contentHandling [ContentHandlingStrategy] <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a response payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
-- * restApiId [String] <p>Specifies a put integration response request's API identifier.</p>
-- * resourceId [String] <p>Specifies a put integration response request's resource identifier.</p>
-- * responseTemplates [MapOfStringToString] <p>Specifies a put integration response's templates.</p>
-- * httpMethod [String] <p>Specifies a put integration response request's HTTP method.</p>
-- * selectionPattern [String] <p>Specifies the selection pattern of a put integration response.</p>
-- * statusCode [StatusCode] <p>Specifies the status code that is used to map the integration response to an existing <a>MethodResponse</a>.</p>
-- * responseParameters [MapOfStringToString] <p>A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> must be a valid and unique response header name and <code>JSON-expression</code> a valid JSON expression without the <code>$</code> prefix.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return PutIntegrationResponseRequest structure as a key-value pair table
function M.PutIntegrationResponseRequest(args)
	assert(args, "You must provdide an argument table when creating PutIntegrationResponseRequest")
	local t = { 
		["contentHandling"] = args["contentHandling"],
		["restApiId"] = args["restApiId"],
		["resourceId"] = args["resourceId"],
		["responseTemplates"] = args["responseTemplates"],
		["httpMethod"] = args["httpMethod"],
		["selectionPattern"] = args["selectionPattern"],
		["statusCode"] = args["statusCode"],
		["responseParameters"] = args["responseParameters"],
	}
	asserts.AssertPutIntegrationResponseRequest(t)
	return t
end

keys.GetResourcesRequest = { ["position"] = true, ["embed"] = true, ["restApiId"] = true, ["limit"] = true, nil }

function asserts.AssertGetResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourcesRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["embed"] then asserts.AssertListOfString(struct["embed"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourcesRequest[k], "GetResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourcesRequest
-- <p>Request to list information about a collection of resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * embed [ListOfString] <p>A query parameter used to retrieve the specified resources embedded in the returned <a>Resources</a> resource in the response. This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded <a>Method</a> resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources?embed=methods</code>.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the Resource.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- Required key: restApiId
-- @return GetResourcesRequest structure as a key-value pair table
function M.GetResourcesRequest(args)
	assert(args, "You must provdide an argument table when creating GetResourcesRequest")
	local t = { 
		["position"] = args["position"],
		["embed"] = args["embed"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetResourcesRequest(t)
	return t
end

keys.GetBasePathMappingsRequest = { ["position"] = true, ["limit"] = true, ["domainName"] = true, nil }

function asserts.AssertGetBasePathMappingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBasePathMappingsRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBasePathMappingsRequest[k], "GetBasePathMappingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBasePathMappingsRequest
-- <p>A request to get information about a collection of <a>BasePathMapping</a> resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- * domainName [String] <p>The domain name of a <a>BasePathMapping</a> resource.</p>
-- Required key: domainName
-- @return GetBasePathMappingsRequest structure as a key-value pair table
function M.GetBasePathMappingsRequest(args)
	assert(args, "You must provdide an argument table when creating GetBasePathMappingsRequest")
	local t = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertGetBasePathMappingsRequest(t)
	return t
end

keys.Integration = { ["integrationResponses"] = true, ["passthroughBehavior"] = true, ["cacheKeyParameters"] = true, ["requestParameters"] = true, ["uri"] = true, ["httpMethod"] = true, ["contentHandling"] = true, ["requestTemplates"] = true, ["cacheNamespace"] = true, ["credentials"] = true, ["type"] = true, nil }

function asserts.AssertIntegration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Integration to be of type 'table'")
	if struct["integrationResponses"] then asserts.AssertMapOfIntegrationResponse(struct["integrationResponses"]) end
	if struct["passthroughBehavior"] then asserts.AssertString(struct["passthroughBehavior"]) end
	if struct["cacheKeyParameters"] then asserts.AssertListOfString(struct["cacheKeyParameters"]) end
	if struct["requestParameters"] then asserts.AssertMapOfStringToString(struct["requestParameters"]) end
	if struct["uri"] then asserts.AssertString(struct["uri"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	if struct["contentHandling"] then asserts.AssertContentHandlingStrategy(struct["contentHandling"]) end
	if struct["requestTemplates"] then asserts.AssertMapOfStringToString(struct["requestTemplates"]) end
	if struct["cacheNamespace"] then asserts.AssertString(struct["cacheNamespace"]) end
	if struct["credentials"] then asserts.AssertString(struct["credentials"]) end
	if struct["type"] then asserts.AssertIntegrationType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.Integration[k], "Integration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Integration
-- <p>Represents an HTTP, HTTP_PROXY, AWS, AWS_PROXY, or Mock integration.</p> <div class="remarks">In the API Gateway console, the built-in Lambda integration is an AWS integration.</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * integrationResponses [MapOfIntegrationResponse] <p>Specifies the integration's responses.</p> <div class="remarks"> <p/> <h4>Example: Get integration responses of a method</h4> <h5>Request</h5> <p/> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160607T191449Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160607/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash} </code></pre> <h5>Response</h5> <p>The successful response returns <code>200 OK</code> status and a payload as follows:</p> <pre><code>{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\")\n" }, "statusCode": "200" }</code></pre> <p/> </div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- * passthroughBehavior [String] <div> <p> Specifies how the method request body of an unmapped content type will be passed through the integration request to the back end without transformation. A content type is unmapped if no mapping template is defined in the integration or the content type does not match any of the mapped content types, as specified in <code>requestTemplates</code>. There are three valid values: <code>WHEN_NO_MATCH</code>, <code>WHEN_NO_TEMPLATES</code>, and <code>NEVER</code>. </p> <ul> <li> <code>WHEN_NO_MATCH</code> passes the method request body through the integration request to the back end without transformation when the method request content type does not match any content type associated with the mapping templates defined in the integration request. </li> <li> <code>WHEN_NO_TEMPLATES</code> passes the method request body through the integration request to the back end without transformation when no mapping template is defined in the integration request. If a template is defined when this option is selected, the method request of an unmapped content-type will be rejected with an HTTP <code>415 Unsupported Media Type</code> response. </li> <li> <code>NEVER</code> rejects the method request with an HTTP <code>415 Unsupported Media Type</code> response when either the method request content type does not match any content type associated with the mapping templates defined in the integration request or no mapping template is defined in the integration request. </li> </ul> </div>
-- * cacheKeyParameters [ListOfString] <p>Specifies the integration's cache key parameters.</p>
-- * requestParameters [MapOfStringToString] <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
-- * uri [String] <p>Specifies the integration's Uniform Resource Identifier (URI). For HTTP integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the <a href="https://en.wikipedia.org/wiki/Uniform_Resource_Identifier" target="_blank">RFC-3986 specification</a>. For AWS integrations, the URI should be of the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}</code>. <code>Region</code>, <code>subdomain</code> and <code>service</code> are used to determine the right endpoint. For AWS services that use the <code>Action=</code> query string parameter, <code>service_api</code> should be a valid action for the desired service. For RESTful AWS service APIs, <code>path</code> is used to indicate that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>.</p>
-- * httpMethod [String] <p>Specifies the integration's HTTP method type.</p>
-- * contentHandling [ContentHandlingStrategy] <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a request payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a request payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehaviors</code> is configured to support payload pass-through.</p>
-- * requestTemplates [MapOfStringToString] <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
-- * cacheNamespace [String] <p>Specifies the integration's cache namespace.</p>
-- * credentials [String] <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\*:user/\*</code>. To use resource-based permissions on supported AWS services, specify null.</p>
-- * type [IntegrationType] <p>Specifies the integration's type. The valid value is <code>HTTP</code> for integrating with an HTTP back end, <code>AWS</code> for any AWS service endpoints, <code>MOCK</code> for testing without actually invoking the back end, <code>HTTP_PROXY</code> for integrating with the HTTP proxy integration, or <code>AWS_PROXY</code> for integrating with the Lambda proxy integration type.</p>
-- @return Integration structure as a key-value pair table
function M.Integration(args)
	assert(args, "You must provdide an argument table when creating Integration")
	local t = { 
		["integrationResponses"] = args["integrationResponses"],
		["passthroughBehavior"] = args["passthroughBehavior"],
		["cacheKeyParameters"] = args["cacheKeyParameters"],
		["requestParameters"] = args["requestParameters"],
		["uri"] = args["uri"],
		["httpMethod"] = args["httpMethod"],
		["contentHandling"] = args["contentHandling"],
		["requestTemplates"] = args["requestTemplates"],
		["cacheNamespace"] = args["cacheNamespace"],
		["credentials"] = args["credentials"],
		["type"] = args["type"],
	}
	asserts.AssertIntegration(t)
	return t
end

keys.RestApis = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertRestApis(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestApis to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfRestApi(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestApis[k], "RestApis contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestApis
-- <p>Contains references to your APIs and links that guide you in how to interact with your collection. A collection offers a paginated view of your APIs.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfRestApi] <p>An array of links to the current page of <a>RestApi</a> resources.</p>
-- @return RestApis structure as a key-value pair table
function M.RestApis(args)
	assert(args, "You must provdide an argument table when creating RestApis")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertRestApis(t)
	return t
end

keys.CreateDocumentationPartRequest = { ["restApiId"] = true, ["location"] = true, ["properties"] = true, nil }

function asserts.AssertCreateDocumentationPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDocumentationPartRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["location"], "Expected key location to exist in table")
	assert(struct["properties"], "Expected key properties to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["location"] then asserts.AssertDocumentationPartLocation(struct["location"]) end
	if struct["properties"] then asserts.AssertString(struct["properties"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDocumentationPartRequest[k], "CreateDocumentationPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDocumentationPartRequest
-- <p>Creates a new documentation part of a given API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] The identifier of an API of the to-be-created documentation part.</p>
-- * location [DocumentationPartLocation] <p>[Required] The location of the targeted API entity of the to-be-created documentation part.</p>
-- * properties [String] <p>[Required] The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only Swagger-compliant key-value pairs can be exported and, hence, published.</p>
-- Required key: restApiId
-- Required key: location
-- Required key: properties
-- @return CreateDocumentationPartRequest structure as a key-value pair table
function M.CreateDocumentationPartRequest(args)
	assert(args, "You must provdide an argument table when creating CreateDocumentationPartRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["location"] = args["location"],
		["properties"] = args["properties"],
	}
	asserts.AssertCreateDocumentationPartRequest(t)
	return t
end

keys.CreateBasePathMappingRequest = { ["basePath"] = true, ["stage"] = true, ["restApiId"] = true, ["domainName"] = true, nil }

function asserts.AssertCreateBasePathMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBasePathMappingRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["basePath"] then asserts.AssertString(struct["basePath"]) end
	if struct["stage"] then asserts.AssertString(struct["stage"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBasePathMappingRequest[k], "CreateBasePathMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBasePathMappingRequest
-- <p>Requests Amazon API Gateway to create a new <a>BasePathMapping</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * basePath [String] <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Leave this blank if you do not want callers to specify a base path name after the domain name.</p>
-- * stage [String] <p>The name of the API's stage that you want to use for this mapping. Leave this blank if you do not want callers to explicitly specify the stage name after any base path name.</p>
-- * restApiId [String] <p>The name of the API that you want to apply this mapping to.</p>
-- * domainName [String] <p>The domain name of the <a>BasePathMapping</a> resource to create.</p>
-- Required key: domainName
-- Required key: restApiId
-- @return CreateBasePathMappingRequest structure as a key-value pair table
function M.CreateBasePathMappingRequest(args)
	assert(args, "You must provdide an argument table when creating CreateBasePathMappingRequest")
	local t = { 
		["basePath"] = args["basePath"],
		["stage"] = args["stage"],
		["restApiId"] = args["restApiId"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertCreateBasePathMappingRequest(t)
	return t
end

keys.GetUsagePlansRequest = { ["position"] = true, ["keyId"] = true, ["limit"] = true, nil }

function asserts.AssertGetUsagePlansRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUsagePlansRequest to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["keyId"] then asserts.AssertString(struct["keyId"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUsagePlansRequest[k], "GetUsagePlansRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUsagePlansRequest
-- <p>The GET request to get all the usage plans of the caller's account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * keyId [String] <p>The identifier of the API key associated with the usage plans.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- @return GetUsagePlansRequest structure as a key-value pair table
function M.GetUsagePlansRequest(args)
	assert(args, "You must provdide an argument table when creating GetUsagePlansRequest")
	local t = { 
		["position"] = args["position"],
		["keyId"] = args["keyId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetUsagePlansRequest(t)
	return t
end

keys.GetSdkTypeRequest = { ["id"] = true, nil }

function asserts.AssertGetSdkTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSdkTypeRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["id"] then asserts.AssertString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSdkTypeRequest[k], "GetSdkTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSdkTypeRequest
-- <p>Get an <a>SdkType</a> instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * id [String] <p>The identifier of the queried <a>SdkType</a> instance.</p>
-- Required key: id
-- @return GetSdkTypeRequest structure as a key-value pair table
function M.GetSdkTypeRequest(args)
	assert(args, "You must provdide an argument table when creating GetSdkTypeRequest")
	local t = { 
		["id"] = args["id"],
	}
	asserts.AssertGetSdkTypeRequest(t)
	return t
end

keys.SdkConfigurationProperty = { ["friendlyName"] = true, ["defaultValue"] = true, ["required"] = true, ["name"] = true, ["description"] = true, nil }

function asserts.AssertSdkConfigurationProperty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SdkConfigurationProperty to be of type 'table'")
	if struct["friendlyName"] then asserts.AssertString(struct["friendlyName"]) end
	if struct["defaultValue"] then asserts.AssertString(struct["defaultValue"]) end
	if struct["required"] then asserts.AssertBoolean(struct["required"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.SdkConfigurationProperty[k], "SdkConfigurationProperty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SdkConfigurationProperty
-- <p>A configuration property of an SDK type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * friendlyName [String] <p>The user-friendly name of an <a>SdkType</a> configuration property.</p>
-- * defaultValue [String] <p>The default value of an <a>SdkType</a> configuration property.</p>
-- * required [Boolean] <p>A boolean flag of an <a>SdkType</a> configuration property to indicate if the associated SDK configuration property is required (<code>true</code>) or not (<code>false</code>).</p>
-- * name [String] <p>The name of a an <a>SdkType</a> configuration property.</p>
-- * description [String] <p>The description of an <a>SdkType</a> configuration property.</p>
-- @return SdkConfigurationProperty structure as a key-value pair table
function M.SdkConfigurationProperty(args)
	assert(args, "You must provdide an argument table when creating SdkConfigurationProperty")
	local t = { 
		["friendlyName"] = args["friendlyName"],
		["defaultValue"] = args["defaultValue"],
		["required"] = args["required"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertSdkConfigurationProperty(t)
	return t
end

keys.ApiKey = { ["description"] = true, ["enabled"] = true, ["value"] = true, ["id"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["stageKeys"] = true, ["customerId"] = true, ["name"] = true, nil }

function asserts.AssertApiKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiKey to be of type 'table'")
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["enabled"] then asserts.AssertBoolean(struct["enabled"]) end
	if struct["value"] then asserts.AssertString(struct["value"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["stageKeys"] then asserts.AssertListOfString(struct["stageKeys"]) end
	if struct["customerId"] then asserts.AssertString(struct["customerId"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApiKey[k], "ApiKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiKey
-- <p>A resource that can be distributed to callers for executing <a>Method</a> resources that require an API key. API keys can be mapped to any <a>Stage</a> on any <a>RestApi</a>, which indicates that the callers with the API key can make requests to that stage.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html">Use API Keys</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [String] <p>The description of the API Key.</p>
-- * enabled [Boolean] <p>Specifies whether the API Key can be used by callers.</p>
-- * value [String] <p>The value of the API Key.</p>
-- * id [String] <p>The identifier of the API Key.</p>
-- * lastUpdatedDate [Timestamp] <p>The timestamp when the API Key was last updated.</p>
-- * createdDate [Timestamp] <p>The timestamp when the API Key was created.</p>
-- * stageKeys [ListOfString] <p>A list of <a>Stage</a> resources that are associated with the <a>ApiKey</a> resource.</p>
-- * customerId [String] <p>An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.</p>
-- * name [String] <p>The name of the API Key.</p>
-- @return ApiKey structure as a key-value pair table
function M.ApiKey(args)
	assert(args, "You must provdide an argument table when creating ApiKey")
	local t = { 
		["description"] = args["description"],
		["enabled"] = args["enabled"],
		["value"] = args["value"],
		["id"] = args["id"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["stageKeys"] = args["stageKeys"],
		["customerId"] = args["customerId"],
		["name"] = args["name"],
	}
	asserts.AssertApiKey(t)
	return t
end

keys.UpdateIntegrationResponseRequest = { ["resourceId"] = true, ["statusCode"] = true, ["restApiId"] = true, ["patchOperations"] = true, ["httpMethod"] = true, nil }

function asserts.AssertUpdateIntegrationResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIntegrationResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateIntegrationResponseRequest[k], "UpdateIntegrationResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIntegrationResponseRequest
-- <p>Represents an update integration response request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>Specifies an update integration response request's resource identifier.</p>
-- * statusCode [StatusCode] <p>Specifies an update integration response request's status code.</p>
-- * restApiId [String] <p>Specifies an update integration response request's API identifier.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * httpMethod [String] <p>Specifies an update integration response request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return UpdateIntegrationResponseRequest structure as a key-value pair table
function M.UpdateIntegrationResponseRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateIntegrationResponseRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertUpdateIntegrationResponseRequest(t)
	return t
end

keys.GetClientCertificatesRequest = { ["position"] = true, ["limit"] = true, nil }

function asserts.AssertGetClientCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetClientCertificatesRequest to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetClientCertificatesRequest[k], "GetClientCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetClientCertificatesRequest
-- <p>A request to get information about a collection of <a>ClientCertificate</a> resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- @return GetClientCertificatesRequest structure as a key-value pair table
function M.GetClientCertificatesRequest(args)
	assert(args, "You must provdide an argument table when creating GetClientCertificatesRequest")
	local t = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetClientCertificatesRequest(t)
	return t
end

keys.GetAuthorizersRequest = { ["position"] = true, ["restApiId"] = true, ["limit"] = true, nil }

function asserts.AssertGetAuthorizersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAuthorizersRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAuthorizersRequest[k], "GetAuthorizersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAuthorizersRequest
-- <p>Request to describe an existing <a>Authorizers</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Authorizers</a> resource.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- Required key: restApiId
-- @return GetAuthorizersRequest structure as a key-value pair table
function M.GetAuthorizersRequest(args)
	assert(args, "You must provdide an argument table when creating GetAuthorizersRequest")
	local t = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetAuthorizersRequest(t)
	return t
end

keys.DeleteRestApiRequest = { ["restApiId"] = true, nil }

function asserts.AssertDeleteRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRestApiRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRestApiRequest[k], "DeleteRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRestApiRequest
-- <p>Request to delete the specified API from your collection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>The ID of the <a>RestApi</a> you want to delete.</p>
-- Required key: restApiId
-- @return DeleteRestApiRequest structure as a key-value pair table
function M.DeleteRestApiRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteRestApiRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteRestApiRequest(t)
	return t
end

keys.Deployment = { ["apiSummary"] = true, ["createdDate"] = true, ["id"] = true, ["description"] = true, nil }

function asserts.AssertDeployment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployment to be of type 'table'")
	if struct["apiSummary"] then asserts.AssertPathToMapOfMethodSnapshot(struct["apiSummary"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Deployment[k], "Deployment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployment
-- <p>An immutable representation of a <a>RestApi</a> resource that can be called by users using <a>Stages</a>. A deployment must be associated with a <a>Stage</a> for it to be callable over the Internet.</p> <div class="remarks">To create a deployment, call <code>POST</code> on the <a>Deployments</a> resource of a <a>RestApi</a>. To view, update, or delete a deployment, call <code>GET</code>, <code>PATCH</code>, or <code>DELETE</code> on the specified deployment resource (<code>/restapis/{restapi_id}/deployments/{deployment_id}</code>).</div> <div class="seeAlso"><a>RestApi</a>, <a>Deployments</a>, <a>Stage</a>, <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html">AWS CLI</a>, <a href="https://aws.amazon.com/tools/">AWS SDKs</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiSummary [PathToMapOfMethodSnapshot] <p>A summary of the <a>RestApi</a> at the date and time that the deployment resource was created.</p>
-- * createdDate [Timestamp] <p>The date and time that the deployment resource was created.</p>
-- * id [String] <p>The identifier for the deployment resource.</p>
-- * description [String] <p>The description for the deployment resource.</p>
-- @return Deployment structure as a key-value pair table
function M.Deployment(args)
	assert(args, "You must provdide an argument table when creating Deployment")
	local t = { 
		["apiSummary"] = args["apiSummary"],
		["createdDate"] = args["createdDate"],
		["id"] = args["id"],
		["description"] = args["description"],
	}
	asserts.AssertDeployment(t)
	return t
end

keys.GetResourceRequest = { ["resourceId"] = true, ["embed"] = true, ["restApiId"] = true, nil }

function asserts.AssertGetResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourceRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["embed"] then asserts.AssertListOfString(struct["embed"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourceRequest[k], "GetResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourceRequest
-- <p>Request to list information about a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>The identifier for the <a>Resource</a> resource.</p>
-- * embed [ListOfString] <p>A query parameter to retrieve the specified resources embedded in the returned <a>Resource</a> representation in the response. This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded <a>Method</a> resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code>.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- @return GetResourceRequest structure as a key-value pair table
function M.GetResourceRequest(args)
	assert(args, "You must provdide an argument table when creating GetResourceRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["embed"] = args["embed"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetResourceRequest(t)
	return t
end

keys.DeleteResourceRequest = { ["resourceId"] = true, ["restApiId"] = true, nil }

function asserts.AssertDeleteResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResourceRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteResourceRequest[k], "DeleteResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResourceRequest
-- <p>Request to delete a <a>Resource</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>The identifier of the <a>Resource</a> resource.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Resource</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- @return DeleteResourceRequest structure as a key-value pair table
function M.DeleteResourceRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteResourceRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteResourceRequest(t)
	return t
end

keys.PatchOperation = { ["path"] = true, ["from"] = true, ["value"] = true, ["op"] = true, nil }

function asserts.AssertPatchOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchOperation to be of type 'table'")
	if struct["path"] then asserts.AssertString(struct["path"]) end
	if struct["from"] then asserts.AssertString(struct["from"]) end
	if struct["value"] then asserts.AssertString(struct["value"]) end
	if struct["op"] then asserts.AssertOp(struct["op"]) end
	for k,_ in pairs(struct) do
		assert(keys.PatchOperation[k], "PatchOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchOperation
-- A single patch operation to apply to the specified resource. Please refer to http://tools.ietf.org/html/rfc6902#section-4 for an explanation of how each operation is used.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * path [String] <p>The <code>op</code> operation's target, as identified by a <a href="https://tools.ietf.org/html/draft-ietf-appsawg-json-pointer-08">JSON Pointer</a> value that references a location within the targeted resource. For example, if the target resource has an updateable property of <code>{"name":"value"}</code>, the path for this property is <code>/name</code>. If the <code>name</code> property value is a JSON object (e.g., <code>{"name": {"child/name": "child-value"}}</code>), the path for the <code>child/name</code> property will be <code>/name/child~1name</code>. Any slash ("/") character appearing in path names must be escaped with "~1", as shown in the example above. Each <code>op</code> operation can have only one <code>path</code> associated with it.</p>
-- * from [String] <p> Not supported.</p>
-- * value [String] <p>The new target value of the update operation. When using AWS CLI to update a property of a JSON value, enclose the JSON object with a pair of single quotes in a Linux shell, e.g., '{"a": ...}'. In a Windows shell, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a>.</p>
-- * op [Op] <p>An update operation to be performed with this PATCH request. The valid value can be "add", "remove", or "replace". Not all valid operations are supported for a given resource. Support of the operations depends on specific operational contexts. Attempts to apply an unsupported operation on a resource will return an error message.</p>
-- @return PatchOperation structure as a key-value pair table
function M.PatchOperation(args)
	assert(args, "You must provdide an argument table when creating PatchOperation")
	local t = { 
		["path"] = args["path"],
		["from"] = args["from"],
		["value"] = args["value"],
		["op"] = args["op"],
	}
	asserts.AssertPatchOperation(t)
	return t
end

keys.ApiStage = { ["apiId"] = true, ["stage"] = true, nil }

function asserts.AssertApiStage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiStage to be of type 'table'")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["stage"] then asserts.AssertString(struct["stage"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApiStage[k], "ApiStage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiStage
-- <p>API stage name of the associated API stage in a usage plan.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>API Id of the associated API stage in a usage plan.</p>
-- * stage [String] <p>API stage name of the associated API stage in a usage plan.</p>
-- @return ApiStage structure as a key-value pair table
function M.ApiStage(args)
	assert(args, "You must provdide an argument table when creating ApiStage")
	local t = { 
		["apiId"] = args["apiId"],
		["stage"] = args["stage"],
	}
	asserts.AssertApiStage(t)
	return t
end

keys.ImportApiKeysRequest = { ["body"] = true, ["failOnWarnings"] = true, ["format"] = true, nil }

function asserts.AssertImportApiKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportApiKeysRequest to be of type 'table'")
	assert(struct["body"], "Expected key body to exist in table")
	assert(struct["format"], "Expected key format to exist in table")
	if struct["body"] then asserts.AssertBlob(struct["body"]) end
	if struct["failOnWarnings"] then asserts.AssertBoolean(struct["failOnWarnings"]) end
	if struct["format"] then asserts.AssertApiKeysFormat(struct["format"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportApiKeysRequest[k], "ImportApiKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportApiKeysRequest
-- <p>The POST request to import API keys from an external source, such as a CSV-formatted file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Blob] <p>The payload of the POST request to import API keys. For the payload format, see <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-key-file-format.html">API Key File Format</a>.</p>
-- * failOnWarnings [Boolean] <p>A query parameter to indicate whether to rollback <a>ApiKey</a> importation (<code>true</code>) or not (<code>false</code>) when error is encountered.</p>
-- * format [ApiKeysFormat] <p>A query parameter to specify the input format to imported API keys. Currently, only the <code>csv</code> format is supported.</p>
-- Required key: body
-- Required key: format
-- @return ImportApiKeysRequest structure as a key-value pair table
function M.ImportApiKeysRequest(args)
	assert(args, "You must provdide an argument table when creating ImportApiKeysRequest")
	local t = { 
		["body"] = args["body"],
		["failOnWarnings"] = args["failOnWarnings"],
		["format"] = args["format"],
	}
	asserts.AssertImportApiKeysRequest(t)
	return t
end

keys.GetModelRequest = { ["modelName"] = true, ["restApiId"] = true, ["flatten"] = true, nil }

function asserts.AssertGetModelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetModelRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["modelName"], "Expected key modelName to exist in table")
	if struct["modelName"] then asserts.AssertString(struct["modelName"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["flatten"] then asserts.AssertBoolean(struct["flatten"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetModelRequest[k], "GetModelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetModelRequest
-- <p>Request to list information about a model in an existing <a>RestApi</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * modelName [String] <p>The name of the model as an identifier.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier under which the <a>Model</a> exists.</p>
-- * flatten [Boolean] <p>A query parameter of a Boolean value to resolve (<code>true</code>) all external model references and returns a flattened model schema or not (<code>false</code>) The default is <code>false</code>.</p>
-- Required key: restApiId
-- Required key: modelName
-- @return GetModelRequest structure as a key-value pair table
function M.GetModelRequest(args)
	assert(args, "You must provdide an argument table when creating GetModelRequest")
	local t = { 
		["modelName"] = args["modelName"],
		["restApiId"] = args["restApiId"],
		["flatten"] = args["flatten"],
	}
	asserts.AssertGetModelRequest(t)
	return t
end

keys.GetModelTemplateRequest = { ["modelName"] = true, ["restApiId"] = true, nil }

function asserts.AssertGetModelTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetModelTemplateRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["modelName"], "Expected key modelName to exist in table")
	if struct["modelName"] then asserts.AssertString(struct["modelName"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetModelTemplateRequest[k], "GetModelTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetModelTemplateRequest
-- <p>Request to generate a sample mapping template used to transform the payload.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * modelName [String] <p>The name of the model for which to generate a template.</p>
-- * restApiId [String] <p>The ID of the <a>RestApi</a> under which the model exists.</p>
-- Required key: restApiId
-- Required key: modelName
-- @return GetModelTemplateRequest structure as a key-value pair table
function M.GetModelTemplateRequest(args)
	assert(args, "You must provdide an argument table when creating GetModelTemplateRequest")
	local t = { 
		["modelName"] = args["modelName"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetModelTemplateRequest(t)
	return t
end

keys.TestInvokeMethodResponse = { ["status"] = true, ["body"] = true, ["log"] = true, ["latency"] = true, ["headers"] = true, nil }

function asserts.AssertTestInvokeMethodResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestInvokeMethodResponse to be of type 'table'")
	if struct["status"] then asserts.AssertInteger(struct["status"]) end
	if struct["body"] then asserts.AssertString(struct["body"]) end
	if struct["log"] then asserts.AssertString(struct["log"]) end
	if struct["latency"] then asserts.AssertLong(struct["latency"]) end
	if struct["headers"] then asserts.AssertMapOfHeaderValues(struct["headers"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestInvokeMethodResponse[k], "TestInvokeMethodResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestInvokeMethodResponse
-- <p>Represents the response of the test invoke request in the HTTP method.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-test-method.html#how-to-test-method-console">Test API using the API Gateway console</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [Integer] <p>The HTTP status code.</p>
-- * body [String] <p>The body of the HTTP response.</p>
-- * log [String] <p>The Amazon API Gateway execution log for the test invoke request.</p>
-- * latency [Long] <p>The execution latency of the test invoke request.</p>
-- * headers [MapOfHeaderValues] <p>The headers of the HTTP response.</p>
-- @return TestInvokeMethodResponse structure as a key-value pair table
function M.TestInvokeMethodResponse(args)
	assert(args, "You must provdide an argument table when creating TestInvokeMethodResponse")
	local t = { 
		["status"] = args["status"],
		["body"] = args["body"],
		["log"] = args["log"],
		["latency"] = args["latency"],
		["headers"] = args["headers"],
	}
	asserts.AssertTestInvokeMethodResponse(t)
	return t
end

keys.Authorizers = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertAuthorizers(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Authorizers to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfAuthorizer(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.Authorizers[k], "Authorizers contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Authorizers
-- <p>Represents a collection of <a>Authorizer</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html">Enable custom authorization</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfAuthorizer] <p>Gets the current list of <a>Authorizer</a> resources in the collection.</p>
-- @return Authorizers structure as a key-value pair table
function M.Authorizers(args)
	assert(args, "You must provdide an argument table when creating Authorizers")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertAuthorizers(t)
	return t
end

keys.UsagePlanKeys = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertUsagePlanKeys(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsagePlanKeys to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfUsagePlanKey(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.UsagePlanKeys[k], "UsagePlanKeys contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsagePlanKeys
-- <p>Represents the collection of usage plan keys added to usage plans for the associated API keys and, possibly, other types of keys.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfUsagePlanKey] <p>Gets the current item of the usage plan keys collection.</p>
-- @return UsagePlanKeys structure as a key-value pair table
function M.UsagePlanKeys(args)
	assert(args, "You must provdide an argument table when creating UsagePlanKeys")
	local t = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertUsagePlanKeys(t)
	return t
end

keys.Model = { ["description"] = true, ["schema"] = true, ["contentType"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertModel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Model to be of type 'table'")
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["schema"] then asserts.AssertString(struct["schema"]) end
	if struct["contentType"] then asserts.AssertString(struct["contentType"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Model[k], "Model contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Model
-- <p>Represents the data structure of a method's request or response payload.</p> <div class="remarks"> <p>A request model defines the data structure of the client-supplied request payload. A response model defines the data structure of the response payload returned by the back end. Although not required, models are useful for mapping payloads between the front end and back end.</p> <p>A model is used for generating an API's SDK, validating the input request body, and creating a skeletal mapping template.</p> </div> <div class="seeAlso"> <a>Method</a>, <a>MethodResponse</a>, <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html">Models and Mappings</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [String] <p>The description of the model.</p>
-- * schema [String] <p>The schema for the model. For <code>application/json</code> models, this should be <a href="http://json-schema.org/documentation.html" target="_blank">JSON-schema draft v4</a> model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>
-- * contentType [String] <p>The content-type for the model.</p>
-- * id [String] <p>The identifier for the model resource.</p>
-- * name [String] <p>The name of the model.</p>
-- @return Model structure as a key-value pair table
function M.Model(args)
	assert(args, "You must provdide an argument table when creating Model")
	local t = { 
		["description"] = args["description"],
		["schema"] = args["schema"],
		["contentType"] = args["contentType"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertModel(t)
	return t
end

keys.UpdateMethodRequest = { ["resourceId"] = true, ["patchOperations"] = true, ["restApiId"] = true, ["httpMethod"] = true, nil }

function asserts.AssertUpdateMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateMethodRequest[k], "UpdateMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMethodRequest
-- <p>Request to update an existing <a>Method</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Method</a> resource.</p>
-- * httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return UpdateMethodRequest structure as a key-value pair table
function M.UpdateMethodRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateMethodRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["patchOperations"] = args["patchOperations"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertUpdateMethodRequest(t)
	return t
end

keys.NotFoundException = { ["message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return NotFoundException structure as a key-value pair table
function M.NotFoundException(args)
	assert(args, "You must provdide an argument table when creating NotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNotFoundException(t)
	return t
end

keys.GetRequestValidatorsRequest = { ["position"] = true, ["restApiId"] = true, ["limit"] = true, nil }

function asserts.AssertGetRequestValidatorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRequestValidatorsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRequestValidatorsRequest[k], "GetRequestValidatorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRequestValidatorsRequest
-- <p>Gets the <a>RequestValidators</a> collection of a given <a>RestApi</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * restApiId [String] <p>[Required] The identifier of a <a>RestApi</a> to which the <a>RequestValidators</a> collection belongs.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- Required key: restApiId
-- @return GetRequestValidatorsRequest structure as a key-value pair table
function M.GetRequestValidatorsRequest(args)
	assert(args, "You must provdide an argument table when creating GetRequestValidatorsRequest")
	local t = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetRequestValidatorsRequest(t)
	return t
end

keys.DeleteIntegrationResponseRequest = { ["resourceId"] = true, ["statusCode"] = true, ["restApiId"] = true, ["httpMethod"] = true, nil }

function asserts.AssertDeleteIntegrationResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIntegrationResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIntegrationResponseRequest[k], "DeleteIntegrationResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIntegrationResponseRequest
-- <p>Represents a delete integration response request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>Specifies a delete integration response request's resource identifier.</p>
-- * statusCode [StatusCode] <p>Specifies a delete integration response request's status code.</p>
-- * restApiId [String] <p>Specifies a delete integration response request's API identifier.</p>
-- * httpMethod [String] <p>Specifies a delete integration response request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return DeleteIntegrationResponseRequest structure as a key-value pair table
function M.DeleteIntegrationResponseRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteIntegrationResponseRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertDeleteIntegrationResponseRequest(t)
	return t
end

keys.IntegrationResponse = { ["contentHandling"] = true, ["responseParameters"] = true, ["selectionPattern"] = true, ["responseTemplates"] = true, ["statusCode"] = true, nil }

function asserts.AssertIntegrationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IntegrationResponse to be of type 'table'")
	if struct["contentHandling"] then asserts.AssertContentHandlingStrategy(struct["contentHandling"]) end
	if struct["responseParameters"] then asserts.AssertMapOfStringToString(struct["responseParameters"]) end
	if struct["selectionPattern"] then asserts.AssertString(struct["selectionPattern"]) end
	if struct["responseTemplates"] then asserts.AssertMapOfStringToString(struct["responseTemplates"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.IntegrationResponse[k], "IntegrationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IntegrationResponse
-- <p>Represents an integration response. The status code must map to an existing <a>MethodResponse</a>, and parameters and templates can be used to transform the back-end response.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * contentHandling [ContentHandlingStrategy] <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a response payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
-- * responseParameters [MapOfStringToString] <p>A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>
-- * selectionPattern [String] <p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\n</code>) character in such cases. If the back end is an AWS Lambda function, the AWS Lambda function error header is matched. For all other HTTP and AWS back ends, the HTTP status code is matched.</p>
-- * responseTemplates [MapOfStringToString] <p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
-- * statusCode [StatusCode] <p>Specifies the status code that is used to map the integration response to an existing <a>MethodResponse</a>.</p>
-- @return IntegrationResponse structure as a key-value pair table
function M.IntegrationResponse(args)
	assert(args, "You must provdide an argument table when creating IntegrationResponse")
	local t = { 
		["contentHandling"] = args["contentHandling"],
		["responseParameters"] = args["responseParameters"],
		["selectionPattern"] = args["selectionPattern"],
		["responseTemplates"] = args["responseTemplates"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertIntegrationResponse(t)
	return t
end

keys.GetBasePathMappingRequest = { ["basePath"] = true, ["domainName"] = true, nil }

function asserts.AssertGetBasePathMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBasePathMappingRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["basePath"], "Expected key basePath to exist in table")
	if struct["basePath"] then asserts.AssertString(struct["basePath"]) end
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBasePathMappingRequest[k], "GetBasePathMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBasePathMappingRequest
-- <p>Request to describe a <a>BasePathMapping</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * basePath [String] <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Leave this blank if you do not want callers to specify any base path name after the domain name.</p>
-- * domainName [String] <p>The domain name of the <a>BasePathMapping</a> resource to be described.</p>
-- Required key: domainName
-- Required key: basePath
-- @return GetBasePathMappingRequest structure as a key-value pair table
function M.GetBasePathMappingRequest(args)
	assert(args, "You must provdide an argument table when creating GetBasePathMappingRequest")
	local t = { 
		["basePath"] = args["basePath"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertGetBasePathMappingRequest(t)
	return t
end

keys.GetRequestValidatorRequest = { ["requestValidatorId"] = true, ["restApiId"] = true, nil }

function asserts.AssertGetRequestValidatorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRequestValidatorRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["requestValidatorId"], "Expected key requestValidatorId to exist in table")
	if struct["requestValidatorId"] then asserts.AssertString(struct["requestValidatorId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRequestValidatorRequest[k], "GetRequestValidatorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRequestValidatorRequest
-- <p>Gets a <a>RequestValidator</a> of a given <a>RestApi</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * requestValidatorId [String] <p>[Required] The identifier of the <a>RequestValidator</a> to be retrieved.</p>
-- * restApiId [String] <p>[Required] The identifier of the <a>RestApi</a> to which the specified <a>RequestValidator</a> belongs.</p>
-- Required key: restApiId
-- Required key: requestValidatorId
-- @return GetRequestValidatorRequest structure as a key-value pair table
function M.GetRequestValidatorRequest(args)
	assert(args, "You must provdide an argument table when creating GetRequestValidatorRequest")
	local t = { 
		["requestValidatorId"] = args["requestValidatorId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetRequestValidatorRequest(t)
	return t
end

keys.ClientCertificate = { ["pemEncodedCertificate"] = true, ["clientCertificateId"] = true, ["expirationDate"] = true, ["description"] = true, ["createdDate"] = true, nil }

function asserts.AssertClientCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientCertificate to be of type 'table'")
	if struct["pemEncodedCertificate"] then asserts.AssertString(struct["pemEncodedCertificate"]) end
	if struct["clientCertificateId"] then asserts.AssertString(struct["clientCertificateId"]) end
	if struct["expirationDate"] then asserts.AssertTimestamp(struct["expirationDate"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClientCertificate[k], "ClientCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientCertificate
-- <p>Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.</p> <div class="remarks">Client certificates are used authenticate an API by the back-end server. To authenticate an API client (or user), use a custom <a>Authorizer</a>.</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html">Use Client-Side Certificate</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pemEncodedCertificate [String] <p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>
-- * clientCertificateId [String] <p>The identifier of the client certificate.</p>
-- * expirationDate [Timestamp] <p>The timestamp when the client certificate will expire.</p>
-- * description [String] <p>The description of the client certificate.</p>
-- * createdDate [Timestamp] <p>The timestamp when the client certificate was created.</p>
-- @return ClientCertificate structure as a key-value pair table
function M.ClientCertificate(args)
	assert(args, "You must provdide an argument table when creating ClientCertificate")
	local t = { 
		["pemEncodedCertificate"] = args["pemEncodedCertificate"],
		["clientCertificateId"] = args["clientCertificateId"],
		["expirationDate"] = args["expirationDate"],
		["description"] = args["description"],
		["createdDate"] = args["createdDate"],
	}
	asserts.AssertClientCertificate(t)
	return t
end

keys.CreateUsagePlanKeyRequest = { ["keyType"] = true, ["keyId"] = true, ["usagePlanId"] = true, nil }

function asserts.AssertCreateUsagePlanKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUsagePlanKeyRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	assert(struct["keyId"], "Expected key keyId to exist in table")
	assert(struct["keyType"], "Expected key keyType to exist in table")
	if struct["keyType"] then asserts.AssertString(struct["keyType"]) end
	if struct["keyId"] then asserts.AssertString(struct["keyId"]) end
	if struct["usagePlanId"] then asserts.AssertString(struct["usagePlanId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUsagePlanKeyRequest[k], "CreateUsagePlanKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUsagePlanKeyRequest
-- <p>The POST request to create a usage plan key for adding an existing API key to a usage plan.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * keyType [String] <p>The type of a <a>UsagePlanKey</a> resource for a plan customer.</p>
-- * keyId [String] <p>The identifier of a <a>UsagePlanKey</a> resource for a plan customer.</p>
-- * usagePlanId [String] <p>The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-created <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- Required key: usagePlanId
-- Required key: keyId
-- Required key: keyType
-- @return CreateUsagePlanKeyRequest structure as a key-value pair table
function M.CreateUsagePlanKeyRequest(args)
	assert(args, "You must provdide an argument table when creating CreateUsagePlanKeyRequest")
	local t = { 
		["keyType"] = args["keyType"],
		["keyId"] = args["keyId"],
		["usagePlanId"] = args["usagePlanId"],
	}
	asserts.AssertCreateUsagePlanKeyRequest(t)
	return t
end

keys.GetIntegrationResponseRequest = { ["resourceId"] = true, ["statusCode"] = true, ["restApiId"] = true, ["httpMethod"] = true, nil }

function asserts.AssertGetIntegrationResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntegrationResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then asserts.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIntegrationResponseRequest[k], "GetIntegrationResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntegrationResponseRequest
-- <p>Represents a get integration response request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>Specifies a get integration response request's resource identifier.</p>
-- * statusCode [StatusCode] <p>Specifies a get integration response request's status code.</p>
-- * restApiId [String] <p>Specifies a get integration response request's API identifier.</p>
-- * httpMethod [String] <p>Specifies a get integration response request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return GetIntegrationResponseRequest structure as a key-value pair table
function M.GetIntegrationResponseRequest(args)
	assert(args, "You must provdide an argument table when creating GetIntegrationResponseRequest")
	local t = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertGetIntegrationResponseRequest(t)
	return t
end

keys.UpdateDocumentationPartRequest = { ["documentationPartId"] = true, ["restApiId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateDocumentationPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentationPartRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationPartId"], "Expected key documentationPartId to exist in table")
	if struct["documentationPartId"] then asserts.AssertString(struct["documentationPartId"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDocumentationPartRequest[k], "UpdateDocumentationPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentationPartRequest
-- <p>Updates an existing documentation part of a given API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * documentationPartId [String] <p>[Required] The identifier of the to-be-updated documentation part.</p>
-- * restApiId [String] <p>[Required] The identifier of an API of the to-be-updated documentation part.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: documentationPartId
-- @return UpdateDocumentationPartRequest structure as a key-value pair table
function M.UpdateDocumentationPartRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateDocumentationPartRequest")
	local t = { 
		["documentationPartId"] = args["documentationPartId"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateDocumentationPartRequest(t)
	return t
end

keys.GetUsagePlanKeysRequest = { ["position"] = true, ["nameQuery"] = true, ["usagePlanId"] = true, ["limit"] = true, nil }

function asserts.AssertGetUsagePlanKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUsagePlanKeysRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["nameQuery"] then asserts.AssertString(struct["nameQuery"]) end
	if struct["usagePlanId"] then asserts.AssertString(struct["usagePlanId"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUsagePlanKeysRequest[k], "GetUsagePlanKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUsagePlanKeysRequest
-- <p>The GET request to get all the usage plan keys representing the API keys added to a specified usage plan.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * nameQuery [String] <p>A query parameter specifying the name of the to-be-returned usage plan keys.</p>
-- * usagePlanId [String] <p>The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-retrieved <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- Required key: usagePlanId
-- @return GetUsagePlanKeysRequest structure as a key-value pair table
function M.GetUsagePlanKeysRequest(args)
	assert(args, "You must provdide an argument table when creating GetUsagePlanKeysRequest")
	local t = { 
		["position"] = args["position"],
		["nameQuery"] = args["nameQuery"],
		["usagePlanId"] = args["usagePlanId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetUsagePlanKeysRequest(t)
	return t
end

keys.DocumentationPartLocation = { ["path"] = true, ["type"] = true, ["method"] = true, ["name"] = true, ["statusCode"] = true, nil }

function asserts.AssertDocumentationPartLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationPartLocation to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["path"] then asserts.AssertString(struct["path"]) end
	if struct["type"] then asserts.AssertDocumentationPartType(struct["type"]) end
	if struct["method"] then asserts.AssertString(struct["method"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["statusCode"] then asserts.AssertDocumentationPartLocationStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentationPartLocation[k], "DocumentationPartLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationPartLocation
-- <p>Specifies the target API entity to which the documentation applies.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * path [String] <p>The URL path of the target. It is a valid field for the API entity types of <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>/</code> for the root resource. When an applicable child entity inherits the content of another entity of the same type with more general specifications of the other <code>location</code> attributes, the child entity's <code>path</code> attribute must match that of the parent entity as a prefix.</p>
-- * type [DocumentationPartType] <p>The type of API entity to which the documentation content applies. It is a valid and required field for API entity types of <code>API</code>, <code>AUTHORIZER</code>, <code>MODEL</code>, <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. Content inheritance does not apply to any entity of the <code>API</code>, <code>AUTHROZER</code>, <code>METHOD</code>, <code>MODEL</code>, <code>REQUEST_BODY</code>, or <code>RESOURCE</code> type.</p>
-- * method [String] <p>The HTTP verb of a method. It is a valid field for the API entity types of <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>*</code> for any method. When an applicable child entity inherits the content of an entity of the same type with more general specifications of the other <code>location</code> attributes, the child entity's <code>method</code> attribute must match that of the parent entity exactly.</p>
-- * name [String] <p>The name of the targeted API entity. It is a valid and required field for the API entity types of <code>AUTHORIZER</code>, <code>MODEL</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code> and <code>RESPONSE_HEADER</code>. It is an invalid field for any other entity type.</p>
-- * statusCode [DocumentationPartLocationStatusCode] <p>The HTTP status code of a response. It is a valid field for the API entity types of <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>*</code> for any status code. When an applicable child entity inherits the content of an entity of the same type with more general specifications of the other <code>location</code> attributes, the child entity's <code>statusCode</code> attribute must match that of the parent entity exactly.</p>
-- Required key: type
-- @return DocumentationPartLocation structure as a key-value pair table
function M.DocumentationPartLocation(args)
	assert(args, "You must provdide an argument table when creating DocumentationPartLocation")
	local t = { 
		["path"] = args["path"],
		["type"] = args["type"],
		["method"] = args["method"],
		["name"] = args["name"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertDocumentationPartLocation(t)
	return t
end

keys.UpdateDocumentationVersionRequest = { ["restApiId"] = true, ["documentationVersion"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateDocumentationVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentationVersionRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationVersion"], "Expected key documentationVersion to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["documentationVersion"] then asserts.AssertString(struct["documentationVersion"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDocumentationVersionRequest[k], "UpdateDocumentationVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentationVersionRequest
-- <p>Updates an existing documentation version of an API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] The identifier of an API of the to-be-updated documentation version.</p>
-- * documentationVersion [String] <p>[Required] The version identifier of the to-be-updated documentation version.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: documentationVersion
-- @return UpdateDocumentationVersionRequest structure as a key-value pair table
function M.UpdateDocumentationVersionRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateDocumentationVersionRequest")
	local t = { 
		["restApiId"] = args["restApiId"],
		["documentationVersion"] = args["documentationVersion"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateDocumentationVersionRequest(t)
	return t
end

keys.ExportResponse = { ["body"] = true, ["contentType"] = true, ["contentDisposition"] = true, nil }

function asserts.AssertExportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportResponse to be of type 'table'")
	if struct["body"] then asserts.AssertBlob(struct["body"]) end
	if struct["contentType"] then asserts.AssertString(struct["contentType"]) end
	if struct["contentDisposition"] then asserts.AssertString(struct["contentDisposition"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportResponse[k], "ExportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportResponse
-- <p>The binary blob response to <a>GetExport</a>, which contains the generated SDK.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Blob] <p>The binary blob response to <a>GetExport</a>, which contains the export.</p>
-- * contentType [String] <p>The content-type header value in the HTTP response. This will correspond to a valid 'accept' type in the request.</p>
-- * contentDisposition [String] <p>The content-disposition header value in the HTTP response.</p>
-- @return ExportResponse structure as a key-value pair table
function M.ExportResponse(args)
	assert(args, "You must provdide an argument table when creating ExportResponse")
	local t = { 
		["body"] = args["body"],
		["contentType"] = args["contentType"],
		["contentDisposition"] = args["contentDisposition"],
	}
	asserts.AssertExportResponse(t)
	return t
end

keys.CreateApiKeyRequest = { ["name"] = true, ["enabled"] = true, ["value"] = true, ["stageKeys"] = true, ["generateDistinctId"] = true, ["customerId"] = true, ["description"] = true, nil }

function asserts.AssertCreateApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApiKeyRequest to be of type 'table'")
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["enabled"] then asserts.AssertBoolean(struct["enabled"]) end
	if struct["value"] then asserts.AssertString(struct["value"]) end
	if struct["stageKeys"] then asserts.AssertListOfStageKeys(struct["stageKeys"]) end
	if struct["generateDistinctId"] then asserts.AssertBoolean(struct["generateDistinctId"]) end
	if struct["customerId"] then asserts.AssertString(struct["customerId"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApiKeyRequest[k], "CreateApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApiKeyRequest
-- <p>Request to create an <a>ApiKey</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [String] <p>The name of the <a>ApiKey</a>.</p>
-- * enabled [Boolean] <p>Specifies whether the <a>ApiKey</a> can be used by callers.</p>
-- * value [String] <p>Specifies a value of the API key.</p>
-- * stageKeys [ListOfStageKeys] <p>DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.</p>
-- * generateDistinctId [Boolean] <p>Specifies whether (<code>true</code>) or not (<code>false</code>) the key identifier is distinct from the created API key value.</p>
-- * customerId [String] <p>An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.</p>
-- * description [String] <p>The description of the <a>ApiKey</a>.</p>
-- @return CreateApiKeyRequest structure as a key-value pair table
function M.CreateApiKeyRequest(args)
	assert(args, "You must provdide an argument table when creating CreateApiKeyRequest")
	local t = { 
		["name"] = args["name"],
		["enabled"] = args["enabled"],
		["value"] = args["value"],
		["stageKeys"] = args["stageKeys"],
		["generateDistinctId"] = args["generateDistinctId"],
		["customerId"] = args["customerId"],
		["description"] = args["description"],
	}
	asserts.AssertCreateApiKeyRequest(t)
	return t
end

function asserts.AssertDocumentationPartLocationStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentationPartLocationStatusCode to be of type 'string'")
end

--  
function M.DocumentationPartLocationStatusCode(str)
	asserts.AssertDocumentationPartLocationStatusCode(str)
	return str
end

function asserts.AssertIntegrationType(str)
	assert(str)
	assert(type(str) == "string", "Expected IntegrationType to be of type 'string'")
end

-- <p>The integration type. The valid value is <code>HTTP</code> for integrating with an HTTP back end, <code>AWS</code> for any AWS service endpoints, <code>MOCK</code> for testing without actually invoking the back end, <code>HTTP_PROXY</code> for integrating with the HTTP proxy integration, or <code>AWS_PROXY</code> for integrating with the Lambda proxy integration type.</p>
function M.IntegrationType(str)
	asserts.AssertIntegrationType(str)
	return str
end

function asserts.AssertOp(str)
	assert(str)
	assert(type(str) == "string", "Expected Op to be of type 'string'")
end

--  
function M.Op(str)
	asserts.AssertOp(str)
	return str
end

function asserts.AssertUnauthorizedCacheControlHeaderStrategy(str)
	assert(str)
	assert(type(str) == "string", "Expected UnauthorizedCacheControlHeaderStrategy to be of type 'string'")
end

--  
function M.UnauthorizedCacheControlHeaderStrategy(str)
	asserts.AssertUnauthorizedCacheControlHeaderStrategy(str)
	return str
end

function asserts.AssertQuotaPeriodType(str)
	assert(str)
	assert(type(str) == "string", "Expected QuotaPeriodType to be of type 'string'")
end

--  
function M.QuotaPeriodType(str)
	asserts.AssertQuotaPeriodType(str)
	return str
end

function asserts.AssertAuthorizerType(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthorizerType to be of type 'string'")
end

-- <p>The authorizer type. the current value is <code>TOKEN</code> for a Lambda function or <code>COGNITO_USER_POOLS</code> for an Amazon Cognito Your User Pool.</p>
function M.AuthorizerType(str)
	asserts.AssertAuthorizerType(str)
	return str
end

function asserts.AssertCacheClusterStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CacheClusterStatus to be of type 'string'")
end

-- <p>Returns the status of the <b>CacheCluster</b>.</p>
function M.CacheClusterStatus(str)
	asserts.AssertCacheClusterStatus(str)
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

function asserts.AssertDocumentationPartType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentationPartType to be of type 'string'")
end

--  
function M.DocumentationPartType(str)
	asserts.AssertDocumentationPartType(str)
	return str
end

function asserts.AssertProviderARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderARN to be of type 'string'")
end

--  
function M.ProviderARN(str)
	asserts.AssertProviderARN(str)
	return str
end

function asserts.AssertStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusCode to be of type 'string'")
end

-- <p>The status code.</p>
function M.StatusCode(str)
	asserts.AssertStatusCode(str)
	return str
end

function asserts.AssertApiKeysFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected ApiKeysFormat to be of type 'string'")
end

--  
function M.ApiKeysFormat(str)
	asserts.AssertApiKeysFormat(str)
	return str
end

function asserts.AssertPutMode(str)
	assert(str)
	assert(type(str) == "string", "Expected PutMode to be of type 'string'")
end

--  
function M.PutMode(str)
	asserts.AssertPutMode(str)
	return str
end

function asserts.AssertCacheClusterSize(str)
	assert(str)
	assert(type(str) == "string", "Expected CacheClusterSize to be of type 'string'")
end

-- <p>Returns the size of the <b>CacheCluster</b>.</p>
function M.CacheClusterSize(str)
	asserts.AssertCacheClusterSize(str)
	return str
end

function asserts.AssertContentHandlingStrategy(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentHandlingStrategy to be of type 'string'")
end

--  
function M.ContentHandlingStrategy(str)
	asserts.AssertContentHandlingStrategy(str)
	return str
end

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
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

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertNullableInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NullableInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NullableInteger(integer)
	asserts.AssertNullableInteger(integer)
	return integer
end

function asserts.AssertNullableBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullableBoolean to be of type 'boolean'")
end

function M.NullableBoolean(boolean)
	asserts.AssertNullableBoolean(boolean)
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

function asserts.AssertMapOfStringToList(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToList to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertListOfString(v)
	end
end

function M.MapOfStringToList(map)
	asserts.AssertMapOfStringToList(map)
	return map
end

function asserts.AssertMapOfIntegrationResponse(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfIntegrationResponse to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertIntegrationResponse(v)
	end
end

function M.MapOfIntegrationResponse(map)
	asserts.AssertMapOfIntegrationResponse(map)
	return map
end

function asserts.AssertMapOfMethodResponse(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMethodResponse to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertMethodResponse(v)
	end
end

function M.MapOfMethodResponse(map)
	asserts.AssertMapOfMethodResponse(map)
	return map
end

function asserts.AssertMapOfKeyUsages(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfKeyUsages to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertListOfUsage(v)
	end
end

function M.MapOfKeyUsages(map)
	asserts.AssertMapOfKeyUsages(map)
	return map
end

function asserts.AssertMapOfHeaderValues(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfHeaderValues to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.MapOfHeaderValues(map)
	asserts.AssertMapOfHeaderValues(map)
	return map
end

function asserts.AssertPathToMapOfMethodSnapshot(map)
	assert(map)
	assert(type(map) == "table", "Expected PathToMapOfMethodSnapshot to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertMapOfMethodSnapshot(v)
	end
end

function M.PathToMapOfMethodSnapshot(map)
	asserts.AssertPathToMapOfMethodSnapshot(map)
	return map
end

function asserts.AssertMapOfMethodSnapshot(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMethodSnapshot to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertMethodSnapshot(v)
	end
end

function M.MapOfMethodSnapshot(map)
	asserts.AssertMapOfMethodSnapshot(map)
	return map
end

function asserts.AssertMapOfMethodSettings(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMethodSettings to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertMethodSetting(v)
	end
end

function M.MapOfMethodSettings(map)
	asserts.AssertMapOfMethodSettings(map)
	return map
end

function asserts.AssertMapOfStringToString(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToString to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.MapOfStringToString(map)
	asserts.AssertMapOfStringToString(map)
	return map
end

function asserts.AssertMapOfMethod(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMethod to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertMethod(v)
	end
end

function M.MapOfMethod(map)
	asserts.AssertMapOfMethod(map)
	return map
end

function asserts.AssertMapOfStringToBoolean(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToBoolean to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertNullableBoolean(v)
	end
end

function M.MapOfStringToBoolean(map)
	asserts.AssertMapOfStringToBoolean(map)
	return map
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Blob to be of type 'string'")
end

function M.Blob(blob)
	asserts.AssertBlob(blob)
	return blob
end

function asserts.AssertListOfModel(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfModel to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertModel(v)
	end
end

--  
-- List of Model objects
function M.ListOfModel(list)
	asserts.AssertListOfModel(list)
	return list
end

function asserts.AssertListOfApiStage(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfApiStage to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApiStage(v)
	end
end

--  
-- List of ApiStage objects
function M.ListOfApiStage(list)
	asserts.AssertListOfApiStage(list)
	return list
end

function asserts.AssertListOfDeployment(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDeployment to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeployment(v)
	end
end

--  
-- List of Deployment objects
function M.ListOfDeployment(list)
	asserts.AssertListOfDeployment(list)
	return list
end

function asserts.AssertListOfSdkType(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSdkType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSdkType(v)
	end
end

--  
-- List of SdkType objects
function M.ListOfSdkType(list)
	asserts.AssertListOfSdkType(list)
	return list
end

function asserts.AssertListOfUsagePlan(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfUsagePlan to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUsagePlan(v)
	end
end

--  
-- List of UsagePlan objects
function M.ListOfUsagePlan(list)
	asserts.AssertListOfUsagePlan(list)
	return list
end

function asserts.AssertListOfDocumentationVersion(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDocumentationVersion to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDocumentationVersion(v)
	end
end

--  
-- List of DocumentationVersion objects
function M.ListOfDocumentationVersion(list)
	asserts.AssertListOfDocumentationVersion(list)
	return list
end

function asserts.AssertListOfBasePathMapping(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfBasePathMapping to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBasePathMapping(v)
	end
end

--  
-- List of BasePathMapping objects
function M.ListOfBasePathMapping(list)
	asserts.AssertListOfBasePathMapping(list)
	return list
end

function asserts.AssertListOfClientCertificate(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfClientCertificate to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClientCertificate(v)
	end
end

--  
-- List of ClientCertificate objects
function M.ListOfClientCertificate(list)
	asserts.AssertListOfClientCertificate(list)
	return list
end

function asserts.AssertListOfLong(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfLong to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLong(v)
	end
end

--  
-- List of Long objects
function M.ListOfLong(list)
	asserts.AssertListOfLong(list)
	return list
end

function asserts.AssertListOfApiKey(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfApiKey to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApiKey(v)
	end
end

--  
-- List of ApiKey objects
function M.ListOfApiKey(list)
	asserts.AssertListOfApiKey(list)
	return list
end

function asserts.AssertListOfUsagePlanKey(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfUsagePlanKey to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUsagePlanKey(v)
	end
end

--  
-- List of UsagePlanKey objects
function M.ListOfUsagePlanKey(list)
	asserts.AssertListOfUsagePlanKey(list)
	return list
end

function asserts.AssertListOfRestApi(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfRestApi to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRestApi(v)
	end
end

--  
-- List of RestApi objects
function M.ListOfRestApi(list)
	asserts.AssertListOfRestApi(list)
	return list
end

function asserts.AssertListOfString(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfString to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ListOfString(list)
	asserts.AssertListOfString(list)
	return list
end

function asserts.AssertListOfStageKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfStageKeys to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStageKey(v)
	end
end

--  
-- List of StageKey objects
function M.ListOfStageKeys(list)
	asserts.AssertListOfStageKeys(list)
	return list
end

function asserts.AssertListOfResource(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfResource to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResource(v)
	end
end

--  
-- List of Resource objects
function M.ListOfResource(list)
	asserts.AssertListOfResource(list)
	return list
end

function asserts.AssertListOfRequestValidator(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfRequestValidator to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRequestValidator(v)
	end
end

--  
-- List of RequestValidator objects
function M.ListOfRequestValidator(list)
	asserts.AssertListOfRequestValidator(list)
	return list
end

function asserts.AssertListOfDomainName(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDomainName to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainName(v)
	end
end

--  
-- List of DomainName objects
function M.ListOfDomainName(list)
	asserts.AssertListOfDomainName(list)
	return list
end

function asserts.AssertListOfSdkConfigurationProperty(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSdkConfigurationProperty to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSdkConfigurationProperty(v)
	end
end

--  
-- List of SdkConfigurationProperty objects
function M.ListOfSdkConfigurationProperty(list)
	asserts.AssertListOfSdkConfigurationProperty(list)
	return list
end

function asserts.AssertListOfDocumentationPart(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDocumentationPart to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDocumentationPart(v)
	end
end

--  
-- List of DocumentationPart objects
function M.ListOfDocumentationPart(list)
	asserts.AssertListOfDocumentationPart(list)
	return list
end

function asserts.AssertListOfUsage(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfUsage to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertListOfLong(v)
	end
end

--  
-- List of ListOfLong objects
function M.ListOfUsage(list)
	asserts.AssertListOfUsage(list)
	return list
end

function asserts.AssertListOfAuthorizer(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfAuthorizer to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAuthorizer(v)
	end
end

--  
-- List of Authorizer objects
function M.ListOfAuthorizer(list)
	asserts.AssertListOfAuthorizer(list)
	return list
end

function asserts.AssertListOfStage(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfStage to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStage(v)
	end
end

--  
-- List of Stage objects
function M.ListOfStage(list)
	asserts.AssertListOfStage(list)
	return list
end

function asserts.AssertListOfARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfARNs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProviderARN(v)
	end
end

--  
-- List of ProviderARN objects
function M.ListOfARNs(list)
	asserts.AssertListOfARNs(list)
	return list
end

function asserts.AssertListOfPatchOperation(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfPatchOperation to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPatchOperation(v)
	end
end

-- A list of operations describing the updates to apply to the specified resource. The patches are applied in the order specified in the list.
-- List of PatchOperation objects
function M.ListOfPatchOperation(list)
	asserts.AssertListOfPatchOperation(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "apigateway.amazonaws.com"
		end
	end
	local ss = { "apigateway" }
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
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call ImportDocumentationParts asynchronously, invoking a callback when done
-- @param ImportDocumentationPartsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportDocumentationPartsAsync(ImportDocumentationPartsRequest, cb)
	assert(ImportDocumentationPartsRequest, "You must provide a ImportDocumentationPartsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ImportDocumentationParts",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/parts", ImportDocumentationPartsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportDocumentationParts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportDocumentationPartsRequest
-- @return response
-- @return error_message
function M.ImportDocumentationPartsSync(ImportDocumentationPartsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportDocumentationPartsAsync(ImportDocumentationPartsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAuthorizer asynchronously, invoking a callback when done
-- @param DeleteAuthorizerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAuthorizerAsync(DeleteAuthorizerRequest, cb)
	assert(DeleteAuthorizerRequest, "You must provide a DeleteAuthorizerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAuthorizer",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/authorizers/{authorizer_id}", DeleteAuthorizerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAuthorizer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAuthorizerRequest
-- @return response
-- @return error_message
function M.DeleteAuthorizerSync(DeleteAuthorizerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAuthorizerAsync(DeleteAuthorizerRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateModel asynchronously, invoking a callback when done
-- @param UpdateModelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateModelAsync(UpdateModelRequest, cb)
	assert(UpdateModelRequest, "You must provide a UpdateModelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateModel",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/models/{model_name}", UpdateModelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateModelRequest
-- @return response
-- @return error_message
function M.UpdateModelSync(UpdateModelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateModelAsync(UpdateModelRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDeployment asynchronously, invoking a callback when done
-- @param CreateDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentAsync(CreateDeploymentRequest, cb)
	assert(CreateDeploymentRequest, "You must provide a CreateDeploymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/deployments", CreateDeploymentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeploymentRequest
-- @return response
-- @return error_message
function M.CreateDeploymentSync(CreateDeploymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeploymentAsync(CreateDeploymentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRestApi asynchronously, invoking a callback when done
-- @param GetRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRestApiAsync(GetRestApiRequest, cb)
	assert(GetRestApiRequest, "You must provide a GetRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}", GetRestApiRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRestApi synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRestApiRequest
-- @return response
-- @return error_message
function M.GetRestApiSync(GetRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRestApiAsync(GetRestApiRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRequestValidator asynchronously, invoking a callback when done
-- @param UpdateRequestValidatorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRequestValidatorAsync(UpdateRequestValidatorRequest, cb)
	assert(UpdateRequestValidatorRequest, "You must provide a UpdateRequestValidatorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateRequestValidator",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", UpdateRequestValidatorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRequestValidator synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRequestValidatorRequest
-- @return response
-- @return error_message
function M.UpdateRequestValidatorSync(UpdateRequestValidatorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRequestValidatorAsync(UpdateRequestValidatorRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClientCertificate asynchronously, invoking a callback when done
-- @param DeleteClientCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClientCertificateAsync(DeleteClientCertificateRequest, cb)
	assert(DeleteClientCertificateRequest, "You must provide a DeleteClientCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/clientcertificates/{clientcertificate_id}", DeleteClientCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteClientCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteClientCertificateRequest
-- @return response
-- @return error_message
function M.DeleteClientCertificateSync(DeleteClientCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClientCertificateAsync(DeleteClientCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAuthorizer asynchronously, invoking a callback when done
-- @param GetAuthorizerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAuthorizerAsync(GetAuthorizerRequest, cb)
	assert(GetAuthorizerRequest, "You must provide a GetAuthorizerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAuthorizer",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/authorizers/{authorizer_id}", GetAuthorizerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAuthorizer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAuthorizerRequest
-- @return response
-- @return error_message
function M.GetAuthorizerSync(GetAuthorizerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAuthorizerAsync(GetAuthorizerRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetModels asynchronously, invoking a callback when done
-- @param GetModelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetModelsAsync(GetModelsRequest, cb)
	assert(GetModelsRequest, "You must provide a GetModelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetModels",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/models", GetModelsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetModels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetModelsRequest
-- @return response
-- @return error_message
function M.GetModelsSync(GetModelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetModelsAsync(GetModelsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GenerateClientCertificate asynchronously, invoking a callback when done
-- @param GenerateClientCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateClientCertificateAsync(GenerateClientCertificateRequest, cb)
	assert(GenerateClientCertificateRequest, "You must provide a GenerateClientCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GenerateClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/clientcertificates", GenerateClientCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GenerateClientCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GenerateClientCertificateRequest
-- @return response
-- @return error_message
function M.GenerateClientCertificateSync(GenerateClientCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GenerateClientCertificateAsync(GenerateClientCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRestApi asynchronously, invoking a callback when done
-- @param DeleteRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRestApiAsync(DeleteRestApiRequest, cb)
	assert(DeleteRestApiRequest, "You must provide a DeleteRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}", DeleteRestApiRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRestApi synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRestApiRequest
-- @return response
-- @return error_message
function M.DeleteRestApiSync(DeleteRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRestApiAsync(DeleteRestApiRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMethod asynchronously, invoking a callback when done
-- @param GetMethodRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetMethodAsync(GetMethodRequest, cb)
	assert(GetMethodRequest, "You must provide a GetMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMethod",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", GetMethodRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMethod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMethodRequest
-- @return response
-- @return error_message
function M.GetMethodSync(GetMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMethodAsync(GetMethodRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSdkTypes asynchronously, invoking a callback when done
-- @param GetSdkTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSdkTypesAsync(GetSdkTypesRequest, cb)
	assert(GetSdkTypesRequest, "You must provide a GetSdkTypesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSdkTypes",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/sdktypes", GetSdkTypesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSdkTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSdkTypesRequest
-- @return response
-- @return error_message
function M.GetSdkTypesSync(GetSdkTypesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSdkTypesAsync(GetSdkTypesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDocumentationVersion asynchronously, invoking a callback when done
-- @param UpdateDocumentationVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDocumentationVersionAsync(UpdateDocumentationVersionRequest, cb)
	assert(UpdateDocumentationVersionRequest, "You must provide a UpdateDocumentationVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDocumentationVersion",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/versions/{doc_version}", UpdateDocumentationVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDocumentationVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDocumentationVersionRequest
-- @return response
-- @return error_message
function M.UpdateDocumentationVersionSync(UpdateDocumentationVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDocumentationVersionAsync(UpdateDocumentationVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateModel asynchronously, invoking a callback when done
-- @param CreateModelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateModelAsync(CreateModelRequest, cb)
	assert(CreateModelRequest, "You must provide a CreateModelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateModel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/models", CreateModelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateModelRequest
-- @return response
-- @return error_message
function M.CreateModelSync(CreateModelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateModelAsync(CreateModelRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call FlushStageCache asynchronously, invoking a callback when done
-- @param FlushStageCacheRequest
-- @param cb Callback function accepting two args: response, error_message
function M.FlushStageCacheAsync(FlushStageCacheRequest, cb)
	assert(FlushStageCacheRequest, "You must provide a FlushStageCacheRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".FlushStageCache",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/stages/{stage_name}/cache/data", FlushStageCacheRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call FlushStageCache synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param FlushStageCacheRequest
-- @return response
-- @return error_message
function M.FlushStageCacheSync(FlushStageCacheRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.FlushStageCacheAsync(FlushStageCacheRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUsagePlanKey asynchronously, invoking a callback when done
-- @param CreateUsagePlanKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUsagePlanKeyAsync(CreateUsagePlanKeyRequest, cb)
	assert(CreateUsagePlanKeyRequest, "You must provide a CreateUsagePlanKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateUsagePlanKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/usageplans/{usageplanId}/keys", CreateUsagePlanKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUsagePlanKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUsagePlanKeyRequest
-- @return response
-- @return error_message
function M.CreateUsagePlanKeySync(CreateUsagePlanKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUsagePlanKeyAsync(CreateUsagePlanKeyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUsagePlanKey asynchronously, invoking a callback when done
-- @param GetUsagePlanKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUsagePlanKeyAsync(GetUsagePlanKeyRequest, cb)
	assert(GetUsagePlanKeyRequest, "You must provide a GetUsagePlanKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUsagePlanKey",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/usageplans/{usageplanId}/keys/{keyId}", GetUsagePlanKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUsagePlanKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUsagePlanKeyRequest
-- @return response
-- @return error_message
function M.GetUsagePlanKeySync(GetUsagePlanKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUsagePlanKeyAsync(GetUsagePlanKeyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIntegration asynchronously, invoking a callback when done
-- @param DeleteIntegrationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIntegrationAsync(DeleteIntegrationRequest, cb)
	assert(DeleteIntegrationRequest, "You must provide a DeleteIntegrationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteIntegration",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", DeleteIntegrationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIntegration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIntegrationRequest
-- @return response
-- @return error_message
function M.DeleteIntegrationSync(DeleteIntegrationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIntegrationAsync(DeleteIntegrationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMethodResponse asynchronously, invoking a callback when done
-- @param GetMethodResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetMethodResponseAsync(GetMethodResponseRequest, cb)
	assert(GetMethodResponseRequest, "You must provide a GetMethodResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMethodResponse",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", GetMethodResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMethodResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMethodResponseRequest
-- @return response
-- @return error_message
function M.GetMethodResponseSync(GetMethodResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMethodResponseAsync(GetMethodResponseRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutMethodResponse asynchronously, invoking a callback when done
-- @param PutMethodResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutMethodResponseAsync(PutMethodResponseRequest, cb)
	assert(PutMethodResponseRequest, "You must provide a PutMethodResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutMethodResponse",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", PutMethodResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutMethodResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutMethodResponseRequest
-- @return response
-- @return error_message
function M.PutMethodResponseSync(PutMethodResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutMethodResponseAsync(PutMethodResponseRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteModel asynchronously, invoking a callback when done
-- @param DeleteModelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteModelAsync(DeleteModelRequest, cb)
	assert(DeleteModelRequest, "You must provide a DeleteModelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteModel",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/models/{model_name}", DeleteModelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteModelRequest
-- @return response
-- @return error_message
function M.DeleteModelSync(DeleteModelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteModelAsync(DeleteModelRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStage asynchronously, invoking a callback when done
-- @param GetStageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStageAsync(GetStageRequest, cb)
	assert(GetStageRequest, "You must provide a GetStageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetStage",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/stages/{stage_name}", GetStageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetStage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetStageRequest
-- @return response
-- @return error_message
function M.GetStageSync(GetStageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStageAsync(GetStageRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStages asynchronously, invoking a callback when done
-- @param GetStagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStagesAsync(GetStagesRequest, cb)
	assert(GetStagesRequest, "You must provide a GetStagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetStages",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/stages", GetStagesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetStages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetStagesRequest
-- @return response
-- @return error_message
function M.GetStagesSync(GetStagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStagesAsync(GetStagesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDocumentationVersion asynchronously, invoking a callback when done
-- @param DeleteDocumentationVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDocumentationVersionAsync(DeleteDocumentationVersionRequest, cb)
	assert(DeleteDocumentationVersionRequest, "You must provide a DeleteDocumentationVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDocumentationVersion",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/versions/{doc_version}", DeleteDocumentationVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDocumentationVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDocumentationVersionRequest
-- @return response
-- @return error_message
function M.DeleteDocumentationVersionSync(DeleteDocumentationVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDocumentationVersionAsync(DeleteDocumentationVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateIntegration asynchronously, invoking a callback when done
-- @param UpdateIntegrationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateIntegrationAsync(UpdateIntegrationRequest, cb)
	assert(UpdateIntegrationRequest, "You must provide a UpdateIntegrationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateIntegration",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", UpdateIntegrationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateIntegration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateIntegrationRequest
-- @return response
-- @return error_message
function M.UpdateIntegrationSync(UpdateIntegrationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateIntegrationAsync(UpdateIntegrationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUsagePlan asynchronously, invoking a callback when done
-- @param DeleteUsagePlanRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUsagePlanAsync(DeleteUsagePlanRequest, cb)
	assert(DeleteUsagePlanRequest, "You must provide a DeleteUsagePlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUsagePlan",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/usageplans/{usageplanId}", DeleteUsagePlanRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUsagePlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUsagePlanRequest
-- @return response
-- @return error_message
function M.DeleteUsagePlanSync(DeleteUsagePlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUsagePlanAsync(DeleteUsagePlanRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDomainNames asynchronously, invoking a callback when done
-- @param GetDomainNamesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDomainNamesAsync(GetDomainNamesRequest, cb)
	assert(GetDomainNamesRequest, "You must provide a GetDomainNamesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDomainNames",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/domainnames", GetDomainNamesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDomainNames synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDomainNamesRequest
-- @return response
-- @return error_message
function M.GetDomainNamesSync(GetDomainNamesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainNamesAsync(GetDomainNamesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDocumentationPart asynchronously, invoking a callback when done
-- @param UpdateDocumentationPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDocumentationPartAsync(UpdateDocumentationPartRequest, cb)
	assert(UpdateDocumentationPartRequest, "You must provide a UpdateDocumentationPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDocumentationPart",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/parts/{part_id}", UpdateDocumentationPartRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDocumentationPart synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDocumentationPartRequest
-- @return response
-- @return error_message
function M.UpdateDocumentationPartSync(UpdateDocumentationPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDocumentationPartAsync(UpdateDocumentationPartRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TestInvokeMethod asynchronously, invoking a callback when done
-- @param TestInvokeMethodRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TestInvokeMethodAsync(TestInvokeMethodRequest, cb)
	assert(TestInvokeMethodRequest, "You must provide a TestInvokeMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TestInvokeMethod",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", TestInvokeMethodRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TestInvokeMethod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestInvokeMethodRequest
-- @return response
-- @return error_message
function M.TestInvokeMethodSync(TestInvokeMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestInvokeMethodAsync(TestInvokeMethodRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStage asynchronously, invoking a callback when done
-- @param UpdateStageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateStageAsync(UpdateStageRequest, cb)
	assert(UpdateStageRequest, "You must provide a UpdateStageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateStage",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/stages/{stage_name}", UpdateStageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateStage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateStageRequest
-- @return response
-- @return error_message
function M.UpdateStageSync(UpdateStageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStageAsync(UpdateStageRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBasePathMapping asynchronously, invoking a callback when done
-- @param DeleteBasePathMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBasePathMappingAsync(DeleteBasePathMappingRequest, cb)
	assert(DeleteBasePathMappingRequest, "You must provide a DeleteBasePathMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBasePathMapping",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/domainnames/{domain_name}/basepathmappings/{base_path}", DeleteBasePathMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBasePathMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBasePathMappingRequest
-- @return response
-- @return error_message
function M.DeleteBasePathMappingSync(DeleteBasePathMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBasePathMappingAsync(DeleteBasePathMappingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRequestValidator asynchronously, invoking a callback when done
-- @param CreateRequestValidatorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRequestValidatorAsync(CreateRequestValidatorRequest, cb)
	assert(CreateRequestValidatorRequest, "You must provide a CreateRequestValidatorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateRequestValidator",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/requestvalidators", CreateRequestValidatorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRequestValidator synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRequestValidatorRequest
-- @return response
-- @return error_message
function M.CreateRequestValidatorSync(CreateRequestValidatorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRequestValidatorAsync(CreateRequestValidatorRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TestInvokeAuthorizer asynchronously, invoking a callback when done
-- @param TestInvokeAuthorizerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TestInvokeAuthorizerAsync(TestInvokeAuthorizerRequest, cb)
	assert(TestInvokeAuthorizerRequest, "You must provide a TestInvokeAuthorizerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TestInvokeAuthorizer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/authorizers/{authorizer_id}", TestInvokeAuthorizerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TestInvokeAuthorizer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestInvokeAuthorizerRequest
-- @return response
-- @return error_message
function M.TestInvokeAuthorizerSync(TestInvokeAuthorizerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestInvokeAuthorizerAsync(TestInvokeAuthorizerRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentationVersion asynchronously, invoking a callback when done
-- @param GetDocumentationVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentationVersionAsync(GetDocumentationVersionRequest, cb)
	assert(GetDocumentationVersionRequest, "You must provide a GetDocumentationVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocumentationVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/versions/{doc_version}", GetDocumentationVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDocumentationVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentationVersionRequest
-- @return response
-- @return error_message
function M.GetDocumentationVersionSync(GetDocumentationVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentationVersionAsync(GetDocumentationVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateMethod asynchronously, invoking a callback when done
-- @param UpdateMethodRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateMethodAsync(UpdateMethodRequest, cb)
	assert(UpdateMethodRequest, "You must provide a UpdateMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateMethod",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", UpdateMethodRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateMethod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateMethodRequest
-- @return response
-- @return error_message
function M.UpdateMethodSync(UpdateMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateMethodAsync(UpdateMethodRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApiKey asynchronously, invoking a callback when done
-- @param GetApiKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetApiKeyAsync(GetApiKeyRequest, cb)
	assert(GetApiKeyRequest, "You must provide a GetApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApiKey",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/apikeys/{api_Key}", GetApiKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApiKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApiKeyRequest
-- @return response
-- @return error_message
function M.GetApiKeySync(GetApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApiKeyAsync(GetApiKeyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSdkType asynchronously, invoking a callback when done
-- @param GetSdkTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSdkTypeAsync(GetSdkTypeRequest, cb)
	assert(GetSdkTypeRequest, "You must provide a GetSdkTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSdkType",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/sdktypes/{sdktype_id}", GetSdkTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSdkType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSdkTypeRequest
-- @return response
-- @return error_message
function M.GetSdkTypeSync(GetSdkTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSdkTypeAsync(GetSdkTypeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIntegration asynchronously, invoking a callback when done
-- @param GetIntegrationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIntegrationAsync(GetIntegrationRequest, cb)
	assert(GetIntegrationRequest, "You must provide a GetIntegrationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIntegration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", GetIntegrationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIntegration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIntegrationRequest
-- @return response
-- @return error_message
function M.GetIntegrationSync(GetIntegrationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIntegrationAsync(GetIntegrationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDeployment asynchronously, invoking a callback when done
-- @param DeleteDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeploymentAsync(DeleteDeploymentRequest, cb)
	assert(DeleteDeploymentRequest, "You must provide a DeleteDeploymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/deployments/{deployment_id}", DeleteDeploymentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDeploymentRequest
-- @return response
-- @return error_message
function M.DeleteDeploymentSync(DeleteDeploymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeploymentAsync(DeleteDeploymentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUsagePlan asynchronously, invoking a callback when done
-- @param GetUsagePlanRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUsagePlanAsync(GetUsagePlanRequest, cb)
	assert(GetUsagePlanRequest, "You must provide a GetUsagePlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUsagePlan",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/usageplans/{usageplanId}", GetUsagePlanRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUsagePlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUsagePlanRequest
-- @return response
-- @return error_message
function M.GetUsagePlanSync(GetUsagePlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUsagePlanAsync(GetUsagePlanRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUsagePlan asynchronously, invoking a callback when done
-- @param UpdateUsagePlanRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUsagePlanAsync(UpdateUsagePlanRequest, cb)
	assert(UpdateUsagePlanRequest, "You must provide a UpdateUsagePlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUsagePlan",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/usageplans/{usageplanId}", UpdateUsagePlanRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUsagePlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUsagePlanRequest
-- @return response
-- @return error_message
function M.UpdateUsagePlanSync(UpdateUsagePlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUsagePlanAsync(UpdateUsagePlanRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAuthorizer asynchronously, invoking a callback when done
-- @param CreateAuthorizerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAuthorizerAsync(CreateAuthorizerRequest, cb)
	assert(CreateAuthorizerRequest, "You must provide a CreateAuthorizerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateAuthorizer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/authorizers", CreateAuthorizerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAuthorizer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAuthorizerRequest
-- @return response
-- @return error_message
function M.CreateAuthorizerSync(CreateAuthorizerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAuthorizerAsync(CreateAuthorizerRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetClientCertificate asynchronously, invoking a callback when done
-- @param GetClientCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetClientCertificateAsync(GetClientCertificateRequest, cb)
	assert(GetClientCertificateRequest, "You must provide a GetClientCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/clientcertificates/{clientcertificate_id}", GetClientCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetClientCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetClientCertificateRequest
-- @return response
-- @return error_message
function M.GetClientCertificateSync(GetClientCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetClientCertificateAsync(GetClientCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDeployment asynchronously, invoking a callback when done
-- @param UpdateDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDeploymentAsync(UpdateDeploymentRequest, cb)
	assert(UpdateDeploymentRequest, "You must provide a UpdateDeploymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/deployments/{deployment_id}", UpdateDeploymentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDeploymentRequest
-- @return response
-- @return error_message
function M.UpdateDeploymentSync(UpdateDeploymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDeploymentAsync(UpdateDeploymentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetModelTemplate asynchronously, invoking a callback when done
-- @param GetModelTemplateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetModelTemplateAsync(GetModelTemplateRequest, cb)
	assert(GetModelTemplateRequest, "You must provide a GetModelTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetModelTemplate",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/models/{model_name}/default_template", GetModelTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetModelTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetModelTemplateRequest
-- @return response
-- @return error_message
function M.GetModelTemplateSync(GetModelTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetModelTemplateAsync(GetModelTemplateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBasePathMappings asynchronously, invoking a callback when done
-- @param GetBasePathMappingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBasePathMappingsAsync(GetBasePathMappingsRequest, cb)
	assert(GetBasePathMappingsRequest, "You must provide a GetBasePathMappingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBasePathMappings",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/domainnames/{domain_name}/basepathmappings", GetBasePathMappingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBasePathMappings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBasePathMappingsRequest
-- @return response
-- @return error_message
function M.GetBasePathMappingsSync(GetBasePathMappingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBasePathMappingsAsync(GetBasePathMappingsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSdk asynchronously, invoking a callback when done
-- @param GetSdkRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSdkAsync(GetSdkRequest, cb)
	assert(GetSdkRequest, "You must provide a GetSdkRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSdk",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}", GetSdkRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSdk synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSdkRequest
-- @return response
-- @return error_message
function M.GetSdkSync(GetSdkRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSdkAsync(GetSdkRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRequestValidator asynchronously, invoking a callback when done
-- @param GetRequestValidatorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRequestValidatorAsync(GetRequestValidatorRequest, cb)
	assert(GetRequestValidatorRequest, "You must provide a GetRequestValidatorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRequestValidator",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", GetRequestValidatorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRequestValidator synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRequestValidatorRequest
-- @return response
-- @return error_message
function M.GetRequestValidatorSync(GetRequestValidatorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRequestValidatorAsync(GetRequestValidatorRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call FlushStageAuthorizersCache asynchronously, invoking a callback when done
-- @param FlushStageAuthorizersCacheRequest
-- @param cb Callback function accepting two args: response, error_message
function M.FlushStageAuthorizersCacheAsync(FlushStageAuthorizersCacheRequest, cb)
	assert(FlushStageAuthorizersCacheRequest, "You must provide a FlushStageAuthorizersCacheRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".FlushStageAuthorizersCache",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers", FlushStageAuthorizersCacheRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call FlushStageAuthorizersCache synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param FlushStageAuthorizersCacheRequest
-- @return response
-- @return error_message
function M.FlushStageAuthorizersCacheSync(FlushStageAuthorizersCacheRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.FlushStageAuthorizersCacheAsync(FlushStageAuthorizersCacheRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIntegrationResponse asynchronously, invoking a callback when done
-- @param GetIntegrationResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIntegrationResponseAsync(GetIntegrationResponseRequest, cb)
	assert(GetIntegrationResponseRequest, "You must provide a GetIntegrationResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIntegrationResponse",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", GetIntegrationResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIntegrationResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIntegrationResponseRequest
-- @return response
-- @return error_message
function M.GetIntegrationResponseSync(GetIntegrationResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIntegrationResponseAsync(GetIntegrationResponseRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeployments asynchronously, invoking a callback when done
-- @param GetDeploymentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentsAsync(GetDeploymentsRequest, cb)
	assert(GetDeploymentsRequest, "You must provide a GetDeploymentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDeployments",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/deployments", GetDeploymentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeployments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeploymentsRequest
-- @return response
-- @return error_message
function M.GetDeploymentsSync(GetDeploymentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeploymentsAsync(GetDeploymentsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateResource asynchronously, invoking a callback when done
-- @param CreateResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateResourceAsync(CreateResourceRequest, cb)
	assert(CreateResourceRequest, "You must provide a CreateResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{parent_id}", CreateResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateResourceRequest
-- @return response
-- @return error_message
function M.CreateResourceSync(CreateResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateResourceAsync(CreateResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApiKeys asynchronously, invoking a callback when done
-- @param GetApiKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetApiKeysAsync(GetApiKeysRequest, cb)
	assert(GetApiKeysRequest, "You must provide a GetApiKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApiKeys",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/apikeys", GetApiKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApiKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApiKeysRequest
-- @return response
-- @return error_message
function M.GetApiKeysSync(GetApiKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApiKeysAsync(GetApiKeysRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApiKey asynchronously, invoking a callback when done
-- @param DeleteApiKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApiKeyAsync(DeleteApiKeyRequest, cb)
	assert(DeleteApiKeyRequest, "You must provide a DeleteApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApiKey",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/apikeys/{api_Key}", DeleteApiKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApiKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApiKeyRequest
-- @return response
-- @return error_message
function M.DeleteApiKeySync(DeleteApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApiKeyAsync(DeleteApiKeyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApiKey asynchronously, invoking a callback when done
-- @param CreateApiKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateApiKeyAsync(CreateApiKeyRequest, cb)
	assert(CreateApiKeyRequest, "You must provide a CreateApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateApiKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/apikeys", CreateApiKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateApiKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateApiKeyRequest
-- @return response
-- @return error_message
function M.CreateApiKeySync(CreateApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateApiKeyAsync(CreateApiKeyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAuthorizer asynchronously, invoking a callback when done
-- @param UpdateAuthorizerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAuthorizerAsync(UpdateAuthorizerRequest, cb)
	assert(UpdateAuthorizerRequest, "You must provide a UpdateAuthorizerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAuthorizer",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/authorizers/{authorizer_id}", UpdateAuthorizerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAuthorizer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAuthorizerRequest
-- @return response
-- @return error_message
function M.UpdateAuthorizerSync(UpdateAuthorizerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAuthorizerAsync(UpdateAuthorizerRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetModel asynchronously, invoking a callback when done
-- @param GetModelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetModelAsync(GetModelRequest, cb)
	assert(GetModelRequest, "You must provide a GetModelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetModel",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/models/{model_name}", GetModelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetModel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetModelRequest
-- @return response
-- @return error_message
function M.GetModelSync(GetModelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetModelAsync(GetModelRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUsagePlanKeys asynchronously, invoking a callback when done
-- @param GetUsagePlanKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUsagePlanKeysAsync(GetUsagePlanKeysRequest, cb)
	assert(GetUsagePlanKeysRequest, "You must provide a GetUsagePlanKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUsagePlanKeys",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/usageplans/{usageplanId}/keys", GetUsagePlanKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUsagePlanKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUsagePlanKeysRequest
-- @return response
-- @return error_message
function M.GetUsagePlanKeysSync(GetUsagePlanKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUsagePlanKeysAsync(GetUsagePlanKeysRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMethodResponse asynchronously, invoking a callback when done
-- @param DeleteMethodResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMethodResponseAsync(DeleteMethodResponseRequest, cb)
	assert(DeleteMethodResponseRequest, "You must provide a DeleteMethodResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteMethodResponse",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", DeleteMethodResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMethodResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMethodResponseRequest
-- @return response
-- @return error_message
function M.DeleteMethodResponseSync(DeleteMethodResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMethodResponseAsync(DeleteMethodResponseRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResources asynchronously, invoking a callback when done
-- @param GetResourcesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetResourcesAsync(GetResourcesRequest, cb)
	assert(GetResourcesRequest, "You must provide a GetResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetResources",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources", GetResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetResourcesRequest
-- @return response
-- @return error_message
function M.GetResourcesSync(GetResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResourcesAsync(GetResourcesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRestApis asynchronously, invoking a callback when done
-- @param GetRestApisRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRestApisAsync(GetRestApisRequest, cb)
	assert(GetRestApisRequest, "You must provide a GetRestApisRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRestApis",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis", GetRestApisRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRestApis synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRestApisRequest
-- @return response
-- @return error_message
function M.GetRestApisSync(GetRestApisRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRestApisAsync(GetRestApisRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResource asynchronously, invoking a callback when done
-- @param GetResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetResourceAsync(GetResourceRequest, cb)
	assert(GetResourceRequest, "You must provide a GetResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetResource",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}", GetResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetResourceRequest
-- @return response
-- @return error_message
function M.GetResourceSync(GetResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResourceAsync(GetResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIntegrationResponse asynchronously, invoking a callback when done
-- @param DeleteIntegrationResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIntegrationResponseAsync(DeleteIntegrationResponseRequest, cb)
	assert(DeleteIntegrationResponseRequest, "You must provide a DeleteIntegrationResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteIntegrationResponse",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", DeleteIntegrationResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIntegrationResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIntegrationResponseRequest
-- @return response
-- @return error_message
function M.DeleteIntegrationResponseSync(DeleteIntegrationResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIntegrationResponseAsync(DeleteIntegrationResponseRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUsagePlans asynchronously, invoking a callback when done
-- @param GetUsagePlansRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUsagePlansAsync(GetUsagePlansRequest, cb)
	assert(GetUsagePlansRequest, "You must provide a GetUsagePlansRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUsagePlans",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/usageplans", GetUsagePlansRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUsagePlans synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUsagePlansRequest
-- @return response
-- @return error_message
function M.GetUsagePlansSync(GetUsagePlansRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUsagePlansAsync(GetUsagePlansRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportApiKeys asynchronously, invoking a callback when done
-- @param ImportApiKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportApiKeysAsync(ImportApiKeysRequest, cb)
	assert(ImportApiKeysRequest, "You must provide a ImportApiKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ImportApiKeys",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/apikeys?mode=import", ImportApiKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportApiKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportApiKeysRequest
-- @return response
-- @return error_message
function M.ImportApiKeysSync(ImportApiKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportApiKeysAsync(ImportApiKeysRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBasePathMapping asynchronously, invoking a callback when done
-- @param GetBasePathMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBasePathMappingAsync(GetBasePathMappingRequest, cb)
	assert(GetBasePathMappingRequest, "You must provide a GetBasePathMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBasePathMapping",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/domainnames/{domain_name}/basepathmappings/{base_path}", GetBasePathMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBasePathMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBasePathMappingRequest
-- @return response
-- @return error_message
function M.GetBasePathMappingSync(GetBasePathMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBasePathMappingAsync(GetBasePathMappingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetExport asynchronously, invoking a callback when done
-- @param GetExportRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetExportAsync(GetExportRequest, cb)
	assert(GetExportRequest, "You must provide a GetExportRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetExport",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}", GetExportRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetExport synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetExportRequest
-- @return response
-- @return error_message
function M.GetExportSync(GetExportRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetExportAsync(GetExportRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateResource asynchronously, invoking a callback when done
-- @param UpdateResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateResourceAsync(UpdateResourceRequest, cb)
	assert(UpdateResourceRequest, "You must provide a UpdateResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateResource",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}", UpdateResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateResourceRequest
-- @return response
-- @return error_message
function M.UpdateResourceSync(UpdateResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateResourceAsync(UpdateResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDomainName asynchronously, invoking a callback when done
-- @param GetDomainNameRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDomainNameAsync(GetDomainNameRequest, cb)
	assert(GetDomainNameRequest, "You must provide a GetDomainNameRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDomainName",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/domainnames/{domain_name}", GetDomainNameRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDomainName synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDomainNameRequest
-- @return response
-- @return error_message
function M.GetDomainNameSync(GetDomainNameRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainNameAsync(GetDomainNameRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDomainName asynchronously, invoking a callback when done
-- @param UpdateDomainNameRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDomainNameAsync(UpdateDomainNameRequest, cb)
	assert(UpdateDomainNameRequest, "You must provide a UpdateDomainNameRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDomainName",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/domainnames/{domain_name}", UpdateDomainNameRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDomainName synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDomainNameRequest
-- @return response
-- @return error_message
function M.UpdateDomainNameSync(UpdateDomainNameRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDomainNameAsync(UpdateDomainNameRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateClientCertificate asynchronously, invoking a callback when done
-- @param UpdateClientCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateClientCertificateAsync(UpdateClientCertificateRequest, cb)
	assert(UpdateClientCertificateRequest, "You must provide a UpdateClientCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/clientcertificates/{clientcertificate_id}", UpdateClientCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateClientCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateClientCertificateRequest
-- @return response
-- @return error_message
function M.UpdateClientCertificateSync(UpdateClientCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateClientCertificateAsync(UpdateClientCertificateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDomainName asynchronously, invoking a callback when done
-- @param CreateDomainNameRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDomainNameAsync(CreateDomainNameRequest, cb)
	assert(CreateDomainNameRequest, "You must provide a CreateDomainNameRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDomainName",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/domainnames", CreateDomainNameRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDomainName synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDomainNameRequest
-- @return response
-- @return error_message
function M.CreateDomainNameSync(CreateDomainNameRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainNameAsync(CreateDomainNameRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDomainName asynchronously, invoking a callback when done
-- @param DeleteDomainNameRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDomainNameAsync(DeleteDomainNameRequest, cb)
	assert(DeleteDomainNameRequest, "You must provide a DeleteDomainNameRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDomainName",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/domainnames/{domain_name}", DeleteDomainNameRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDomainName synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDomainNameRequest
-- @return response
-- @return error_message
function M.DeleteDomainNameSync(DeleteDomainNameRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainNameAsync(DeleteDomainNameRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutMethod asynchronously, invoking a callback when done
-- @param PutMethodRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutMethodAsync(PutMethodRequest, cb)
	assert(PutMethodRequest, "You must provide a PutMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutMethod",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", PutMethodRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutMethod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutMethodRequest
-- @return response
-- @return error_message
function M.PutMethodSync(PutMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutMethodAsync(PutMethodRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStage asynchronously, invoking a callback when done
-- @param DeleteStageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStageAsync(DeleteStageRequest, cb)
	assert(DeleteStageRequest, "You must provide a DeleteStageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteStage",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/stages/{stage_name}", DeleteStageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStageRequest
-- @return response
-- @return error_message
function M.DeleteStageSync(DeleteStageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStageAsync(DeleteStageRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentationPart asynchronously, invoking a callback when done
-- @param GetDocumentationPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentationPartAsync(GetDocumentationPartRequest, cb)
	assert(GetDocumentationPartRequest, "You must provide a GetDocumentationPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocumentationPart",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/parts/{part_id}", GetDocumentationPartRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDocumentationPart synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentationPartRequest
-- @return response
-- @return error_message
function M.GetDocumentationPartSync(GetDocumentationPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentationPartAsync(GetDocumentationPartRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAccount asynchronously, invoking a callback when done
-- @param UpdateAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAccountAsync(UpdateAccountRequest, cb)
	assert(UpdateAccountRequest, "You must provide a UpdateAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAccount",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/account", UpdateAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAccountRequest
-- @return response
-- @return error_message
function M.UpdateAccountSync(UpdateAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAccountAsync(UpdateAccountRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRestApi asynchronously, invoking a callback when done
-- @param PutRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutRestApiAsync(PutRestApiRequest, cb)
	assert(PutRestApiRequest, "You must provide a PutRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}", PutRestApiRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRestApi synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRestApiRequest
-- @return response
-- @return error_message
function M.PutRestApiSync(PutRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRestApiAsync(PutRestApiRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUsage asynchronously, invoking a callback when done
-- @param GetUsageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUsageAsync(GetUsageRequest, cb)
	assert(GetUsageRequest, "You must provide a GetUsageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUsage",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/usageplans/{usageplanId}/usage", GetUsageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUsage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUsageRequest
-- @return response
-- @return error_message
function M.GetUsageSync(GetUsageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUsageAsync(GetUsageRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeployment asynchronously, invoking a callback when done
-- @param GetDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentAsync(GetDeploymentRequest, cb)
	assert(GetDeploymentRequest, "You must provide a GetDeploymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/deployments/{deployment_id}", GetDeploymentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeploymentRequest
-- @return response
-- @return error_message
function M.GetDeploymentSync(GetDeploymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeploymentAsync(GetDeploymentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRestApi asynchronously, invoking a callback when done
-- @param CreateRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRestApiAsync(CreateRestApiRequest, cb)
	assert(CreateRestApiRequest, "You must provide a CreateRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis", CreateRestApiRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRestApi synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRestApiRequest
-- @return response
-- @return error_message
function M.CreateRestApiSync(CreateRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRestApiAsync(CreateRestApiRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAuthorizers asynchronously, invoking a callback when done
-- @param GetAuthorizersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAuthorizersAsync(GetAuthorizersRequest, cb)
	assert(GetAuthorizersRequest, "You must provide a GetAuthorizersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAuthorizers",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/authorizers", GetAuthorizersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAuthorizers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAuthorizersRequest
-- @return response
-- @return error_message
function M.GetAuthorizersSync(GetAuthorizersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAuthorizersAsync(GetAuthorizersRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetClientCertificates asynchronously, invoking a callback when done
-- @param GetClientCertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetClientCertificatesAsync(GetClientCertificatesRequest, cb)
	assert(GetClientCertificatesRequest, "You must provide a GetClientCertificatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetClientCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/clientcertificates", GetClientCertificatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetClientCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetClientCertificatesRequest
-- @return response
-- @return error_message
function M.GetClientCertificatesSync(GetClientCertificatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetClientCertificatesAsync(GetClientCertificatesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDocumentationPart asynchronously, invoking a callback when done
-- @param DeleteDocumentationPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDocumentationPartAsync(DeleteDocumentationPartRequest, cb)
	assert(DeleteDocumentationPartRequest, "You must provide a DeleteDocumentationPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDocumentationPart",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/parts/{part_id}", DeleteDocumentationPartRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDocumentationPart synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDocumentationPartRequest
-- @return response
-- @return error_message
function M.DeleteDocumentationPartSync(DeleteDocumentationPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDocumentationPartAsync(DeleteDocumentationPartRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteResource asynchronously, invoking a callback when done
-- @param DeleteResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteResourceAsync(DeleteResourceRequest, cb)
	assert(DeleteResourceRequest, "You must provide a DeleteResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteResource",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}", DeleteResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteResourceRequest
-- @return response
-- @return error_message
function M.DeleteResourceSync(DeleteResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteResourceAsync(DeleteResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStage asynchronously, invoking a callback when done
-- @param CreateStageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStageAsync(CreateStageRequest, cb)
	assert(CreateStageRequest, "You must provide a CreateStageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateStage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/stages", CreateStageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStageRequest
-- @return response
-- @return error_message
function M.CreateStageSync(CreateStageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStageAsync(CreateStageRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateBasePathMapping asynchronously, invoking a callback when done
-- @param UpdateBasePathMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateBasePathMappingAsync(UpdateBasePathMappingRequest, cb)
	assert(UpdateBasePathMappingRequest, "You must provide a UpdateBasePathMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateBasePathMapping",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/domainnames/{domain_name}/basepathmappings/{base_path}", UpdateBasePathMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateBasePathMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateBasePathMappingRequest
-- @return response
-- @return error_message
function M.UpdateBasePathMappingSync(UpdateBasePathMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateBasePathMappingAsync(UpdateBasePathMappingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateMethodResponse asynchronously, invoking a callback when done
-- @param UpdateMethodResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateMethodResponseAsync(UpdateMethodResponseRequest, cb)
	assert(UpdateMethodResponseRequest, "You must provide a UpdateMethodResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateMethodResponse",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", UpdateMethodResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateMethodResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateMethodResponseRequest
-- @return response
-- @return error_message
function M.UpdateMethodResponseSync(UpdateMethodResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateMethodResponseAsync(UpdateMethodResponseRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUsage asynchronously, invoking a callback when done
-- @param UpdateUsageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUsageAsync(UpdateUsageRequest, cb)
	assert(UpdateUsageRequest, "You must provide a UpdateUsageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUsage",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/usageplans/{usageplanId}/keys/{keyId}/usage", UpdateUsageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUsage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUsageRequest
-- @return response
-- @return error_message
function M.UpdateUsageSync(UpdateUsageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUsageAsync(UpdateUsageRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentationParts asynchronously, invoking a callback when done
-- @param GetDocumentationPartsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentationPartsAsync(GetDocumentationPartsRequest, cb)
	assert(GetDocumentationPartsRequest, "You must provide a GetDocumentationPartsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocumentationParts",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/parts", GetDocumentationPartsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDocumentationParts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentationPartsRequest
-- @return response
-- @return error_message
function M.GetDocumentationPartsSync(GetDocumentationPartsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentationPartsAsync(GetDocumentationPartsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDocumentationPart asynchronously, invoking a callback when done
-- @param CreateDocumentationPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDocumentationPartAsync(CreateDocumentationPartRequest, cb)
	assert(CreateDocumentationPartRequest, "You must provide a CreateDocumentationPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDocumentationPart",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/parts", CreateDocumentationPartRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDocumentationPart synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDocumentationPartRequest
-- @return response
-- @return error_message
function M.CreateDocumentationPartSync(CreateDocumentationPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDocumentationPartAsync(CreateDocumentationPartRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBasePathMapping asynchronously, invoking a callback when done
-- @param CreateBasePathMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBasePathMappingAsync(CreateBasePathMappingRequest, cb)
	assert(CreateBasePathMappingRequest, "You must provide a CreateBasePathMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateBasePathMapping",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/domainnames/{domain_name}/basepathmappings", CreateBasePathMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBasePathMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBasePathMappingRequest
-- @return response
-- @return error_message
function M.CreateBasePathMappingSync(CreateBasePathMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBasePathMappingAsync(CreateBasePathMappingRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUsagePlan asynchronously, invoking a callback when done
-- @param CreateUsagePlanRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUsagePlanAsync(CreateUsagePlanRequest, cb)
	assert(CreateUsagePlanRequest, "You must provide a CreateUsagePlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateUsagePlan",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/usageplans", CreateUsagePlanRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUsagePlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUsagePlanRequest
-- @return response
-- @return error_message
function M.CreateUsagePlanSync(CreateUsagePlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUsagePlanAsync(CreateUsagePlanRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApiKey asynchronously, invoking a callback when done
-- @param UpdateApiKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApiKeyAsync(UpdateApiKeyRequest, cb)
	assert(UpdateApiKeyRequest, "You must provide a UpdateApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApiKey",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/apikeys/{api_Key}", UpdateApiKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApiKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApiKeyRequest
-- @return response
-- @return error_message
function M.UpdateApiKeySync(UpdateApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApiKeyAsync(UpdateApiKeyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportRestApi asynchronously, invoking a callback when done
-- @param ImportRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportRestApiAsync(ImportRestApiRequest, cb)
	assert(ImportRestApiRequest, "You must provide a ImportRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ImportRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis?mode=import", ImportRestApiRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportRestApi synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportRestApiRequest
-- @return response
-- @return error_message
function M.ImportRestApiSync(ImportRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportRestApiAsync(ImportRestApiRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRestApi asynchronously, invoking a callback when done
-- @param UpdateRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRestApiAsync(UpdateRestApiRequest, cb)
	assert(UpdateRestApiRequest, "You must provide a UpdateRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}", UpdateRestApiRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRestApi synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRestApiRequest
-- @return response
-- @return error_message
function M.UpdateRestApiSync(UpdateRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRestApiAsync(UpdateRestApiRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDocumentationVersion asynchronously, invoking a callback when done
-- @param CreateDocumentationVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDocumentationVersionAsync(CreateDocumentationVersionRequest, cb)
	assert(CreateDocumentationVersionRequest, "You must provide a CreateDocumentationVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDocumentationVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/versions", CreateDocumentationVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDocumentationVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDocumentationVersionRequest
-- @return response
-- @return error_message
function M.CreateDocumentationVersionSync(CreateDocumentationVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDocumentationVersionAsync(CreateDocumentationVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutIntegrationResponse asynchronously, invoking a callback when done
-- @param PutIntegrationResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutIntegrationResponseAsync(PutIntegrationResponseRequest, cb)
	assert(PutIntegrationResponseRequest, "You must provide a PutIntegrationResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutIntegrationResponse",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", PutIntegrationResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutIntegrationResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutIntegrationResponseRequest
-- @return response
-- @return error_message
function M.PutIntegrationResponseSync(PutIntegrationResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutIntegrationResponseAsync(PutIntegrationResponseRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentationVersions asynchronously, invoking a callback when done
-- @param GetDocumentationVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentationVersionsAsync(GetDocumentationVersionsRequest, cb)
	assert(GetDocumentationVersionsRequest, "You must provide a GetDocumentationVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocumentationVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/documentation/versions", GetDocumentationVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDocumentationVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentationVersionsRequest
-- @return response
-- @return error_message
function M.GetDocumentationVersionsSync(GetDocumentationVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentationVersionsAsync(GetDocumentationVersionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMethod asynchronously, invoking a callback when done
-- @param DeleteMethodRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMethodAsync(DeleteMethodRequest, cb)
	assert(DeleteMethodRequest, "You must provide a DeleteMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteMethod",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", DeleteMethodRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMethod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMethodRequest
-- @return response
-- @return error_message
function M.DeleteMethodSync(DeleteMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMethodAsync(DeleteMethodRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRequestValidators asynchronously, invoking a callback when done
-- @param GetRequestValidatorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRequestValidatorsAsync(GetRequestValidatorsRequest, cb)
	assert(GetRequestValidatorsRequest, "You must provide a GetRequestValidatorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRequestValidators",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/requestvalidators", GetRequestValidatorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRequestValidators synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRequestValidatorsRequest
-- @return response
-- @return error_message
function M.GetRequestValidatorsSync(GetRequestValidatorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRequestValidatorsAsync(GetRequestValidatorsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccount asynchronously, invoking a callback when done
-- @param GetAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountAsync(GetAccountRequest, cb)
	assert(GetAccountRequest, "You must provide a GetAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccount",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/account", GetAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAccountRequest
-- @return response
-- @return error_message
function M.GetAccountSync(GetAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountAsync(GetAccountRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUsagePlanKey asynchronously, invoking a callback when done
-- @param DeleteUsagePlanKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUsagePlanKeyAsync(DeleteUsagePlanKeyRequest, cb)
	assert(DeleteUsagePlanKeyRequest, "You must provide a DeleteUsagePlanKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUsagePlanKey",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/usageplans/{usageplanId}/keys/{keyId}", DeleteUsagePlanKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUsagePlanKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUsagePlanKeyRequest
-- @return response
-- @return error_message
function M.DeleteUsagePlanKeySync(DeleteUsagePlanKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUsagePlanKeyAsync(DeleteUsagePlanKeyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRequestValidator asynchronously, invoking a callback when done
-- @param DeleteRequestValidatorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRequestValidatorAsync(DeleteRequestValidatorRequest, cb)
	assert(DeleteRequestValidatorRequest, "You must provide a DeleteRequestValidatorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteRequestValidator",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", DeleteRequestValidatorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRequestValidator synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRequestValidatorRequest
-- @return response
-- @return error_message
function M.DeleteRequestValidatorSync(DeleteRequestValidatorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRequestValidatorAsync(DeleteRequestValidatorRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutIntegration asynchronously, invoking a callback when done
-- @param PutIntegrationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutIntegrationAsync(PutIntegrationRequest, cb)
	assert(PutIntegrationRequest, "You must provide a PutIntegrationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutIntegration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", PutIntegrationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutIntegration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutIntegrationRequest
-- @return response
-- @return error_message
function M.PutIntegrationSync(PutIntegrationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutIntegrationAsync(PutIntegrationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateIntegrationResponse asynchronously, invoking a callback when done
-- @param UpdateIntegrationResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateIntegrationResponseAsync(UpdateIntegrationResponseRequest, cb)
	assert(UpdateIntegrationResponseRequest, "You must provide a UpdateIntegrationResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateIntegrationResponse",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", UpdateIntegrationResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateIntegrationResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateIntegrationResponseRequest
-- @return response
-- @return error_message
function M.UpdateIntegrationResponseSync(UpdateIntegrationResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateIntegrationResponseAsync(UpdateIntegrationResponseRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
