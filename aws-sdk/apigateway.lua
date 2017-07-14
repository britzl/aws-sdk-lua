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

local UpdateIntegrationRequest_keys = { "resourceId" = true, "patchOperations" = true, "restApiId" = true, "httpMethod" = true, nil }

function M.AssertUpdateIntegrationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIntegrationRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(UpdateIntegrationRequest_keys[k], "UpdateIntegrationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIntegrationRequest
-- <p>Represents an update integration request.</p>
-- @param resourceId [String] <p>Represents an update integration request's resource identifier.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- @param restApiId [String] <p>Represents an update integration request's API identifier.</p>
-- @param httpMethod [String] <p>Represents an update integration request's HTTP method.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
function M.UpdateIntegrationRequest(resourceId, patchOperations, restApiId, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateIntegrationRequest")
	local t = { 
		["resourceId"] = resourceId,
		["patchOperations"] = patchOperations,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
	}
	M.AssertUpdateIntegrationRequest(t)
	return t
end

local CreateResourceRequest_keys = { "restApiId" = true, "pathPart" = true, "parentId" = true, nil }

function M.AssertCreateResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResourceRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["parentId"], "Expected key parentId to exist in table")
	assert(struct["pathPart"], "Expected key pathPart to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["pathPart"] then M.AssertString(struct["pathPart"]) end
	if struct["parentId"] then M.AssertString(struct["parentId"]) end
	for k,_ in pairs(struct) do
		assert(CreateResourceRequest_keys[k], "CreateResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResourceRequest
-- <p>Requests Amazon API Gateway to create a <a>Resource</a> resource.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> for the resource. </p>
-- @param pathPart [String] <p>The last path segment for this resource.</p>
-- @param parentId [String] <p>The parent resource's identifier.</p>
-- Required parameter: restApiId
-- Required parameter: parentId
-- Required parameter: pathPart
function M.CreateResourceRequest(restApiId, pathPart, parentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateResourceRequest")
	local t = { 
		["restApiId"] = restApiId,
		["pathPart"] = pathPart,
		["parentId"] = parentId,
	}
	M.AssertCreateResourceRequest(t)
	return t
end

local UpdateStageRequest_keys = { "restApiId" = true, "stageName" = true, "patchOperations" = true, nil }

function M.AssertUpdateStageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStageRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateStageRequest_keys[k], "UpdateStageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStageRequest
-- <p>Requests Amazon API Gateway to change information about a <a>Stage</a> resource.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Stage</a> resource to change information about.</p>
-- @param stageName [String] <p>The name of the <a>Stage</a> resource to change information about.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: restApiId
-- Required parameter: stageName
function M.UpdateStageRequest(restApiId, stageName, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStageRequest")
	local t = { 
		["restApiId"] = restApiId,
		["stageName"] = stageName,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateStageRequest(t)
	return t
end

local ServiceUnavailableException_keys = { "message" = true, "retryAfterSeconds" = true, nil }

function M.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["retryAfterSeconds"] then M.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(ServiceUnavailableException_keys[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
--  
-- @param message [String]  
-- @param retryAfterSeconds [String]  
function M.ServiceUnavailableException(message, retryAfterSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["message"] = message,
		["retryAfterSeconds"] = retryAfterSeconds,
	}
	M.AssertServiceUnavailableException(t)
	return t
end

local BadRequestException_keys = { "message" = true, nil }

function M.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(BadRequestException_keys[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
--  
-- @param message [String]  
function M.BadRequestException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BadRequestException")
	local t = { 
		["message"] = message,
	}
	M.AssertBadRequestException(t)
	return t
end

local ClientCertificates_keys = { "position" = true, "items" = true, nil }

function M.AssertClientCertificates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientCertificates to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfClientCertificate(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(ClientCertificates_keys[k], "ClientCertificates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientCertificates
-- <p>Represents a collection of <a>ClientCertificate</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html">Use Client-Side Certificate</a> </div>
-- @param position [String] <p>Represents a collection of <a>ClientCertificate</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html">Use Client-Side Certificate</a> </div>
-- @param items [ListOfClientCertificate] <p>The current page of any <a>ClientCertificate</a> resources in the collection of <a>ClientCertificate</a> resources.</p>
function M.ClientCertificates(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClientCertificates")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertClientCertificates(t)
	return t
end

local UnauthorizedException_keys = { "message" = true, nil }

function M.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnauthorizedException_keys[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
--  
-- @param message [String]  
function M.UnauthorizedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnauthorizedException(t)
	return t
end

local GetApiKeyRequest_keys = { "apiKey" = true, "includeValue" = true, nil }

function M.AssertGetApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApiKeyRequest to be of type 'table'")
	assert(struct["apiKey"], "Expected key apiKey to exist in table")
	if struct["apiKey"] then M.AssertString(struct["apiKey"]) end
	if struct["includeValue"] then M.AssertNullableBoolean(struct["includeValue"]) end
	for k,_ in pairs(struct) do
		assert(GetApiKeyRequest_keys[k], "GetApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApiKeyRequest
-- <p>A request to get information about the current <a>ApiKey</a> resource.</p>
-- @param apiKey [String] <p>The identifier of the <a>ApiKey</a> resource.</p>
-- @param includeValue [NullableBoolean] <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains the key value.</p>
-- Required parameter: apiKey
function M.GetApiKeyRequest(apiKey, includeValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApiKeyRequest")
	local t = { 
		["apiKey"] = apiKey,
		["includeValue"] = includeValue,
	}
	M.AssertGetApiKeyRequest(t)
	return t
end

local Template_keys = { "value" = true, nil }

function M.AssertTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Template to be of type 'table'")
	if struct["value"] then M.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(Template_keys[k], "Template contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Template
-- <p>Represents a mapping template used to transform a payload.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html#models-mappings-mappings">Mapping Templates</a> </div>
-- @param value [String] <p>The Apache <a href="http://velocity.apache.org/engine/devel/vtl-reference-guide.html" target="_blank">Velocity Template Language (VTL)</a> template content used for the template resource.</p>
function M.Template(value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Template")
	local t = { 
		["value"] = value,
	}
	M.AssertTemplate(t)
	return t
end

local GenerateClientCertificateRequest_keys = { "description" = true, nil }

function M.AssertGenerateClientCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateClientCertificateRequest to be of type 'table'")
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(GenerateClientCertificateRequest_keys[k], "GenerateClientCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateClientCertificateRequest
-- <p>A request to generate a <a>ClientCertificate</a> resource.</p>
-- @param description [String] <p>The description of the <a>ClientCertificate</a>.</p>
function M.GenerateClientCertificateRequest(description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateClientCertificateRequest")
	local t = { 
		["description"] = description,
	}
	M.AssertGenerateClientCertificateRequest(t)
	return t
end

local Resources_keys = { "position" = true, "items" = true, nil }

function M.AssertResources(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resources to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfResource(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(Resources_keys[k], "Resources contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resources
-- <p>Represents a collection of <a>Resource</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param position [String] <p>Represents a collection of <a>Resource</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param items [ListOfResource] <p>Gets the current <a>Resource</a> resource in the collection.</p>
function M.Resources(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Resources")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertResources(t)
	return t
end

local GetDomainNameRequest_keys = { "domainName" = true, nil }

function M.AssertGetDomainNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainNameRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["domainName"] then M.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(GetDomainNameRequest_keys[k], "GetDomainNameRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainNameRequest
-- <p>Request to get the name of a <a>DomainName</a> resource.</p>
-- @param domainName [String] <p>The name of the <a>DomainName</a> resource.</p>
-- Required parameter: domainName
function M.GetDomainNameRequest(domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainNameRequest")
	local t = { 
		["domainName"] = domainName,
	}
	M.AssertGetDomainNameRequest(t)
	return t
end

local PutMethodRequest_keys = { "restApiId" = true, "requestParameters" = true, "requestModels" = true, "resourceId" = true, "authorizationType" = true, "operationName" = true, "apiKeyRequired" = true, "httpMethod" = true, "requestValidatorId" = true, "authorizerId" = true, nil }

function M.AssertPutMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["authorizationType"], "Expected key authorizationType to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["requestParameters"] then M.AssertMapOfStringToBoolean(struct["requestParameters"]) end
	if struct["requestModels"] then M.AssertMapOfStringToString(struct["requestModels"]) end
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["authorizationType"] then M.AssertString(struct["authorizationType"]) end
	if struct["operationName"] then M.AssertString(struct["operationName"]) end
	if struct["apiKeyRequired"] then M.AssertBoolean(struct["apiKeyRequired"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	if struct["requestValidatorId"] then M.AssertString(struct["requestValidatorId"]) end
	if struct["authorizerId"] then M.AssertString(struct["authorizerId"]) end
	for k,_ in pairs(struct) do
		assert(PutMethodRequest_keys[k], "PutMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMethodRequest
-- <p>Request to add a method to an existing <a>Resource</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the new <a>Method</a> resource.</p>
-- @param requestParameters [MapOfStringToBoolean] <p>A key-value map defining required or optional method request parameters that can be accepted by Amazon API Gateway. A key defines a method request parameter name matching the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>). The method request parameter names defined here are available in <a>Integration</a> to be mapped to integration request parameters or body-mapping templates.</p>
-- @param requestModels [MapOfStringToString] <p>Specifies the <a>Model</a> resources used for the request's content type. Request models are represented as a key/value map, with a content type as the key and a <a>Model</a> name as the value.</p>
-- @param resourceId [String] <p>The <a>Resource</a> identifier for the new <a>Method</a> resource.</p>
-- @param authorizationType [String] <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
-- @param operationName [String] <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in <a href="http://petstore-demo-endpoint.execute-api.com/petstore/pets">PetStore</a> example.</p>
-- @param apiKeyRequired [Boolean] <p>Specifies whether the method required a valid <a>ApiKey</a>.</p>
-- @param httpMethod [String] <p>Specifies the method request's HTTP method type.</p>
-- @param requestValidatorId [String] <p>The identifier of a <a>RequestValidator</a> for validating the method request.</p>
-- @param authorizerId [String] <p>Specifies the identifier of an <a>Authorizer</a> to use on this Method, if the type is CUSTOM.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
-- Required parameter: authorizationType
function M.PutMethodRequest(restApiId, requestParameters, requestModels, resourceId, authorizationType, operationName, apiKeyRequired, httpMethod, requestValidatorId, authorizerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutMethodRequest")
	local t = { 
		["restApiId"] = restApiId,
		["requestParameters"] = requestParameters,
		["requestModels"] = requestModels,
		["resourceId"] = resourceId,
		["authorizationType"] = authorizationType,
		["operationName"] = operationName,
		["apiKeyRequired"] = apiKeyRequired,
		["httpMethod"] = httpMethod,
		["requestValidatorId"] = requestValidatorId,
		["authorizerId"] = authorizerId,
	}
	M.AssertPutMethodRequest(t)
	return t
end

local DocumentationPart_keys = { "properties" = true, "id" = true, "location" = true, nil }

function M.AssertDocumentationPart(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationPart to be of type 'table'")
	if struct["properties"] then M.AssertString(struct["properties"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["location"] then M.AssertDocumentationPartLocation(struct["location"]) end
	for k,_ in pairs(struct) do
		assert(DocumentationPart_keys[k], "DocumentationPart contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationPart
-- <p>A documentation part for a targeted API entity.</p> <div class="remarks"> <p>A documentation part consists of a content map (<code>properties</code>) and a target (<code>location</code>). The target specifies an API entity to which the documentation content applies. The supported API entity types are <code>API</code>, <code>AUTHORIZER</code>, <code>MODEL</code>, <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. Valid <code>location</code> fields depend on the API entity type. All valid fields are not required.</p> <p>The content map is a JSON string of API-specific key-value pairs. Although an API can use any shape for the content map, only the Swagger-compliant documentation fields will be injected into the associated API entity definition in the exported Swagger definition file.</p></div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationParts</a> </div>
-- @param properties [String] <p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>"{ \"description\": \"The API does ...\" }"</code>. Only Swagger-compliant documentation-related fields from the <literal>properties</literal> map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a Swagger extension of <code>x-amazon-apigateway-documentation</code>.</p>
-- @param id [String] <p>The <a>DocumentationPart</a> identifier, generated by Amazon API Gateway when the <code>DocumentationPart</code> is created.</p>
-- @param location [DocumentationPartLocation] <p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>
function M.DocumentationPart(properties, id, location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentationPart")
	local t = { 
		["properties"] = properties,
		["id"] = id,
		["location"] = location,
	}
	M.AssertDocumentationPart(t)
	return t
end

local TestInvokeAuthorizerResponse_keys = { "latency" = true, "log" = true, "principalId" = true, "policy" = true, "claims" = true, "authorization" = true, "clientStatus" = true, nil }

function M.AssertTestInvokeAuthorizerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestInvokeAuthorizerResponse to be of type 'table'")
	if struct["latency"] then M.AssertLong(struct["latency"]) end
	if struct["log"] then M.AssertString(struct["log"]) end
	if struct["principalId"] then M.AssertString(struct["principalId"]) end
	if struct["policy"] then M.AssertString(struct["policy"]) end
	if struct["claims"] then M.AssertMapOfStringToString(struct["claims"]) end
	if struct["authorization"] then M.AssertMapOfStringToList(struct["authorization"]) end
	if struct["clientStatus"] then M.AssertInteger(struct["clientStatus"]) end
	for k,_ in pairs(struct) do
		assert(TestInvokeAuthorizerResponse_keys[k], "TestInvokeAuthorizerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestInvokeAuthorizerResponse
-- <p>Represents the response of the test invoke request for a custom <a>Authorizer</a></p>
-- @param latency [Long] <p>The execution latency of the test authorizer request.</p>
-- @param log [String] <p>The Amazon API Gateway execution log for the test authorizer request.</p>
-- @param principalId [String] <p>The principal identity returned by the <a>Authorizer</a></p>
-- @param policy [String] <p>The JSON policy document returned by the <a>Authorizer</a></p>
-- @param claims [MapOfStringToString] <p>The <a href="http://openid.net/specs/openid-connect-core-1_0.html#StandardClaims">open identity claims</a>, with any supported custom attributes, returned from the Cognito Your User Pool configured for the API.</p>
-- @param authorization [MapOfStringToList] <p>Represents the response of the test invoke request for a custom <a>Authorizer</a></p>
-- @param clientStatus [Integer] <p>The HTTP status code that the client would have received. Value is 0 if the authorizer succeeded.</p>
function M.TestInvokeAuthorizerResponse(latency, log, principalId, policy, claims, authorization, clientStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestInvokeAuthorizerResponse")
	local t = { 
		["latency"] = latency,
		["log"] = log,
		["principalId"] = principalId,
		["policy"] = policy,
		["claims"] = claims,
		["authorization"] = authorization,
		["clientStatus"] = clientStatus,
	}
	M.AssertTestInvokeAuthorizerResponse(t)
	return t
end

local GetClientCertificateRequest_keys = { "clientCertificateId" = true, nil }

function M.AssertGetClientCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetClientCertificateRequest to be of type 'table'")
	assert(struct["clientCertificateId"], "Expected key clientCertificateId to exist in table")
	if struct["clientCertificateId"] then M.AssertString(struct["clientCertificateId"]) end
	for k,_ in pairs(struct) do
		assert(GetClientCertificateRequest_keys[k], "GetClientCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetClientCertificateRequest
-- <p>A request to get information about the current <a>ClientCertificate</a> resource.</p>
-- @param clientCertificateId [String] <p>The identifier of the <a>ClientCertificate</a> resource to be described.</p>
-- Required parameter: clientCertificateId
function M.GetClientCertificateRequest(clientCertificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetClientCertificateRequest")
	local t = { 
		["clientCertificateId"] = clientCertificateId,
	}
	M.AssertGetClientCertificateRequest(t)
	return t
end

local GetIntegrationRequest_keys = { "resourceId" = true, "restApiId" = true, "httpMethod" = true, nil }

function M.AssertGetIntegrationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntegrationRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(GetIntegrationRequest_keys[k], "GetIntegrationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntegrationRequest
-- <p>Represents a get integration request.</p>
-- @param resourceId [String] <p>Specifies a get integration request's resource identifier</p>
-- @param restApiId [String] <p>Specifies a get integration request's API identifier.</p>
-- @param httpMethod [String] <p>Specifies a get integration request's HTTP method.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
function M.GetIntegrationRequest(resourceId, restApiId, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIntegrationRequest")
	local t = { 
		["resourceId"] = resourceId,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
	}
	M.AssertGetIntegrationRequest(t)
	return t
end

local SdkResponse_keys = { "body" = true, "contentType" = true, "contentDisposition" = true, nil }

function M.AssertSdkResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SdkResponse to be of type 'table'")
	if struct["body"] then M.AssertBlob(struct["body"]) end
	if struct["contentType"] then M.AssertString(struct["contentType"]) end
	if struct["contentDisposition"] then M.AssertString(struct["contentDisposition"]) end
	for k,_ in pairs(struct) do
		assert(SdkResponse_keys[k], "SdkResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SdkResponse
-- <p>The binary blob response to <a>GetSdk</a>, which contains the generated SDK.</p>
-- @param body [Blob] <p>The binary blob response to <a>GetSdk</a>, which contains the generated SDK.</p>
-- @param contentType [String] <p>The content-type header value in the HTTP response.</p>
-- @param contentDisposition [String] <p>The content-disposition header value in the HTTP response.</p>
function M.SdkResponse(body, contentType, contentDisposition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SdkResponse")
	local t = { 
		["body"] = body,
		["contentType"] = contentType,
		["contentDisposition"] = contentDisposition,
	}
	M.AssertSdkResponse(t)
	return t
end

local Account_keys = { "cloudwatchRoleArn" = true, "throttleSettings" = true, "features" = true, "apiKeyVersion" = true, nil }

function M.AssertAccount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Account to be of type 'table'")
	if struct["cloudwatchRoleArn"] then M.AssertString(struct["cloudwatchRoleArn"]) end
	if struct["throttleSettings"] then M.AssertThrottleSettings(struct["throttleSettings"]) end
	if struct["features"] then M.AssertListOfString(struct["features"]) end
	if struct["apiKeyVersion"] then M.AssertString(struct["apiKeyVersion"]) end
	for k,_ in pairs(struct) do
		assert(Account_keys[k], "Account contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Account
-- <p>Represents an AWS account that is associated with Amazon API Gateway.</p> <div class="remarks"> <p>To view the account info, call <code>GET</code> on this resource.</p> <h4>Error Codes</h4> <p>The following exception may be thrown when the request fails.</p> <ul> <li>UnauthorizedException</li> <li>NotFoundException</li> <li>TooManyRequestsException</li> </ul> <p>For detailed error code information, including the corresponding HTTP Status Codes, see <a href="http://docs.aws.amazon.com/apigateway/api-reference/handling-errors/#api-error-codes">API Gateway Error Codes</a></p> <h4>Example: Get the information about an account.</h4> <h5>Request</h5> <pre><code>GET /account HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160531T184618Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash} </code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/account-apigateway-{rel}.html", "name": "account", "templated": true }, "self": { "href": "/account" }, "account:update": { "href": "/account" } }, "cloudwatchRoleArn": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "throttleSettings": { "rateLimit": 500, "burstLimit": 1000 } } </code></pre> <p>In addition to making the REST API call directly, you can use the AWS CLI and an AWS SDK to access this resource.</p> </div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-limits.html">API Gateway Limits</a> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html">Developer Guide</a>, <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-account.html">AWS CLI</a> </div>
-- @param cloudwatchRoleArn [String] <p>The ARN of an Amazon CloudWatch role for the current <a>Account</a>. </p>
-- @param throttleSettings [ThrottleSettings] <p>Specifies the API request limits configured for the current <a>Account</a>.</p>
-- @param features [ListOfString] <p>A list of features supported for the account. When usage plans are enabled, the features list will include an entry of <code>"UsagePlans"</code>.</p>
-- @param apiKeyVersion [String] <p>The version of the API keys used for the account.</p>
function M.Account(cloudwatchRoleArn, throttleSettings, features, apiKeyVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Account")
	local t = { 
		["cloudwatchRoleArn"] = cloudwatchRoleArn,
		["throttleSettings"] = throttleSettings,
		["features"] = features,
		["apiKeyVersion"] = apiKeyVersion,
	}
	M.AssertAccount(t)
	return t
end

local UpdateBasePathMappingRequest_keys = { "basePath" = true, "patchOperations" = true, "domainName" = true, nil }

function M.AssertUpdateBasePathMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBasePathMappingRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["basePath"], "Expected key basePath to exist in table")
	if struct["basePath"] then M.AssertString(struct["basePath"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["domainName"] then M.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateBasePathMappingRequest_keys[k], "UpdateBasePathMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBasePathMappingRequest
-- <p>A request to change information about the <a>BasePathMapping</a> resource.</p>
-- @param basePath [String] <p>The base path of the <a>BasePathMapping</a> resource to change.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- @param domainName [String] <p>The domain name of the <a>BasePathMapping</a> resource to change.</p>
-- Required parameter: domainName
-- Required parameter: basePath
function M.UpdateBasePathMappingRequest(basePath, patchOperations, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBasePathMappingRequest")
	local t = { 
		["basePath"] = basePath,
		["patchOperations"] = patchOperations,
		["domainName"] = domainName,
	}
	M.AssertUpdateBasePathMappingRequest(t)
	return t
end

local GetStagesRequest_keys = { "deploymentId" = true, "restApiId" = true, nil }

function M.AssertGetStagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStagesRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["deploymentId"] then M.AssertString(struct["deploymentId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(GetStagesRequest_keys[k], "GetStagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStagesRequest
-- <p>Requests Amazon API Gateway to get information about one or more <a>Stage</a> resources.</p>
-- @param deploymentId [String] <p>The stages' deployment identifiers.</p>
-- @param restApiId [String] <p>The stages' API identifiers.</p>
-- Required parameter: restApiId
function M.GetStagesRequest(deploymentId, restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStagesRequest")
	local t = { 
		["deploymentId"] = deploymentId,
		["restApiId"] = restApiId,
	}
	M.AssertGetStagesRequest(t)
	return t
end

local GetRestApisRequest_keys = { "position" = true, "limit" = true, nil }

function M.AssertGetRestApisRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRestApisRequest to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetRestApisRequest_keys[k], "GetRestApisRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRestApisRequest
-- <p>The GET request to list existing <a>RestApis</a> defined for your collection.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
function M.GetRestApisRequest(position, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRestApisRequest")
	local t = { 
		["position"] = position,
		["limit"] = limit,
	}
	M.AssertGetRestApisRequest(t)
	return t
end

local DeleteDocumentationPartRequest_keys = { "documentationPartId" = true, "restApiId" = true, nil }

function M.AssertDeleteDocumentationPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDocumentationPartRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationPartId"], "Expected key documentationPartId to exist in table")
	if struct["documentationPartId"] then M.AssertString(struct["documentationPartId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDocumentationPartRequest_keys[k], "DeleteDocumentationPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDocumentationPartRequest
-- <p>Deletes an existing documentation part of an API.</p>
-- @param documentationPartId [String] <p>[Required] The identifier of the to-be-deleted documentation part.</p>
-- @param restApiId [String] <p>[Required] Specifies the identifier of an API of the to-be-deleted documentation part.</p>
-- Required parameter: restApiId
-- Required parameter: documentationPartId
function M.DeleteDocumentationPartRequest(documentationPartId, restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDocumentationPartRequest")
	local t = { 
		["documentationPartId"] = documentationPartId,
		["restApiId"] = restApiId,
	}
	M.AssertDeleteDocumentationPartRequest(t)
	return t
end

local GetStageRequest_keys = { "restApiId" = true, "stageName" = true, nil }

function M.AssertGetStageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStageRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(GetStageRequest_keys[k], "GetStageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStageRequest
-- <p>Requests Amazon API Gateway to get information about a <a>Stage</a> resource.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Stage</a> resource to get information about.</p>
-- @param stageName [String] <p>The name of the <a>Stage</a> resource to get information about.</p>
-- Required parameter: restApiId
-- Required parameter: stageName
function M.GetStageRequest(restApiId, stageName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStageRequest")
	local t = { 
		["restApiId"] = restApiId,
		["stageName"] = stageName,
	}
	M.AssertGetStageRequest(t)
	return t
end

local DeleteUsagePlanRequest_keys = { "usagePlanId" = true, nil }

function M.AssertDeleteUsagePlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUsagePlanRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	if struct["usagePlanId"] then M.AssertString(struct["usagePlanId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUsagePlanRequest_keys[k], "DeleteUsagePlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUsagePlanRequest
-- <p>The DELETE request to delete a uasge plan of a given plan Id.</p>
-- @param usagePlanId [String] <p>The Id of the to-be-deleted usage plan.</p>
-- Required parameter: usagePlanId
function M.DeleteUsagePlanRequest(usagePlanId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUsagePlanRequest")
	local t = { 
		["usagePlanId"] = usagePlanId,
	}
	M.AssertDeleteUsagePlanRequest(t)
	return t
end

local Deployments_keys = { "position" = true, "items" = true, nil }

function M.AssertDeployments(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployments to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfDeployment(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(Deployments_keys[k], "Deployments contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployments
-- <p>Represents a collection resource that contains zero or more references to your existing deployments, and links that guide you on how to interact with your collection. The collection offers a paginated view of the contained deployments.</p> <div class="remarks">To create a new deployment of a <a>RestApi</a>, make a <code>POST</code> request against this resource. To view, update, or delete an existing deployment, make a <code>GET</code>, <code>PATCH</code>, or <code>DELETE</code> request, respectively, on a specified <a>Deployment</a> resource.</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html">Deploying an API</a>, <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html">AWS CLI</a>, <a href="https://aws.amazon.com/tools/">AWS SDKs</a> </div>
-- @param position [String] <p>Represents a collection resource that contains zero or more references to your existing deployments, and links that guide you on how to interact with your collection. The collection offers a paginated view of the contained deployments.</p> <div class="remarks">To create a new deployment of a <a>RestApi</a>, make a <code>POST</code> request against this resource. To view, update, or delete an existing deployment, make a <code>GET</code>, <code>PATCH</code>, or <code>DELETE</code> request, respectively, on a specified <a>Deployment</a> resource.</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html">Deploying an API</a>, <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html">AWS CLI</a>, <a href="https://aws.amazon.com/tools/">AWS SDKs</a> </div>
-- @param items [ListOfDeployment] <p>The current page of any <a>Deployment</a> resources in the collection of deployment resources.</p>
function M.Deployments(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Deployments")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertDeployments(t)
	return t
end

local ApiKeys_keys = { "position" = true, "items" = true, "warnings" = true, nil }

function M.AssertApiKeys(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiKeys to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfApiKey(struct["items"]) end
	if struct["warnings"] then M.AssertListOfString(struct["warnings"]) end
	for k,_ in pairs(struct) do
		assert(ApiKeys_keys[k], "ApiKeys contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiKeys
-- <p>Represents a collection of API keys as represented by an <a>ApiKeys</a> resource.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html">Use API Keys</a> </div>
-- @param position [String] <p>Represents a collection of API keys as represented by an <a>ApiKeys</a> resource.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html">Use API Keys</a> </div>
-- @param items [ListOfApiKey] <p>The current page of any <a>ApiKey</a> resources in the collection of <a>ApiKey</a> resources.</p>
-- @param warnings [ListOfString] <p>A list of warning messages logged during the import of API keys when the <code>failOnWarnings</code> option is set to true.</p>
function M.ApiKeys(position, items, warnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApiKeys")
	local t = { 
		["position"] = position,
		["items"] = items,
		["warnings"] = warnings,
	}
	M.AssertApiKeys(t)
	return t
end

local ImportRestApiRequest_keys = { "body" = true, "failOnWarnings" = true, "parameters" = true, nil }

function M.AssertImportRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportRestApiRequest to be of type 'table'")
	assert(struct["body"], "Expected key body to exist in table")
	if struct["body"] then M.AssertBlob(struct["body"]) end
	if struct["failOnWarnings"] then M.AssertBoolean(struct["failOnWarnings"]) end
	if struct["parameters"] then M.AssertMapOfStringToString(struct["parameters"]) end
	for k,_ in pairs(struct) do
		assert(ImportRestApiRequest_keys[k], "ImportRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportRestApiRequest
-- <p>A POST request to import an API to Amazon API Gateway using an input of an API definition file.</p>
-- @param body [Blob] <p>The POST request body containing external API definitions. Currently, only Swagger definition JSON files are supported.</p>
-- @param failOnWarnings [Boolean] <p>A query parameter to indicate whether to rollback the API creation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
-- @param parameters [MapOfStringToString] <p>Custom header parameters as part of the request.</p>
-- Required parameter: body
function M.ImportRestApiRequest(body, failOnWarnings, parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportRestApiRequest")
	local t = { 
		["body"] = body,
		["failOnWarnings"] = failOnWarnings,
		["parameters"] = parameters,
	}
	M.AssertImportRestApiRequest(t)
	return t
end

local UpdateDomainNameRequest_keys = { "patchOperations" = true, "domainName" = true, nil }

function M.AssertUpdateDomainNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDomainNameRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["domainName"] then M.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDomainNameRequest_keys[k], "UpdateDomainNameRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDomainNameRequest
-- <p>A request to change information about the <a>DomainName</a> resource.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- @param domainName [String] <p>The name of the <a>DomainName</a> resource to be changed.</p>
-- Required parameter: domainName
function M.UpdateDomainNameRequest(patchOperations, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDomainNameRequest")
	local t = { 
		["patchOperations"] = patchOperations,
		["domainName"] = domainName,
	}
	M.AssertUpdateDomainNameRequest(t)
	return t
end

local CreateRequestValidatorRequest_keys = { "validateRequestParameters" = true, "validateRequestBody" = true, "restApiId" = true, "name" = true, nil }

function M.AssertCreateRequestValidatorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRequestValidatorRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["validateRequestParameters"] then M.AssertBoolean(struct["validateRequestParameters"]) end
	if struct["validateRequestBody"] then M.AssertBoolean(struct["validateRequestBody"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(CreateRequestValidatorRequest_keys[k], "CreateRequestValidatorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRequestValidatorRequest
-- <p>Creates a <a>RequestValidator</a> of a given <a>RestApi</a>.</p>
-- @param validateRequestParameters [Boolean] <p>A Boolean flag to indicate whether to validate request parameters, <code>true</code>, or not <code>false</code>.</p>
-- @param validateRequestBody [Boolean] <p>A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (<code>true</code>) or not (<code>false</code>).</p>
-- @param restApiId [String] <p>[Required] The identifier of the <a>RestApi</a> for which the <a>RequestValidator</a> is created.</p>
-- @param name [String] <p>The name of the to-be-created <a>RequestValidator</a>.</p>
-- Required parameter: restApiId
function M.CreateRequestValidatorRequest(validateRequestParameters, validateRequestBody, restApiId, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRequestValidatorRequest")
	local t = { 
		["validateRequestParameters"] = validateRequestParameters,
		["validateRequestBody"] = validateRequestBody,
		["restApiId"] = restApiId,
		["name"] = name,
	}
	M.AssertCreateRequestValidatorRequest(t)
	return t
end

local DeleteDeploymentRequest_keys = { "deploymentId" = true, "restApiId" = true, nil }

function M.AssertDeleteDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeploymentRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["deploymentId"] then M.AssertString(struct["deploymentId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDeploymentRequest_keys[k], "DeleteDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeploymentRequest
-- <p>Requests Amazon API Gateway to delete a <a>Deployment</a> resource.</p>
-- @param deploymentId [String] <p>The identifier of the <a>Deployment</a> resource to delete.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Deployment</a> resource to delete.</p>
-- Required parameter: restApiId
-- Required parameter: deploymentId
function M.DeleteDeploymentRequest(deploymentId, restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeploymentRequest")
	local t = { 
		["deploymentId"] = deploymentId,
		["restApiId"] = restApiId,
	}
	M.AssertDeleteDeploymentRequest(t)
	return t
end

local UsagePlanKey_keys = { "type" = true, "id" = true, "value" = true, "name" = true, nil }

function M.AssertUsagePlanKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsagePlanKey to be of type 'table'")
	if struct["type"] then M.AssertString(struct["type"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["value"] then M.AssertString(struct["value"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(UsagePlanKey_keys[k], "UsagePlanKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsagePlanKey
-- <p>Represents a usage plan key to identify a plan customer.</p> <div class="remarks"> <p>To associate an API stage with a selected API key in a usage plan, you must create a UsagePlanKey resource to represent the selected <a>ApiKey</a>.</p> </div>" <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param type [String] <p>The type of a usage plan key. Currently, the valid key type is <code>API_KEY</code>.</p>
-- @param id [String] <p>The Id of a usage plan key.</p>
-- @param value [String] <p>The value of a usage plan key.</p>
-- @param name [String] <p>The name of a usage plan key.</p>
function M.UsagePlanKey(type, id, value, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsagePlanKey")
	local t = { 
		["type"] = type,
		["id"] = id,
		["value"] = value,
		["name"] = name,
	}
	M.AssertUsagePlanKey(t)
	return t
end

local DeleteStageRequest_keys = { "restApiId" = true, "stageName" = true, nil }

function M.AssertDeleteStageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStageRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteStageRequest_keys[k], "DeleteStageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStageRequest
-- <p>Requests Amazon API Gateway to delete a <a>Stage</a> resource.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Stage</a> resource to delete.</p>
-- @param stageName [String] <p>The name of the <a>Stage</a> resource to delete.</p>
-- Required parameter: restApiId
-- Required parameter: stageName
function M.DeleteStageRequest(restApiId, stageName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStageRequest")
	local t = { 
		["restApiId"] = restApiId,
		["stageName"] = stageName,
	}
	M.AssertDeleteStageRequest(t)
	return t
end

local GetExportRequest_keys = { "exportType" = true, "accepts" = true, "restApiId" = true, "parameters" = true, "stageName" = true, nil }

function M.AssertGetExportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExportRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["exportType"], "Expected key exportType to exist in table")
	if struct["exportType"] then M.AssertString(struct["exportType"]) end
	if struct["accepts"] then M.AssertString(struct["accepts"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["parameters"] then M.AssertMapOfStringToString(struct["parameters"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(GetExportRequest_keys[k], "GetExportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExportRequest
-- <p>Request a new export of a <a>RestApi</a> for a particular <a>Stage</a>.</p>
-- @param exportType [String] <p>The type of export. Currently only 'swagger' is supported.</p>
-- @param accepts [String] <p>The content-type of the export, for example <code>application/json</code>. Currently <code>application/json</code> and <code>application/yaml</code> are supported for <code>exportType</code> of <code>swagger</code>. This should be specified in the <code>Accept</code> header for direct API requests.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> to be exported.</p>
-- @param parameters [MapOfStringToString] <p>A key-value map of query string parameters that specify properties of the export, depending on the requested <code>exportType</code>. For <code>exportType</code> <code>swagger</code>, any combination of the following parameters are supported: <code>integrations</code> will export the API with x-amazon-apigateway-integration extensions. <code>authorizers</code> will export the API with x-amazon-apigateway-authorizer extensions. <code>postman</code> will export the API with Postman extensions, allowing for import to the Postman tool</p>
-- @param stageName [String] <p>The name of the <a>Stage</a> that will be exported.</p>
-- Required parameter: restApiId
-- Required parameter: stageName
-- Required parameter: exportType
function M.GetExportRequest(exportType, accepts, restApiId, parameters, stageName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetExportRequest")
	local t = { 
		["exportType"] = exportType,
		["accepts"] = accepts,
		["restApiId"] = restApiId,
		["parameters"] = parameters,
		["stageName"] = stageName,
	}
	M.AssertGetExportRequest(t)
	return t
end

local GetDomainNamesRequest_keys = { "position" = true, "limit" = true, nil }

function M.AssertGetDomainNamesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDomainNamesRequest to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetDomainNamesRequest_keys[k], "GetDomainNamesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDomainNamesRequest
-- <p>Request to describe a collection of <a>DomainName</a> resources.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
function M.GetDomainNamesRequest(position, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDomainNamesRequest")
	local t = { 
		["position"] = position,
		["limit"] = limit,
	}
	M.AssertGetDomainNamesRequest(t)
	return t
end

local CreateStageRequest_keys = { "restApiId" = true, "description" = true, "stageName" = true, "cacheClusterSize" = true, "variables" = true, "cacheClusterEnabled" = true, "documentationVersion" = true, "deploymentId" = true, nil }

function M.AssertCreateStageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStageRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	if struct["cacheClusterSize"] then M.AssertCacheClusterSize(struct["cacheClusterSize"]) end
	if struct["variables"] then M.AssertMapOfStringToString(struct["variables"]) end
	if struct["cacheClusterEnabled"] then M.AssertBoolean(struct["cacheClusterEnabled"]) end
	if struct["documentationVersion"] then M.AssertString(struct["documentationVersion"]) end
	if struct["deploymentId"] then M.AssertString(struct["deploymentId"]) end
	for k,_ in pairs(struct) do
		assert(CreateStageRequest_keys[k], "CreateStageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStageRequest
-- <p>Requests Amazon API Gateway to create a <a>Stage</a> resource.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Stage</a> resource to create.</p>
-- @param description [String] <p>The description of the <a>Stage</a> resource.</p>
-- @param stageName [String] <p>The name for the <a>Stage</a> resource.</p>
-- @param cacheClusterSize [CacheClusterSize] <p>The stage's cache cluster size.</p>
-- @param variables [MapOfStringToString] <p>A map that defines the stage variables for the new <a>Stage</a> resource. Variable names can have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&amp;=,]+</code>.</p>
-- @param cacheClusterEnabled [Boolean] <p>Whether cache clustering is enabled for the stage.</p>
-- @param documentationVersion [String] <p>The version of the associated API documentation.</p>
-- @param deploymentId [String] <p>The identifier of the <a>Deployment</a> resource for the <a>Stage</a> resource.</p>
-- Required parameter: restApiId
-- Required parameter: stageName
-- Required parameter: deploymentId
function M.CreateStageRequest(restApiId, description, stageName, cacheClusterSize, variables, cacheClusterEnabled, documentationVersion, deploymentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStageRequest")
	local t = { 
		["restApiId"] = restApiId,
		["description"] = description,
		["stageName"] = stageName,
		["cacheClusterSize"] = cacheClusterSize,
		["variables"] = variables,
		["cacheClusterEnabled"] = cacheClusterEnabled,
		["documentationVersion"] = documentationVersion,
		["deploymentId"] = deploymentId,
	}
	M.AssertCreateStageRequest(t)
	return t
end

local ApiKeyIds_keys = { "ids" = true, "warnings" = true, nil }

function M.AssertApiKeyIds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiKeyIds to be of type 'table'")
	if struct["ids"] then M.AssertListOfString(struct["ids"]) end
	if struct["warnings"] then M.AssertListOfString(struct["warnings"]) end
	for k,_ in pairs(struct) do
		assert(ApiKeyIds_keys[k], "ApiKeyIds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiKeyIds
-- <p>The identifier of an <a>ApiKey</a> used in a <a>UsagePlan</a>.</p>
-- @param ids [ListOfString] <p>A list of all the <a>ApiKey</a> identifiers.</p>
-- @param warnings [ListOfString] <p>A list of warning messages.</p>
function M.ApiKeyIds(ids, warnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApiKeyIds")
	local t = { 
		["ids"] = ids,
		["warnings"] = warnings,
	}
	M.AssertApiKeyIds(t)
	return t
end

local GetMethodResponseRequest_keys = { "resourceId" = true, "statusCode" = true, "restApiId" = true, "httpMethod" = true, nil }

function M.AssertGetMethodResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMethodResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then M.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(GetMethodResponseRequest_keys[k], "GetMethodResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMethodResponseRequest
-- <p>Request to describe a <a>MethodResponse</a> resource.</p>
-- @param resourceId [String] <p>The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
-- @param statusCode [StatusCode] <p>The status code for the <a>MethodResponse</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>MethodResponse</a> resource.</p>
-- @param httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
-- Required parameter: statusCode
function M.GetMethodResponseRequest(resourceId, statusCode, restApiId, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMethodResponseRequest")
	local t = { 
		["resourceId"] = resourceId,
		["statusCode"] = statusCode,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
	}
	M.AssertGetMethodResponseRequest(t)
	return t
end

local UpdateClientCertificateRequest_keys = { "clientCertificateId" = true, "patchOperations" = true, nil }

function M.AssertUpdateClientCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClientCertificateRequest to be of type 'table'")
	assert(struct["clientCertificateId"], "Expected key clientCertificateId to exist in table")
	if struct["clientCertificateId"] then M.AssertString(struct["clientCertificateId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateClientCertificateRequest_keys[k], "UpdateClientCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClientCertificateRequest
-- <p>A request to change information about an <a>ClientCertificate</a> resource.</p>
-- @param clientCertificateId [String] <p>The identifier of the <a>ClientCertificate</a> resource to be updated.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: clientCertificateId
function M.UpdateClientCertificateRequest(clientCertificateId, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateClientCertificateRequest")
	local t = { 
		["clientCertificateId"] = clientCertificateId,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateClientCertificateRequest(t)
	return t
end

local DeleteDomainNameRequest_keys = { "domainName" = true, nil }

function M.AssertDeleteDomainNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDomainNameRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["domainName"] then M.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDomainNameRequest_keys[k], "DeleteDomainNameRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDomainNameRequest
-- <p>A request to delete the <a>DomainName</a> resource.</p>
-- @param domainName [String] <p>The name of the <a>DomainName</a> resource to be deleted.</p>
-- Required parameter: domainName
function M.DeleteDomainNameRequest(domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDomainNameRequest")
	local t = { 
		["domainName"] = domainName,
	}
	M.AssertDeleteDomainNameRequest(t)
	return t
end

local DeleteModelRequest_keys = { "modelName" = true, "restApiId" = true, nil }

function M.AssertDeleteModelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteModelRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["modelName"], "Expected key modelName to exist in table")
	if struct["modelName"] then M.AssertString(struct["modelName"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteModelRequest_keys[k], "DeleteModelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteModelRequest
-- <p>Request to delete an existing model in an existing <a>RestApi</a> resource.</p>
-- @param modelName [String] <p>The name of the model to delete.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> under which the model will be deleted.</p>
-- Required parameter: restApiId
-- Required parameter: modelName
function M.DeleteModelRequest(modelName, restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteModelRequest")
	local t = { 
		["modelName"] = modelName,
		["restApiId"] = restApiId,
	}
	M.AssertDeleteModelRequest(t)
	return t
end

local Authorizer_keys = { "authType" = true, "name" = true, "providerARNs" = true, "authorizerUri" = true, "identityValidationExpression" = true, "authorizerResultTtlInSeconds" = true, "authorizerCredentials" = true, "identitySource" = true, "type" = true, "id" = true, nil }

function M.AssertAuthorizer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Authorizer to be of type 'table'")
	if struct["authType"] then M.AssertString(struct["authType"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["providerARNs"] then M.AssertListOfARNs(struct["providerARNs"]) end
	if struct["authorizerUri"] then M.AssertString(struct["authorizerUri"]) end
	if struct["identityValidationExpression"] then M.AssertString(struct["identityValidationExpression"]) end
	if struct["authorizerResultTtlInSeconds"] then M.AssertNullableInteger(struct["authorizerResultTtlInSeconds"]) end
	if struct["authorizerCredentials"] then M.AssertString(struct["authorizerCredentials"]) end
	if struct["identitySource"] then M.AssertString(struct["identitySource"]) end
	if struct["type"] then M.AssertAuthorizerType(struct["type"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(Authorizer_keys[k], "Authorizer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Authorizer
-- <p>Represents an authorization layer for methods. If enabled on a method, API Gateway will activate the authorizer when a client calls the method.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html">Enable custom authorization</a> </div>
-- @param authType [String] <p>Optional customer-defined field, used in Swagger imports/exports. Has no functional impact.</p>
-- @param name [String] <p>[Required] The name of the authorizer.</p>
-- @param providerARNs [ListOfARNs] <p>A list of the provider ARNs of the authorizer. For an <code>TOKEN</code> authorizer, this is not defined. For authorizers of the <code>COGNITO_USER_POOLS</code> type, each element corresponds to a user pool ARN of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. </p>
-- @param authorizerUri [String] <p>[Required] Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations.</p>
-- @param identityValidationExpression [String] <p>A validation expression for the incoming identity. For <code>TOKEN</code> authorizers, this value should be a regular expression. The incoming token from the client is matched against this expression, and will proceed if the token matches. If the token doesn't match, the client receives a 401 Unauthorized response.</p>
-- @param authorizerResultTtlInSeconds [NullableInteger] <p>The TTL in seconds of cached authorizer results. If greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
-- @param authorizerCredentials [String] <p>Specifies the credentials required for the authorizer, if any. Two options are available. To specify an IAM role for Amazon API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
-- @param identitySource [String] <p>[Required] The source of the identity in an incoming request. For a <code>TOKEN</code> authorizer, this value is a mapping expression with the same syntax as integration parameter mappings. The only valid source for tokens is 'header', so the expression should match 'method.request.header.[headerName]'. The value of the header '[headerName]' will be interpreted as the incoming token. For <code>COGNITO_USER_POOLS</code> authorizers, this property is used.</p>
-- @param type [AuthorizerType] <p>[Required] The type of the authorizer. Currently, the valid type is <code>TOKEN</code> for a Lambda function or <code>COGNITO_USER_POOLS</code> for an Amazon Cognito user pool.</p>
-- @param id [String] <p>The identifier for the authorizer resource.</p>
function M.Authorizer(authType, name, providerARNs, authorizerUri, identityValidationExpression, authorizerResultTtlInSeconds, authorizerCredentials, identitySource, type, id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Authorizer")
	local t = { 
		["authType"] = authType,
		["name"] = name,
		["providerARNs"] = providerARNs,
		["authorizerUri"] = authorizerUri,
		["identityValidationExpression"] = identityValidationExpression,
		["authorizerResultTtlInSeconds"] = authorizerResultTtlInSeconds,
		["authorizerCredentials"] = authorizerCredentials,
		["identitySource"] = identitySource,
		["type"] = type,
		["id"] = id,
	}
	M.AssertAuthorizer(t)
	return t
end

local ImportDocumentationPartsRequest_keys = { "body" = true, "failOnWarnings" = true, "restApiId" = true, "mode" = true, nil }

function M.AssertImportDocumentationPartsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportDocumentationPartsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["body"], "Expected key body to exist in table")
	if struct["body"] then M.AssertBlob(struct["body"]) end
	if struct["failOnWarnings"] then M.AssertBoolean(struct["failOnWarnings"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["mode"] then M.AssertPutMode(struct["mode"]) end
	for k,_ in pairs(struct) do
		assert(ImportDocumentationPartsRequest_keys[k], "ImportDocumentationPartsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportDocumentationPartsRequest
-- <p>Import documentation parts from an external (e.g., Swagger) definition file. </p>
-- @param body [Blob] <p>[Required] Raw byte array representing the to-be-imported documentation parts. To import from a Swagger file, this is a JSON object.</p>
-- @param failOnWarnings [Boolean] <p>A query parameter to specify whether to rollback the documentation importation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
-- @param restApiId [String] <p>[Required] The identifier of an API of the to-be-imported documentation parts.</p>
-- @param mode [PutMode] <p>A query parameter to indicate whether to overwrite (<code>OVERWRITE</code>) any existing <a>DocumentationParts</a> definition or to merge (<code>MERGE</code>) the new definition into the existing one. The default value is <code>MERGE</code>.</p>
-- Required parameter: restApiId
-- Required parameter: body
function M.ImportDocumentationPartsRequest(body, failOnWarnings, restApiId, mode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportDocumentationPartsRequest")
	local t = { 
		["body"] = body,
		["failOnWarnings"] = failOnWarnings,
		["restApiId"] = restApiId,
		["mode"] = mode,
	}
	M.AssertImportDocumentationPartsRequest(t)
	return t
end

local DomainName_keys = { "certificateArn" = true, "distributionDomainName" = true, "certificateUploadDate" = true, "certificateName" = true, "domainName" = true, nil }

function M.AssertDomainName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainName to be of type 'table'")
	if struct["certificateArn"] then M.AssertString(struct["certificateArn"]) end
	if struct["distributionDomainName"] then M.AssertString(struct["distributionDomainName"]) end
	if struct["certificateUploadDate"] then M.AssertTimestamp(struct["certificateUploadDate"]) end
	if struct["certificateName"] then M.AssertString(struct["certificateName"]) end
	if struct["domainName"] then M.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(DomainName_keys[k], "DomainName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainName
-- <p>Represents a domain name that is contained in a simpler, more intuitive URL that can be called.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Client-Side Certificate</a> </div>
-- @param certificateArn [String] <p>The reference to an AWS-managed certificate. AWS Certificate Manager is the only supported source.</p>
-- @param distributionDomainName [String] <p>The domain name of the Amazon CloudFront distribution. For more information, see the <a href="http://aws.amazon.com/documentation/cloudfront/" target="_blank">Amazon CloudFront documentation</a>.</p>
-- @param certificateUploadDate [Timestamp] <p>The timestamp when the certificate was uploaded.</p>
-- @param certificateName [String] <p>The name of the certificate.</p>
-- @param domainName [String] <p>The name of the <a>DomainName</a> resource.</p>
function M.DomainName(certificateArn, distributionDomainName, certificateUploadDate, certificateName, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainName")
	local t = { 
		["certificateArn"] = certificateArn,
		["distributionDomainName"] = distributionDomainName,
		["certificateUploadDate"] = certificateUploadDate,
		["certificateName"] = certificateName,
		["domainName"] = domainName,
	}
	M.AssertDomainName(t)
	return t
end

local CreateDeploymentRequest_keys = { "stageDescription" = true, "restApiId" = true, "description" = true, "stageName" = true, "cacheClusterSize" = true, "variables" = true, "cacheClusterEnabled" = true, nil }

function M.AssertCreateDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["stageDescription"] then M.AssertString(struct["stageDescription"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	if struct["cacheClusterSize"] then M.AssertCacheClusterSize(struct["cacheClusterSize"]) end
	if struct["variables"] then M.AssertMapOfStringToString(struct["variables"]) end
	if struct["cacheClusterEnabled"] then M.AssertNullableBoolean(struct["cacheClusterEnabled"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentRequest_keys[k], "CreateDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentRequest
-- <p>Requests Amazon API Gateway to create a <a>Deployment</a> resource.</p>
-- @param stageDescription [String] <p>The description of the <a>Stage</a> resource for the <a>Deployment</a> resource to create.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> resource identifier for the <a>Deployment</a> resource to create.</p>
-- @param description [String] <p>The description for the <a>Deployment</a> resource to create.</p>
-- @param stageName [String] <p>The name of the <a>Stage</a> resource for the <a>Deployment</a> resource to create.</p>
-- @param cacheClusterSize [CacheClusterSize] <p>Specifies the cache cluster size for the <a>Stage</a> resource specified in the input, if a cache cluster is enabled.</p>
-- @param variables [MapOfStringToString] <p>A map that defines the stage variables for the <a>Stage</a> resource that is associated with the new deployment. Variable names can have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&amp;=,]+</code>.</p>
-- @param cacheClusterEnabled [NullableBoolean] <p>Enables a cache cluster for the <a>Stage</a> resource specified in the input.</p>
-- Required parameter: restApiId
function M.CreateDeploymentRequest(stageDescription, restApiId, description, stageName, cacheClusterSize, variables, cacheClusterEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentRequest")
	local t = { 
		["stageDescription"] = stageDescription,
		["restApiId"] = restApiId,
		["description"] = description,
		["stageName"] = stageName,
		["cacheClusterSize"] = cacheClusterSize,
		["variables"] = variables,
		["cacheClusterEnabled"] = cacheClusterEnabled,
	}
	M.AssertCreateDeploymentRequest(t)
	return t
end

local DeleteBasePathMappingRequest_keys = { "basePath" = true, "domainName" = true, nil }

function M.AssertDeleteBasePathMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBasePathMappingRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["basePath"], "Expected key basePath to exist in table")
	if struct["basePath"] then M.AssertString(struct["basePath"]) end
	if struct["domainName"] then M.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBasePathMappingRequest_keys[k], "DeleteBasePathMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBasePathMappingRequest
-- <p>A request to delete the <a>BasePathMapping</a> resource.</p>
-- @param basePath [String] <p>The base path name of the <a>BasePathMapping</a> resource to delete.</p>
-- @param domainName [String] <p>The domain name of the <a>BasePathMapping</a> resource to delete.</p>
-- Required parameter: domainName
-- Required parameter: basePath
function M.DeleteBasePathMappingRequest(basePath, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBasePathMappingRequest")
	local t = { 
		["basePath"] = basePath,
		["domainName"] = domainName,
	}
	M.AssertDeleteBasePathMappingRequest(t)
	return t
end

local Usage_keys = { "startDate" = true, "items" = true, "usagePlanId" = true, "endDate" = true, "position" = true, nil }

function M.AssertUsage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Usage to be of type 'table'")
	if struct["startDate"] then M.AssertString(struct["startDate"]) end
	if struct["items"] then M.AssertMapOfKeyUsages(struct["items"]) end
	if struct["usagePlanId"] then M.AssertString(struct["usagePlanId"]) end
	if struct["endDate"] then M.AssertString(struct["endDate"]) end
	if struct["position"] then M.AssertString(struct["position"]) end
	for k,_ in pairs(struct) do
		assert(Usage_keys[k], "Usage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Usage
-- <p>Represents the usage data of a usage plan.</p> <div class="remarks"/> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a>, <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-create-usage-plans-with-console.html#api-gateway-usage-plan-manage-usage">Manage Usage in a Usage Plan</a> </div>
-- @param startDate [String] <p>The starting date of the usage data.</p>
-- @param items [MapOfKeyUsages] <p>The usage data, as daily logs of used and remaining quotas, over the specified time interval indexed over the API keys in a usage plan. For example, <code>{..., "values" : { "{api_key}" : [ [0, 100], [10, 90], [100, 10]]}</code>, where <code>{api_key}</code> stands for an API key value and the daily log entry is of the format <code>[used quota, remaining quota]</code>.</p>
-- @param usagePlanId [String] <p>The plan Id associated with this usage data.</p>
-- @param endDate [String] <p>The ending date of the usage data.</p>
-- @param position [String] <p>Represents the usage data of a usage plan.</p> <div class="remarks"/> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a>, <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-create-usage-plans-with-console.html#api-gateway-usage-plan-manage-usage">Manage Usage in a Usage Plan</a> </div>
function M.Usage(startDate, items, usagePlanId, endDate, position, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Usage")
	local t = { 
		["startDate"] = startDate,
		["items"] = items,
		["usagePlanId"] = usagePlanId,
		["endDate"] = endDate,
		["position"] = position,
	}
	M.AssertUsage(t)
	return t
end

local SdkType_keys = { "friendlyName" = true, "configurationProperties" = true, "id" = true, "description" = true, nil }

function M.AssertSdkType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SdkType to be of type 'table'")
	if struct["friendlyName"] then M.AssertString(struct["friendlyName"]) end
	if struct["configurationProperties"] then M.AssertListOfSdkConfigurationProperty(struct["configurationProperties"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(SdkType_keys[k], "SdkType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SdkType
-- <p>A type of SDK that API Gateway can generate.</p>
-- @param friendlyName [String] <p>The user-friendly name of an <a>SdkType</a> instance.</p>
-- @param configurationProperties [ListOfSdkConfigurationProperty] <p>A list of configuration properties of an <a>SdkType</a>.</p>
-- @param id [String] <p>The identifier of an <a>SdkType</a> instance.</p>
-- @param description [String] <p>The description of an <a>SdkType</a>.</p>
function M.SdkType(friendlyName, configurationProperties, id, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SdkType")
	local t = { 
		["friendlyName"] = friendlyName,
		["configurationProperties"] = configurationProperties,
		["id"] = id,
		["description"] = description,
	}
	M.AssertSdkType(t)
	return t
end

local MethodSnapshot_keys = { "apiKeyRequired" = true, "authorizationType" = true, nil }

function M.AssertMethodSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MethodSnapshot to be of type 'table'")
	if struct["apiKeyRequired"] then M.AssertBoolean(struct["apiKeyRequired"]) end
	if struct["authorizationType"] then M.AssertString(struct["authorizationType"]) end
	for k,_ in pairs(struct) do
		assert(MethodSnapshot_keys[k], "MethodSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MethodSnapshot
-- <p>Represents a summary of a <a>Method</a> resource, given a particular date and time.</p>
-- @param apiKeyRequired [Boolean] <p>Specifies whether the method requires a valid <a>ApiKey</a>.</p>
-- @param authorizationType [String] <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
function M.MethodSnapshot(apiKeyRequired, authorizationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MethodSnapshot")
	local t = { 
		["apiKeyRequired"] = apiKeyRequired,
		["authorizationType"] = authorizationType,
	}
	M.AssertMethodSnapshot(t)
	return t
end

local Resource_keys = { "path" = true, "resourceMethods" = true, "id" = true, "pathPart" = true, "parentId" = true, nil }

function M.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	if struct["path"] then M.AssertString(struct["path"]) end
	if struct["resourceMethods"] then M.AssertMapOfMethod(struct["resourceMethods"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["pathPart"] then M.AssertString(struct["pathPart"]) end
	if struct["parentId"] then M.AssertString(struct["parentId"]) end
	for k,_ in pairs(struct) do
		assert(Resource_keys[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- <p>Represents an API resource.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param path [String] <p>The full path for this resource.</p>
-- @param resourceMethods [MapOfMethod] <p>Gets an API resource's method of a given HTTP verb.</p> <div class="remarks"> <p>The resource methods are a map of methods indexed by methods' HTTP verbs enabled on the resource. This method map is included in the <code>200 OK</code> response of the <code>GET /restapis/{restapi_id}/resources/{resource_id}</code> or <code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code> request.</p> <h4>Example: Get the GET method of an API resource</h4> <h5>Request</h5> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20170223T031827Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20170223/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <pre><code>{ "_links": { "curies": [ { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html", "name": "integration", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-{rel}.html", "name": "method", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true } ], "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET", "name": "GET", "title": "GET" }, "integration:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "method:integration": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "method:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "methodresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/{status_code}", "templated": true } }, "apiKeyRequired": false, "authorizationType": "NONE", "httpMethod": "GET", "_embedded": { "method:integration": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integration:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integrationresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/{status_code}", "templated": true } }, "cacheKeyParameters": [], "cacheNamespace": "3kzxbg5sa2", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestParameters": { "integration.request.header.Content-Type": "'application/x-amz-json-1.1'" }, "requestTemplates": { "application/json": "{\n}" }, "type": "AWS", "uri": "arn:aws:apigateway:us-east-1:kinesis:action/ListStreams", "_embedded": { "integration:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\")\n" }, "statusCode": "200" } } }, "method:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.Content-Type": false }, "statusCode": "200" } } }</code></pre> <p>If the <code>OPTIONS</code> is enabled on the resource, you can follow the example here to get that method. Just replace the <code>GET</code> of the last path segment in the request URL with <code>OPTIONS</code>.</p> </div> <div class="seeAlso"> </div>
-- @param id [String] <p>The resource's identifier.</p>
-- @param pathPart [String] <p>The last path segment for this resource.</p>
-- @param parentId [String] <p>The parent resource's identifier.</p>
function M.Resource(path, resourceMethods, id, pathPart, parentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Resource")
	local t = { 
		["path"] = path,
		["resourceMethods"] = resourceMethods,
		["id"] = id,
		["pathPart"] = pathPart,
		["parentId"] = parentId,
	}
	M.AssertResource(t)
	return t
end

local DeleteUsagePlanKeyRequest_keys = { "keyId" = true, "usagePlanId" = true, nil }

function M.AssertDeleteUsagePlanKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUsagePlanKeyRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	assert(struct["keyId"], "Expected key keyId to exist in table")
	if struct["keyId"] then M.AssertString(struct["keyId"]) end
	if struct["usagePlanId"] then M.AssertString(struct["usagePlanId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUsagePlanKeyRequest_keys[k], "DeleteUsagePlanKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUsagePlanKeyRequest
-- <p>The DELETE request to delete a usage plan key and remove the underlying API key from the associated usage plan.</p>
-- @param keyId [String] <p>The Id of the <a>UsagePlanKey</a> resource to be deleted.</p>
-- @param usagePlanId [String] <p>The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-deleted <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- Required parameter: usagePlanId
-- Required parameter: keyId
function M.DeleteUsagePlanKeyRequest(keyId, usagePlanId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUsagePlanKeyRequest")
	local t = { 
		["keyId"] = keyId,
		["usagePlanId"] = usagePlanId,
	}
	M.AssertDeleteUsagePlanKeyRequest(t)
	return t
end

local DomainNames_keys = { "position" = true, "items" = true, nil }

function M.AssertDomainNames(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainNames to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfDomainName(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(DomainNames_keys[k], "DomainNames contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainNames
-- <p>Represents a collection of <a>DomainName</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Client-Side Certificate</a> </div>
-- @param position [String] <p>Represents a collection of <a>DomainName</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Client-Side Certificate</a> </div>
-- @param items [ListOfDomainName] <p>The current page of any <a>DomainName</a> resources in the collection of <a>DomainName</a> resources.</p>
function M.DomainNames(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainNames")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertDomainNames(t)
	return t
end

local FlushStageAuthorizersCacheRequest_keys = { "restApiId" = true, "stageName" = true, nil }

function M.AssertFlushStageAuthorizersCacheRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FlushStageAuthorizersCacheRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(FlushStageAuthorizersCacheRequest_keys[k], "FlushStageAuthorizersCacheRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FlushStageAuthorizersCacheRequest
-- <p>Request to flush authorizer cache entries on a specified stage.</p>
-- @param restApiId [String] <p>The API identifier of the stage to flush.</p>
-- @param stageName [String] <p>The name of the stage to flush.</p>
-- Required parameter: restApiId
-- Required parameter: stageName
function M.FlushStageAuthorizersCacheRequest(restApiId, stageName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FlushStageAuthorizersCacheRequest")
	local t = { 
		["restApiId"] = restApiId,
		["stageName"] = stageName,
	}
	M.AssertFlushStageAuthorizersCacheRequest(t)
	return t
end

local DeleteClientCertificateRequest_keys = { "clientCertificateId" = true, nil }

function M.AssertDeleteClientCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClientCertificateRequest to be of type 'table'")
	assert(struct["clientCertificateId"], "Expected key clientCertificateId to exist in table")
	if struct["clientCertificateId"] then M.AssertString(struct["clientCertificateId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClientCertificateRequest_keys[k], "DeleteClientCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClientCertificateRequest
-- <p>A request to delete the <a>ClientCertificate</a> resource.</p>
-- @param clientCertificateId [String] <p>The identifier of the <a>ClientCertificate</a> resource to be deleted.</p>
-- Required parameter: clientCertificateId
function M.DeleteClientCertificateRequest(clientCertificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClientCertificateRequest")
	local t = { 
		["clientCertificateId"] = clientCertificateId,
	}
	M.AssertDeleteClientCertificateRequest(t)
	return t
end

local DocumentationVersion_keys = { "version" = true, "description" = true, "createdDate" = true, nil }

function M.AssertDocumentationVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationVersion to be of type 'table'")
	if struct["version"] then M.AssertString(struct["version"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	for k,_ in pairs(struct) do
		assert(DocumentationVersion_keys[k], "DocumentationVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationVersion
-- <p>A snapshot of the documentation of an API.</p> <div class="remarks"><p>Publishing API documentation involves creating a documentation version associated with an API stage and exporting the versioned documentation to an external (e.g., Swagger) file.</p></div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a>, <a>DocumentationVersions</a> </div>
-- @param version [String] <p>The version identifier of the API documentation snapshot.</p>
-- @param description [String] <p>The description of the API documentation snapshot.</p>
-- @param createdDate [Timestamp] <p>The date when the API documentation snapshot is created.</p>
function M.DocumentationVersion(version, description, createdDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentationVersion")
	local t = { 
		["version"] = version,
		["description"] = description,
		["createdDate"] = createdDate,
	}
	M.AssertDocumentationVersion(t)
	return t
end

local GetModelsRequest_keys = { "position" = true, "restApiId" = true, "limit" = true, nil }

function M.AssertGetModelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetModelsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetModelsRequest_keys[k], "GetModelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetModelsRequest
-- <p>Request to list existing <a>Models</a> defined for a <a>RestApi</a> resource.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- Required parameter: restApiId
function M.GetModelsRequest(position, restApiId, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetModelsRequest")
	local t = { 
		["position"] = position,
		["restApiId"] = restApiId,
		["limit"] = limit,
	}
	M.AssertGetModelsRequest(t)
	return t
end

local ThrottleSettings_keys = { "rateLimit" = true, "burstLimit" = true, nil }

function M.AssertThrottleSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottleSettings to be of type 'table'")
	if struct["rateLimit"] then M.AssertDouble(struct["rateLimit"]) end
	if struct["burstLimit"] then M.AssertInteger(struct["burstLimit"]) end
	for k,_ in pairs(struct) do
		assert(ThrottleSettings_keys[k], "ThrottleSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottleSettings
-- <p> The API request rate limits.</p>
-- @param rateLimit [Double] <p>The API request steady-state rate limit.</p>
-- @param burstLimit [Integer] <p>The API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity.</p>
function M.ThrottleSettings(rateLimit, burstLimit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottleSettings")
	local t = { 
		["rateLimit"] = rateLimit,
		["burstLimit"] = burstLimit,
	}
	M.AssertThrottleSettings(t)
	return t
end

local UsagePlan_keys = { "productCode" = true, "throttle" = true, "description" = true, "quota" = true, "apiStages" = true, "id" = true, "name" = true, nil }

function M.AssertUsagePlan(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsagePlan to be of type 'table'")
	if struct["productCode"] then M.AssertString(struct["productCode"]) end
	if struct["throttle"] then M.AssertThrottleSettings(struct["throttle"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	if struct["quota"] then M.AssertQuotaSettings(struct["quota"]) end
	if struct["apiStages"] then M.AssertListOfApiStage(struct["apiStages"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(UsagePlan_keys[k], "UsagePlan contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsagePlan
-- <p>Represents a usage plan than can specify who can assess associated API stages with specified request limits and quotas.</p> <div class="remarks"> <p>In a usage plan, you associate an API by specifying the API's Id and a stage name of the specified API. You add plan customers by adding API keys to the plan. </p> </div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param productCode [String] <p>The AWS Markeplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.</p>
-- @param throttle [ThrottleSettings] <p>The request throttle limits of a usage plan.</p>
-- @param description [String] <p>The description of a usage plan.</p>
-- @param quota [QuotaSettings] <p>The maximum number of permitted requests per a given unit time interval.</p>
-- @param apiStages [ListOfApiStage] <p>The associated API stages of a usage plan.</p>
-- @param id [String] <p>The identifier of a <a>UsagePlan</a> resource.</p>
-- @param name [String] <p>The name of a usage plan.</p>
function M.UsagePlan(productCode, throttle, description, quota, apiStages, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsagePlan")
	local t = { 
		["productCode"] = productCode,
		["throttle"] = throttle,
		["description"] = description,
		["quota"] = quota,
		["apiStages"] = apiStages,
		["id"] = id,
		["name"] = name,
	}
	M.AssertUsagePlan(t)
	return t
end

local CreateRestApiRequest_keys = { "binaryMediaTypes" = true, "version" = true, "name" = true, "cloneFrom" = true, "description" = true, nil }

function M.AssertCreateRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRestApiRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["binaryMediaTypes"] then M.AssertListOfString(struct["binaryMediaTypes"]) end
	if struct["version"] then M.AssertString(struct["version"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["cloneFrom"] then M.AssertString(struct["cloneFrom"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateRestApiRequest_keys[k], "CreateRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRestApiRequest
-- <p>The POST Request to add a new <a>RestApi</a> resource to your collection.</p>
-- @param binaryMediaTypes [ListOfString] <p>The list of binary media types supported by the <a>RestApi</a>. By default, the <a>RestApi</a> supports only UTF-8-encoded text payloads.</p>
-- @param version [String] <p>A version identifier for the API.</p>
-- @param name [String] <p>The name of the <a>RestApi</a>.</p>
-- @param cloneFrom [String] <p>The ID of the <a>RestApi</a> that you want to clone from.</p>
-- @param description [String] <p>The description of the <a>RestApi</a>.</p>
-- Required parameter: name
function M.CreateRestApiRequest(binaryMediaTypes, version, name, cloneFrom, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRestApiRequest")
	local t = { 
		["binaryMediaTypes"] = binaryMediaTypes,
		["version"] = version,
		["name"] = name,
		["cloneFrom"] = cloneFrom,
		["description"] = description,
	}
	M.AssertCreateRestApiRequest(t)
	return t
end

local Stage_keys = { "clientCertificateId" = true, "description" = true, "stageName" = true, "cacheClusterSize" = true, "variables" = true, "cacheClusterEnabled" = true, "documentationVersion" = true, "cacheClusterStatus" = true, "deploymentId" = true, "lastUpdatedDate" = true, "createdDate" = true, "methodSettings" = true, nil }

function M.AssertStage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stage to be of type 'table'")
	if struct["clientCertificateId"] then M.AssertString(struct["clientCertificateId"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	if struct["cacheClusterSize"] then M.AssertCacheClusterSize(struct["cacheClusterSize"]) end
	if struct["variables"] then M.AssertMapOfStringToString(struct["variables"]) end
	if struct["cacheClusterEnabled"] then M.AssertBoolean(struct["cacheClusterEnabled"]) end
	if struct["documentationVersion"] then M.AssertString(struct["documentationVersion"]) end
	if struct["cacheClusterStatus"] then M.AssertCacheClusterStatus(struct["cacheClusterStatus"]) end
	if struct["deploymentId"] then M.AssertString(struct["deploymentId"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["methodSettings"] then M.AssertMapOfMethodSettings(struct["methodSettings"]) end
	for k,_ in pairs(struct) do
		assert(Stage_keys[k], "Stage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stage
-- <p>Represents a unique identifier for a version of a deployed <a>RestApi</a> that is callable by users.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html">Deploy an API</a> </div>
-- @param clientCertificateId [String] <p>The identifier of a client certificate for an API stage.</p>
-- @param description [String] <p>The stage's description.</p>
-- @param stageName [String] <p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to Amazon API Gateway.</p>
-- @param cacheClusterSize [CacheClusterSize] <p>The size of the cache cluster for the stage, if enabled.</p>
-- @param variables [MapOfStringToString] <p>A map that defines the stage variables for a <a>Stage</a> resource. Variable names can have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&amp;=,]+</code>.</p>
-- @param cacheClusterEnabled [Boolean] <p>Specifies whether a cache cluster is enabled for the stage.</p>
-- @param documentationVersion [String] <p>The version of the associated API documentation.</p>
-- @param cacheClusterStatus [CacheClusterStatus] <p>The status of the cache cluster for the stage, if enabled.</p>
-- @param deploymentId [String] <p>The identifier of the <a>Deployment</a> that the stage points to.</p>
-- @param lastUpdatedDate [Timestamp] <p>The timestamp when the stage last updated.</p>
-- @param createdDate [Timestamp] <p>The timestamp when the stage was created.</p>
-- @param methodSettings [MapOfMethodSettings] <p>A map that defines the method settings for a <a>Stage</a> resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\*/\*</code> for overriding all methods in the stage. </p>
function M.Stage(clientCertificateId, description, stageName, cacheClusterSize, variables, cacheClusterEnabled, documentationVersion, cacheClusterStatus, deploymentId, lastUpdatedDate, createdDate, methodSettings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Stage")
	local t = { 
		["clientCertificateId"] = clientCertificateId,
		["description"] = description,
		["stageName"] = stageName,
		["cacheClusterSize"] = cacheClusterSize,
		["variables"] = variables,
		["cacheClusterEnabled"] = cacheClusterEnabled,
		["documentationVersion"] = documentationVersion,
		["cacheClusterStatus"] = cacheClusterStatus,
		["deploymentId"] = deploymentId,
		["lastUpdatedDate"] = lastUpdatedDate,
		["createdDate"] = createdDate,
		["methodSettings"] = methodSettings,
	}
	M.AssertStage(t)
	return t
end

local DocumentationParts_keys = { "position" = true, "items" = true, nil }

function M.AssertDocumentationParts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationParts to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfDocumentationPart(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(DocumentationParts_keys[k], "DocumentationParts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationParts
-- <p>The collection of documentation parts of an API.</p> <div class="remarks"/> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a> </div>
-- @param position [String] <p>The collection of documentation parts of an API.</p> <div class="remarks"/> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a> </div>
-- @param items [ListOfDocumentationPart] <p>The current page of <a>DocumentationPart</a> resources in the <a>DocumentationParts</a> collection.</p>
function M.DocumentationParts(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentationParts")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertDocumentationParts(t)
	return t
end

local GetMethodRequest_keys = { "resourceId" = true, "restApiId" = true, "httpMethod" = true, nil }

function M.AssertGetMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(GetMethodRequest_keys[k], "GetMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMethodRequest
-- <p>Request to describe an existing <a>Method</a> resource.</p>
-- @param resourceId [String] <p>The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Method</a> resource.</p>
-- @param httpMethod [String] <p>Specifies the method request's HTTP method type.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
function M.GetMethodRequest(resourceId, restApiId, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMethodRequest")
	local t = { 
		["resourceId"] = resourceId,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
	}
	M.AssertGetMethodRequest(t)
	return t
end

local SdkTypes_keys = { "position" = true, "items" = true, nil }

function M.AssertSdkTypes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SdkTypes to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfSdkType(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(SdkTypes_keys[k], "SdkTypes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SdkTypes
-- <p>The collection of <a>SdkType</a> instances.</p>
-- @param position [String] <p>The collection of <a>SdkType</a> instances.</p>
-- @param items [ListOfSdkType] <p>The set of <a>SdkType</a> items that comprise this view of the <a>SdkTypes</a> collection.</p>
function M.SdkTypes(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SdkTypes")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertSdkTypes(t)
	return t
end

local DocumentationVersions_keys = { "position" = true, "items" = true, nil }

function M.AssertDocumentationVersions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationVersions to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfDocumentationVersion(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(DocumentationVersions_keys[k], "DocumentationVersions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationVersions
-- <p>The collection of documentation snapshots of an API. </p> <div class="remarks"><p>Use the <a>DocumentationVersions</a> to manage documentation snapshots associated with various API stages.</p></div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a>, <a>DocumentationVersion</a> </div>
-- @param position [String] <p>The collection of documentation snapshots of an API. </p> <div class="remarks"><p>Use the <a>DocumentationVersions</a> to manage documentation snapshots associated with various API stages.</p></div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a>, <a>DocumentationVersion</a> </div>
-- @param items [ListOfDocumentationVersion] <p>The current page of <a>DocumentationVersion</a> items from the <a>DocumentationVersions</a> collection of an API.</p>
function M.DocumentationVersions(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentationVersions")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertDocumentationVersions(t)
	return t
end

local RestApi_keys = { "description" = true, "warnings" = true, "version" = true, "createdDate" = true, "binaryMediaTypes" = true, "id" = true, "name" = true, nil }

function M.AssertRestApi(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestApi to be of type 'table'")
	if struct["description"] then M.AssertString(struct["description"]) end
	if struct["warnings"] then M.AssertListOfString(struct["warnings"]) end
	if struct["version"] then M.AssertString(struct["version"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["binaryMediaTypes"] then M.AssertListOfString(struct["binaryMediaTypes"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(RestApi_keys[k], "RestApi contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestApi
-- <p>Represents a REST API.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param description [String] <p>The API's description.</p>
-- @param warnings [ListOfString] <p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>
-- @param version [String] <p>A version identifier for the API.</p>
-- @param createdDate [Timestamp] <p>The timestamp when the API was created.</p>
-- @param binaryMediaTypes [ListOfString] <p>The list of binary media types supported by the <a>RestApi</a>. By default, the <a>RestApi</a> supports only UTF-8-encoded text payloads.</p>
-- @param id [String] <p>The API's identifier. This identifier is unique across all of your APIs in Amazon API Gateway.</p>
-- @param name [String] <p>The API's name.</p>
function M.RestApi(description, warnings, version, createdDate, binaryMediaTypes, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestApi")
	local t = { 
		["description"] = description,
		["warnings"] = warnings,
		["version"] = version,
		["createdDate"] = createdDate,
		["binaryMediaTypes"] = binaryMediaTypes,
		["id"] = id,
		["name"] = name,
	}
	M.AssertRestApi(t)
	return t
end

local BasePathMapping_keys = { "basePath" = true, "restApiId" = true, "stage" = true, nil }

function M.AssertBasePathMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BasePathMapping to be of type 'table'")
	if struct["basePath"] then M.AssertString(struct["basePath"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["stage"] then M.AssertString(struct["stage"]) end
	for k,_ in pairs(struct) do
		assert(BasePathMapping_keys[k], "BasePathMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BasePathMapping
-- <p>Represents the base path that callers of the API must provide as part of the URL after the domain name.</p> <div class="remarks">A custom domain name plus a <code>BasePathMapping</code> specification identifies a deployed <a>RestApi</a> in a given stage of the owner <a>Account</a>.</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Custom Domain Names</a> </div>
-- @param basePath [String] <p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>
-- @param restApiId [String] <p>The name of the API.</p>
-- @param stage [String] <p>The name of the API's stage.</p>
function M.BasePathMapping(basePath, restApiId, stage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BasePathMapping")
	local t = { 
		["basePath"] = basePath,
		["restApiId"] = restApiId,
		["stage"] = stage,
	}
	M.AssertBasePathMapping(t)
	return t
end

local TooManyRequestsException_keys = { "message" = true, "retryAfterSeconds" = true, nil }

function M.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["retryAfterSeconds"] then M.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(TooManyRequestsException_keys[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
--  
-- @param message [String]  
-- @param retryAfterSeconds [String]  
function M.TooManyRequestsException(message, retryAfterSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["message"] = message,
		["retryAfterSeconds"] = retryAfterSeconds,
	}
	M.AssertTooManyRequestsException(t)
	return t
end

local GetDocumentationPartsRequest_keys = { "restApiId" = true, "nameQuery" = true, "limit" = true, "path" = true, "position" = true, "type" = true, nil }

function M.AssertGetDocumentationPartsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentationPartsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["nameQuery"] then M.AssertString(struct["nameQuery"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	if struct["path"] then M.AssertString(struct["path"]) end
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["type"] then M.AssertDocumentationPartType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentationPartsRequest_keys[k], "GetDocumentationPartsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentationPartsRequest
-- <p>Gets the documentation parts of an API. The result may be filtered by the type, name, or path of API entities (targets).</p>
-- @param restApiId [String] <p>[Required] The identifier of the API of the to-be-retrieved documentation parts.</p>
-- @param nameQuery [String] <p>The name of API entities of the to-be-retrieved documentation parts.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- @param path [String] <p>The path of API entities of the to-be-retrieved documentation parts.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param type [DocumentationPartType] <p>The type of API entities of the to-be-retrieved documentation parts. </p>
-- Required parameter: restApiId
function M.GetDocumentationPartsRequest(restApiId, nameQuery, limit, path, position, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentationPartsRequest")
	local t = { 
		["restApiId"] = restApiId,
		["nameQuery"] = nameQuery,
		["limit"] = limit,
		["path"] = path,
		["position"] = position,
		["type"] = type,
	}
	M.AssertGetDocumentationPartsRequest(t)
	return t
end

local CreateUsagePlanRequest_keys = { "throttle" = true, "quota" = true, "apiStages" = true, "name" = true, "description" = true, nil }

function M.AssertCreateUsagePlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUsagePlanRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["throttle"] then M.AssertThrottleSettings(struct["throttle"]) end
	if struct["quota"] then M.AssertQuotaSettings(struct["quota"]) end
	if struct["apiStages"] then M.AssertListOfApiStage(struct["apiStages"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateUsagePlanRequest_keys[k], "CreateUsagePlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUsagePlanRequest
-- <p>The POST request to create a usage plan with the name, description, throttle limits and quota limits, as well as the associated API stages, specified in the payload.</p>
-- @param throttle [ThrottleSettings] <p>The throttling limits of the usage plan.</p>
-- @param quota [QuotaSettings] <p>The quota of the usage plan.</p>
-- @param apiStages [ListOfApiStage] <p>The associated API stages of the usage plan.</p>
-- @param name [String] <p>The name of the usage plan.</p>
-- @param description [String] <p>The description of the usage plan.</p>
-- Required parameter: name
function M.CreateUsagePlanRequest(throttle, quota, apiStages, name, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUsagePlanRequest")
	local t = { 
		["throttle"] = throttle,
		["quota"] = quota,
		["apiStages"] = apiStages,
		["name"] = name,
		["description"] = description,
	}
	M.AssertCreateUsagePlanRequest(t)
	return t
end

local QuotaSettings_keys = { "limit" = true, "period" = true, "offset" = true, nil }

function M.AssertQuotaSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QuotaSettings to be of type 'table'")
	if struct["limit"] then M.AssertInteger(struct["limit"]) end
	if struct["period"] then M.AssertQuotaPeriodType(struct["period"]) end
	if struct["offset"] then M.AssertInteger(struct["offset"]) end
	for k,_ in pairs(struct) do
		assert(QuotaSettings_keys[k], "QuotaSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QuotaSettings
-- <p>Quotas configured for a usage plan.</p>
-- @param limit [Integer] <p>The maximum number of requests that can be made in a given time period.</p>
-- @param period [QuotaPeriodType] <p>The time period in which the limit applies. Valid values are "DAY", "WEEK" or "MONTH".</p>
-- @param offset [Integer] <p>The number of requests subtracted from the given limit in the initial time period.</p>
function M.QuotaSettings(limit, period, offset, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QuotaSettings")
	local t = { 
		["limit"] = limit,
		["period"] = period,
		["offset"] = offset,
	}
	M.AssertQuotaSettings(t)
	return t
end

local Stages_keys = { "item" = true, nil }

function M.AssertStages(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stages to be of type 'table'")
	if struct["item"] then M.AssertListOfStage(struct["item"]) end
	for k,_ in pairs(struct) do
		assert(Stages_keys[k], "Stages contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stages
-- <p>A list of <a>Stage</a> resources that are associated with the <a>ApiKey</a> resource.</p> <div class="seeAlso"><a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/stages.html">Deploying API in Stages</a></div>
-- @param item [ListOfStage] <p>An individual <a>Stage</a> resource.</p>
function M.Stages(item, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Stages")
	local t = { 
		["item"] = item,
	}
	M.AssertStages(t)
	return t
end

local GetDeploymentRequest_keys = { "deploymentId" = true, "restApiId" = true, "embed" = true, nil }

function M.AssertGetDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["deploymentId"] then M.AssertString(struct["deploymentId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["embed"] then M.AssertListOfString(struct["embed"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentRequest_keys[k], "GetDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentRequest
-- <p>Requests Amazon API Gateway to get information about a <a>Deployment</a> resource.</p>
-- @param deploymentId [String] <p>The identifier of the <a>Deployment</a> resource to get information about.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the <a>Deployment</a> resource to get information about.</p>
-- @param embed [ListOfString] <p>A query parameter to retrieve the specified embedded resources of the returned <a>Deployment</a> resource in the response. In a REST API call, this <code>embed</code> parameter value is a list of comma-separated strings, as in <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2</code>. The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the <code>"apisummary"</code> string. For example, <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary</code>.</p>
-- Required parameter: restApiId
-- Required parameter: deploymentId
function M.GetDeploymentRequest(deploymentId, restApiId, embed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentRequest")
	local t = { 
		["deploymentId"] = deploymentId,
		["restApiId"] = restApiId,
		["embed"] = embed,
	}
	M.AssertGetDeploymentRequest(t)
	return t
end

local CreateDomainNameRequest_keys = { "certificateArn" = true, "certificateName" = true, "domainName" = true, "certificateChain" = true, "certificatePrivateKey" = true, "certificateBody" = true, nil }

function M.AssertCreateDomainNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainNameRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["certificateArn"] then M.AssertString(struct["certificateArn"]) end
	if struct["certificateName"] then M.AssertString(struct["certificateName"]) end
	if struct["domainName"] then M.AssertString(struct["domainName"]) end
	if struct["certificateChain"] then M.AssertString(struct["certificateChain"]) end
	if struct["certificatePrivateKey"] then M.AssertString(struct["certificatePrivateKey"]) end
	if struct["certificateBody"] then M.AssertString(struct["certificateBody"]) end
	for k,_ in pairs(struct) do
		assert(CreateDomainNameRequest_keys[k], "CreateDomainNameRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDomainNameRequest
-- <p>A request to create a new domain name.</p>
-- @param certificateArn [String] <p>The reference to an AWS-managed certificate. AWS Certificate Manager is the only supported source.</p>
-- @param certificateName [String] <p>The user-friendly name of the certificate.</p>
-- @param domainName [String] <p>(Required) The name of the <a>DomainName</a> resource.</p>
-- @param certificateChain [String] <p>[Deprecated] The intermediate certificates and optionally the root certificate, one after the other without any blank lines. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.</p>
-- @param certificatePrivateKey [String] <p>[Deprecated] Your certificate's private key.</p>
-- @param certificateBody [String] <p>[Deprecated] The body of the server certificate provided by your certificate authority.</p>
-- Required parameter: domainName
function M.CreateDomainNameRequest(certificateArn, certificateName, domainName, certificateChain, certificatePrivateKey, certificateBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDomainNameRequest")
	local t = { 
		["certificateArn"] = certificateArn,
		["certificateName"] = certificateName,
		["domainName"] = domainName,
		["certificateChain"] = certificateChain,
		["certificatePrivateKey"] = certificatePrivateKey,
		["certificateBody"] = certificateBody,
	}
	M.AssertCreateDomainNameRequest(t)
	return t
end

local DeleteApiKeyRequest_keys = { "apiKey" = true, nil }

function M.AssertDeleteApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApiKeyRequest to be of type 'table'")
	assert(struct["apiKey"], "Expected key apiKey to exist in table")
	if struct["apiKey"] then M.AssertString(struct["apiKey"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApiKeyRequest_keys[k], "DeleteApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApiKeyRequest
-- <p>A request to delete the <a>ApiKey</a> resource.</p>
-- @param apiKey [String] <p>The identifier of the <a>ApiKey</a> resource to be deleted.</p>
-- Required parameter: apiKey
function M.DeleteApiKeyRequest(apiKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApiKeyRequest")
	local t = { 
		["apiKey"] = apiKey,
	}
	M.AssertDeleteApiKeyRequest(t)
	return t
end

local DocumentationPartIds_keys = { "ids" = true, "warnings" = true, nil }

function M.AssertDocumentationPartIds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationPartIds to be of type 'table'")
	if struct["ids"] then M.AssertListOfString(struct["ids"]) end
	if struct["warnings"] then M.AssertListOfString(struct["warnings"]) end
	for k,_ in pairs(struct) do
		assert(DocumentationPartIds_keys[k], "DocumentationPartIds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationPartIds
-- <p>A collection of the imported <a>DocumentationPart</a> identifiers.</p> <div class="remarks">This is used to return the result when documentation parts in an external (e.g., Swagger) file are imported into Amazon API Gateway</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a href="http://docs.aws.amazon.com/apigateway/api-reference/link-relation/documentationpart-import/">documentationpart:import</a>, <a>DocumentationPart</a> </div>
-- @param ids [ListOfString] <p>A list of the returned documentation part identifiers.</p>
-- @param warnings [ListOfString] <p>A list of warning messages reported during import of documentation parts.</p>
function M.DocumentationPartIds(ids, warnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentationPartIds")
	local t = { 
		["ids"] = ids,
		["warnings"] = warnings,
	}
	M.AssertDocumentationPartIds(t)
	return t
end

local GetApiKeysRequest_keys = { "position" = true, "nameQuery" = true, "includeValues" = true, "limit" = true, "customerId" = true, nil }

function M.AssertGetApiKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApiKeysRequest to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["nameQuery"] then M.AssertString(struct["nameQuery"]) end
	if struct["includeValues"] then M.AssertNullableBoolean(struct["includeValues"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	if struct["customerId"] then M.AssertString(struct["customerId"]) end
	for k,_ in pairs(struct) do
		assert(GetApiKeysRequest_keys[k], "GetApiKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApiKeysRequest
-- <p>A request to get information about the current <a>ApiKeys</a> resource.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param nameQuery [String] <p>The name of queried API keys.</p>
-- @param includeValues [NullableBoolean] <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains key values.</p>
-- @param limit [NullableInteger] <p>The maximum number of <a>ApiKeys</a> to get information about.</p>
-- @param customerId [String] <p>The identifier of a customer in AWS Marketplace or an external system, such as a developer portal.</p>
function M.GetApiKeysRequest(position, nameQuery, includeValues, limit, customerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApiKeysRequest")
	local t = { 
		["position"] = position,
		["nameQuery"] = nameQuery,
		["includeValues"] = includeValues,
		["limit"] = limit,
		["customerId"] = customerId,
	}
	M.AssertGetApiKeysRequest(t)
	return t
end

local DeleteMethodRequest_keys = { "resourceId" = true, "restApiId" = true, "httpMethod" = true, nil }

function M.AssertDeleteMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMethodRequest_keys[k], "DeleteMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMethodRequest
-- <p>Request to delete an existing <a>Method</a> resource.</p>
-- @param resourceId [String] <p>The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Method</a> resource.</p>
-- @param httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
function M.DeleteMethodRequest(resourceId, restApiId, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMethodRequest")
	local t = { 
		["resourceId"] = resourceId,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
	}
	M.AssertDeleteMethodRequest(t)
	return t
end

local DeleteDocumentationVersionRequest_keys = { "restApiId" = true, "documentationVersion" = true, nil }

function M.AssertDeleteDocumentationVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDocumentationVersionRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationVersion"], "Expected key documentationVersion to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["documentationVersion"] then M.AssertString(struct["documentationVersion"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDocumentationVersionRequest_keys[k], "DeleteDocumentationVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDocumentationVersionRequest
-- <p>Deletes an existing documentation version of an API.</p>
-- @param restApiId [String] <p>[Required] The identifier of an API of a to-be-deleted documentation snapshot.</p>
-- @param documentationVersion [String] <p>[Required] The version identifier of a to-be-deleted documentation snapshot.</p>
-- Required parameter: restApiId
-- Required parameter: documentationVersion
function M.DeleteDocumentationVersionRequest(restApiId, documentationVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDocumentationVersionRequest")
	local t = { 
		["restApiId"] = restApiId,
		["documentationVersion"] = documentationVersion,
	}
	M.AssertDeleteDocumentationVersionRequest(t)
	return t
end

local GetUsagePlanRequest_keys = { "usagePlanId" = true, nil }

function M.AssertGetUsagePlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUsagePlanRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	if struct["usagePlanId"] then M.AssertString(struct["usagePlanId"]) end
	for k,_ in pairs(struct) do
		assert(GetUsagePlanRequest_keys[k], "GetUsagePlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUsagePlanRequest
-- <p>The GET request to get a usage plan of a given plan identifier.</p>
-- @param usagePlanId [String] <p>The identifier of the <a>UsagePlan</a> resource to be retrieved.</p>
-- Required parameter: usagePlanId
function M.GetUsagePlanRequest(usagePlanId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUsagePlanRequest")
	local t = { 
		["usagePlanId"] = usagePlanId,
	}
	M.AssertGetUsagePlanRequest(t)
	return t
end

local UsagePlans_keys = { "position" = true, "items" = true, nil }

function M.AssertUsagePlans(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsagePlans to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfUsagePlan(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(UsagePlans_keys[k], "UsagePlans contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsagePlans
-- <p>Represents a collection of usage plans for an AWS account.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param position [String] <p>Represents a collection of usage plans for an AWS account.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param items [ListOfUsagePlan] <p>Gets the current item when enumerating the collection of <a>UsagePlan</a>.</p>
function M.UsagePlans(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsagePlans")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertUsagePlans(t)
	return t
end

local UpdateUsagePlanRequest_keys = { "usagePlanId" = true, "patchOperations" = true, nil }

function M.AssertUpdateUsagePlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUsagePlanRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	if struct["usagePlanId"] then M.AssertString(struct["usagePlanId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUsagePlanRequest_keys[k], "UpdateUsagePlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUsagePlanRequest
-- <p>The PATCH request to update a usage plan of a given plan Id.</p>
-- @param usagePlanId [String] <p>The Id of the to-be-updated usage plan.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: usagePlanId
function M.UpdateUsagePlanRequest(usagePlanId, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUsagePlanRequest")
	local t = { 
		["usagePlanId"] = usagePlanId,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateUsagePlanRequest(t)
	return t
end

local GetDocumentationPartRequest_keys = { "documentationPartId" = true, "restApiId" = true, nil }

function M.AssertGetDocumentationPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentationPartRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationPartId"], "Expected key documentationPartId to exist in table")
	if struct["documentationPartId"] then M.AssertString(struct["documentationPartId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentationPartRequest_keys[k], "GetDocumentationPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentationPartRequest
-- <p>Gets a specified documentation part of a given API.</p>
-- @param documentationPartId [String] <p>[Required] The identifier of the to-be-retrieved documentation part.</p>
-- @param restApiId [String] <p>[Required] The identifier of an API of the to-be-retrieved documentation part.</p>
-- Required parameter: restApiId
-- Required parameter: documentationPartId
function M.GetDocumentationPartRequest(documentationPartId, restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentationPartRequest")
	local t = { 
		["documentationPartId"] = documentationPartId,
		["restApiId"] = restApiId,
	}
	M.AssertGetDocumentationPartRequest(t)
	return t
end

local UpdateAccountRequest_keys = { "patchOperations" = true, nil }

function M.AssertUpdateAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccountRequest to be of type 'table'")
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAccountRequest_keys[k], "UpdateAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccountRequest
-- <p>Requests Amazon API Gateway to change information about the current <a>Account</a> resource.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
function M.UpdateAccountRequest(patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAccountRequest")
	local t = { 
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateAccountRequest(t)
	return t
end

local GetRestApiRequest_keys = { "restApiId" = true, nil }

function M.AssertGetRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRestApiRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(GetRestApiRequest_keys[k], "GetRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRestApiRequest
-- <p>The GET request to list an existing <a>RestApi</a> defined for your collection. </p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> resource.</p>
-- Required parameter: restApiId
function M.GetRestApiRequest(restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRestApiRequest")
	local t = { 
		["restApiId"] = restApiId,
	}
	M.AssertGetRestApiRequest(t)
	return t
end

local GetSdkTypesRequest_keys = { "position" = true, "limit" = true, nil }

function M.AssertGetSdkTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSdkTypesRequest to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetSdkTypesRequest_keys[k], "GetSdkTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSdkTypesRequest
-- <p>Get the <a>SdkTypes</a> collection.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page.</p>
function M.GetSdkTypesRequest(position, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSdkTypesRequest")
	local t = { 
		["position"] = position,
		["limit"] = limit,
	}
	M.AssertGetSdkTypesRequest(t)
	return t
end

local GetAccountRequest_keys = { nil }

function M.AssertGetAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetAccountRequest_keys[k], "GetAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountRequest
-- <p>Requests Amazon API Gateway to get information about the current <a>Account</a> resource.</p>
function M.GetAccountRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountRequest")
	local t = { 
	}
	M.AssertGetAccountRequest(t)
	return t
end

local GetUsagePlanKeyRequest_keys = { "keyId" = true, "usagePlanId" = true, nil }

function M.AssertGetUsagePlanKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUsagePlanKeyRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	assert(struct["keyId"], "Expected key keyId to exist in table")
	if struct["keyId"] then M.AssertString(struct["keyId"]) end
	if struct["usagePlanId"] then M.AssertString(struct["usagePlanId"]) end
	for k,_ in pairs(struct) do
		assert(GetUsagePlanKeyRequest_keys[k], "GetUsagePlanKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUsagePlanKeyRequest
-- <p>The GET request to get a usage plan key of a given key identifier.</p>
-- @param keyId [String] <p>The key Id of the to-be-retrieved <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- @param usagePlanId [String] <p>The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-retrieved <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- Required parameter: usagePlanId
-- Required parameter: keyId
function M.GetUsagePlanKeyRequest(keyId, usagePlanId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUsagePlanKeyRequest")
	local t = { 
		["keyId"] = keyId,
		["usagePlanId"] = usagePlanId,
	}
	M.AssertGetUsagePlanKeyRequest(t)
	return t
end

local DeleteRequestValidatorRequest_keys = { "requestValidatorId" = true, "restApiId" = true, nil }

function M.AssertDeleteRequestValidatorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRequestValidatorRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["requestValidatorId"], "Expected key requestValidatorId to exist in table")
	if struct["requestValidatorId"] then M.AssertString(struct["requestValidatorId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRequestValidatorRequest_keys[k], "DeleteRequestValidatorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRequestValidatorRequest
-- <p>Deletes a specified <a>RequestValidator</a> of a given <a>RestApi</a>.</p>
-- @param requestValidatorId [String] <p>[Required] The identifier of the <a>RequestValidator</a> to be deleted.</p>
-- @param restApiId [String] <p>[Required] The identifier of the <a>RestApi</a> from which the given <a>RequestValidator</a> is deleted.</p>
-- Required parameter: restApiId
-- Required parameter: requestValidatorId
function M.DeleteRequestValidatorRequest(requestValidatorId, restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRequestValidatorRequest")
	local t = { 
		["requestValidatorId"] = requestValidatorId,
		["restApiId"] = restApiId,
	}
	M.AssertDeleteRequestValidatorRequest(t)
	return t
end

local BasePathMappings_keys = { "position" = true, "items" = true, nil }

function M.AssertBasePathMappings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BasePathMappings to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfBasePathMapping(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(BasePathMappings_keys[k], "BasePathMappings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BasePathMappings
-- <p>Represents a collection of <a>BasePathMapping</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Custom Domain Names</a> </div>
-- @param position [String] <p>Represents a collection of <a>BasePathMapping</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Custom Domain Names</a> </div>
-- @param items [ListOfBasePathMapping] <p>The current page of any <a>BasePathMapping</a> resources in the collection of base path mapping resources.</p>
function M.BasePathMappings(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BasePathMappings")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertBasePathMappings(t)
	return t
end

local RequestValidator_keys = { "validateRequestParameters" = true, "validateRequestBody" = true, "id" = true, "name" = true, nil }

function M.AssertRequestValidator(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestValidator to be of type 'table'")
	if struct["validateRequestParameters"] then M.AssertBoolean(struct["validateRequestParameters"]) end
	if struct["validateRequestBody"] then M.AssertBoolean(struct["validateRequestBody"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(RequestValidator_keys[k], "RequestValidator contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestValidator
-- <p>A set of validation rules for incoming <a>Method</a> requests.</p> <div class="remarks"> <p>In Swagger, a <a>RequestValidator</a> of an API is defined by the <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validators.requestValidator.html">x-amazon-apigateway-request-validators.requestValidator</a> object. It the referenced using the <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validator">x-amazon-apigateway-request-validator</a> property.</p> </div> <div class="seeAlso"><a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html">Enable Basic Request Validation in API Gateway</a></div>
-- @param validateRequestParameters [Boolean] <p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>
-- @param validateRequestBody [Boolean] <p>A Boolean flag to indicate whether to validate a request body according to the configured <a>Model</a> schema.</p>
-- @param id [String] <p>The identifier of this <a>RequestValidator</a>.</p>
-- @param name [String] <p>The name of this <a>RequestValidator</a></p>
function M.RequestValidator(validateRequestParameters, validateRequestBody, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestValidator")
	local t = { 
		["validateRequestParameters"] = validateRequestParameters,
		["validateRequestBody"] = validateRequestBody,
		["id"] = id,
		["name"] = name,
	}
	M.AssertRequestValidator(t)
	return t
end

local MethodResponse_keys = { "responseModels" = true, "responseParameters" = true, "statusCode" = true, nil }

function M.AssertMethodResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MethodResponse to be of type 'table'")
	if struct["responseModels"] then M.AssertMapOfStringToString(struct["responseModels"]) end
	if struct["responseParameters"] then M.AssertMapOfStringToBoolean(struct["responseParameters"]) end
	if struct["statusCode"] then M.AssertStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(MethodResponse_keys[k], "MethodResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MethodResponse
-- <p>Represents a method response of a given HTTP status code returned to the client. The method response is passed from the back end through the associated integration response that can be transformed using a mapping template. </p> <div class="remarks"> <p/> <h4>Example: A <b>MethodResponse</b> instance of an API</h4> <h5>Request</h5> <p>The example request retrieves a <b>MethodResponse</b> of the 200 status code.</p> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160603T222952Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns <code>200 OK</code> status and a payload as follows:</p> <pre><code>{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true }, "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.Content-Type": false }, "statusCode": "200" }</code></pre> <p/> </div> <div class="seeAlso"> <a>Method</a>, <a>IntegrationResponse</a>, <a>Integration</a> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- @param responseModels [MapOfStringToString] <p>Specifies the <a>Model</a> resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a <a>Model</a> name as the value.</p>
-- @param responseParameters [MapOfStringToBoolean] <p>A key-value map specifying required or optional response parameters that Amazon API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. Amazon API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's <a>IntegrationResponse</a>. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
-- @param statusCode [StatusCode] <p>The method response's status code.</p>
function M.MethodResponse(responseModels, responseParameters, statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MethodResponse")
	local t = { 
		["responseModels"] = responseModels,
		["responseParameters"] = responseParameters,
		["statusCode"] = statusCode,
	}
	M.AssertMethodResponse(t)
	return t
end

local LimitExceededException_keys = { "message" = true, "retryAfterSeconds" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["retryAfterSeconds"] then M.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
--  
-- @param message [String]  
-- @param retryAfterSeconds [String]  
function M.LimitExceededException(message, retryAfterSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
		["retryAfterSeconds"] = retryAfterSeconds,
	}
	M.AssertLimitExceededException(t)
	return t
end

local TestInvokeAuthorizerRequest_keys = { "body" = true, "restApiId" = true, "pathWithQueryString" = true, "additionalContext" = true, "headers" = true, "stageVariables" = true, "authorizerId" = true, nil }

function M.AssertTestInvokeAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestInvokeAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["authorizerId"], "Expected key authorizerId to exist in table")
	if struct["body"] then M.AssertString(struct["body"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["pathWithQueryString"] then M.AssertString(struct["pathWithQueryString"]) end
	if struct["additionalContext"] then M.AssertMapOfStringToString(struct["additionalContext"]) end
	if struct["headers"] then M.AssertMapOfHeaderValues(struct["headers"]) end
	if struct["stageVariables"] then M.AssertMapOfStringToString(struct["stageVariables"]) end
	if struct["authorizerId"] then M.AssertString(struct["authorizerId"]) end
	for k,_ in pairs(struct) do
		assert(TestInvokeAuthorizerRequest_keys[k], "TestInvokeAuthorizerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestInvokeAuthorizerRequest
-- <p>Make a request to simulate the execution of an <a>Authorizer</a>.</p>
-- @param body [String] <p>[Optional] The simulated request body of an incoming invocation request.</p>
-- @param restApiId [String] <p>Specifies a test invoke authorizer request's <a>RestApi</a> identifier.</p>
-- @param pathWithQueryString [String] <p>[Optional] The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
-- @param additionalContext [MapOfStringToString] <p>[Optional] A key-value map of additional context variables.</p>
-- @param headers [MapOfHeaderValues] <p>[Required] A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.</p>
-- @param stageVariables [MapOfStringToString] <p>A key-value map of stage variables to simulate an invocation on a deployed <a>Stage</a>.</p>
-- @param authorizerId [String] <p>Specifies a test invoke authorizer request's <a>Authorizer</a> ID.</p>
-- Required parameter: restApiId
-- Required parameter: authorizerId
function M.TestInvokeAuthorizerRequest(body, restApiId, pathWithQueryString, additionalContext, headers, stageVariables, authorizerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestInvokeAuthorizerRequest")
	local t = { 
		["body"] = body,
		["restApiId"] = restApiId,
		["pathWithQueryString"] = pathWithQueryString,
		["additionalContext"] = additionalContext,
		["headers"] = headers,
		["stageVariables"] = stageVariables,
		["authorizerId"] = authorizerId,
	}
	M.AssertTestInvokeAuthorizerRequest(t)
	return t
end

local FlushStageCacheRequest_keys = { "restApiId" = true, "stageName" = true, nil }

function M.AssertFlushStageCacheRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FlushStageCacheRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(FlushStageCacheRequest_keys[k], "FlushStageCacheRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FlushStageCacheRequest
-- <p>Requests Amazon API Gateway to flush a stage's cache.</p>
-- @param restApiId [String] <p>The API identifier of the stage to flush its cache.</p>
-- @param stageName [String] <p>The name of the stage to flush its cache.</p>
-- Required parameter: restApiId
-- Required parameter: stageName
function M.FlushStageCacheRequest(restApiId, stageName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FlushStageCacheRequest")
	local t = { 
		["restApiId"] = restApiId,
		["stageName"] = stageName,
	}
	M.AssertFlushStageCacheRequest(t)
	return t
end

local GetAuthorizerRequest_keys = { "restApiId" = true, "authorizerId" = true, nil }

function M.AssertGetAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["authorizerId"], "Expected key authorizerId to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["authorizerId"] then M.AssertString(struct["authorizerId"]) end
	for k,_ in pairs(struct) do
		assert(GetAuthorizerRequest_keys[k], "GetAuthorizerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAuthorizerRequest
-- <p>Request to describe an existing <a>Authorizer</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Authorizer</a> resource.</p>
-- @param authorizerId [String] <p>The identifier of the <a>Authorizer</a> resource.</p>
-- Required parameter: restApiId
-- Required parameter: authorizerId
function M.GetAuthorizerRequest(restApiId, authorizerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAuthorizerRequest")
	local t = { 
		["restApiId"] = restApiId,
		["authorizerId"] = authorizerId,
	}
	M.AssertGetAuthorizerRequest(t)
	return t
end

local Method_keys = { "methodResponses" = true, "requestParameters" = true, "requestModels" = true, "authorizationType" = true, "operationName" = true, "apiKeyRequired" = true, "httpMethod" = true, "methodIntegration" = true, "requestValidatorId" = true, "authorizerId" = true, nil }

function M.AssertMethod(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Method to be of type 'table'")
	if struct["methodResponses"] then M.AssertMapOfMethodResponse(struct["methodResponses"]) end
	if struct["requestParameters"] then M.AssertMapOfStringToBoolean(struct["requestParameters"]) end
	if struct["requestModels"] then M.AssertMapOfStringToString(struct["requestModels"]) end
	if struct["authorizationType"] then M.AssertString(struct["authorizationType"]) end
	if struct["operationName"] then M.AssertString(struct["operationName"]) end
	if struct["apiKeyRequired"] then M.AssertNullableBoolean(struct["apiKeyRequired"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	if struct["methodIntegration"] then M.AssertIntegration(struct["methodIntegration"]) end
	if struct["requestValidatorId"] then M.AssertString(struct["requestValidatorId"]) end
	if struct["authorizerId"] then M.AssertString(struct["authorizerId"]) end
	for k,_ in pairs(struct) do
		assert(Method_keys[k], "Method contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Method
-- <p> Represents a client-facing interface by which the client calls the API to access back-end resources. A <b>Method</b> resource is integrated with an <a>Integration</a> resource. Both consist of a request and one or more responses. The method request takes the client input that is passed to the back end through the integration request. A method response returns the output from the back end to the client through an integration response. A method request is embodied in a <b>Method</b> resource, whereas an integration request is embodied in an <a>Integration</a> resource. On the other hand, a method response is represented by a <a>MethodResponse</a> resource, whereas an integration response is represented by an <a>IntegrationResponse</a> resource. </p> <div class="remarks"> <p/> <h4>Example: Retrive the GET method on a specified resource</h4> <h5>Request</h5> <p>The following example request retrieves the information about the GET method on an API resource (<code>3kzxbg5sa2</code>) of an API (<code>fugvjdxtri</code>). </p> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160603T210259Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": [ { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html", "name": "integration", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-{rel}.html", "name": "method", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true } ], "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET", "name": "GET", "title": "GET" }, "integration:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "method:integration": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "method:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "methodresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/{status_code}", "templated": true } }, "apiKeyRequired": true, "authorizationType": "NONE", "httpMethod": "GET", "_embedded": { "method:integration": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integration:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integrationresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/{status_code}", "templated": true } }, "cacheKeyParameters": [], "cacheNamespace": "3kzxbg5sa2", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestParameters": { "integration.request.header.Content-Type": "'application/x-amz-json-1.1'" }, "requestTemplates": { "application/json": "{\n}" }, "type": "AWS", "uri": "arn:aws:apigateway:us-east-1:kinesis:action/ListStreams", "_embedded": { "integration:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E\")" }, "statusCode": "200" } } }, "method:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.Content-Type": false }, "statusCode": "200" } } }</code></pre> <p>In the example above, the response template for the <code>200 OK</code> response maps the JSON output from the <code>ListStreams</code> action in the back end to an XML output. The mapping template is URL-encoded as <code>%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E</code> and the output is decoded using the <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#util-templat-reference">$util.urlDecode()</a> helper function.</p> </div> <div class="seeAlso"> <a>MethodResponse</a>, <a>Integration</a>, <a>IntegrationResponse</a>, <a>Resource</a>, <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-method-settings.html">Set up an API's method</a> </div>
-- @param methodResponses [MapOfMethodResponse] <p>Gets a method response associated with a given HTTP status code. </p> <div class="remarks"> <p>The collection of method responses are encapsulated in a key-value map, where the key is a response's HTTP status code and the value is a <a>MethodResponse</a> resource that specifies the response returned to the caller from the back end through the integration response.</p> <h4>Example: Get a 200 OK response of a GET method</h4> <h5>Request</h5> <p/> <pre><code>GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T215008Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true }, "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.operator": false, "method.response.header.operand_2": false, "method.response.header.operand_1": false }, "statusCode": "200" }</code></pre> <p/> </div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-method-response.html">AWS CLI</a> </div>
-- @param requestParameters [MapOfStringToBoolean] <p>A key-value map defining required or optional method request parameters that can be accepted by Amazon API Gateway. A key is a method request parameter name matching the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>). The method request parameter names defined here are available in <a>Integration</a> to be mapped to integration request parameters or templates.</p>
-- @param requestModels [MapOfStringToString] <p>A key-value map specifying data schemas, represented by <a>Model</a> resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>
-- @param authorizationType [String] <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
-- @param operationName [String] <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in <a href="http://petstore-demo-endpoint.execute-api.com/petstore/pets">PetStore</a> example.</p>
-- @param apiKeyRequired [NullableBoolean] <p>A boolean flag specifying whether a valid <a>ApiKey</a> is required to invoke this method.</p>
-- @param httpMethod [String] <p>The method's HTTP verb.</p>
-- @param methodIntegration [Integration] <p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p> <div class="remarks"> <p/> <h4>Example: </h4> <h5>Request</h5> <p/> <pre><code>GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T213210Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": [ { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html", "name": "integration", "templated": true }, { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true } ], "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integration:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integration:responses": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integration:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integrationresponse:put": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/{status_code}", "templated": true } }, "cacheKeyParameters": [], "cacheNamespace": "0cjtch", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestTemplates": { "application/json": "{\n \"a\": \"$input.params('operand1')\",\n \"b\": \"$input.params('operand2')\", \n \"op\": \"$input.params('operator')\" \n}" }, "type": "AWS", "uri": "arn:aws:apigateway:us-west-2:lambda:path//2015-03-31/functions/arn:aws:lambda:us-west-2:123456789012:function:Calc/invocations", "_embedded": { "integration:responses": { "_links": { "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.operator": "integration.response.body.op", "method.response.header.operand_2": "integration.response.body.b", "method.response.header.operand_1": "integration.response.body.a" }, "responseTemplates": { "application/json": "#set($res = $input.path('$'))\n{\n \"result\": \"$res.a, $res.b, $res.op => $res.c\",\n \"a\" : \"$res.a\",\n \"b\" : \"$res.b\",\n \"op\" : \"$res.op\",\n \"c\" : \"$res.c\"\n}" }, "selectionPattern": "", "statusCode": "200" } } }</code></pre> <p/> </div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-integration.html">AWS CLI</a> </div>
-- @param requestValidatorId [String] <p>The identifier of a <a>RequestValidator</a> for request validation.</p>
-- @param authorizerId [String] <p>The identifier of an <a>Authorizer</a> to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>
function M.Method(methodResponses, requestParameters, requestModels, authorizationType, operationName, apiKeyRequired, httpMethod, methodIntegration, requestValidatorId, authorizerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Method")
	local t = { 
		["methodResponses"] = methodResponses,
		["requestParameters"] = requestParameters,
		["requestModels"] = requestModels,
		["authorizationType"] = authorizationType,
		["operationName"] = operationName,
		["apiKeyRequired"] = apiKeyRequired,
		["httpMethod"] = httpMethod,
		["methodIntegration"] = methodIntegration,
		["requestValidatorId"] = requestValidatorId,
		["authorizerId"] = authorizerId,
	}
	M.AssertMethod(t)
	return t
end

local Models_keys = { "position" = true, "items" = true, nil }

function M.AssertModels(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Models to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfModel(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(Models_keys[k], "Models contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Models
-- <p>Represents a collection of <a>Model</a> resources.</p> <div class="seeAlso"> <a>Method</a>, <a>MethodResponse</a>, <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html">Models and Mappings</a> </div>
-- @param position [String] <p>Represents a collection of <a>Model</a> resources.</p> <div class="seeAlso"> <a>Method</a>, <a>MethodResponse</a>, <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html">Models and Mappings</a> </div>
-- @param items [ListOfModel] <p>Gets the current <a>Model</a> resource in the collection.</p>
function M.Models(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Models")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertModels(t)
	return t
end

local UpdateMethodResponseRequest_keys = { "resourceId" = true, "statusCode" = true, "restApiId" = true, "patchOperations" = true, "httpMethod" = true, nil }

function M.AssertUpdateMethodResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMethodResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then M.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(UpdateMethodResponseRequest_keys[k], "UpdateMethodResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMethodResponseRequest
-- <p>A request to update an existing <a>MethodResponse</a> resource.</p>
-- @param resourceId [String] <p>The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
-- @param statusCode [StatusCode] <p>The status code for the <a>MethodResponse</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>MethodResponse</a> resource.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- @param httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
-- Required parameter: statusCode
function M.UpdateMethodResponseRequest(resourceId, statusCode, restApiId, patchOperations, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMethodResponseRequest")
	local t = { 
		["resourceId"] = resourceId,
		["statusCode"] = statusCode,
		["restApiId"] = restApiId,
		["patchOperations"] = patchOperations,
		["httpMethod"] = httpMethod,
	}
	M.AssertUpdateMethodResponseRequest(t)
	return t
end

local DeleteAuthorizerRequest_keys = { "restApiId" = true, "authorizerId" = true, nil }

function M.AssertDeleteAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["authorizerId"], "Expected key authorizerId to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["authorizerId"] then M.AssertString(struct["authorizerId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAuthorizerRequest_keys[k], "DeleteAuthorizerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAuthorizerRequest
-- <p>Request to delete an existing <a>Authorizer</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Authorizer</a> resource.</p>
-- @param authorizerId [String] <p>The identifier of the <a>Authorizer</a> resource.</p>
-- Required parameter: restApiId
-- Required parameter: authorizerId
function M.DeleteAuthorizerRequest(restApiId, authorizerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAuthorizerRequest")
	local t = { 
		["restApiId"] = restApiId,
		["authorizerId"] = authorizerId,
	}
	M.AssertDeleteAuthorizerRequest(t)
	return t
end

local CreateAuthorizerRequest_keys = { "authType" = true, "restApiId" = true, "name" = true, "providerARNs" = true, "authorizerUri" = true, "identityValidationExpression" = true, "authorizerResultTtlInSeconds" = true, "authorizerCredentials" = true, "identitySource" = true, "type" = true, nil }

function M.AssertCreateAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["identitySource"], "Expected key identitySource to exist in table")
	if struct["authType"] then M.AssertString(struct["authType"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["providerARNs"] then M.AssertListOfARNs(struct["providerARNs"]) end
	if struct["authorizerUri"] then M.AssertString(struct["authorizerUri"]) end
	if struct["identityValidationExpression"] then M.AssertString(struct["identityValidationExpression"]) end
	if struct["authorizerResultTtlInSeconds"] then M.AssertNullableInteger(struct["authorizerResultTtlInSeconds"]) end
	if struct["authorizerCredentials"] then M.AssertString(struct["authorizerCredentials"]) end
	if struct["identitySource"] then M.AssertString(struct["identitySource"]) end
	if struct["type"] then M.AssertAuthorizerType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(CreateAuthorizerRequest_keys[k], "CreateAuthorizerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAuthorizerRequest
-- <p>Request to add a new <a>Authorizer</a> to an existing <a>RestApi</a> resource.</p>
-- @param authType [String] <p>Optional customer-defined field, used in Swagger imports/exports. Has no functional impact.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier under which the <a>Authorizer</a> will be created.</p>
-- @param name [String] <p>[Required] The name of the authorizer.</p>
-- @param providerARNs [ListOfARNs] <p>A list of the Cognito Your User Pool authorizer's provider ARNs.</p>
-- @param authorizerUri [String] <p>[Required] Specifies the authorizer's Uniform Resource Identifier (URI).</p>
-- @param identityValidationExpression [String] <p>A validation expression for the incoming identity.</p>
-- @param authorizerResultTtlInSeconds [NullableInteger] <p>The TTL of cached authorizer results.</p>
-- @param authorizerCredentials [String] <p>Specifies the credentials required for the authorizer, if any.</p>
-- @param identitySource [String] <p>[Required] The source of the identity in an incoming request.</p>
-- @param type [AuthorizerType] <p>[Required] The type of the authorizer.</p>
-- Required parameter: restApiId
-- Required parameter: name
-- Required parameter: type
-- Required parameter: identitySource
function M.CreateAuthorizerRequest(authType, restApiId, name, providerARNs, authorizerUri, identityValidationExpression, authorizerResultTtlInSeconds, authorizerCredentials, identitySource, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAuthorizerRequest")
	local t = { 
		["authType"] = authType,
		["restApiId"] = restApiId,
		["name"] = name,
		["providerARNs"] = providerARNs,
		["authorizerUri"] = authorizerUri,
		["identityValidationExpression"] = identityValidationExpression,
		["authorizerResultTtlInSeconds"] = authorizerResultTtlInSeconds,
		["authorizerCredentials"] = authorizerCredentials,
		["identitySource"] = identitySource,
		["type"] = type,
	}
	M.AssertCreateAuthorizerRequest(t)
	return t
end

local MethodSetting_keys = { "cacheTtlInSeconds" = true, "loggingLevel" = true, "dataTraceEnabled" = true, "metricsEnabled" = true, "unauthorizedCacheControlHeaderStrategy" = true, "throttlingRateLimit" = true, "cacheDataEncrypted" = true, "cachingEnabled" = true, "throttlingBurstLimit" = true, "requireAuthorizationForCacheControl" = true, nil }

function M.AssertMethodSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MethodSetting to be of type 'table'")
	if struct["cacheTtlInSeconds"] then M.AssertInteger(struct["cacheTtlInSeconds"]) end
	if struct["loggingLevel"] then M.AssertString(struct["loggingLevel"]) end
	if struct["dataTraceEnabled"] then M.AssertBoolean(struct["dataTraceEnabled"]) end
	if struct["metricsEnabled"] then M.AssertBoolean(struct["metricsEnabled"]) end
	if struct["unauthorizedCacheControlHeaderStrategy"] then M.AssertUnauthorizedCacheControlHeaderStrategy(struct["unauthorizedCacheControlHeaderStrategy"]) end
	if struct["throttlingRateLimit"] then M.AssertDouble(struct["throttlingRateLimit"]) end
	if struct["cacheDataEncrypted"] then M.AssertBoolean(struct["cacheDataEncrypted"]) end
	if struct["cachingEnabled"] then M.AssertBoolean(struct["cachingEnabled"]) end
	if struct["throttlingBurstLimit"] then M.AssertInteger(struct["throttlingBurstLimit"]) end
	if struct["requireAuthorizationForCacheControl"] then M.AssertBoolean(struct["requireAuthorizationForCacheControl"]) end
	for k,_ in pairs(struct) do
		assert(MethodSetting_keys[k], "MethodSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MethodSetting
-- <p>Specifies the method setting properties.</p>
-- @param cacheTtlInSeconds [Integer] <p>Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached. The PATCH path for this setting is <code>/{method_setting_key}/caching/ttlInSeconds</code>, and the value is an integer.</p>
-- @param loggingLevel [String] <p>Specifies the logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is <code>/{method_setting_key}/logging/loglevel</code>, and the available levels are <code>OFF</code>, <code>ERROR</code>, and <code>INFO</code>.</p>
-- @param dataTraceEnabled [Boolean] <p>Specifies whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is <code>/{method_setting_key}/logging/dataTrace</code>, and the value is a Boolean.</p>
-- @param metricsEnabled [Boolean] <p>Specifies whether Amazon CloudWatch metrics are enabled for this method. The PATCH path for this setting is <code>/{method_setting_key}/metrics/enabled</code>, and the value is a Boolean.</p>
-- @param unauthorizedCacheControlHeaderStrategy [UnauthorizedCacheControlHeaderStrategy] <p>Specifies how to handle unauthorized requests for cache invalidation. The PATCH path for this setting is <code>/{method_setting_key}/caching/unauthorizedCacheControlHeaderStrategy</code>, and the available values are <code>FAIL_WITH_403</code>, <code>SUCCEED_WITH_RESPONSE_HEADER</code>, <code>SUCCEED_WITHOUT_RESPONSE_HEADER</code>.</p>
-- @param throttlingRateLimit [Double] <p>Specifies the throttling rate limit. The PATCH path for this setting is <code>/{method_setting_key}/throttling/rateLimit</code>, and the value is a double.</p>
-- @param cacheDataEncrypted [Boolean] <p>Specifies whether the cached responses are encrypted. The PATCH path for this setting is <code>/{method_setting_key}/caching/dataEncrypted</code>, and the value is a Boolean.</p>
-- @param cachingEnabled [Boolean] <p>Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached. The PATCH path for this setting is <code>/{method_setting_key}/caching/enabled</code>, and the value is a Boolean.</p>
-- @param throttlingBurstLimit [Integer] <p>Specifies the throttling burst limit. The PATCH path for this setting is <code>/{method_setting_key}/throttling/burstLimit</code>, and the value is an integer.</p>
-- @param requireAuthorizationForCacheControl [Boolean] <p>Specifies whether authorization is required for a cache invalidation request. The PATCH path for this setting is <code>/{method_setting_key}/caching/requireAuthorizationForCacheControl</code>, and the value is a Boolean.</p>
function M.MethodSetting(cacheTtlInSeconds, loggingLevel, dataTraceEnabled, metricsEnabled, unauthorizedCacheControlHeaderStrategy, throttlingRateLimit, cacheDataEncrypted, cachingEnabled, throttlingBurstLimit, requireAuthorizationForCacheControl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MethodSetting")
	local t = { 
		["cacheTtlInSeconds"] = cacheTtlInSeconds,
		["loggingLevel"] = loggingLevel,
		["dataTraceEnabled"] = dataTraceEnabled,
		["metricsEnabled"] = metricsEnabled,
		["unauthorizedCacheControlHeaderStrategy"] = unauthorizedCacheControlHeaderStrategy,
		["throttlingRateLimit"] = throttlingRateLimit,
		["cacheDataEncrypted"] = cacheDataEncrypted,
		["cachingEnabled"] = cachingEnabled,
		["throttlingBurstLimit"] = throttlingBurstLimit,
		["requireAuthorizationForCacheControl"] = requireAuthorizationForCacheControl,
	}
	M.AssertMethodSetting(t)
	return t
end

local GetDocumentationVersionsRequest_keys = { "position" = true, "restApiId" = true, "limit" = true, nil }

function M.AssertGetDocumentationVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentationVersionsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentationVersionsRequest_keys[k], "GetDocumentationVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentationVersionsRequest
-- <p>Gets the documentation versions of an API.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param restApiId [String] <p>[Required] The identifier of an API of the to-be-retrieved documentation versions.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- Required parameter: restApiId
function M.GetDocumentationVersionsRequest(position, restApiId, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentationVersionsRequest")
	local t = { 
		["position"] = position,
		["restApiId"] = restApiId,
		["limit"] = limit,
	}
	M.AssertGetDocumentationVersionsRequest(t)
	return t
end

local DeleteMethodResponseRequest_keys = { "resourceId" = true, "statusCode" = true, "restApiId" = true, "httpMethod" = true, nil }

function M.AssertDeleteMethodResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMethodResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then M.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMethodResponseRequest_keys[k], "DeleteMethodResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMethodResponseRequest
-- <p>A request to delete an existing <a>MethodResponse</a> resource.</p>
-- @param resourceId [String] <p>The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
-- @param statusCode [StatusCode] <p>The status code identifier for the <a>MethodResponse</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>MethodResponse</a> resource.</p>
-- @param httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
-- Required parameter: statusCode
function M.DeleteMethodResponseRequest(resourceId, statusCode, restApiId, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMethodResponseRequest")
	local t = { 
		["resourceId"] = resourceId,
		["statusCode"] = statusCode,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
	}
	M.AssertDeleteMethodResponseRequest(t)
	return t
end

local GetUsageRequest_keys = { "startDate" = true, "keyId" = true, "usagePlanId" = true, "limit" = true, "position" = true, "endDate" = true, nil }

function M.AssertGetUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUsageRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	assert(struct["startDate"], "Expected key startDate to exist in table")
	assert(struct["endDate"], "Expected key endDate to exist in table")
	if struct["startDate"] then M.AssertString(struct["startDate"]) end
	if struct["keyId"] then M.AssertString(struct["keyId"]) end
	if struct["usagePlanId"] then M.AssertString(struct["usagePlanId"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["endDate"] then M.AssertString(struct["endDate"]) end
	for k,_ in pairs(struct) do
		assert(GetUsageRequest_keys[k], "GetUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUsageRequest
-- <p>The GET request to get the usage data of a usage plan in a specified time interval.</p>
-- @param startDate [String] <p>The starting date (e.g., 2016-01-01) of the usage data.</p>
-- @param keyId [String] <p>The Id of the API key associated with the resultant usage data.</p>
-- @param usagePlanId [String] <p>The Id of the usage plan associated with the usage data.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param endDate [String] <p>The ending date (e.g., 2016-12-31) of the usage data.</p>
-- Required parameter: usagePlanId
-- Required parameter: startDate
-- Required parameter: endDate
function M.GetUsageRequest(startDate, keyId, usagePlanId, limit, position, endDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUsageRequest")
	local t = { 
		["startDate"] = startDate,
		["keyId"] = keyId,
		["usagePlanId"] = usagePlanId,
		["limit"] = limit,
		["position"] = position,
		["endDate"] = endDate,
	}
	M.AssertGetUsageRequest(t)
	return t
end

local UpdateRequestValidatorRequest_keys = { "requestValidatorId" = true, "restApiId" = true, "patchOperations" = true, nil }

function M.AssertUpdateRequestValidatorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRequestValidatorRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["requestValidatorId"], "Expected key requestValidatorId to exist in table")
	if struct["requestValidatorId"] then M.AssertString(struct["requestValidatorId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRequestValidatorRequest_keys[k], "UpdateRequestValidatorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRequestValidatorRequest
-- <p>Updates a <a>RequestValidator</a> of a given <a>RestApi</a>.</p>
-- @param requestValidatorId [String] <p>[Required] The identifier of <a>RequestValidator</a> to be updated.</p>
-- @param restApiId [String] <p>[Required] The identifier of the <a>RestApi</a> for which the given <a>RequestValidator</a> is updated.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: restApiId
-- Required parameter: requestValidatorId
function M.UpdateRequestValidatorRequest(requestValidatorId, restApiId, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRequestValidatorRequest")
	local t = { 
		["requestValidatorId"] = requestValidatorId,
		["restApiId"] = restApiId,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateRequestValidatorRequest(t)
	return t
end

local DeleteIntegrationRequest_keys = { "resourceId" = true, "restApiId" = true, "httpMethod" = true, nil }

function M.AssertDeleteIntegrationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIntegrationRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIntegrationRequest_keys[k], "DeleteIntegrationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIntegrationRequest
-- <p>Represents a delete integration request.</p>
-- @param resourceId [String] <p>Specifies a delete integration request's resource identifier.</p>
-- @param restApiId [String] <p>Specifies a delete integration request's API identifier.</p>
-- @param httpMethod [String] <p>Specifies a delete integration request's HTTP method.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
function M.DeleteIntegrationRequest(resourceId, restApiId, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIntegrationRequest")
	local t = { 
		["resourceId"] = resourceId,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
	}
	M.AssertDeleteIntegrationRequest(t)
	return t
end

local UpdateApiKeyRequest_keys = { "apiKey" = true, "patchOperations" = true, nil }

function M.AssertUpdateApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApiKeyRequest to be of type 'table'")
	assert(struct["apiKey"], "Expected key apiKey to exist in table")
	if struct["apiKey"] then M.AssertString(struct["apiKey"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateApiKeyRequest_keys[k], "UpdateApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApiKeyRequest
-- <p>A request to change information about an <a>ApiKey</a> resource.</p>
-- @param apiKey [String] <p>The identifier of the <a>ApiKey</a> resource to be updated.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: apiKey
function M.UpdateApiKeyRequest(apiKey, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApiKeyRequest")
	local t = { 
		["apiKey"] = apiKey,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateApiKeyRequest(t)
	return t
end

local TestInvokeMethodRequest_keys = { "body" = true, "clientCertificateId" = true, "restApiId" = true, "httpMethod" = true, "resourceId" = true, "pathWithQueryString" = true, "headers" = true, "stageVariables" = true, nil }

function M.AssertTestInvokeMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestInvokeMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["body"] then M.AssertString(struct["body"]) end
	if struct["clientCertificateId"] then M.AssertString(struct["clientCertificateId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["pathWithQueryString"] then M.AssertString(struct["pathWithQueryString"]) end
	if struct["headers"] then M.AssertMapOfHeaderValues(struct["headers"]) end
	if struct["stageVariables"] then M.AssertMapOfStringToString(struct["stageVariables"]) end
	for k,_ in pairs(struct) do
		assert(TestInvokeMethodRequest_keys[k], "TestInvokeMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestInvokeMethodRequest
-- <p>Make a request to simulate the execution of a <a>Method</a>.</p>
-- @param body [String] <p>The simulated request body of an incoming invocation request.</p>
-- @param clientCertificateId [String] <p>A <a>ClientCertificate</a> identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.</p>
-- @param restApiId [String] <p>Specifies a test invoke method request's API identifier.</p>
-- @param httpMethod [String] <p>Specifies a test invoke method request's HTTP method.</p>
-- @param resourceId [String] <p>Specifies a test invoke method request's resource ID.</p>
-- @param pathWithQueryString [String] <p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
-- @param headers [MapOfHeaderValues] <p>A key-value map of headers to simulate an incoming invocation request.</p>
-- @param stageVariables [MapOfStringToString] <p>A key-value map of stage variables to simulate an invocation on a deployed <a>Stage</a>.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
function M.TestInvokeMethodRequest(body, clientCertificateId, restApiId, httpMethod, resourceId, pathWithQueryString, headers, stageVariables, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestInvokeMethodRequest")
	local t = { 
		["body"] = body,
		["clientCertificateId"] = clientCertificateId,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
		["resourceId"] = resourceId,
		["pathWithQueryString"] = pathWithQueryString,
		["headers"] = headers,
		["stageVariables"] = stageVariables,
	}
	M.AssertTestInvokeMethodRequest(t)
	return t
end

local ConflictException_keys = { "message" = true, nil }

function M.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConflictException_keys[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
--  
-- @param message [String]  
function M.ConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertConflictException(t)
	return t
end

local UpdateModelRequest_keys = { "modelName" = true, "restApiId" = true, "patchOperations" = true, nil }

function M.AssertUpdateModelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateModelRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["modelName"], "Expected key modelName to exist in table")
	if struct["modelName"] then M.AssertString(struct["modelName"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateModelRequest_keys[k], "UpdateModelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateModelRequest
-- <p>Request to update an existing model in an existing <a>RestApi</a> resource.</p>
-- @param modelName [String] <p>The name of the model to update.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier under which the model exists.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: restApiId
-- Required parameter: modelName
function M.UpdateModelRequest(modelName, restApiId, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateModelRequest")
	local t = { 
		["modelName"] = modelName,
		["restApiId"] = restApiId,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateModelRequest(t)
	return t
end

local UpdateDeploymentRequest_keys = { "deploymentId" = true, "restApiId" = true, "patchOperations" = true, nil }

function M.AssertUpdateDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeploymentRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["deploymentId"] then M.AssertString(struct["deploymentId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDeploymentRequest_keys[k], "UpdateDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeploymentRequest
-- <p>Requests Amazon API Gateway to change information about a <a>Deployment</a> resource.</p>
-- @param deploymentId [String] <p>The replacement identifier for the <a>Deployment</a> resource to change information about.</p>
-- @param restApiId [String] <p>The replacement identifier of the <a>RestApi</a> resource for the <a>Deployment</a> resource to change information about.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: restApiId
-- Required parameter: deploymentId
function M.UpdateDeploymentRequest(deploymentId, restApiId, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeploymentRequest")
	local t = { 
		["deploymentId"] = deploymentId,
		["restApiId"] = restApiId,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateDeploymentRequest(t)
	return t
end

local PutRestApiRequest_keys = { "body" = true, "failOnWarnings" = true, "restApiId" = true, "mode" = true, "parameters" = true, nil }

function M.AssertPutRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRestApiRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["body"], "Expected key body to exist in table")
	if struct["body"] then M.AssertBlob(struct["body"]) end
	if struct["failOnWarnings"] then M.AssertBoolean(struct["failOnWarnings"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["mode"] then M.AssertPutMode(struct["mode"]) end
	if struct["parameters"] then M.AssertMapOfStringToString(struct["parameters"]) end
	for k,_ in pairs(struct) do
		assert(PutRestApiRequest_keys[k], "PutRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRestApiRequest
-- <p>A PUT request to update an existing API, with external API definitions specified as the request body.</p>
-- @param body [Blob] <p>The PUT request body containing external API definitions. Currently, only Swagger definition JSON files are supported.</p>
-- @param failOnWarnings [Boolean] <p>A query parameter to indicate whether to rollback the API update (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> to be updated. </p>
-- @param mode [PutMode] <p>The <code>mode</code> query parameter to specify the update mode. Valid values are "merge" and "overwrite". By default, the update mode is "merge".</p>
-- @param parameters [MapOfStringToString] <p>Custom headers supplied as part of the request. </p>
-- Required parameter: restApiId
-- Required parameter: body
function M.PutRestApiRequest(body, failOnWarnings, restApiId, mode, parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRestApiRequest")
	local t = { 
		["body"] = body,
		["failOnWarnings"] = failOnWarnings,
		["restApiId"] = restApiId,
		["mode"] = mode,
		["parameters"] = parameters,
	}
	M.AssertPutRestApiRequest(t)
	return t
end

local GetSdkRequest_keys = { "sdkType" = true, "restApiId" = true, "parameters" = true, "stageName" = true, nil }

function M.AssertGetSdkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSdkRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["sdkType"], "Expected key sdkType to exist in table")
	if struct["sdkType"] then M.AssertString(struct["sdkType"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["parameters"] then M.AssertMapOfStringToString(struct["parameters"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(GetSdkRequest_keys[k], "GetSdkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSdkRequest
-- <p>Request a new generated client SDK for a <a>RestApi</a> and <a>Stage</a>.</p>
-- @param sdkType [String] <p>The language for the generated SDK. Currently <code>javascript</code>, <code>android</code>, and <code>objectivec</code> (for iOS) are supported.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> that the SDK will use.</p>
-- @param parameters [MapOfStringToString] <p>A key-value map of query string parameters that specify properties of the SDK, depending on the requested <code>sdkType</code>. For <code>sdkType</code> of <code>objectivec</code>, a parameter named <code>classPrefix</code> is required. For <code>sdkType</code> of <code>android</code>, parameters named <code>groupId</code>, <code>artifactId</code>, <code>artifactVersion</code>, and <code>invokerPackage</code> are required.</p>
-- @param stageName [String] <p>The name of the <a>Stage</a> that the SDK will use.</p>
-- Required parameter: restApiId
-- Required parameter: stageName
-- Required parameter: sdkType
function M.GetSdkRequest(sdkType, restApiId, parameters, stageName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSdkRequest")
	local t = { 
		["sdkType"] = sdkType,
		["restApiId"] = restApiId,
		["parameters"] = parameters,
		["stageName"] = stageName,
	}
	M.AssertGetSdkRequest(t)
	return t
end

local UpdateUsageRequest_keys = { "keyId" = true, "usagePlanId" = true, "patchOperations" = true, nil }

function M.AssertUpdateUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUsageRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	assert(struct["keyId"], "Expected key keyId to exist in table")
	if struct["keyId"] then M.AssertString(struct["keyId"]) end
	if struct["usagePlanId"] then M.AssertString(struct["usagePlanId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUsageRequest_keys[k], "UpdateUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUsageRequest
-- <p>The PATCH request to grant a temporary extension to the reamining quota of a usage plan associated with a specified API key.</p>
-- @param keyId [String] <p>The identifier of the API key associated with the usage plan in which a temporary extension is granted to the remaining quota.</p>
-- @param usagePlanId [String] <p>The Id of the usage plan associated with the usage data.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: usagePlanId
-- Required parameter: keyId
function M.UpdateUsageRequest(keyId, usagePlanId, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUsageRequest")
	local t = { 
		["keyId"] = keyId,
		["usagePlanId"] = usagePlanId,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateUsageRequest(t)
	return t
end

local StageKey_keys = { "restApiId" = true, "stageName" = true, nil }

function M.AssertStageKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StageKey to be of type 'table'")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	for k,_ in pairs(struct) do
		assert(StageKey_keys[k], "StageKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StageKey
-- <p>A reference to a unique stage identified in the format <code>{restApiId}/{stage}</code>.</p>
-- @param restApiId [String] <p>A list of <a>Stage</a> resources that are associated with the <a>ApiKey</a> resource.</p>
-- @param stageName [String] <p>The stage name in the <a>RestApi</a> that the stage key references.</p>
function M.StageKey(restApiId, stageName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StageKey")
	local t = { 
		["restApiId"] = restApiId,
		["stageName"] = stageName,
	}
	M.AssertStageKey(t)
	return t
end

local CreateModelRequest_keys = { "contentType" = true, "schema" = true, "restApiId" = true, "name" = true, "description" = true, nil }

function M.AssertCreateModelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateModelRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["contentType"], "Expected key contentType to exist in table")
	if struct["contentType"] then M.AssertString(struct["contentType"]) end
	if struct["schema"] then M.AssertString(struct["schema"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateModelRequest_keys[k], "CreateModelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateModelRequest
-- <p>Request to add a new <a>Model</a> to an existing <a>RestApi</a> resource.</p>
-- @param contentType [String] <p>The content-type for the model.</p>
-- @param schema [String] <p>The schema for the model. For <code>application/json</code> models, this should be <a href="http://json-schema.org/documentation.html" target="_blank">JSON-schema draft v4</a> model.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier under which the <a>Model</a> will be created.</p>
-- @param name [String] <p>The name of the model.</p>
-- @param description [String] <p>The description of the model.</p>
-- Required parameter: restApiId
-- Required parameter: name
-- Required parameter: contentType
function M.CreateModelRequest(contentType, schema, restApiId, name, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateModelRequest")
	local t = { 
		["contentType"] = contentType,
		["schema"] = schema,
		["restApiId"] = restApiId,
		["name"] = name,
		["description"] = description,
	}
	M.AssertCreateModelRequest(t)
	return t
end

local RequestValidators_keys = { "position" = true, "items" = true, nil }

function M.AssertRequestValidators(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestValidators to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfRequestValidator(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(RequestValidators_keys[k], "RequestValidators contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestValidators
-- <p>A collection of <a>RequestValidator</a> resources of a given <a>RestApi</a>.</p> <div class="remarks"> <p>In Swagger, the <a>RequestValidators</a> of an API is defined by the <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validators.html">x-amazon-apigateway-request-validators</a> extension.</p> </div> <div class="seeAlso"><a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html">Enable Basic Request Validation in API Gateway</a></div>
-- @param position [String] <p>A collection of <a>RequestValidator</a> resources of a given <a>RestApi</a>.</p> <div class="remarks"> <p>In Swagger, the <a>RequestValidators</a> of an API is defined by the <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validators.html">x-amazon-apigateway-request-validators</a> extension.</p> </div> <div class="seeAlso"><a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html">Enable Basic Request Validation in API Gateway</a></div>
-- @param items [ListOfRequestValidator] <p>The current page of <a>RequestValidator</a> resources in the <a>RequestValidators</a> collection.</p>
function M.RequestValidators(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestValidators")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertRequestValidators(t)
	return t
end

local PutMethodResponseRequest_keys = { "responseModels" = true, "restApiId" = true, "resourceId" = true, "httpMethod" = true, "responseParameters" = true, "statusCode" = true, nil }

function M.AssertPutMethodResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMethodResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["responseModels"] then M.AssertMapOfStringToString(struct["responseModels"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	if struct["responseParameters"] then M.AssertMapOfStringToBoolean(struct["responseParameters"]) end
	if struct["statusCode"] then M.AssertStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(PutMethodResponseRequest_keys[k], "PutMethodResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMethodResponseRequest
-- <p>Request to add a <a>MethodResponse</a> to an existing <a>Method</a> resource.</p>
-- @param responseModels [MapOfStringToString] <p>Specifies the <a>Model</a> resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a <a>Model</a> name as the value.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Method</a> resource.</p>
-- @param resourceId [String] <p>The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- @param httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- @param responseParameters [MapOfStringToBoolean] <p>A key-value map specifying required or optional response parameters that Amazon API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
-- @param statusCode [StatusCode] <p>The method response's status code.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
-- Required parameter: statusCode
function M.PutMethodResponseRequest(responseModels, restApiId, resourceId, httpMethod, responseParameters, statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutMethodResponseRequest")
	local t = { 
		["responseModels"] = responseModels,
		["restApiId"] = restApiId,
		["resourceId"] = resourceId,
		["httpMethod"] = httpMethod,
		["responseParameters"] = responseParameters,
		["statusCode"] = statusCode,
	}
	M.AssertPutMethodResponseRequest(t)
	return t
end

local GetDeploymentsRequest_keys = { "position" = true, "restApiId" = true, "limit" = true, nil }

function M.AssertGetDeploymentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentsRequest_keys[k], "GetDeploymentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentsRequest
-- <p>Requests Amazon API Gateway to get information about a <a>Deployments</a> collection.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param restApiId [String] <p>The identifier of the <a>RestApi</a> resource for the collection of <a>Deployment</a> resources to get information about.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- Required parameter: restApiId
function M.GetDeploymentsRequest(position, restApiId, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentsRequest")
	local t = { 
		["position"] = position,
		["restApiId"] = restApiId,
		["limit"] = limit,
	}
	M.AssertGetDeploymentsRequest(t)
	return t
end

local PutIntegrationRequest_keys = { "passthroughBehavior" = true, "restApiId" = true, "cacheKeyParameters" = true, "requestParameters" = true, "integrationHttpMethod" = true, "resourceId" = true, "uri" = true, "httpMethod" = true, "contentHandling" = true, "requestTemplates" = true, "cacheNamespace" = true, "credentials" = true, "type" = true, nil }

function M.AssertPutIntegrationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIntegrationRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["passthroughBehavior"] then M.AssertString(struct["passthroughBehavior"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["cacheKeyParameters"] then M.AssertListOfString(struct["cacheKeyParameters"]) end
	if struct["requestParameters"] then M.AssertMapOfStringToString(struct["requestParameters"]) end
	if struct["integrationHttpMethod"] then M.AssertString(struct["integrationHttpMethod"]) end
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["uri"] then M.AssertString(struct["uri"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	if struct["contentHandling"] then M.AssertContentHandlingStrategy(struct["contentHandling"]) end
	if struct["requestTemplates"] then M.AssertMapOfStringToString(struct["requestTemplates"]) end
	if struct["cacheNamespace"] then M.AssertString(struct["cacheNamespace"]) end
	if struct["credentials"] then M.AssertString(struct["credentials"]) end
	if struct["type"] then M.AssertIntegrationType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(PutIntegrationRequest_keys[k], "PutIntegrationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIntegrationRequest
-- <p>Represents a put integration request.</p>
-- @param passthroughBehavior [String] <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the <code>requestTemplates</code> property on the Integration resource. There are three valid values: <code>WHEN_NO_MATCH</code>, <code>WHEN_NO_TEMPLATES</code>, and <code>NEVER</code>. </p> <ul> <li><p><code>WHEN_NO_MATCH</code> passes the request body for unmapped content types through to the integration back end without transformation.</p></li> <li><p><code>NEVER</code> rejects unmapped content types with an HTTP 415 'Unsupported Media Type' response.</p></li> <li><p><code>WHEN_NO_TEMPLATES</code> allows pass-through when the integration has NO content types mapped to templates. However if there is at least one content type defined, unmapped content types will be rejected with the same 415 response.</p></li> </ul>
-- @param restApiId [String] <p>Specifies a put integration request's API identifier.</p>
-- @param cacheKeyParameters [ListOfString] <p>Specifies a put integration input's cache key parameters.</p>
-- @param requestParameters [MapOfStringToString] <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
-- @param integrationHttpMethod [String] <p>Specifies a put integration HTTP method. When the integration type is HTTP or AWS, this field is required.</p>
-- @param resourceId [String] <p>Specifies a put integration request's resource ID.</p>
-- @param uri [String] <p>Specifies a put integration input's Uniform Resource Identifier (URI). When the integration type is HTTP or AWS, this field is required. For integration with Lambda as an AWS service proxy, this value is of the 'arn:aws:apigateway:&lt;region&gt;:lambda:path/2015-03-31/functions/&lt;functionArn&gt;/invocations' format.</p>
-- @param httpMethod [String] <p>Specifies a put integration request's HTTP method.</p>
-- @param contentHandling [ContentHandlingStrategy] <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a request payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a request payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehaviors</code> is configured to support payload pass-through.</p>
-- @param requestTemplates [MapOfStringToString] <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
-- @param cacheNamespace [String] <p>Specifies a put integration input's cache namespace.</p>
-- @param credentials [String] <p>Specifies whether credentials are required for a put integration.</p>
-- @param type [IntegrationType] <p>Specifies a put integration input's type.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
-- Required parameter: type
function M.PutIntegrationRequest(passthroughBehavior, restApiId, cacheKeyParameters, requestParameters, integrationHttpMethod, resourceId, uri, httpMethod, contentHandling, requestTemplates, cacheNamespace, credentials, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutIntegrationRequest")
	local t = { 
		["passthroughBehavior"] = passthroughBehavior,
		["restApiId"] = restApiId,
		["cacheKeyParameters"] = cacheKeyParameters,
		["requestParameters"] = requestParameters,
		["integrationHttpMethod"] = integrationHttpMethod,
		["resourceId"] = resourceId,
		["uri"] = uri,
		["httpMethod"] = httpMethod,
		["contentHandling"] = contentHandling,
		["requestTemplates"] = requestTemplates,
		["cacheNamespace"] = cacheNamespace,
		["credentials"] = credentials,
		["type"] = type,
	}
	M.AssertPutIntegrationRequest(t)
	return t
end

local UpdateAuthorizerRequest_keys = { "restApiId" = true, "authorizerId" = true, "patchOperations" = true, nil }

function M.AssertUpdateAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["authorizerId"], "Expected key authorizerId to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["authorizerId"] then M.AssertString(struct["authorizerId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAuthorizerRequest_keys[k], "UpdateAuthorizerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAuthorizerRequest
-- <p>Request to update an existing <a>Authorizer</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Authorizer</a> resource.</p>
-- @param authorizerId [String] <p>The identifier of the <a>Authorizer</a> resource.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: restApiId
-- Required parameter: authorizerId
function M.UpdateAuthorizerRequest(restApiId, authorizerId, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAuthorizerRequest")
	local t = { 
		["restApiId"] = restApiId,
		["authorizerId"] = authorizerId,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateAuthorizerRequest(t)
	return t
end

local GetDocumentationVersionRequest_keys = { "restApiId" = true, "documentationVersion" = true, nil }

function M.AssertGetDocumentationVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentationVersionRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationVersion"], "Expected key documentationVersion to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["documentationVersion"] then M.AssertString(struct["documentationVersion"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentationVersionRequest_keys[k], "GetDocumentationVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentationVersionRequest
-- <p>Gets a documentation snapshot of an API.</p>
-- @param restApiId [String] <p>[Required] The identifier of the API of the to-be-retrieved documentation snapshot.</p>
-- @param documentationVersion [String] <p>[Required] The version identifier of the to-be-retrieved documentation snapshot.</p>
-- Required parameter: restApiId
-- Required parameter: documentationVersion
function M.GetDocumentationVersionRequest(restApiId, documentationVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentationVersionRequest")
	local t = { 
		["restApiId"] = restApiId,
		["documentationVersion"] = documentationVersion,
	}
	M.AssertGetDocumentationVersionRequest(t)
	return t
end

local CreateDocumentationVersionRequest_keys = { "restApiId" = true, "stageName" = true, "documentationVersion" = true, "description" = true, nil }

function M.AssertCreateDocumentationVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDocumentationVersionRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationVersion"], "Expected key documentationVersion to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["stageName"] then M.AssertString(struct["stageName"]) end
	if struct["documentationVersion"] then M.AssertString(struct["documentationVersion"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateDocumentationVersionRequest_keys[k], "CreateDocumentationVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDocumentationVersionRequest
-- <p>Creates a new documentation version of a given API.</p>
-- @param restApiId [String] <p>[Required] Specifies the API identifier of the to-be-created documentation version.</p>
-- @param stageName [String] <p>The stage name to be associated with the new documentation snapshot.</p>
-- @param documentationVersion [String] <p>[Required] The version identifier of the new snapshot.</p>
-- @param description [String] <p>A description about the new documentation snapshot.</p>
-- Required parameter: restApiId
-- Required parameter: documentationVersion
function M.CreateDocumentationVersionRequest(restApiId, stageName, documentationVersion, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDocumentationVersionRequest")
	local t = { 
		["restApiId"] = restApiId,
		["stageName"] = stageName,
		["documentationVersion"] = documentationVersion,
		["description"] = description,
	}
	M.AssertCreateDocumentationVersionRequest(t)
	return t
end

local UpdateRestApiRequest_keys = { "restApiId" = true, "patchOperations" = true, nil }

function M.AssertUpdateRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRestApiRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRestApiRequest_keys[k], "UpdateRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRestApiRequest
-- <p>Request to update an existing <a>RestApi</a> resource in your collection.</p>
-- @param restApiId [String] <p>The ID of the <a>RestApi</a> you want to update.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: restApiId
function M.UpdateRestApiRequest(restApiId, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRestApiRequest")
	local t = { 
		["restApiId"] = restApiId,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateRestApiRequest(t)
	return t
end

local UpdateResourceRequest_keys = { "resourceId" = true, "restApiId" = true, "patchOperations" = true, nil }

function M.AssertUpdateResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateResourceRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateResourceRequest_keys[k], "UpdateResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateResourceRequest
-- <p>Request to change information about a <a>Resource</a> resource.</p>
-- @param resourceId [String] <p>The identifier of the <a>Resource</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Resource</a> resource.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
function M.UpdateResourceRequest(resourceId, restApiId, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateResourceRequest")
	local t = { 
		["resourceId"] = resourceId,
		["restApiId"] = restApiId,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateResourceRequest(t)
	return t
end

local PutIntegrationResponseRequest_keys = { "contentHandling" = true, "restApiId" = true, "resourceId" = true, "responseTemplates" = true, "httpMethod" = true, "selectionPattern" = true, "statusCode" = true, "responseParameters" = true, nil }

function M.AssertPutIntegrationResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIntegrationResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["contentHandling"] then M.AssertContentHandlingStrategy(struct["contentHandling"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["responseTemplates"] then M.AssertMapOfStringToString(struct["responseTemplates"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	if struct["selectionPattern"] then M.AssertString(struct["selectionPattern"]) end
	if struct["statusCode"] then M.AssertStatusCode(struct["statusCode"]) end
	if struct["responseParameters"] then M.AssertMapOfStringToString(struct["responseParameters"]) end
	for k,_ in pairs(struct) do
		assert(PutIntegrationResponseRequest_keys[k], "PutIntegrationResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIntegrationResponseRequest
-- <p>Represents a put integration response request.</p>
-- @param contentHandling [ContentHandlingStrategy] <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a response payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
-- @param restApiId [String] <p>Specifies a put integration response request's API identifier.</p>
-- @param resourceId [String] <p>Specifies a put integration response request's resource identifier.</p>
-- @param responseTemplates [MapOfStringToString] <p>Specifies a put integration response's templates.</p>
-- @param httpMethod [String] <p>Specifies a put integration response request's HTTP method.</p>
-- @param selectionPattern [String] <p>Specifies the selection pattern of a put integration response.</p>
-- @param statusCode [StatusCode] <p>Specifies the status code that is used to map the integration response to an existing <a>MethodResponse</a>.</p>
-- @param responseParameters [MapOfStringToString] <p>A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> must be a valid and unique response header name and <code>JSON-expression</code> a valid JSON expression without the <code>$</code> prefix.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
-- Required parameter: statusCode
function M.PutIntegrationResponseRequest(contentHandling, restApiId, resourceId, responseTemplates, httpMethod, selectionPattern, statusCode, responseParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutIntegrationResponseRequest")
	local t = { 
		["contentHandling"] = contentHandling,
		["restApiId"] = restApiId,
		["resourceId"] = resourceId,
		["responseTemplates"] = responseTemplates,
		["httpMethod"] = httpMethod,
		["selectionPattern"] = selectionPattern,
		["statusCode"] = statusCode,
		["responseParameters"] = responseParameters,
	}
	M.AssertPutIntegrationResponseRequest(t)
	return t
end

local GetResourcesRequest_keys = { "position" = true, "embed" = true, "restApiId" = true, "limit" = true, nil }

function M.AssertGetResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourcesRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["embed"] then M.AssertListOfString(struct["embed"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetResourcesRequest_keys[k], "GetResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourcesRequest
-- <p>Request to list information about a collection of resources.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param embed [ListOfString] <p>A query parameter used to retrieve the specified resources embedded in the returned <a>Resources</a> resource in the response. This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded <a>Method</a> resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources?embed=methods</code>.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the Resource.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- Required parameter: restApiId
function M.GetResourcesRequest(position, embed, restApiId, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetResourcesRequest")
	local t = { 
		["position"] = position,
		["embed"] = embed,
		["restApiId"] = restApiId,
		["limit"] = limit,
	}
	M.AssertGetResourcesRequest(t)
	return t
end

local GetBasePathMappingsRequest_keys = { "position" = true, "limit" = true, "domainName" = true, nil }

function M.AssertGetBasePathMappingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBasePathMappingsRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	if struct["domainName"] then M.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(GetBasePathMappingsRequest_keys[k], "GetBasePathMappingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBasePathMappingsRequest
-- <p>A request to get information about a collection of <a>BasePathMapping</a> resources.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
-- @param domainName [String] <p>The domain name of a <a>BasePathMapping</a> resource.</p>
-- Required parameter: domainName
function M.GetBasePathMappingsRequest(position, limit, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBasePathMappingsRequest")
	local t = { 
		["position"] = position,
		["limit"] = limit,
		["domainName"] = domainName,
	}
	M.AssertGetBasePathMappingsRequest(t)
	return t
end

local Integration_keys = { "integrationResponses" = true, "passthroughBehavior" = true, "cacheKeyParameters" = true, "requestParameters" = true, "uri" = true, "httpMethod" = true, "contentHandling" = true, "requestTemplates" = true, "cacheNamespace" = true, "credentials" = true, "type" = true, nil }

function M.AssertIntegration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Integration to be of type 'table'")
	if struct["integrationResponses"] then M.AssertMapOfIntegrationResponse(struct["integrationResponses"]) end
	if struct["passthroughBehavior"] then M.AssertString(struct["passthroughBehavior"]) end
	if struct["cacheKeyParameters"] then M.AssertListOfString(struct["cacheKeyParameters"]) end
	if struct["requestParameters"] then M.AssertMapOfStringToString(struct["requestParameters"]) end
	if struct["uri"] then M.AssertString(struct["uri"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	if struct["contentHandling"] then M.AssertContentHandlingStrategy(struct["contentHandling"]) end
	if struct["requestTemplates"] then M.AssertMapOfStringToString(struct["requestTemplates"]) end
	if struct["cacheNamespace"] then M.AssertString(struct["cacheNamespace"]) end
	if struct["credentials"] then M.AssertString(struct["credentials"]) end
	if struct["type"] then M.AssertIntegrationType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(Integration_keys[k], "Integration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Integration
-- <p>Represents an HTTP, HTTP_PROXY, AWS, AWS_PROXY, or Mock integration.</p> <div class="remarks">In the API Gateway console, the built-in Lambda integration is an AWS integration.</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- @param integrationResponses [MapOfIntegrationResponse] <p>Specifies the integration's responses.</p> <div class="remarks"> <p/> <h4>Example: Get integration responses of a method</h4> <h5>Request</h5> <p/> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160607T191449Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160607/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash} </code></pre> <h5>Response</h5> <p>The successful response returns <code>200 OK</code> status and a payload as follows:</p> <pre><code>{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\")\n" }, "statusCode": "200" }</code></pre> <p/> </div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- @param passthroughBehavior [String] <div> <p> Specifies how the method request body of an unmapped content type will be passed through the integration request to the back end without transformation. A content type is unmapped if no mapping template is defined in the integration or the content type does not match any of the mapped content types, as specified in <code>requestTemplates</code>. There are three valid values: <code>WHEN_NO_MATCH</code>, <code>WHEN_NO_TEMPLATES</code>, and <code>NEVER</code>. </p> <ul> <li> <code>WHEN_NO_MATCH</code> passes the method request body through the integration request to the back end without transformation when the method request content type does not match any content type associated with the mapping templates defined in the integration request. </li> <li> <code>WHEN_NO_TEMPLATES</code> passes the method request body through the integration request to the back end without transformation when no mapping template is defined in the integration request. If a template is defined when this option is selected, the method request of an unmapped content-type will be rejected with an HTTP <code>415 Unsupported Media Type</code> response. </li> <li> <code>NEVER</code> rejects the method request with an HTTP <code>415 Unsupported Media Type</code> response when either the method request content type does not match any content type associated with the mapping templates defined in the integration request or no mapping template is defined in the integration request. </li> </ul> </div>
-- @param cacheKeyParameters [ListOfString] <p>Specifies the integration's cache key parameters.</p>
-- @param requestParameters [MapOfStringToString] <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
-- @param uri [String] <p>Specifies the integration's Uniform Resource Identifier (URI). For HTTP integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the <a href="https://en.wikipedia.org/wiki/Uniform_Resource_Identifier" target="_blank">RFC-3986 specification</a>. For AWS integrations, the URI should be of the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}</code>. <code>Region</code>, <code>subdomain</code> and <code>service</code> are used to determine the right endpoint. For AWS services that use the <code>Action=</code> query string parameter, <code>service_api</code> should be a valid action for the desired service. For RESTful AWS service APIs, <code>path</code> is used to indicate that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>.</p>
-- @param httpMethod [String] <p>Specifies the integration's HTTP method type.</p>
-- @param contentHandling [ContentHandlingStrategy] <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a request payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a request payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehaviors</code> is configured to support payload pass-through.</p>
-- @param requestTemplates [MapOfStringToString] <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
-- @param cacheNamespace [String] <p>Specifies the integration's cache namespace.</p>
-- @param credentials [String] <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\*:user/\*</code>. To use resource-based permissions on supported AWS services, specify null.</p>
-- @param type [IntegrationType] <p>Specifies the integration's type. The valid value is <code>HTTP</code> for integrating with an HTTP back end, <code>AWS</code> for any AWS service endpoints, <code>MOCK</code> for testing without actually invoking the back end, <code>HTTP_PROXY</code> for integrating with the HTTP proxy integration, or <code>AWS_PROXY</code> for integrating with the Lambda proxy integration type.</p>
function M.Integration(integrationResponses, passthroughBehavior, cacheKeyParameters, requestParameters, uri, httpMethod, contentHandling, requestTemplates, cacheNamespace, credentials, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Integration")
	local t = { 
		["integrationResponses"] = integrationResponses,
		["passthroughBehavior"] = passthroughBehavior,
		["cacheKeyParameters"] = cacheKeyParameters,
		["requestParameters"] = requestParameters,
		["uri"] = uri,
		["httpMethod"] = httpMethod,
		["contentHandling"] = contentHandling,
		["requestTemplates"] = requestTemplates,
		["cacheNamespace"] = cacheNamespace,
		["credentials"] = credentials,
		["type"] = type,
	}
	M.AssertIntegration(t)
	return t
end

local RestApis_keys = { "position" = true, "items" = true, nil }

function M.AssertRestApis(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestApis to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfRestApi(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(RestApis_keys[k], "RestApis contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestApis
-- <p>Contains references to your APIs and links that guide you in how to interact with your collection. A collection offers a paginated view of your APIs.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param position [String] <p>Contains references to your APIs and links that guide you in how to interact with your collection. A collection offers a paginated view of your APIs.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param items [ListOfRestApi] <p>An array of links to the current page of <a>RestApi</a> resources.</p>
function M.RestApis(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestApis")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertRestApis(t)
	return t
end

local CreateDocumentationPartRequest_keys = { "restApiId" = true, "location" = true, "properties" = true, nil }

function M.AssertCreateDocumentationPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDocumentationPartRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["location"], "Expected key location to exist in table")
	assert(struct["properties"], "Expected key properties to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["location"] then M.AssertDocumentationPartLocation(struct["location"]) end
	if struct["properties"] then M.AssertString(struct["properties"]) end
	for k,_ in pairs(struct) do
		assert(CreateDocumentationPartRequest_keys[k], "CreateDocumentationPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDocumentationPartRequest
-- <p>Creates a new documentation part of a given API.</p>
-- @param restApiId [String] <p>[Required] The identifier of an API of the to-be-created documentation part.</p>
-- @param location [DocumentationPartLocation] <p>[Required] The location of the targeted API entity of the to-be-created documentation part.</p>
-- @param properties [String] <p>[Required] The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only Swagger-compliant key-value pairs can be exported and, hence, published.</p>
-- Required parameter: restApiId
-- Required parameter: location
-- Required parameter: properties
function M.CreateDocumentationPartRequest(restApiId, location, properties, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDocumentationPartRequest")
	local t = { 
		["restApiId"] = restApiId,
		["location"] = location,
		["properties"] = properties,
	}
	M.AssertCreateDocumentationPartRequest(t)
	return t
end

local CreateBasePathMappingRequest_keys = { "basePath" = true, "stage" = true, "restApiId" = true, "domainName" = true, nil }

function M.AssertCreateBasePathMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBasePathMappingRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["basePath"] then M.AssertString(struct["basePath"]) end
	if struct["stage"] then M.AssertString(struct["stage"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["domainName"] then M.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(CreateBasePathMappingRequest_keys[k], "CreateBasePathMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBasePathMappingRequest
-- <p>Requests Amazon API Gateway to create a new <a>BasePathMapping</a> resource.</p>
-- @param basePath [String] <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Leave this blank if you do not want callers to specify a base path name after the domain name.</p>
-- @param stage [String] <p>The name of the API's stage that you want to use for this mapping. Leave this blank if you do not want callers to explicitly specify the stage name after any base path name.</p>
-- @param restApiId [String] <p>The name of the API that you want to apply this mapping to.</p>
-- @param domainName [String] <p>The domain name of the <a>BasePathMapping</a> resource to create.</p>
-- Required parameter: domainName
-- Required parameter: restApiId
function M.CreateBasePathMappingRequest(basePath, stage, restApiId, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBasePathMappingRequest")
	local t = { 
		["basePath"] = basePath,
		["stage"] = stage,
		["restApiId"] = restApiId,
		["domainName"] = domainName,
	}
	M.AssertCreateBasePathMappingRequest(t)
	return t
end

local GetUsagePlansRequest_keys = { "position" = true, "keyId" = true, "limit" = true, nil }

function M.AssertGetUsagePlansRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUsagePlansRequest to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["keyId"] then M.AssertString(struct["keyId"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetUsagePlansRequest_keys[k], "GetUsagePlansRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUsagePlansRequest
-- <p>The GET request to get all the usage plans of the caller's account.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param keyId [String] <p>The identifier of the API key associated with the usage plans.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page.</p>
function M.GetUsagePlansRequest(position, keyId, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUsagePlansRequest")
	local t = { 
		["position"] = position,
		["keyId"] = keyId,
		["limit"] = limit,
	}
	M.AssertGetUsagePlansRequest(t)
	return t
end

local GetSdkTypeRequest_keys = { "id" = true, nil }

function M.AssertGetSdkTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSdkTypeRequest to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["id"] then M.AssertString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(GetSdkTypeRequest_keys[k], "GetSdkTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSdkTypeRequest
-- <p>Get an <a>SdkType</a> instance.</p>
-- @param id [String] <p>The identifier of the queried <a>SdkType</a> instance.</p>
-- Required parameter: id
function M.GetSdkTypeRequest(id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSdkTypeRequest")
	local t = { 
		["id"] = id,
	}
	M.AssertGetSdkTypeRequest(t)
	return t
end

local SdkConfigurationProperty_keys = { "friendlyName" = true, "defaultValue" = true, "required" = true, "name" = true, "description" = true, nil }

function M.AssertSdkConfigurationProperty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SdkConfigurationProperty to be of type 'table'")
	if struct["friendlyName"] then M.AssertString(struct["friendlyName"]) end
	if struct["defaultValue"] then M.AssertString(struct["defaultValue"]) end
	if struct["required"] then M.AssertBoolean(struct["required"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(SdkConfigurationProperty_keys[k], "SdkConfigurationProperty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SdkConfigurationProperty
-- <p>A configuration property of an SDK type.</p>
-- @param friendlyName [String] <p>The user-friendly name of an <a>SdkType</a> configuration property.</p>
-- @param defaultValue [String] <p>The default value of an <a>SdkType</a> configuration property.</p>
-- @param required [Boolean] <p>A boolean flag of an <a>SdkType</a> configuration property to indicate if the associated SDK configuration property is required (<code>true</code>) or not (<code>false</code>).</p>
-- @param name [String] <p>The name of a an <a>SdkType</a> configuration property.</p>
-- @param description [String] <p>The description of an <a>SdkType</a> configuration property.</p>
function M.SdkConfigurationProperty(friendlyName, defaultValue, required, name, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SdkConfigurationProperty")
	local t = { 
		["friendlyName"] = friendlyName,
		["defaultValue"] = defaultValue,
		["required"] = required,
		["name"] = name,
		["description"] = description,
	}
	M.AssertSdkConfigurationProperty(t)
	return t
end

local ApiKey_keys = { "description" = true, "enabled" = true, "value" = true, "id" = true, "lastUpdatedDate" = true, "createdDate" = true, "stageKeys" = true, "customerId" = true, "name" = true, nil }

function M.AssertApiKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiKey to be of type 'table'")
	if struct["description"] then M.AssertString(struct["description"]) end
	if struct["enabled"] then M.AssertBoolean(struct["enabled"]) end
	if struct["value"] then M.AssertString(struct["value"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["stageKeys"] then M.AssertListOfString(struct["stageKeys"]) end
	if struct["customerId"] then M.AssertString(struct["customerId"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(ApiKey_keys[k], "ApiKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiKey
-- <p>A resource that can be distributed to callers for executing <a>Method</a> resources that require an API key. API keys can be mapped to any <a>Stage</a> on any <a>RestApi</a>, which indicates that the callers with the API key can make requests to that stage.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html">Use API Keys</a> </div>
-- @param description [String] <p>The description of the API Key.</p>
-- @param enabled [Boolean] <p>Specifies whether the API Key can be used by callers.</p>
-- @param value [String] <p>The value of the API Key.</p>
-- @param id [String] <p>The identifier of the API Key.</p>
-- @param lastUpdatedDate [Timestamp] <p>The timestamp when the API Key was last updated.</p>
-- @param createdDate [Timestamp] <p>The timestamp when the API Key was created.</p>
-- @param stageKeys [ListOfString] <p>A list of <a>Stage</a> resources that are associated with the <a>ApiKey</a> resource.</p>
-- @param customerId [String] <p>An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.</p>
-- @param name [String] <p>The name of the API Key.</p>
function M.ApiKey(description, enabled, value, id, lastUpdatedDate, createdDate, stageKeys, customerId, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApiKey")
	local t = { 
		["description"] = description,
		["enabled"] = enabled,
		["value"] = value,
		["id"] = id,
		["lastUpdatedDate"] = lastUpdatedDate,
		["createdDate"] = createdDate,
		["stageKeys"] = stageKeys,
		["customerId"] = customerId,
		["name"] = name,
	}
	M.AssertApiKey(t)
	return t
end

local UpdateIntegrationResponseRequest_keys = { "resourceId" = true, "statusCode" = true, "restApiId" = true, "patchOperations" = true, "httpMethod" = true, nil }

function M.AssertUpdateIntegrationResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateIntegrationResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then M.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(UpdateIntegrationResponseRequest_keys[k], "UpdateIntegrationResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateIntegrationResponseRequest
-- <p>Represents an update integration response request.</p>
-- @param resourceId [String] <p>Specifies an update integration response request's resource identifier.</p>
-- @param statusCode [StatusCode] <p>Specifies an update integration response request's status code.</p>
-- @param restApiId [String] <p>Specifies an update integration response request's API identifier.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- @param httpMethod [String] <p>Specifies an update integration response request's HTTP method.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
-- Required parameter: statusCode
function M.UpdateIntegrationResponseRequest(resourceId, statusCode, restApiId, patchOperations, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateIntegrationResponseRequest")
	local t = { 
		["resourceId"] = resourceId,
		["statusCode"] = statusCode,
		["restApiId"] = restApiId,
		["patchOperations"] = patchOperations,
		["httpMethod"] = httpMethod,
	}
	M.AssertUpdateIntegrationResponseRequest(t)
	return t
end

local GetClientCertificatesRequest_keys = { "position" = true, "limit" = true, nil }

function M.AssertGetClientCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetClientCertificatesRequest to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetClientCertificatesRequest_keys[k], "GetClientCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetClientCertificatesRequest
-- <p>A request to get information about a collection of <a>ClientCertificate</a> resources.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page. The value is 25 by default and could be between 1 - 500.</p>
function M.GetClientCertificatesRequest(position, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetClientCertificatesRequest")
	local t = { 
		["position"] = position,
		["limit"] = limit,
	}
	M.AssertGetClientCertificatesRequest(t)
	return t
end

local GetAuthorizersRequest_keys = { "position" = true, "restApiId" = true, "limit" = true, nil }

function M.AssertGetAuthorizersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAuthorizersRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetAuthorizersRequest_keys[k], "GetAuthorizersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAuthorizersRequest
-- <p>Request to describe an existing <a>Authorizers</a> resource.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Authorizers</a> resource.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- Required parameter: restApiId
function M.GetAuthorizersRequest(position, restApiId, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAuthorizersRequest")
	local t = { 
		["position"] = position,
		["restApiId"] = restApiId,
		["limit"] = limit,
	}
	M.AssertGetAuthorizersRequest(t)
	return t
end

local DeleteRestApiRequest_keys = { "restApiId" = true, nil }

function M.AssertDeleteRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRestApiRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRestApiRequest_keys[k], "DeleteRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRestApiRequest
-- <p>Request to delete the specified API from your collection.</p>
-- @param restApiId [String] <p>The ID of the <a>RestApi</a> you want to delete.</p>
-- Required parameter: restApiId
function M.DeleteRestApiRequest(restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRestApiRequest")
	local t = { 
		["restApiId"] = restApiId,
	}
	M.AssertDeleteRestApiRequest(t)
	return t
end

local Deployment_keys = { "apiSummary" = true, "createdDate" = true, "id" = true, "description" = true, nil }

function M.AssertDeployment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployment to be of type 'table'")
	if struct["apiSummary"] then M.AssertPathToMapOfMethodSnapshot(struct["apiSummary"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(Deployment_keys[k], "Deployment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployment
-- <p>An immutable representation of a <a>RestApi</a> resource that can be called by users using <a>Stages</a>. A deployment must be associated with a <a>Stage</a> for it to be callable over the Internet.</p> <div class="remarks">To create a deployment, call <code>POST</code> on the <a>Deployments</a> resource of a <a>RestApi</a>. To view, update, or delete a deployment, call <code>GET</code>, <code>PATCH</code>, or <code>DELETE</code> on the specified deployment resource (<code>/restapis/{restapi_id}/deployments/{deployment_id}</code>).</div> <div class="seeAlso"><a>RestApi</a>, <a>Deployments</a>, <a>Stage</a>, <a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html">AWS CLI</a>, <a href="https://aws.amazon.com/tools/">AWS SDKs</a> </div>
-- @param apiSummary [PathToMapOfMethodSnapshot] <p>A summary of the <a>RestApi</a> at the date and time that the deployment resource was created.</p>
-- @param createdDate [Timestamp] <p>The date and time that the deployment resource was created.</p>
-- @param id [String] <p>The identifier for the deployment resource.</p>
-- @param description [String] <p>The description for the deployment resource.</p>
function M.Deployment(apiSummary, createdDate, id, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Deployment")
	local t = { 
		["apiSummary"] = apiSummary,
		["createdDate"] = createdDate,
		["id"] = id,
		["description"] = description,
	}
	M.AssertDeployment(t)
	return t
end

local GetResourceRequest_keys = { "resourceId" = true, "embed" = true, "restApiId" = true, nil }

function M.AssertGetResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourceRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["embed"] then M.AssertListOfString(struct["embed"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(GetResourceRequest_keys[k], "GetResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourceRequest
-- <p>Request to list information about a resource.</p>
-- @param resourceId [String] <p>The identifier for the <a>Resource</a> resource.</p>
-- @param embed [ListOfString] <p>A query parameter to retrieve the specified resources embedded in the returned <a>Resource</a> representation in the response. This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded <a>Method</a> resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code>.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the resource.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
function M.GetResourceRequest(resourceId, embed, restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetResourceRequest")
	local t = { 
		["resourceId"] = resourceId,
		["embed"] = embed,
		["restApiId"] = restApiId,
	}
	M.AssertGetResourceRequest(t)
	return t
end

local DeleteResourceRequest_keys = { "resourceId" = true, "restApiId" = true, nil }

function M.AssertDeleteResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResourceRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteResourceRequest_keys[k], "DeleteResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResourceRequest
-- <p>Request to delete a <a>Resource</a>.</p>
-- @param resourceId [String] <p>The identifier of the <a>Resource</a> resource.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Resource</a> resource.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
function M.DeleteResourceRequest(resourceId, restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteResourceRequest")
	local t = { 
		["resourceId"] = resourceId,
		["restApiId"] = restApiId,
	}
	M.AssertDeleteResourceRequest(t)
	return t
end

local PatchOperation_keys = { "path" = true, "from" = true, "value" = true, "op" = true, nil }

function M.AssertPatchOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchOperation to be of type 'table'")
	if struct["path"] then M.AssertString(struct["path"]) end
	if struct["from"] then M.AssertString(struct["from"]) end
	if struct["value"] then M.AssertString(struct["value"]) end
	if struct["op"] then M.AssertOp(struct["op"]) end
	for k,_ in pairs(struct) do
		assert(PatchOperation_keys[k], "PatchOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchOperation
-- A single patch operation to apply to the specified resource. Please refer to http://tools.ietf.org/html/rfc6902#section-4 for an explanation of how each operation is used.
-- @param path [String] <p>The <code>op</code> operation's target, as identified by a <a href="https://tools.ietf.org/html/draft-ietf-appsawg-json-pointer-08">JSON Pointer</a> value that references a location within the targeted resource. For example, if the target resource has an updateable property of <code>{"name":"value"}</code>, the path for this property is <code>/name</code>. If the <code>name</code> property value is a JSON object (e.g., <code>{"name": {"child/name": "child-value"}}</code>), the path for the <code>child/name</code> property will be <code>/name/child~1name</code>. Any slash ("/") character appearing in path names must be escaped with "~1", as shown in the example above. Each <code>op</code> operation can have only one <code>path</code> associated with it.</p>
-- @param from [String] <p> Not supported.</p>
-- @param value [String] <p>The new target value of the update operation. When using AWS CLI to update a property of a JSON value, enclose the JSON object with a pair of single quotes in a Linux shell, e.g., '{"a": ...}'. In a Windows shell, see <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a>.</p>
-- @param op [Op] <p>An update operation to be performed with this PATCH request. The valid value can be "add", "remove", or "replace". Not all valid operations are supported for a given resource. Support of the operations depends on specific operational contexts. Attempts to apply an unsupported operation on a resource will return an error message.</p>
function M.PatchOperation(path, from, value, op, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PatchOperation")
	local t = { 
		["path"] = path,
		["from"] = from,
		["value"] = value,
		["op"] = op,
	}
	M.AssertPatchOperation(t)
	return t
end

local ApiStage_keys = { "apiId" = true, "stage" = true, nil }

function M.AssertApiStage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiStage to be of type 'table'")
	if struct["apiId"] then M.AssertString(struct["apiId"]) end
	if struct["stage"] then M.AssertString(struct["stage"]) end
	for k,_ in pairs(struct) do
		assert(ApiStage_keys[k], "ApiStage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiStage
-- <p>API stage name of the associated API stage in a usage plan.</p>
-- @param apiId [String] <p>API Id of the associated API stage in a usage plan.</p>
-- @param stage [String] <p>API stage name of the associated API stage in a usage plan.</p>
function M.ApiStage(apiId, stage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApiStage")
	local t = { 
		["apiId"] = apiId,
		["stage"] = stage,
	}
	M.AssertApiStage(t)
	return t
end

local ImportApiKeysRequest_keys = { "body" = true, "failOnWarnings" = true, "format" = true, nil }

function M.AssertImportApiKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportApiKeysRequest to be of type 'table'")
	assert(struct["body"], "Expected key body to exist in table")
	assert(struct["format"], "Expected key format to exist in table")
	if struct["body"] then M.AssertBlob(struct["body"]) end
	if struct["failOnWarnings"] then M.AssertBoolean(struct["failOnWarnings"]) end
	if struct["format"] then M.AssertApiKeysFormat(struct["format"]) end
	for k,_ in pairs(struct) do
		assert(ImportApiKeysRequest_keys[k], "ImportApiKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportApiKeysRequest
-- <p>The POST request to import API keys from an external source, such as a CSV-formatted file.</p>
-- @param body [Blob] <p>The payload of the POST request to import API keys. For the payload format, see <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-key-file-format.html">API Key File Format</a>.</p>
-- @param failOnWarnings [Boolean] <p>A query parameter to indicate whether to rollback <a>ApiKey</a> importation (<code>true</code>) or not (<code>false</code>) when error is encountered.</p>
-- @param format [ApiKeysFormat] <p>A query parameter to specify the input format to imported API keys. Currently, only the <code>csv</code> format is supported.</p>
-- Required parameter: body
-- Required parameter: format
function M.ImportApiKeysRequest(body, failOnWarnings, format, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportApiKeysRequest")
	local t = { 
		["body"] = body,
		["failOnWarnings"] = failOnWarnings,
		["format"] = format,
	}
	M.AssertImportApiKeysRequest(t)
	return t
end

local GetModelRequest_keys = { "modelName" = true, "restApiId" = true, "flatten" = true, nil }

function M.AssertGetModelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetModelRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["modelName"], "Expected key modelName to exist in table")
	if struct["modelName"] then M.AssertString(struct["modelName"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["flatten"] then M.AssertBoolean(struct["flatten"]) end
	for k,_ in pairs(struct) do
		assert(GetModelRequest_keys[k], "GetModelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetModelRequest
-- <p>Request to list information about a model in an existing <a>RestApi</a> resource.</p>
-- @param modelName [String] <p>The name of the model as an identifier.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier under which the <a>Model</a> exists.</p>
-- @param flatten [Boolean] <p>A query parameter of a Boolean value to resolve (<code>true</code>) all external model references and returns a flattened model schema or not (<code>false</code>) The default is <code>false</code>.</p>
-- Required parameter: restApiId
-- Required parameter: modelName
function M.GetModelRequest(modelName, restApiId, flatten, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetModelRequest")
	local t = { 
		["modelName"] = modelName,
		["restApiId"] = restApiId,
		["flatten"] = flatten,
	}
	M.AssertGetModelRequest(t)
	return t
end

local GetModelTemplateRequest_keys = { "modelName" = true, "restApiId" = true, nil }

function M.AssertGetModelTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetModelTemplateRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["modelName"], "Expected key modelName to exist in table")
	if struct["modelName"] then M.AssertString(struct["modelName"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(GetModelTemplateRequest_keys[k], "GetModelTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetModelTemplateRequest
-- <p>Request to generate a sample mapping template used to transform the payload.</p>
-- @param modelName [String] <p>The name of the model for which to generate a template.</p>
-- @param restApiId [String] <p>The ID of the <a>RestApi</a> under which the model exists.</p>
-- Required parameter: restApiId
-- Required parameter: modelName
function M.GetModelTemplateRequest(modelName, restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetModelTemplateRequest")
	local t = { 
		["modelName"] = modelName,
		["restApiId"] = restApiId,
	}
	M.AssertGetModelTemplateRequest(t)
	return t
end

local TestInvokeMethodResponse_keys = { "status" = true, "body" = true, "log" = true, "latency" = true, "headers" = true, nil }

function M.AssertTestInvokeMethodResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestInvokeMethodResponse to be of type 'table'")
	if struct["status"] then M.AssertInteger(struct["status"]) end
	if struct["body"] then M.AssertString(struct["body"]) end
	if struct["log"] then M.AssertString(struct["log"]) end
	if struct["latency"] then M.AssertLong(struct["latency"]) end
	if struct["headers"] then M.AssertMapOfHeaderValues(struct["headers"]) end
	for k,_ in pairs(struct) do
		assert(TestInvokeMethodResponse_keys[k], "TestInvokeMethodResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestInvokeMethodResponse
-- <p>Represents the response of the test invoke request in the HTTP method.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-test-method.html#how-to-test-method-console">Test API using the API Gateway console</a> </div>
-- @param status [Integer] <p>The HTTP status code.</p>
-- @param body [String] <p>The body of the HTTP response.</p>
-- @param log [String] <p>The Amazon API Gateway execution log for the test invoke request.</p>
-- @param latency [Long] <p>The execution latency of the test invoke request.</p>
-- @param headers [MapOfHeaderValues] <p>The headers of the HTTP response.</p>
function M.TestInvokeMethodResponse(status, body, log, latency, headers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestInvokeMethodResponse")
	local t = { 
		["status"] = status,
		["body"] = body,
		["log"] = log,
		["latency"] = latency,
		["headers"] = headers,
	}
	M.AssertTestInvokeMethodResponse(t)
	return t
end

local Authorizers_keys = { "position" = true, "items" = true, nil }

function M.AssertAuthorizers(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Authorizers to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfAuthorizer(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(Authorizers_keys[k], "Authorizers contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Authorizers
-- <p>Represents a collection of <a>Authorizer</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html">Enable custom authorization</a> </div>
-- @param position [String] <p>Represents a collection of <a>Authorizer</a> resources.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html">Enable custom authorization</a> </div>
-- @param items [ListOfAuthorizer] <p>Gets the current list of <a>Authorizer</a> resources in the collection.</p>
function M.Authorizers(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Authorizers")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertAuthorizers(t)
	return t
end

local UsagePlanKeys_keys = { "position" = true, "items" = true, nil }

function M.AssertUsagePlanKeys(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UsagePlanKeys to be of type 'table'")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["items"] then M.AssertListOfUsagePlanKey(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(UsagePlanKeys_keys[k], "UsagePlanKeys contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UsagePlanKeys
-- <p>Represents the collection of usage plan keys added to usage plans for the associated API keys and, possibly, other types of keys.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param position [String] <p>Represents the collection of usage plan keys added to usage plans for the associated API keys and, possibly, other types of keys.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param items [ListOfUsagePlanKey] <p>Gets the current item of the usage plan keys collection.</p>
function M.UsagePlanKeys(position, items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UsagePlanKeys")
	local t = { 
		["position"] = position,
		["items"] = items,
	}
	M.AssertUsagePlanKeys(t)
	return t
end

local Model_keys = { "description" = true, "schema" = true, "contentType" = true, "id" = true, "name" = true, nil }

function M.AssertModel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Model to be of type 'table'")
	if struct["description"] then M.AssertString(struct["description"]) end
	if struct["schema"] then M.AssertString(struct["schema"]) end
	if struct["contentType"] then M.AssertString(struct["contentType"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(Model_keys[k], "Model contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Model
-- <p>Represents the data structure of a method's request or response payload.</p> <div class="remarks"> <p>A request model defines the data structure of the client-supplied request payload. A response model defines the data structure of the response payload returned by the back end. Although not required, models are useful for mapping payloads between the front end and back end.</p> <p>A model is used for generating an API's SDK, validating the input request body, and creating a skeletal mapping template.</p> </div> <div class="seeAlso"> <a>Method</a>, <a>MethodResponse</a>, <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html">Models and Mappings</a> </div>
-- @param description [String] <p>The description of the model.</p>
-- @param schema [String] <p>The schema for the model. For <code>application/json</code> models, this should be <a href="http://json-schema.org/documentation.html" target="_blank">JSON-schema draft v4</a> model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>
-- @param contentType [String] <p>The content-type for the model.</p>
-- @param id [String] <p>The identifier for the model resource.</p>
-- @param name [String] <p>The name of the model.</p>
function M.Model(description, schema, contentType, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Model")
	local t = { 
		["description"] = description,
		["schema"] = schema,
		["contentType"] = contentType,
		["id"] = id,
		["name"] = name,
	}
	M.AssertModel(t)
	return t
end

local UpdateMethodRequest_keys = { "resourceId" = true, "patchOperations" = true, "restApiId" = true, "httpMethod" = true, nil }

function M.AssertUpdateMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(UpdateMethodRequest_keys[k], "UpdateMethodRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMethodRequest
-- <p>Request to update an existing <a>Method</a> resource.</p>
-- @param resourceId [String] <p>The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- @param restApiId [String] <p>The <a>RestApi</a> identifier for the <a>Method</a> resource.</p>
-- @param httpMethod [String] <p>The HTTP verb of the <a>Method</a> resource.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
function M.UpdateMethodRequest(resourceId, patchOperations, restApiId, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMethodRequest")
	local t = { 
		["resourceId"] = resourceId,
		["patchOperations"] = patchOperations,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
	}
	M.AssertUpdateMethodRequest(t)
	return t
end

local NotFoundException_keys = { "message" = true, nil }

function M.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotFoundException_keys[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
--  
-- @param message [String]  
function M.NotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotFoundException(t)
	return t
end

local GetRequestValidatorsRequest_keys = { "position" = true, "restApiId" = true, "limit" = true, nil }

function M.AssertGetRequestValidatorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRequestValidatorsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetRequestValidatorsRequest_keys[k], "GetRequestValidatorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRequestValidatorsRequest
-- <p>Gets the <a>RequestValidators</a> collection of a given <a>RestApi</a>.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param restApiId [String] <p>[Required] The identifier of a <a>RestApi</a> to which the <a>RequestValidators</a> collection belongs.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- Required parameter: restApiId
function M.GetRequestValidatorsRequest(position, restApiId, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRequestValidatorsRequest")
	local t = { 
		["position"] = position,
		["restApiId"] = restApiId,
		["limit"] = limit,
	}
	M.AssertGetRequestValidatorsRequest(t)
	return t
end

local DeleteIntegrationResponseRequest_keys = { "resourceId" = true, "statusCode" = true, "restApiId" = true, "httpMethod" = true, nil }

function M.AssertDeleteIntegrationResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIntegrationResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then M.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIntegrationResponseRequest_keys[k], "DeleteIntegrationResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIntegrationResponseRequest
-- <p>Represents a delete integration response request.</p>
-- @param resourceId [String] <p>Specifies a delete integration response request's resource identifier.</p>
-- @param statusCode [StatusCode] <p>Specifies a delete integration response request's status code.</p>
-- @param restApiId [String] <p>Specifies a delete integration response request's API identifier.</p>
-- @param httpMethod [String] <p>Specifies a delete integration response request's HTTP method.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
-- Required parameter: statusCode
function M.DeleteIntegrationResponseRequest(resourceId, statusCode, restApiId, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIntegrationResponseRequest")
	local t = { 
		["resourceId"] = resourceId,
		["statusCode"] = statusCode,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
	}
	M.AssertDeleteIntegrationResponseRequest(t)
	return t
end

local IntegrationResponse_keys = { "contentHandling" = true, "responseParameters" = true, "selectionPattern" = true, "responseTemplates" = true, "statusCode" = true, nil }

function M.AssertIntegrationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IntegrationResponse to be of type 'table'")
	if struct["contentHandling"] then M.AssertContentHandlingStrategy(struct["contentHandling"]) end
	if struct["responseParameters"] then M.AssertMapOfStringToString(struct["responseParameters"]) end
	if struct["selectionPattern"] then M.AssertString(struct["selectionPattern"]) end
	if struct["responseTemplates"] then M.AssertMapOfStringToString(struct["responseTemplates"]) end
	if struct["statusCode"] then M.AssertStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(IntegrationResponse_keys[k], "IntegrationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IntegrationResponse
-- <p>Represents an integration response. The status code must map to an existing <a>MethodResponse</a>, and parameters and templates can be used to transform the back-end response.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- @param contentHandling [ContentHandlingStrategy] <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a response payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
-- @param responseParameters [MapOfStringToString] <p>A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>
-- @param selectionPattern [String] <p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\n</code>) character in such cases. If the back end is an AWS Lambda function, the AWS Lambda function error header is matched. For all other HTTP and AWS back ends, the HTTP status code is matched.</p>
-- @param responseTemplates [MapOfStringToString] <p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
-- @param statusCode [StatusCode] <p>Specifies the status code that is used to map the integration response to an existing <a>MethodResponse</a>.</p>
function M.IntegrationResponse(contentHandling, responseParameters, selectionPattern, responseTemplates, statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IntegrationResponse")
	local t = { 
		["contentHandling"] = contentHandling,
		["responseParameters"] = responseParameters,
		["selectionPattern"] = selectionPattern,
		["responseTemplates"] = responseTemplates,
		["statusCode"] = statusCode,
	}
	M.AssertIntegrationResponse(t)
	return t
end

local GetBasePathMappingRequest_keys = { "basePath" = true, "domainName" = true, nil }

function M.AssertGetBasePathMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBasePathMappingRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	assert(struct["basePath"], "Expected key basePath to exist in table")
	if struct["basePath"] then M.AssertString(struct["basePath"]) end
	if struct["domainName"] then M.AssertString(struct["domainName"]) end
	for k,_ in pairs(struct) do
		assert(GetBasePathMappingRequest_keys[k], "GetBasePathMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBasePathMappingRequest
-- <p>Request to describe a <a>BasePathMapping</a> resource.</p>
-- @param basePath [String] <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Leave this blank if you do not want callers to specify any base path name after the domain name.</p>
-- @param domainName [String] <p>The domain name of the <a>BasePathMapping</a> resource to be described.</p>
-- Required parameter: domainName
-- Required parameter: basePath
function M.GetBasePathMappingRequest(basePath, domainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBasePathMappingRequest")
	local t = { 
		["basePath"] = basePath,
		["domainName"] = domainName,
	}
	M.AssertGetBasePathMappingRequest(t)
	return t
end

local GetRequestValidatorRequest_keys = { "requestValidatorId" = true, "restApiId" = true, nil }

function M.AssertGetRequestValidatorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRequestValidatorRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["requestValidatorId"], "Expected key requestValidatorId to exist in table")
	if struct["requestValidatorId"] then M.AssertString(struct["requestValidatorId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(GetRequestValidatorRequest_keys[k], "GetRequestValidatorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRequestValidatorRequest
-- <p>Gets a <a>RequestValidator</a> of a given <a>RestApi</a>.</p>
-- @param requestValidatorId [String] <p>[Required] The identifier of the <a>RequestValidator</a> to be retrieved.</p>
-- @param restApiId [String] <p>[Required] The identifier of the <a>RestApi</a> to which the specified <a>RequestValidator</a> belongs.</p>
-- Required parameter: restApiId
-- Required parameter: requestValidatorId
function M.GetRequestValidatorRequest(requestValidatorId, restApiId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRequestValidatorRequest")
	local t = { 
		["requestValidatorId"] = requestValidatorId,
		["restApiId"] = restApiId,
	}
	M.AssertGetRequestValidatorRequest(t)
	return t
end

local ClientCertificate_keys = { "pemEncodedCertificate" = true, "clientCertificateId" = true, "expirationDate" = true, "description" = true, "createdDate" = true, nil }

function M.AssertClientCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientCertificate to be of type 'table'")
	if struct["pemEncodedCertificate"] then M.AssertString(struct["pemEncodedCertificate"]) end
	if struct["clientCertificateId"] then M.AssertString(struct["clientCertificateId"]) end
	if struct["expirationDate"] then M.AssertTimestamp(struct["expirationDate"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	for k,_ in pairs(struct) do
		assert(ClientCertificate_keys[k], "ClientCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientCertificate
-- <p>Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.</p> <div class="remarks">Client certificates are used authenticate an API by the back-end server. To authenticate an API client (or user), use a custom <a>Authorizer</a>.</div> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html">Use Client-Side Certificate</a> </div>
-- @param pemEncodedCertificate [String] <p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>
-- @param clientCertificateId [String] <p>The identifier of the client certificate.</p>
-- @param expirationDate [Timestamp] <p>The timestamp when the client certificate will expire.</p>
-- @param description [String] <p>The description of the client certificate.</p>
-- @param createdDate [Timestamp] <p>The timestamp when the client certificate was created.</p>
function M.ClientCertificate(pemEncodedCertificate, clientCertificateId, expirationDate, description, createdDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClientCertificate")
	local t = { 
		["pemEncodedCertificate"] = pemEncodedCertificate,
		["clientCertificateId"] = clientCertificateId,
		["expirationDate"] = expirationDate,
		["description"] = description,
		["createdDate"] = createdDate,
	}
	M.AssertClientCertificate(t)
	return t
end

local CreateUsagePlanKeyRequest_keys = { "keyType" = true, "keyId" = true, "usagePlanId" = true, nil }

function M.AssertCreateUsagePlanKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUsagePlanKeyRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	assert(struct["keyId"], "Expected key keyId to exist in table")
	assert(struct["keyType"], "Expected key keyType to exist in table")
	if struct["keyType"] then M.AssertString(struct["keyType"]) end
	if struct["keyId"] then M.AssertString(struct["keyId"]) end
	if struct["usagePlanId"] then M.AssertString(struct["usagePlanId"]) end
	for k,_ in pairs(struct) do
		assert(CreateUsagePlanKeyRequest_keys[k], "CreateUsagePlanKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUsagePlanKeyRequest
-- <p>The POST request to create a usage plan key for adding an existing API key to a usage plan.</p>
-- @param keyType [String] <p>The type of a <a>UsagePlanKey</a> resource for a plan customer.</p>
-- @param keyId [String] <p>The identifier of a <a>UsagePlanKey</a> resource for a plan customer.</p>
-- @param usagePlanId [String] <p>The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-created <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- Required parameter: usagePlanId
-- Required parameter: keyId
-- Required parameter: keyType
function M.CreateUsagePlanKeyRequest(keyType, keyId, usagePlanId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUsagePlanKeyRequest")
	local t = { 
		["keyType"] = keyType,
		["keyId"] = keyId,
		["usagePlanId"] = usagePlanId,
	}
	M.AssertCreateUsagePlanKeyRequest(t)
	return t
end

local GetIntegrationResponseRequest_keys = { "resourceId" = true, "statusCode" = true, "restApiId" = true, "httpMethod" = true, nil }

function M.AssertGetIntegrationResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntegrationResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["statusCode"], "Expected key statusCode to exist in table")
	if struct["resourceId"] then M.AssertString(struct["resourceId"]) end
	if struct["statusCode"] then M.AssertStatusCode(struct["statusCode"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["httpMethod"] then M.AssertString(struct["httpMethod"]) end
	for k,_ in pairs(struct) do
		assert(GetIntegrationResponseRequest_keys[k], "GetIntegrationResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntegrationResponseRequest
-- <p>Represents a get integration response request.</p>
-- @param resourceId [String] <p>Specifies a get integration response request's resource identifier.</p>
-- @param statusCode [StatusCode] <p>Specifies a get integration response request's status code.</p>
-- @param restApiId [String] <p>Specifies a get integration response request's API identifier.</p>
-- @param httpMethod [String] <p>Specifies a get integration response request's HTTP method.</p>
-- Required parameter: restApiId
-- Required parameter: resourceId
-- Required parameter: httpMethod
-- Required parameter: statusCode
function M.GetIntegrationResponseRequest(resourceId, statusCode, restApiId, httpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIntegrationResponseRequest")
	local t = { 
		["resourceId"] = resourceId,
		["statusCode"] = statusCode,
		["restApiId"] = restApiId,
		["httpMethod"] = httpMethod,
	}
	M.AssertGetIntegrationResponseRequest(t)
	return t
end

local UpdateDocumentationPartRequest_keys = { "documentationPartId" = true, "restApiId" = true, "patchOperations" = true, nil }

function M.AssertUpdateDocumentationPartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentationPartRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationPartId"], "Expected key documentationPartId to exist in table")
	if struct["documentationPartId"] then M.AssertString(struct["documentationPartId"]) end
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDocumentationPartRequest_keys[k], "UpdateDocumentationPartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentationPartRequest
-- <p>Updates an existing documentation part of a given API.</p>
-- @param documentationPartId [String] <p>[Required] The identifier of the to-be-updated documentation part.</p>
-- @param restApiId [String] <p>[Required] The identifier of an API of the to-be-updated documentation part.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: restApiId
-- Required parameter: documentationPartId
function M.UpdateDocumentationPartRequest(documentationPartId, restApiId, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDocumentationPartRequest")
	local t = { 
		["documentationPartId"] = documentationPartId,
		["restApiId"] = restApiId,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateDocumentationPartRequest(t)
	return t
end

local GetUsagePlanKeysRequest_keys = { "position" = true, "nameQuery" = true, "usagePlanId" = true, "limit" = true, nil }

function M.AssertGetUsagePlanKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUsagePlanKeysRequest to be of type 'table'")
	assert(struct["usagePlanId"], "Expected key usagePlanId to exist in table")
	if struct["position"] then M.AssertString(struct["position"]) end
	if struct["nameQuery"] then M.AssertString(struct["nameQuery"]) end
	if struct["usagePlanId"] then M.AssertString(struct["usagePlanId"]) end
	if struct["limit"] then M.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(GetUsagePlanKeysRequest_keys[k], "GetUsagePlanKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUsagePlanKeysRequest
-- <p>The GET request to get all the usage plan keys representing the API keys added to a specified usage plan.</p>
-- @param position [String] <p>The current pagination position in the paged result set.</p>
-- @param nameQuery [String] <p>A query parameter specifying the name of the to-be-returned usage plan keys.</p>
-- @param usagePlanId [String] <p>The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-retrieved <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- @param limit [NullableInteger] <p>The maximum number of returned results per page.</p>
-- Required parameter: usagePlanId
function M.GetUsagePlanKeysRequest(position, nameQuery, usagePlanId, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUsagePlanKeysRequest")
	local t = { 
		["position"] = position,
		["nameQuery"] = nameQuery,
		["usagePlanId"] = usagePlanId,
		["limit"] = limit,
	}
	M.AssertGetUsagePlanKeysRequest(t)
	return t
end

local DocumentationPartLocation_keys = { "path" = true, "type" = true, "method" = true, "name" = true, "statusCode" = true, nil }

function M.AssertDocumentationPartLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentationPartLocation to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["path"] then M.AssertString(struct["path"]) end
	if struct["type"] then M.AssertDocumentationPartType(struct["type"]) end
	if struct["method"] then M.AssertString(struct["method"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["statusCode"] then M.AssertDocumentationPartLocationStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(DocumentationPartLocation_keys[k], "DocumentationPartLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentationPartLocation
-- <p>Specifies the target API entity to which the documentation applies.</p>
-- @param path [String] <p>The URL path of the target. It is a valid field for the API entity types of <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>/</code> for the root resource. When an applicable child entity inherits the content of another entity of the same type with more general specifications of the other <code>location</code> attributes, the child entity's <code>path</code> attribute must match that of the parent entity as a prefix.</p>
-- @param type [DocumentationPartType] <p>The type of API entity to which the documentation content applies. It is a valid and required field for API entity types of <code>API</code>, <code>AUTHORIZER</code>, <code>MODEL</code>, <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. Content inheritance does not apply to any entity of the <code>API</code>, <code>AUTHROZER</code>, <code>METHOD</code>, <code>MODEL</code>, <code>REQUEST_BODY</code>, or <code>RESOURCE</code> type.</p>
-- @param method [String] <p>The HTTP verb of a method. It is a valid field for the API entity types of <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>*</code> for any method. When an applicable child entity inherits the content of an entity of the same type with more general specifications of the other <code>location</code> attributes, the child entity's <code>method</code> attribute must match that of the parent entity exactly.</p>
-- @param name [String] <p>The name of the targeted API entity. It is a valid and required field for the API entity types of <code>AUTHORIZER</code>, <code>MODEL</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code> and <code>RESPONSE_HEADER</code>. It is an invalid field for any other entity type.</p>
-- @param statusCode [DocumentationPartLocationStatusCode] <p>The HTTP status code of a response. It is a valid field for the API entity types of <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>*</code> for any status code. When an applicable child entity inherits the content of an entity of the same type with more general specifications of the other <code>location</code> attributes, the child entity's <code>statusCode</code> attribute must match that of the parent entity exactly.</p>
-- Required parameter: type
function M.DocumentationPartLocation(path, type, method, name, statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentationPartLocation")
	local t = { 
		["path"] = path,
		["type"] = type,
		["method"] = method,
		["name"] = name,
		["statusCode"] = statusCode,
	}
	M.AssertDocumentationPartLocation(t)
	return t
end

local UpdateDocumentationVersionRequest_keys = { "restApiId" = true, "documentationVersion" = true, "patchOperations" = true, nil }

function M.AssertUpdateDocumentationVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentationVersionRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["documentationVersion"], "Expected key documentationVersion to exist in table")
	if struct["restApiId"] then M.AssertString(struct["restApiId"]) end
	if struct["documentationVersion"] then M.AssertString(struct["documentationVersion"]) end
	if struct["patchOperations"] then M.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDocumentationVersionRequest_keys[k], "UpdateDocumentationVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentationVersionRequest
-- <p>Updates an existing documentation version of an API.</p>
-- @param restApiId [String] <p>[Required] The identifier of an API of the to-be-updated documentation version.</p>
-- @param documentationVersion [String] <p>[Required] The version identifier of the to-be-updated documentation version.</p>
-- @param patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required parameter: restApiId
-- Required parameter: documentationVersion
function M.UpdateDocumentationVersionRequest(restApiId, documentationVersion, patchOperations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDocumentationVersionRequest")
	local t = { 
		["restApiId"] = restApiId,
		["documentationVersion"] = documentationVersion,
		["patchOperations"] = patchOperations,
	}
	M.AssertUpdateDocumentationVersionRequest(t)
	return t
end

local ExportResponse_keys = { "body" = true, "contentType" = true, "contentDisposition" = true, nil }

function M.AssertExportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportResponse to be of type 'table'")
	if struct["body"] then M.AssertBlob(struct["body"]) end
	if struct["contentType"] then M.AssertString(struct["contentType"]) end
	if struct["contentDisposition"] then M.AssertString(struct["contentDisposition"]) end
	for k,_ in pairs(struct) do
		assert(ExportResponse_keys[k], "ExportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportResponse
-- <p>The binary blob response to <a>GetExport</a>, which contains the generated SDK.</p>
-- @param body [Blob] <p>The binary blob response to <a>GetExport</a>, which contains the export.</p>
-- @param contentType [String] <p>The content-type header value in the HTTP response. This will correspond to a valid 'accept' type in the request.</p>
-- @param contentDisposition [String] <p>The content-disposition header value in the HTTP response.</p>
function M.ExportResponse(body, contentType, contentDisposition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExportResponse")
	local t = { 
		["body"] = body,
		["contentType"] = contentType,
		["contentDisposition"] = contentDisposition,
	}
	M.AssertExportResponse(t)
	return t
end

local CreateApiKeyRequest_keys = { "name" = true, "enabled" = true, "value" = true, "stageKeys" = true, "generateDistinctId" = true, "customerId" = true, "description" = true, nil }

function M.AssertCreateApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApiKeyRequest to be of type 'table'")
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["enabled"] then M.AssertBoolean(struct["enabled"]) end
	if struct["value"] then M.AssertString(struct["value"]) end
	if struct["stageKeys"] then M.AssertListOfStageKeys(struct["stageKeys"]) end
	if struct["generateDistinctId"] then M.AssertBoolean(struct["generateDistinctId"]) end
	if struct["customerId"] then M.AssertString(struct["customerId"]) end
	if struct["description"] then M.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateApiKeyRequest_keys[k], "CreateApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApiKeyRequest
-- <p>Request to create an <a>ApiKey</a> resource.</p>
-- @param name [String] <p>The name of the <a>ApiKey</a>.</p>
-- @param enabled [Boolean] <p>Specifies whether the <a>ApiKey</a> can be used by callers.</p>
-- @param value [String] <p>Specifies a value of the API key.</p>
-- @param stageKeys [ListOfStageKeys] <p>DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.</p>
-- @param generateDistinctId [Boolean] <p>Specifies whether (<code>true</code>) or not (<code>false</code>) the key identifier is distinct from the created API key value.</p>
-- @param customerId [String] <p>An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.</p>
-- @param description [String] <p>The description of the <a>ApiKey</a>.</p>
function M.CreateApiKeyRequest(name, enabled, value, stageKeys, generateDistinctId, customerId, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateApiKeyRequest")
	local t = { 
		["name"] = name,
		["enabled"] = enabled,
		["value"] = value,
		["stageKeys"] = stageKeys,
		["generateDistinctId"] = generateDistinctId,
		["customerId"] = customerId,
		["description"] = description,
	}
	M.AssertCreateApiKeyRequest(t)
	return t
end

function M.AssertDocumentationPartLocationStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentationPartLocationStatusCode to be of type 'string'")
	assert(str:match("^([1-5]%d%d|%*|%s*)$"), "Expected string to match pattern '^([1-5]%d%d|%*|%s*)$'")
end

--  
function M.DocumentationPartLocationStatusCode(str)
	M.AssertDocumentationPartLocationStatusCode(str)
	return str
end

function M.AssertIntegrationType(str)
	assert(str)
	assert(type(str) == "string", "Expected IntegrationType to be of type 'string'")
end

-- <p>The integration type. The valid value is <code>HTTP</code> for integrating with an HTTP back end, <code>AWS</code> for any AWS service endpoints, <code>MOCK</code> for testing without actually invoking the back end, <code>HTTP_PROXY</code> for integrating with the HTTP proxy integration, or <code>AWS_PROXY</code> for integrating with the Lambda proxy integration type.</p>
function M.IntegrationType(str)
	M.AssertIntegrationType(str)
	return str
end

function M.AssertOp(str)
	assert(str)
	assert(type(str) == "string", "Expected Op to be of type 'string'")
end

--  
function M.Op(str)
	M.AssertOp(str)
	return str
end

function M.AssertUnauthorizedCacheControlHeaderStrategy(str)
	assert(str)
	assert(type(str) == "string", "Expected UnauthorizedCacheControlHeaderStrategy to be of type 'string'")
end

--  
function M.UnauthorizedCacheControlHeaderStrategy(str)
	M.AssertUnauthorizedCacheControlHeaderStrategy(str)
	return str
end

function M.AssertQuotaPeriodType(str)
	assert(str)
	assert(type(str) == "string", "Expected QuotaPeriodType to be of type 'string'")
end

--  
function M.QuotaPeriodType(str)
	M.AssertQuotaPeriodType(str)
	return str
end

function M.AssertAuthorizerType(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthorizerType to be of type 'string'")
end

-- <p>The authorizer type. the current value is <code>TOKEN</code> for a Lambda function or <code>COGNITO_USER_POOLS</code> for an Amazon Cognito Your User Pool.</p>
function M.AuthorizerType(str)
	M.AssertAuthorizerType(str)
	return str
end

function M.AssertCacheClusterStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CacheClusterStatus to be of type 'string'")
end

-- <p>Returns the status of the <b>CacheCluster</b>.</p>
function M.CacheClusterStatus(str)
	M.AssertCacheClusterStatus(str)
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

function M.AssertDocumentationPartType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentationPartType to be of type 'string'")
end

--  
function M.DocumentationPartType(str)
	M.AssertDocumentationPartType(str)
	return str
end

function M.AssertProviderARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderARN to be of type 'string'")
end

--  
function M.ProviderARN(str)
	M.AssertProviderARN(str)
	return str
end

function M.AssertStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusCode to be of type 'string'")
	assert(str:match("[1-5]%d%d"), "Expected string to match pattern '[1-5]%d%d'")
end

-- <p>The status code.</p>
function M.StatusCode(str)
	M.AssertStatusCode(str)
	return str
end

function M.AssertApiKeysFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected ApiKeysFormat to be of type 'string'")
end

--  
function M.ApiKeysFormat(str)
	M.AssertApiKeysFormat(str)
	return str
end

function M.AssertPutMode(str)
	assert(str)
	assert(type(str) == "string", "Expected PutMode to be of type 'string'")
end

--  
function M.PutMode(str)
	M.AssertPutMode(str)
	return str
end

function M.AssertCacheClusterSize(str)
	assert(str)
	assert(type(str) == "string", "Expected CacheClusterSize to be of type 'string'")
end

-- <p>Returns the size of the <b>CacheCluster</b>.</p>
function M.CacheClusterSize(str)
	M.AssertCacheClusterSize(str)
	return str
end

function M.AssertContentHandlingStrategy(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentHandlingStrategy to be of type 'string'")
end

--  
function M.ContentHandlingStrategy(str)
	M.AssertContentHandlingStrategy(str)
	return str
end

function M.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	M.AssertDouble(double)
	return double
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

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertNullableInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NullableInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NullableInteger(integer)
	M.AssertNullableInteger(integer)
	return integer
end

function M.AssertNullableBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullableBoolean to be of type 'boolean'")
end

function M.NullableBoolean(boolean)
	M.AssertNullableBoolean(boolean)
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

function M.AssertMapOfStringToList(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToList to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertListOfString(v)
	end
end

function M.MapOfStringToList(map)
	M.AssertMapOfStringToList(map)
	return map
end

function M.AssertMapOfIntegrationResponse(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfIntegrationResponse to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertIntegrationResponse(v)
	end
end

function M.MapOfIntegrationResponse(map)
	M.AssertMapOfIntegrationResponse(map)
	return map
end

function M.AssertMapOfMethodResponse(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMethodResponse to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertMethodResponse(v)
	end
end

function M.MapOfMethodResponse(map)
	M.AssertMapOfMethodResponse(map)
	return map
end

function M.AssertMapOfKeyUsages(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfKeyUsages to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertListOfUsage(v)
	end
end

function M.MapOfKeyUsages(map)
	M.AssertMapOfKeyUsages(map)
	return map
end

function M.AssertMapOfHeaderValues(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfHeaderValues to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.MapOfHeaderValues(map)
	M.AssertMapOfHeaderValues(map)
	return map
end

function M.AssertPathToMapOfMethodSnapshot(map)
	assert(map)
	assert(type(map) == "table", "Expected PathToMapOfMethodSnapshot to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertMapOfMethodSnapshot(v)
	end
end

function M.PathToMapOfMethodSnapshot(map)
	M.AssertPathToMapOfMethodSnapshot(map)
	return map
end

function M.AssertMapOfMethodSnapshot(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMethodSnapshot to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertMethodSnapshot(v)
	end
end

function M.MapOfMethodSnapshot(map)
	M.AssertMapOfMethodSnapshot(map)
	return map
end

function M.AssertMapOfMethodSettings(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMethodSettings to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertMethodSetting(v)
	end
end

function M.MapOfMethodSettings(map)
	M.AssertMapOfMethodSettings(map)
	return map
end

function M.AssertMapOfStringToString(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToString to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.MapOfStringToString(map)
	M.AssertMapOfStringToString(map)
	return map
end

function M.AssertMapOfMethod(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMethod to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertMethod(v)
	end
end

function M.MapOfMethod(map)
	M.AssertMapOfMethod(map)
	return map
end

function M.AssertMapOfStringToBoolean(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToBoolean to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertNullableBoolean(v)
	end
end

function M.MapOfStringToBoolean(map)
	M.AssertMapOfStringToBoolean(map)
	return map
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Blob to be of type 'string'")
end

function M.Blob(blob)
	M.AssertBlob(blob)
	return blob
end

function M.AssertListOfModel(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfModel to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertModel(v)
	end
end

--  
-- List of Model objects
function M.ListOfModel(list)
	M.AssertListOfModel(list)
	return list
end

function M.AssertListOfApiStage(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfApiStage to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertApiStage(v)
	end
end

--  
-- List of ApiStage objects
function M.ListOfApiStage(list)
	M.AssertListOfApiStage(list)
	return list
end

function M.AssertListOfDeployment(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDeployment to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeployment(v)
	end
end

--  
-- List of Deployment objects
function M.ListOfDeployment(list)
	M.AssertListOfDeployment(list)
	return list
end

function M.AssertListOfSdkType(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSdkType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSdkType(v)
	end
end

--  
-- List of SdkType objects
function M.ListOfSdkType(list)
	M.AssertListOfSdkType(list)
	return list
end

function M.AssertListOfUsagePlan(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfUsagePlan to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUsagePlan(v)
	end
end

--  
-- List of UsagePlan objects
function M.ListOfUsagePlan(list)
	M.AssertListOfUsagePlan(list)
	return list
end

function M.AssertListOfDocumentationVersion(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDocumentationVersion to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDocumentationVersion(v)
	end
end

--  
-- List of DocumentationVersion objects
function M.ListOfDocumentationVersion(list)
	M.AssertListOfDocumentationVersion(list)
	return list
end

function M.AssertListOfBasePathMapping(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfBasePathMapping to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBasePathMapping(v)
	end
end

--  
-- List of BasePathMapping objects
function M.ListOfBasePathMapping(list)
	M.AssertListOfBasePathMapping(list)
	return list
end

function M.AssertListOfClientCertificate(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfClientCertificate to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClientCertificate(v)
	end
end

--  
-- List of ClientCertificate objects
function M.ListOfClientCertificate(list)
	M.AssertListOfClientCertificate(list)
	return list
end

function M.AssertListOfLong(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfLong to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLong(v)
	end
end

--  
-- List of Long objects
function M.ListOfLong(list)
	M.AssertListOfLong(list)
	return list
end

function M.AssertListOfApiKey(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfApiKey to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertApiKey(v)
	end
end

--  
-- List of ApiKey objects
function M.ListOfApiKey(list)
	M.AssertListOfApiKey(list)
	return list
end

function M.AssertListOfUsagePlanKey(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfUsagePlanKey to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUsagePlanKey(v)
	end
end

--  
-- List of UsagePlanKey objects
function M.ListOfUsagePlanKey(list)
	M.AssertListOfUsagePlanKey(list)
	return list
end

function M.AssertListOfRestApi(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfRestApi to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRestApi(v)
	end
end

--  
-- List of RestApi objects
function M.ListOfRestApi(list)
	M.AssertListOfRestApi(list)
	return list
end

function M.AssertListOfString(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfString to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ListOfString(list)
	M.AssertListOfString(list)
	return list
end

function M.AssertListOfStageKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfStageKeys to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStageKey(v)
	end
end

--  
-- List of StageKey objects
function M.ListOfStageKeys(list)
	M.AssertListOfStageKeys(list)
	return list
end

function M.AssertListOfResource(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfResource to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResource(v)
	end
end

--  
-- List of Resource objects
function M.ListOfResource(list)
	M.AssertListOfResource(list)
	return list
end

function M.AssertListOfRequestValidator(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfRequestValidator to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRequestValidator(v)
	end
end

--  
-- List of RequestValidator objects
function M.ListOfRequestValidator(list)
	M.AssertListOfRequestValidator(list)
	return list
end

function M.AssertListOfDomainName(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDomainName to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainName(v)
	end
end

--  
-- List of DomainName objects
function M.ListOfDomainName(list)
	M.AssertListOfDomainName(list)
	return list
end

function M.AssertListOfSdkConfigurationProperty(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSdkConfigurationProperty to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSdkConfigurationProperty(v)
	end
end

--  
-- List of SdkConfigurationProperty objects
function M.ListOfSdkConfigurationProperty(list)
	M.AssertListOfSdkConfigurationProperty(list)
	return list
end

function M.AssertListOfDocumentationPart(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDocumentationPart to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDocumentationPart(v)
	end
end

--  
-- List of DocumentationPart objects
function M.ListOfDocumentationPart(list)
	M.AssertListOfDocumentationPart(list)
	return list
end

function M.AssertListOfUsage(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfUsage to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertListOfLong(v)
	end
end

--  
-- List of ListOfLong objects
function M.ListOfUsage(list)
	M.AssertListOfUsage(list)
	return list
end

function M.AssertListOfAuthorizer(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfAuthorizer to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAuthorizer(v)
	end
end

--  
-- List of Authorizer objects
function M.ListOfAuthorizer(list)
	M.AssertListOfAuthorizer(list)
	return list
end

function M.AssertListOfStage(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfStage to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStage(v)
	end
end

--  
-- List of Stage objects
function M.ListOfStage(list)
	M.AssertListOfStage(list)
	return list
end

function M.AssertListOfARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfARNs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertProviderARN(v)
	end
end

--  
-- List of ProviderARN objects
function M.ListOfARNs(list)
	M.AssertListOfARNs(list)
	return list
end

function M.AssertListOfPatchOperation(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfPatchOperation to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPatchOperation(v)
	end
end

-- A list of operations describing the updates to apply to the specified resource. The patches are applied in the order specified in the list.
-- List of PatchOperation objects
function M.ListOfPatchOperation(list)
	M.AssertListOfPatchOperation(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- ImportDocumentationParts
-- @param ImportDocumentationPartsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportDocumentationPartsAsync(ImportDocumentationPartsRequest, cb)
	assert(ImportDocumentationPartsRequest, "You must provide a ImportDocumentationPartsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ImportDocumentationParts",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/parts", ImportDocumentationPartsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAuthorizer
-- @param DeleteAuthorizerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAuthorizerAsync(DeleteAuthorizerRequest, cb)
	assert(DeleteAuthorizerRequest, "You must provide a DeleteAuthorizerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteAuthorizer",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/authorizers/{authorizer_id}", DeleteAuthorizerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateModel
-- @param UpdateModelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateModelAsync(UpdateModelRequest, cb)
	assert(UpdateModelRequest, "You must provide a UpdateModelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateModel",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/models/{model_name}", UpdateModelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeployment
-- @param CreateDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentAsync(CreateDeploymentRequest, cb)
	assert(CreateDeploymentRequest, "You must provide a CreateDeploymentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/deployments", CreateDeploymentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRestApi
-- @param GetRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRestApiAsync(GetRestApiRequest, cb)
	assert(GetRestApiRequest, "You must provide a GetRestApiRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}", GetRestApiRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRequestValidator
-- @param UpdateRequestValidatorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRequestValidatorAsync(UpdateRequestValidatorRequest, cb)
	assert(UpdateRequestValidatorRequest, "You must provide a UpdateRequestValidatorRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateRequestValidator",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", UpdateRequestValidatorRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteClientCertificate
-- @param DeleteClientCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClientCertificateAsync(DeleteClientCertificateRequest, cb)
	assert(DeleteClientCertificateRequest, "You must provide a DeleteClientCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/clientcertificates/{clientcertificate_id}", DeleteClientCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAuthorizer
-- @param GetAuthorizerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAuthorizerAsync(GetAuthorizerRequest, cb)
	assert(GetAuthorizerRequest, "You must provide a GetAuthorizerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAuthorizer",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/authorizers/{authorizer_id}", GetAuthorizerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetModels
-- @param GetModelsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetModelsAsync(GetModelsRequest, cb)
	assert(GetModelsRequest, "You must provide a GetModelsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetModels",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/models", GetModelsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GenerateClientCertificate
-- @param GenerateClientCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateClientCertificateAsync(GenerateClientCertificateRequest, cb)
	assert(GenerateClientCertificateRequest, "You must provide a GenerateClientCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GenerateClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/clientcertificates", GenerateClientCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRestApi
-- @param DeleteRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRestApiAsync(DeleteRestApiRequest, cb)
	assert(DeleteRestApiRequest, "You must provide a DeleteRestApiRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}", DeleteRestApiRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetMethod
-- @param GetMethodRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetMethodAsync(GetMethodRequest, cb)
	assert(GetMethodRequest, "You must provide a GetMethodRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetMethod",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", GetMethodRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSdkTypes
-- @param GetSdkTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSdkTypesAsync(GetSdkTypesRequest, cb)
	assert(GetSdkTypesRequest, "You must provide a GetSdkTypesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSdkTypes",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/sdktypes", GetSdkTypesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDocumentationVersion
-- @param UpdateDocumentationVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDocumentationVersionAsync(UpdateDocumentationVersionRequest, cb)
	assert(UpdateDocumentationVersionRequest, "You must provide a UpdateDocumentationVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateDocumentationVersion",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/versions/{doc_version}", UpdateDocumentationVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateModel
-- @param CreateModelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateModelAsync(CreateModelRequest, cb)
	assert(CreateModelRequest, "You must provide a CreateModelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateModel",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/models", CreateModelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- FlushStageCache
-- @param FlushStageCacheRequest
-- @param cb Callback function accepting two args: response, error_message
function M.FlushStageCacheAsync(FlushStageCacheRequest, cb)
	assert(FlushStageCacheRequest, "You must provide a FlushStageCacheRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".FlushStageCache",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/stages/{stage_name}/cache/data", FlushStageCacheRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUsagePlanKey
-- @param CreateUsagePlanKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUsagePlanKeyAsync(CreateUsagePlanKeyRequest, cb)
	assert(CreateUsagePlanKeyRequest, "You must provide a CreateUsagePlanKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateUsagePlanKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/usageplans/{usageplanId}/keys", CreateUsagePlanKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetUsagePlanKey
-- @param GetUsagePlanKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUsagePlanKeyAsync(GetUsagePlanKeyRequest, cb)
	assert(GetUsagePlanKeyRequest, "You must provide a GetUsagePlanKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetUsagePlanKey",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/usageplans/{usageplanId}/keys/{keyId}", GetUsagePlanKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIntegration
-- @param DeleteIntegrationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIntegrationAsync(DeleteIntegrationRequest, cb)
	assert(DeleteIntegrationRequest, "You must provide a DeleteIntegrationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteIntegration",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", DeleteIntegrationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetMethodResponse
-- @param GetMethodResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetMethodResponseAsync(GetMethodResponseRequest, cb)
	assert(GetMethodResponseRequest, "You must provide a GetMethodResponseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetMethodResponse",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", GetMethodResponseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutMethodResponse
-- @param PutMethodResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutMethodResponseAsync(PutMethodResponseRequest, cb)
	assert(PutMethodResponseRequest, "You must provide a PutMethodResponseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutMethodResponse",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", PutMethodResponseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteModel
-- @param DeleteModelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteModelAsync(DeleteModelRequest, cb)
	assert(DeleteModelRequest, "You must provide a DeleteModelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteModel",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/models/{model_name}", DeleteModelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetStage
-- @param GetStageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStageAsync(GetStageRequest, cb)
	assert(GetStageRequest, "You must provide a GetStageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetStage",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/stages/{stage_name}", GetStageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetStages
-- @param GetStagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetStagesAsync(GetStagesRequest, cb)
	assert(GetStagesRequest, "You must provide a GetStagesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetStages",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/stages", GetStagesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDocumentationVersion
-- @param DeleteDocumentationVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDocumentationVersionAsync(DeleteDocumentationVersionRequest, cb)
	assert(DeleteDocumentationVersionRequest, "You must provide a DeleteDocumentationVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDocumentationVersion",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/versions/{doc_version}", DeleteDocumentationVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateIntegration
-- @param UpdateIntegrationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateIntegrationAsync(UpdateIntegrationRequest, cb)
	assert(UpdateIntegrationRequest, "You must provide a UpdateIntegrationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateIntegration",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", UpdateIntegrationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUsagePlan
-- @param DeleteUsagePlanRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUsagePlanAsync(DeleteUsagePlanRequest, cb)
	assert(DeleteUsagePlanRequest, "You must provide a DeleteUsagePlanRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteUsagePlan",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/usageplans/{usageplanId}", DeleteUsagePlanRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDomainNames
-- @param GetDomainNamesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDomainNamesAsync(GetDomainNamesRequest, cb)
	assert(GetDomainNamesRequest, "You must provide a GetDomainNamesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDomainNames",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/domainnames", GetDomainNamesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDocumentationPart
-- @param UpdateDocumentationPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDocumentationPartAsync(UpdateDocumentationPartRequest, cb)
	assert(UpdateDocumentationPartRequest, "You must provide a UpdateDocumentationPartRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateDocumentationPart",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/parts/{part_id}", UpdateDocumentationPartRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TestInvokeMethod
-- @param TestInvokeMethodRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TestInvokeMethodAsync(TestInvokeMethodRequest, cb)
	assert(TestInvokeMethodRequest, "You must provide a TestInvokeMethodRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TestInvokeMethod",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", TestInvokeMethodRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateStage
-- @param UpdateStageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateStageAsync(UpdateStageRequest, cb)
	assert(UpdateStageRequest, "You must provide a UpdateStageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateStage",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/stages/{stage_name}", UpdateStageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBasePathMapping
-- @param DeleteBasePathMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBasePathMappingAsync(DeleteBasePathMappingRequest, cb)
	assert(DeleteBasePathMappingRequest, "You must provide a DeleteBasePathMappingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBasePathMapping",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/domainnames/{domain_name}/basepathmappings/{base_path}", DeleteBasePathMappingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateRequestValidator
-- @param CreateRequestValidatorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRequestValidatorAsync(CreateRequestValidatorRequest, cb)
	assert(CreateRequestValidatorRequest, "You must provide a CreateRequestValidatorRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateRequestValidator",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/requestvalidators", CreateRequestValidatorRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TestInvokeAuthorizer
-- @param TestInvokeAuthorizerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TestInvokeAuthorizerAsync(TestInvokeAuthorizerRequest, cb)
	assert(TestInvokeAuthorizerRequest, "You must provide a TestInvokeAuthorizerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TestInvokeAuthorizer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/authorizers/{authorizer_id}", TestInvokeAuthorizerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDocumentationVersion
-- @param GetDocumentationVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentationVersionAsync(GetDocumentationVersionRequest, cb)
	assert(GetDocumentationVersionRequest, "You must provide a GetDocumentationVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDocumentationVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/versions/{doc_version}", GetDocumentationVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateMethod
-- @param UpdateMethodRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateMethodAsync(UpdateMethodRequest, cb)
	assert(UpdateMethodRequest, "You must provide a UpdateMethodRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateMethod",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", UpdateMethodRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetApiKey
-- @param GetApiKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetApiKeyAsync(GetApiKeyRequest, cb)
	assert(GetApiKeyRequest, "You must provide a GetApiKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetApiKey",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/apikeys/{api_Key}", GetApiKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSdkType
-- @param GetSdkTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSdkTypeAsync(GetSdkTypeRequest, cb)
	assert(GetSdkTypeRequest, "You must provide a GetSdkTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSdkType",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/sdktypes/{sdktype_id}", GetSdkTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIntegration
-- @param GetIntegrationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIntegrationAsync(GetIntegrationRequest, cb)
	assert(GetIntegrationRequest, "You must provide a GetIntegrationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIntegration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", GetIntegrationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDeployment
-- @param DeleteDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeploymentAsync(DeleteDeploymentRequest, cb)
	assert(DeleteDeploymentRequest, "You must provide a DeleteDeploymentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/deployments/{deployment_id}", DeleteDeploymentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetUsagePlan
-- @param GetUsagePlanRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUsagePlanAsync(GetUsagePlanRequest, cb)
	assert(GetUsagePlanRequest, "You must provide a GetUsagePlanRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetUsagePlan",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/usageplans/{usageplanId}", GetUsagePlanRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateUsagePlan
-- @param UpdateUsagePlanRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUsagePlanAsync(UpdateUsagePlanRequest, cb)
	assert(UpdateUsagePlanRequest, "You must provide a UpdateUsagePlanRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateUsagePlan",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/usageplans/{usageplanId}", UpdateUsagePlanRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAuthorizer
-- @param CreateAuthorizerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAuthorizerAsync(CreateAuthorizerRequest, cb)
	assert(CreateAuthorizerRequest, "You must provide a CreateAuthorizerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateAuthorizer",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/authorizers", CreateAuthorizerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetClientCertificate
-- @param GetClientCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetClientCertificateAsync(GetClientCertificateRequest, cb)
	assert(GetClientCertificateRequest, "You must provide a GetClientCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/clientcertificates/{clientcertificate_id}", GetClientCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDeployment
-- @param UpdateDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDeploymentAsync(UpdateDeploymentRequest, cb)
	assert(UpdateDeploymentRequest, "You must provide a UpdateDeploymentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/deployments/{deployment_id}", UpdateDeploymentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetModelTemplate
-- @param GetModelTemplateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetModelTemplateAsync(GetModelTemplateRequest, cb)
	assert(GetModelTemplateRequest, "You must provide a GetModelTemplateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetModelTemplate",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/models/{model_name}/default_template", GetModelTemplateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBasePathMappings
-- @param GetBasePathMappingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBasePathMappingsAsync(GetBasePathMappingsRequest, cb)
	assert(GetBasePathMappingsRequest, "You must provide a GetBasePathMappingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBasePathMappings",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/domainnames/{domain_name}/basepathmappings", GetBasePathMappingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSdk
-- @param GetSdkRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSdkAsync(GetSdkRequest, cb)
	assert(GetSdkRequest, "You must provide a GetSdkRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSdk",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}", GetSdkRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRequestValidator
-- @param GetRequestValidatorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRequestValidatorAsync(GetRequestValidatorRequest, cb)
	assert(GetRequestValidatorRequest, "You must provide a GetRequestValidatorRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetRequestValidator",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", GetRequestValidatorRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- FlushStageAuthorizersCache
-- @param FlushStageAuthorizersCacheRequest
-- @param cb Callback function accepting two args: response, error_message
function M.FlushStageAuthorizersCacheAsync(FlushStageAuthorizersCacheRequest, cb)
	assert(FlushStageAuthorizersCacheRequest, "You must provide a FlushStageAuthorizersCacheRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".FlushStageAuthorizersCache",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers", FlushStageAuthorizersCacheRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIntegrationResponse
-- @param GetIntegrationResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIntegrationResponseAsync(GetIntegrationResponseRequest, cb)
	assert(GetIntegrationResponseRequest, "You must provide a GetIntegrationResponseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIntegrationResponse",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", GetIntegrationResponseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeployments
-- @param GetDeploymentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentsAsync(GetDeploymentsRequest, cb)
	assert(GetDeploymentsRequest, "You must provide a GetDeploymentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDeployments",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/deployments", GetDeploymentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateResource
-- @param CreateResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateResourceAsync(CreateResourceRequest, cb)
	assert(CreateResourceRequest, "You must provide a CreateResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{parent_id}", CreateResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetApiKeys
-- @param GetApiKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetApiKeysAsync(GetApiKeysRequest, cb)
	assert(GetApiKeysRequest, "You must provide a GetApiKeysRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetApiKeys",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/apikeys", GetApiKeysRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApiKey
-- @param DeleteApiKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApiKeyAsync(DeleteApiKeyRequest, cb)
	assert(DeleteApiKeyRequest, "You must provide a DeleteApiKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteApiKey",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/apikeys/{api_Key}", DeleteApiKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateApiKey
-- @param CreateApiKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateApiKeyAsync(CreateApiKeyRequest, cb)
	assert(CreateApiKeyRequest, "You must provide a CreateApiKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateApiKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/apikeys", CreateApiKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAuthorizer
-- @param UpdateAuthorizerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAuthorizerAsync(UpdateAuthorizerRequest, cb)
	assert(UpdateAuthorizerRequest, "You must provide a UpdateAuthorizerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateAuthorizer",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/authorizers/{authorizer_id}", UpdateAuthorizerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetModel
-- @param GetModelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetModelAsync(GetModelRequest, cb)
	assert(GetModelRequest, "You must provide a GetModelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetModel",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/models/{model_name}", GetModelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetUsagePlanKeys
-- @param GetUsagePlanKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUsagePlanKeysAsync(GetUsagePlanKeysRequest, cb)
	assert(GetUsagePlanKeysRequest, "You must provide a GetUsagePlanKeysRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetUsagePlanKeys",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/usageplans/{usageplanId}/keys", GetUsagePlanKeysRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteMethodResponse
-- @param DeleteMethodResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMethodResponseAsync(DeleteMethodResponseRequest, cb)
	assert(DeleteMethodResponseRequest, "You must provide a DeleteMethodResponseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteMethodResponse",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", DeleteMethodResponseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetResources
-- @param GetResourcesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetResourcesAsync(GetResourcesRequest, cb)
	assert(GetResourcesRequest, "You must provide a GetResourcesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetResources",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources", GetResourcesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRestApis
-- @param GetRestApisRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRestApisAsync(GetRestApisRequest, cb)
	assert(GetRestApisRequest, "You must provide a GetRestApisRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetRestApis",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis", GetRestApisRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetResource
-- @param GetResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetResourceAsync(GetResourceRequest, cb)
	assert(GetResourceRequest, "You must provide a GetResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetResource",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}", GetResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIntegrationResponse
-- @param DeleteIntegrationResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIntegrationResponseAsync(DeleteIntegrationResponseRequest, cb)
	assert(DeleteIntegrationResponseRequest, "You must provide a DeleteIntegrationResponseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteIntegrationResponse",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", DeleteIntegrationResponseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetUsagePlans
-- @param GetUsagePlansRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUsagePlansAsync(GetUsagePlansRequest, cb)
	assert(GetUsagePlansRequest, "You must provide a GetUsagePlansRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetUsagePlans",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/usageplans", GetUsagePlansRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ImportApiKeys
-- @param ImportApiKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportApiKeysAsync(ImportApiKeysRequest, cb)
	assert(ImportApiKeysRequest, "You must provide a ImportApiKeysRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ImportApiKeys",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/apikeys?mode=import", ImportApiKeysRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBasePathMapping
-- @param GetBasePathMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBasePathMappingAsync(GetBasePathMappingRequest, cb)
	assert(GetBasePathMappingRequest, "You must provide a GetBasePathMappingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBasePathMapping",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/domainnames/{domain_name}/basepathmappings/{base_path}", GetBasePathMappingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetExport
-- @param GetExportRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetExportAsync(GetExportRequest, cb)
	assert(GetExportRequest, "You must provide a GetExportRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetExport",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}", GetExportRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateResource
-- @param UpdateResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateResourceAsync(UpdateResourceRequest, cb)
	assert(UpdateResourceRequest, "You must provide a UpdateResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateResource",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}", UpdateResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDomainName
-- @param GetDomainNameRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDomainNameAsync(GetDomainNameRequest, cb)
	assert(GetDomainNameRequest, "You must provide a GetDomainNameRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDomainName",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/domainnames/{domain_name}", GetDomainNameRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDomainName
-- @param UpdateDomainNameRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDomainNameAsync(UpdateDomainNameRequest, cb)
	assert(UpdateDomainNameRequest, "You must provide a UpdateDomainNameRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateDomainName",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/domainnames/{domain_name}", UpdateDomainNameRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateClientCertificate
-- @param UpdateClientCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateClientCertificateAsync(UpdateClientCertificateRequest, cb)
	assert(UpdateClientCertificateRequest, "You must provide a UpdateClientCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/clientcertificates/{clientcertificate_id}", UpdateClientCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDomainName
-- @param CreateDomainNameRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDomainNameAsync(CreateDomainNameRequest, cb)
	assert(CreateDomainNameRequest, "You must provide a CreateDomainNameRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDomainName",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/domainnames", CreateDomainNameRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDomainName
-- @param DeleteDomainNameRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDomainNameAsync(DeleteDomainNameRequest, cb)
	assert(DeleteDomainNameRequest, "You must provide a DeleteDomainNameRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDomainName",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/domainnames/{domain_name}", DeleteDomainNameRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutMethod
-- @param PutMethodRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutMethodAsync(PutMethodRequest, cb)
	assert(PutMethodRequest, "You must provide a PutMethodRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutMethod",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", PutMethodRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteStage
-- @param DeleteStageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStageAsync(DeleteStageRequest, cb)
	assert(DeleteStageRequest, "You must provide a DeleteStageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteStage",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/stages/{stage_name}", DeleteStageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDocumentationPart
-- @param GetDocumentationPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentationPartAsync(GetDocumentationPartRequest, cb)
	assert(GetDocumentationPartRequest, "You must provide a GetDocumentationPartRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDocumentationPart",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/parts/{part_id}", GetDocumentationPartRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAccount
-- @param UpdateAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAccountAsync(UpdateAccountRequest, cb)
	assert(UpdateAccountRequest, "You must provide a UpdateAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateAccount",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/account", UpdateAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutRestApi
-- @param PutRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutRestApiAsync(PutRestApiRequest, cb)
	assert(PutRestApiRequest, "You must provide a PutRestApiRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}", PutRestApiRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetUsage
-- @param GetUsageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUsageAsync(GetUsageRequest, cb)
	assert(GetUsageRequest, "You must provide a GetUsageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetUsage",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/usageplans/{usageplanId}/usage", GetUsageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeployment
-- @param GetDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentAsync(GetDeploymentRequest, cb)
	assert(GetDeploymentRequest, "You must provide a GetDeploymentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/deployments/{deployment_id}", GetDeploymentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateRestApi
-- @param CreateRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRestApiAsync(CreateRestApiRequest, cb)
	assert(CreateRestApiRequest, "You must provide a CreateRestApiRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis", CreateRestApiRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAuthorizers
-- @param GetAuthorizersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAuthorizersAsync(GetAuthorizersRequest, cb)
	assert(GetAuthorizersRequest, "You must provide a GetAuthorizersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAuthorizers",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/authorizers", GetAuthorizersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetClientCertificates
-- @param GetClientCertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetClientCertificatesAsync(GetClientCertificatesRequest, cb)
	assert(GetClientCertificatesRequest, "You must provide a GetClientCertificatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetClientCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/clientcertificates", GetClientCertificatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDocumentationPart
-- @param DeleteDocumentationPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDocumentationPartAsync(DeleteDocumentationPartRequest, cb)
	assert(DeleteDocumentationPartRequest, "You must provide a DeleteDocumentationPartRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDocumentationPart",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/parts/{part_id}", DeleteDocumentationPartRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteResource
-- @param DeleteResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteResourceAsync(DeleteResourceRequest, cb)
	assert(DeleteResourceRequest, "You must provide a DeleteResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteResource",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}", DeleteResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateStage
-- @param CreateStageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStageAsync(CreateStageRequest, cb)
	assert(CreateStageRequest, "You must provide a CreateStageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateStage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/stages", CreateStageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateBasePathMapping
-- @param UpdateBasePathMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateBasePathMappingAsync(UpdateBasePathMappingRequest, cb)
	assert(UpdateBasePathMappingRequest, "You must provide a UpdateBasePathMappingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateBasePathMapping",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/domainnames/{domain_name}/basepathmappings/{base_path}", UpdateBasePathMappingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateMethodResponse
-- @param UpdateMethodResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateMethodResponseAsync(UpdateMethodResponseRequest, cb)
	assert(UpdateMethodResponseRequest, "You must provide a UpdateMethodResponseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateMethodResponse",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", UpdateMethodResponseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateUsage
-- @param UpdateUsageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUsageAsync(UpdateUsageRequest, cb)
	assert(UpdateUsageRequest, "You must provide a UpdateUsageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateUsage",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/usageplans/{usageplanId}/keys/{keyId}/usage", UpdateUsageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDocumentationParts
-- @param GetDocumentationPartsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentationPartsAsync(GetDocumentationPartsRequest, cb)
	assert(GetDocumentationPartsRequest, "You must provide a GetDocumentationPartsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDocumentationParts",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/parts", GetDocumentationPartsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDocumentationPart
-- @param CreateDocumentationPartRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDocumentationPartAsync(CreateDocumentationPartRequest, cb)
	assert(CreateDocumentationPartRequest, "You must provide a CreateDocumentationPartRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDocumentationPart",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/parts", CreateDocumentationPartRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateBasePathMapping
-- @param CreateBasePathMappingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBasePathMappingAsync(CreateBasePathMappingRequest, cb)
	assert(CreateBasePathMappingRequest, "You must provide a CreateBasePathMappingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateBasePathMapping",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/domainnames/{domain_name}/basepathmappings", CreateBasePathMappingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUsagePlan
-- @param CreateUsagePlanRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUsagePlanAsync(CreateUsagePlanRequest, cb)
	assert(CreateUsagePlanRequest, "You must provide a CreateUsagePlanRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateUsagePlan",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/usageplans", CreateUsagePlanRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateApiKey
-- @param UpdateApiKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApiKeyAsync(UpdateApiKeyRequest, cb)
	assert(UpdateApiKeyRequest, "You must provide a UpdateApiKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateApiKey",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/apikeys/{api_Key}", UpdateApiKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ImportRestApi
-- @param ImportRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportRestApiAsync(ImportRestApiRequest, cb)
	assert(ImportRestApiRequest, "You must provide a ImportRestApiRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ImportRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis?mode=import", ImportRestApiRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRestApi
-- @param UpdateRestApiRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRestApiAsync(UpdateRestApiRequest, cb)
	assert(UpdateRestApiRequest, "You must provide a UpdateRestApiRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateRestApi",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}", UpdateRestApiRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDocumentationVersion
-- @param CreateDocumentationVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDocumentationVersionAsync(CreateDocumentationVersionRequest, cb)
	assert(CreateDocumentationVersionRequest, "You must provide a CreateDocumentationVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDocumentationVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/versions", CreateDocumentationVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutIntegrationResponse
-- @param PutIntegrationResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutIntegrationResponseAsync(PutIntegrationResponseRequest, cb)
	assert(PutIntegrationResponseRequest, "You must provide a PutIntegrationResponseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutIntegrationResponse",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", PutIntegrationResponseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDocumentationVersions
-- @param GetDocumentationVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentationVersionsAsync(GetDocumentationVersionsRequest, cb)
	assert(GetDocumentationVersionsRequest, "You must provide a GetDocumentationVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDocumentationVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/documentation/versions", GetDocumentationVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteMethod
-- @param DeleteMethodRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMethodAsync(DeleteMethodRequest, cb)
	assert(DeleteMethodRequest, "You must provide a DeleteMethodRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteMethod",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", DeleteMethodRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRequestValidators
-- @param GetRequestValidatorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRequestValidatorsAsync(GetRequestValidatorsRequest, cb)
	assert(GetRequestValidatorsRequest, "You must provide a GetRequestValidatorsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetRequestValidators",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/requestvalidators", GetRequestValidatorsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAccount
-- @param GetAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountAsync(GetAccountRequest, cb)
	assert(GetAccountRequest, "You must provide a GetAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAccount",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/account", GetAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUsagePlanKey
-- @param DeleteUsagePlanKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUsagePlanKeyAsync(DeleteUsagePlanKeyRequest, cb)
	assert(DeleteUsagePlanKeyRequest, "You must provide a DeleteUsagePlanKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteUsagePlanKey",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/usageplans/{usageplanId}/keys/{keyId}", DeleteUsagePlanKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRequestValidator
-- @param DeleteRequestValidatorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRequestValidatorAsync(DeleteRequestValidatorRequest, cb)
	assert(DeleteRequestValidatorRequest, "You must provide a DeleteRequestValidatorRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteRequestValidator",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", DeleteRequestValidatorRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutIntegration
-- @param PutIntegrationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutIntegrationAsync(PutIntegrationRequest, cb)
	assert(PutIntegrationRequest, "You must provide a PutIntegrationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutIntegration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", PutIntegrationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateIntegrationResponse
-- @param UpdateIntegrationResponseRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateIntegrationResponseAsync(UpdateIntegrationResponseRequest, cb)
	assert(UpdateIntegrationResponseRequest, "You must provide a UpdateIntegrationResponseRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateIntegrationResponse",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", UpdateIntegrationResponseRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
