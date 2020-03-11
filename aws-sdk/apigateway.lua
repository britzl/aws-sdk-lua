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
-- * resourceId [String] <p>[Required] Represents an update integration request's resource identifier.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] Represents an update integration request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return UpdateIntegrationRequest structure as a key-value pair table
function M.UpdateIntegrationRequest(args)
	assert(args, "You must provide an argument table when creating UpdateIntegrationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["patchOperations"] = args["patchOperations"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertUpdateIntegrationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- @return GetRestApisRequest structure as a key-value pair table
function M.GetRestApisRequest(args)
	assert(args, "You must provide an argument table when creating GetRestApisRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetRestApisRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to create a <a>Resource</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * pathPart [String] <p>The last path segment for this resource.</p>
-- * parentId [String] <p>[Required] The parent resource's identifier.</p>
-- Required key: restApiId
-- Required key: parentId
-- Required key: pathPart
-- @return CreateResourceRequest structure as a key-value pair table
function M.CreateResourceRequest(args)
	assert(args, "You must provide an argument table when creating CreateResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{parent_id}"] = args["parentId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["pathPart"] = args["pathPart"],
		["parentId"] = args["parentId"],
	}
	asserts.AssertCreateResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to change information about a <a>Stage</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * stageName [String] <p>[Required] The name of the <a>Stage</a> resource to change information about.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: stageName
-- @return UpdateStageRequest structure as a key-value pair table
function M.UpdateStageRequest(args)
	assert(args, "You must provide an argument table when creating UpdateStageRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{stage_name}"] = args["stageName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateStageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to get information about one or more <a>Stage</a> resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [String] <p>The stages' deployment identifiers.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- @return GetStagesRequest structure as a key-value pair table
function M.GetStagesRequest(args)
	assert(args, "You must provide an argument table when creating GetStagesRequest")
    local query_args = { 
        ["deploymentId"] = args["deploymentId"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentId"] = args["deploymentId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetStagesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a collection of <a>ClientCertificate</a> resources.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html">Use Client-Side Certificate</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfClientCertificate] <p>The current page of elements from this collection.</p>
-- @return ClientCertificates structure as a key-value pair table
function M.ClientCertificates(args)
	assert(args, "You must provide an argument table when creating ClientCertificates")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertClientCertificates(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the collection of usage plan keys added to usage plans for the associated API keys and, possibly, other types of keys.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfUsagePlanKey] <p>The current page of elements from this collection.</p>
-- @return UsagePlanKeys structure as a key-value pair table
function M.UsagePlanKeys(args)
	assert(args, "You must provide an argument table when creating UsagePlanKeys")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertUsagePlanKeys(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GatewayResponses = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertGatewayResponses(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GatewayResponses to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfGatewayResponse(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.GatewayResponses[k], "GatewayResponses contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GatewayResponses
-- <p>The collection of the <a>GatewayResponse</a> instances of a <a>RestApi</a> as a <code>responseType</code>-to-<a>GatewayResponse</a> object map of key-value pairs. As such, pagination is not supported for querying this collection.</p> <div class="remarks"> For more information about valid gateway response types, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html">Gateway Response Types Supported by API Gateway</a> <div class="example"> <h4>Example: Get the collection of gateway responses of an API</h4> <h5>Request</h5> <p>This example request shows how to retrieve the <a>GatewayResponses</a> collection from an API.</p> <pre><code>GET /restapis/o81lxisefl/gatewayresponses HTTP/1.1 Host: beta-apigateway.us-east-1.amazonaws.com Content-Type: application/json X-Amz-Date: 20170503T220604Z Authorization: AWS4-HMAC-SHA256 Credential={access-key-id}/20170503/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=59b42fe54a76a5de8adf2c67baa6d39206f8e9ad49a1d77ccc6a5da3103a398a Cache-Control: no-cache Postman-Token: 5637af27-dc29-fc5c-9dfe-0645d52cb515 </code></pre> <p></p> <h5>Response</h5> <p>The successful operation returns the <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-gatewayresponse-{rel}.html", "name": "gatewayresponse", "templated": true }, "self": { "href": "/restapis/o81lxisefl/gatewayresponses" }, "first": { "href": "/restapis/o81lxisefl/gatewayresponses" }, "gatewayresponse:by-type": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "item": [ { "href": "/restapis/o81lxisefl/gatewayresponses/INTEGRATION_FAILURE" }, { "href": "/restapis/o81lxisefl/gatewayresponses/RESOURCE_NOT_FOUND" }, { "href": "/restapis/o81lxisefl/gatewayresponses/REQUEST_TOO_LARGE" }, { "href": "/restapis/o81lxisefl/gatewayresponses/THROTTLED" }, { "href": "/restapis/o81lxisefl/gatewayresponses/UNSUPPORTED_MEDIA_TYPE" }, { "href": "/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_CONFIGURATION_ERROR" }, { "href": "/restapis/o81lxisefl/gatewayresponses/DEFAULT_5XX" }, { "href": "/restapis/o81lxisefl/gatewayresponses/DEFAULT_4XX" }, { "href": "/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_PARAMETERS" }, { "href": "/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_BODY" }, { "href": "/restapis/o81lxisefl/gatewayresponses/EXPIRED_TOKEN" }, { "href": "/restapis/o81lxisefl/gatewayresponses/ACCESS_DENIED" }, { "href": "/restapis/o81lxisefl/gatewayresponses/INVALID_API_KEY" }, { "href": "/restapis/o81lxisefl/gatewayresponses/UNAUTHORIZED" }, { "href": "/restapis/o81lxisefl/gatewayresponses/API_CONFIGURATION_ERROR" }, { "href": "/restapis/o81lxisefl/gatewayresponses/QUOTA_EXCEEDED" }, { "href": "/restapis/o81lxisefl/gatewayresponses/INTEGRATION_TIMEOUT" }, { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" }, { "href": "/restapis/o81lxisefl/gatewayresponses/INVALID_SIGNATURE" }, { "href": "/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_FAILURE" } ] }, "_embedded": { "item": [ { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/INTEGRATION_FAILURE" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/INTEGRATION_FAILURE" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "INTEGRATION_FAILURE", "statusCode": "504" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/RESOURCE_NOT_FOUND" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/RESOURCE_NOT_FOUND" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "RESOURCE_NOT_FOUND", "statusCode": "404" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/REQUEST_TOO_LARGE" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/REQUEST_TOO_LARGE" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "REQUEST_TOO_LARGE", "statusCode": "413" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/THROTTLED" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/THROTTLED" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "THROTTLED", "statusCode": "429" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/UNSUPPORTED_MEDIA_TYPE" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/UNSUPPORTED_MEDIA_TYPE" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "UNSUPPORTED_MEDIA_TYPE", "statusCode": "415" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_CONFIGURATION_ERROR" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_CONFIGURATION_ERROR" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "AUTHORIZER_CONFIGURATION_ERROR", "statusCode": "500" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/DEFAULT_5XX" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/DEFAULT_5XX" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "DEFAULT_5XX" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/DEFAULT_4XX" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/DEFAULT_4XX" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "DEFAULT_4XX" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_PARAMETERS" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_PARAMETERS" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "BAD_REQUEST_PARAMETERS", "statusCode": "400" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_BODY" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/BAD_REQUEST_BODY" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "BAD_REQUEST_BODY", "statusCode": "400" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/EXPIRED_TOKEN" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/EXPIRED_TOKEN" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "EXPIRED_TOKEN", "statusCode": "403" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/ACCESS_DENIED" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/ACCESS_DENIED" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "ACCESS_DENIED", "statusCode": "403" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/INVALID_API_KEY" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/INVALID_API_KEY" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "INVALID_API_KEY", "statusCode": "403" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/UNAUTHORIZED" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/UNAUTHORIZED" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "UNAUTHORIZED", "statusCode": "401" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/API_CONFIGURATION_ERROR" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/API_CONFIGURATION_ERROR" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "API_CONFIGURATION_ERROR", "statusCode": "500" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/QUOTA_EXCEEDED" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/QUOTA_EXCEEDED" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "QUOTA_EXCEEDED", "statusCode": "429" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/INTEGRATION_TIMEOUT" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/INTEGRATION_TIMEOUT" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "INTEGRATION_TIMEOUT", "statusCode": "504" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "MISSING_AUTHENTICATION_TOKEN", "statusCode": "403" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/INVALID_SIGNATURE" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/INVALID_SIGNATURE" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "INVALID_SIGNATURE", "statusCode": "403" }, { "_links": { "self": { "href": "/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_FAILURE" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/AUTHORIZER_FAILURE" } }, "defaultResponse": true, "responseParameters": {}, "responseTemplates": { "application/json": "{\"message\":$context.error.messageString}" }, "responseType": "AUTHORIZER_FAILURE", "statusCode": "500" } ] } }</code></pre> <p></p> </div> </div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/customize-gateway-responses.html">Customize Gateway Responses</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfGatewayResponse] <p>Returns the entire collection, because of no pagination support.</p>
-- @return GatewayResponses structure as a key-value pair table
function M.GatewayResponses(args)
	assert(args, "You must provide an argument table when creating GatewayResponses")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertGatewayResponses(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * apiKey [String] <p>[Required] The identifier of the <a>ApiKey</a> resource.</p>
-- * includeValue [NullableBoolean] <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains the key value.</p>
-- Required key: apiKey
-- @return GetApiKeyRequest structure as a key-value pair table
function M.GetApiKeyRequest(args)
	assert(args, "You must provide an argument table when creating GetApiKeyRequest")
    local query_args = { 
        ["includeValue"] = args["includeValue"],
    }
    local uri_args = { 
        ["{api_Key}"] = args["apiKey"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiKey"] = args["apiKey"],
		["includeValue"] = args["includeValue"],
	}
	asserts.AssertGetApiKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a mapping template used to transform a payload.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html#models-mappings-mappings">Mapping Templates</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [String] <p>The Apache <a href="https://velocity.apache.org/engine/devel/vtl-reference-guide.html" target="_blank">Velocity Template Language (VTL)</a> template content used for the template resource.</p>
-- @return Template structure as a key-value pair table
function M.Template(args)
	assert(args, "You must provide an argument table when creating Template")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["value"] = args["value"],
	}
	asserts.AssertTemplate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating GenerateClientCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["description"] = args["description"],
	}
	asserts.AssertGenerateClientCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVpcLinksRequest = { ["position"] = true, ["limit"] = true, nil }

function asserts.AssertGetVpcLinksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVpcLinksRequest to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVpcLinksRequest[k], "GetVpcLinksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVpcLinksRequest
-- <p>Gets the <a>VpcLinks</a> collection under the caller's account in a selected region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- @return GetVpcLinksRequest structure as a key-value pair table
function M.GetVpcLinksRequest(args)
	assert(args, "You must provide an argument table when creating GetVpcLinksRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetVpcLinksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a collection of <a>Resource</a> resources.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfResource] <p>The current page of elements from this collection.</p>
-- @return Resources structure as a key-value pair table
function M.Resources(args)
	assert(args, "You must provide an argument table when creating Resources")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertResources(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * domainName [String] <p>[Required] The name of the <a>DomainName</a> resource.</p>
-- Required key: domainName
-- @return GetDomainNameRequest structure as a key-value pair table
function M.GetDomainNameRequest(args)
	assert(args, "You must provide an argument table when creating GetDomainNameRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{domain_name}"] = args["domainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["domainName"] = args["domainName"],
	}
	asserts.AssertGetDomainNameRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutMethodRequest = { ["restApiId"] = true, ["requestParameters"] = true, ["authorizationScopes"] = true, ["requestModels"] = true, ["resourceId"] = true, ["authorizationType"] = true, ["operationName"] = true, ["apiKeyRequired"] = true, ["httpMethod"] = true, ["requestValidatorId"] = true, ["authorizerId"] = true, nil }

function asserts.AssertPutMethodRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMethodRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["resourceId"], "Expected key resourceId to exist in table")
	assert(struct["httpMethod"], "Expected key httpMethod to exist in table")
	assert(struct["authorizationType"], "Expected key authorizationType to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["requestParameters"] then asserts.AssertMapOfStringToBoolean(struct["requestParameters"]) end
	if struct["authorizationScopes"] then asserts.AssertListOfString(struct["authorizationScopes"]) end
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * requestParameters [MapOfStringToBoolean] <p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key defines a method request parameter name matching the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>). The method request parameter names defined here are available in <a>Integration</a> to be mapped to integration request parameters or body-mapping templates.</p>
-- * authorizationScopes [ListOfString] <p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
-- * requestModels [MapOfStringToString] <p>Specifies the <a>Model</a> resources used for the request's content type. Request models are represented as a key/value map, with a content type as the key and a <a>Model</a> name as the value.</p>
-- * resourceId [String] <p>[Required] The <a>Resource</a> identifier for the new <a>Method</a> resource.</p>
-- * authorizationType [String] <p>[Required] The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
-- * operationName [String] <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in <a href="https://petstore-demo-endpoint.execute-api.com/petstore/pets">PetStore</a> example.</p>
-- * apiKeyRequired [Boolean] <p>Specifies whether the method required a valid <a>ApiKey</a>.</p>
-- * httpMethod [String] <p>[Required] Specifies the method request's HTTP method type.</p>
-- * requestValidatorId [String] <p>The identifier of a <a>RequestValidator</a> for validating the method request.</p>
-- * authorizerId [String] <p>Specifies the identifier of an <a>Authorizer</a> to use on this Method, if the type is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: authorizationType
-- @return PutMethodRequest structure as a key-value pair table
function M.PutMethodRequest(args)
	assert(args, "You must provide an argument table when creating PutMethodRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{resource_id}"] = args["resourceId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["requestParameters"] = args["requestParameters"],
		["authorizationScopes"] = args["authorizationScopes"],
		["requestModels"] = args["requestModels"],
		["resourceId"] = args["resourceId"],
		["authorizationType"] = args["authorizationType"],
		["operationName"] = args["operationName"],
		["apiKeyRequired"] = args["apiKeyRequired"],
		["httpMethod"] = args["httpMethod"],
		["requestValidatorId"] = args["requestValidatorId"],
		["authorizerId"] = args["authorizerId"],
	}
	asserts.AssertPutMethodRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A documentation part for a targeted API entity.</p> <div class="remarks"> <p>A documentation part consists of a content map (<code>properties</code>) and a target (<code>location</code>). The target specifies an API entity to which the documentation content applies. The supported API entity types are <code>API</code>, <code>AUTHORIZER</code>, <code>MODEL</code>, <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. Valid <code>location</code> fields depend on the API entity type. All valid fields are not required.</p> <p>The content map is a JSON string of API-specific key-value pairs. Although an API can use any shape for the content map, only the OpenAPI-compliant documentation fields will be injected into the associated API entity definition in the exported OpenAPI definition file.</p></div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationParts</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * properties [String] <p>A content map of API-specific key-value pairs describing the targeted API entity. The map must be encoded as a JSON string, e.g., <code>"{ \"description\": \"The API does ...\" }"</code>. Only OpenAPI-compliant documentation-related fields from the <literal>properties</literal> map are exported and, hence, published as part of the API entity definitions, while the original documentation parts are exported in a OpenAPI extension of <code>x-amazon-apigateway-documentation</code>.</p>
-- * id [String] <p>The <a>DocumentationPart</a> identifier, generated by API Gateway when the <code>DocumentationPart</code> is created.</p>
-- * location [DocumentationPartLocation] <p>The location of the API entity to which the documentation applies. Valid fields depend on the targeted API entity type. All the valid location fields are not required. If not explicitly specified, a valid location field is treated as a wildcard and associated documentation content may be inherited by matching entities, unless overridden.</p>
-- @return DocumentationPart structure as a key-value pair table
function M.DocumentationPart(args)
	assert(args, "You must provide an argument table when creating DocumentationPart")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["properties"] = args["properties"],
		["id"] = args["id"],
		["location"] = args["location"],
	}
	asserts.AssertDocumentationPart(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * log [String] <p>The API Gateway execution log for the test authorizer request.</p>
-- * principalId [String] <p>The principal identity returned by the <a>Authorizer</a></p>
-- * policy [String] <p>The JSON policy document returned by the <a>Authorizer</a></p>
-- * claims [MapOfStringToString] <p>The <a href="https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims">open identity claims</a>, with any supported custom attributes, returned from the Cognito Your User Pool configured for the API.</p>
-- * authorization [MapOfStringToList] 
-- * clientStatus [Integer] <p>The HTTP status code that the client would have received. Value is 0 if the authorizer succeeded.</p>
-- @return TestInvokeAuthorizerResponse structure as a key-value pair table
function M.TestInvokeAuthorizerResponse(args)
	assert(args, "You must provide an argument table when creating TestInvokeAuthorizerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["latency"] = args["latency"],
		["log"] = args["log"],
		["principalId"] = args["principalId"],
		["policy"] = args["policy"],
		["claims"] = args["claims"],
		["authorization"] = args["authorization"],
		["clientStatus"] = args["clientStatus"],
	}
	asserts.AssertTestInvokeAuthorizerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * clientCertificateId [String] <p>[Required] The identifier of the <a>ClientCertificate</a> resource to be described.</p>
-- Required key: clientCertificateId
-- @return GetClientCertificateRequest structure as a key-value pair table
function M.GetClientCertificateRequest(args)
	assert(args, "You must provide an argument table when creating GetClientCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{clientcertificate_id}"] = args["clientCertificateId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["clientCertificateId"] = args["clientCertificateId"],
	}
	asserts.AssertGetClientCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a request to get the integration configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceId [String] <p>[Required] Specifies a get integration request's resource identifier</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] Specifies a get integration request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return GetIntegrationRequest structure as a key-value pair table
function M.GetIntegrationRequest(args)
	assert(args, "You must provide an argument table when creating GetIntegrationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertGetIntegrationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating SdkResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Content-Type"] = args["contentType"],
        ["Content-Disposition"] = args["contentDisposition"],
    }
	local all_args = { 
		["body"] = args["body"],
		["contentType"] = args["contentType"],
		["contentDisposition"] = args["contentDisposition"],
	}
	asserts.AssertSdkResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents an AWS account that is associated with API Gateway.</p> <div class="remarks"> <p>To view the account info, call <code>GET</code> on this resource.</p> <h4>Error Codes</h4> <p>The following exception may be thrown when the request fails.</p> <ul> <li>UnauthorizedException</li> <li>NotFoundException</li> <li>TooManyRequestsException</li> </ul> <p>For detailed error code information, including the corresponding HTTP Status Codes, see <a href="https://docs.aws.amazon.com/apigateway/api-reference/handling-errors/#api-error-codes">API Gateway Error Codes</a></p> <h4>Example: Get the information about an account.</h4> <h5>Request</h5> <pre><code>GET /account HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160531T184618Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash} </code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/account-apigateway-{rel}.html", "name": "account", "templated": true }, "self": { "href": "/account" }, "account:update": { "href": "/account" } }, "cloudwatchRoleArn": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "throttleSettings": { "rateLimit": 500, "burstLimit": 1000 } } </code></pre> <p>In addition to making the REST API call directly, you can use the AWS CLI and an AWS SDK to access this resource.</p> </div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-limits.html">API Gateway Limits</a> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html">Developer Guide</a>, <a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-account.html">AWS CLI</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cloudwatchRoleArn [String] <p>The ARN of an Amazon CloudWatch role for the current <a>Account</a>. </p>
-- * throttleSettings [ThrottleSettings] <p>Specifies the API request limits configured for the current <a>Account</a>.</p>
-- * features [ListOfString] <p>A list of features supported for the account. When usage plans are enabled, the features list will include an entry of <code>"UsagePlans"</code>.</p>
-- * apiKeyVersion [String] <p>The version of the API keys used for the account.</p>
-- @return Account structure as a key-value pair table
function M.Account(args)
	assert(args, "You must provide an argument table when creating Account")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cloudwatchRoleArn"] = args["cloudwatchRoleArn"],
		["throttleSettings"] = args["throttleSettings"],
		["features"] = args["features"],
		["apiKeyVersion"] = args["apiKeyVersion"],
	}
	asserts.AssertAccount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * basePath [String] <p>[Required] The base path of the <a>BasePathMapping</a> resource to change.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * domainName [String] <p>[Required] The domain name of the <a>BasePathMapping</a> resource to change.</p>
-- Required key: domainName
-- Required key: basePath
-- @return UpdateBasePathMappingRequest structure as a key-value pair table
function M.UpdateBasePathMappingRequest(args)
	assert(args, "You must provide an argument table when creating UpdateBasePathMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{base_path}"] = args["basePath"],
        ["{domain_name}"] = args["domainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["basePath"] = args["basePath"],
		["patchOperations"] = args["patchOperations"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertUpdateBasePathMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointConfiguration = { ["types"] = true, nil }

function asserts.AssertEndpointConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointConfiguration to be of type 'table'")
	if struct["types"] then asserts.AssertListOfEndpointType(struct["types"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointConfiguration[k], "EndpointConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointConfiguration
-- <p>The endpoint configuration to indicate the types of endpoints an API (<a>RestApi</a>) or its custom domain name (<a>DomainName</a>) has. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * types [ListOfEndpointType] <p>A list of endpoint types of an API (<a>RestApi</a>) or its custom domain name (<a>DomainName</a>). For an edge-optimized API and its custom domain name, the endpoint type is <code>"EDGE"</code>. For a regional API and its custom domain name, the endpoint type is <code>REGIONAL</code>. For a private API, the endpoint type is <code>PRIVATE</code>.</p>
-- @return EndpointConfiguration structure as a key-value pair table
function M.EndpointConfiguration(args)
	assert(args, "You must provide an argument table when creating EndpointConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["types"] = args["types"],
	}
	asserts.AssertEndpointConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: documentationPartId
-- @return DeleteDocumentationPartRequest structure as a key-value pair table
function M.DeleteDocumentationPartRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDocumentationPartRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{part_id}"] = args["documentationPartId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["documentationPartId"] = args["documentationPartId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteDocumentationPartRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutGatewayResponseRequest = { ["responseType"] = true, ["responseParameters"] = true, ["restApiId"] = true, ["responseTemplates"] = true, ["statusCode"] = true, nil }

function asserts.AssertPutGatewayResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutGatewayResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["responseType"], "Expected key responseType to exist in table")
	if struct["responseType"] then asserts.AssertGatewayResponseType(struct["responseType"]) end
	if struct["responseParameters"] then asserts.AssertMapOfStringToString(struct["responseParameters"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["responseTemplates"] then asserts.AssertMapOfStringToString(struct["responseTemplates"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutGatewayResponseRequest[k], "PutGatewayResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutGatewayResponseRequest
-- <p>Creates a customization of a <a>GatewayResponse</a> of a specified response type and status code on the given <a>RestApi</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * responseType [GatewayResponseType] <p>[Required] <p>The response type of the associated <a>GatewayResponse</a>. Valid values are <ul><li>ACCESS_DENIED</li><li>API_CONFIGURATION_ERROR</li><li>AUTHORIZER_FAILURE</li><li> AUTHORIZER_CONFIGURATION_ERROR</li><li>BAD_REQUEST_PARAMETERS</li><li>BAD_REQUEST_BODY</li><li>DEFAULT_4XX</li><li>DEFAULT_5XX</li><li>EXPIRED_TOKEN</li><li>INVALID_SIGNATURE</li><li>INTEGRATION_FAILURE</li><li>INTEGRATION_TIMEOUT</li><li>INVALID_API_KEY</li><li>MISSING_AUTHENTICATION_TOKEN</li><li> QUOTA_EXCEEDED</li><li>REQUEST_TOO_LARGE</li><li>RESOURCE_NOT_FOUND</li><li>THROTTLED</li><li>UNAUTHORIZED</li><li>UNSUPPORTED_MEDIA_TYPE</li></ul> </p></p>
-- * responseParameters [MapOfStringToString] <p><p>Response parameters (paths, query strings and headers) of the <a>GatewayResponse</a> as a string-to-string map of key-value pairs.</p></p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * responseTemplates [MapOfStringToString] <p><p>Response templates of the <a>GatewayResponse</a> as a string-to-string map of key-value pairs.</p></p>
-- * statusCode [StatusCode] The HTTP status code of the <a>GatewayResponse</a>.
-- Required key: restApiId
-- Required key: responseType
-- @return PutGatewayResponseRequest structure as a key-value pair table
function M.PutGatewayResponseRequest(args)
	assert(args, "You must provide an argument table when creating PutGatewayResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{response_type}"] = args["responseType"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["responseType"] = args["responseType"],
		["responseParameters"] = args["responseParameters"],
		["restApiId"] = args["restApiId"],
		["responseTemplates"] = args["responseTemplates"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertPutGatewayResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to get information about a <a>Stage</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * stageName [String] <p>[Required] The name of the <a>Stage</a> resource to get information about.</p>
-- Required key: restApiId
-- Required key: stageName
-- @return GetStageRequest structure as a key-value pair table
function M.GetStageRequest(args)
	assert(args, "You must provide an argument table when creating GetStageRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{stage_name}"] = args["stageName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertGetStageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The DELETE request to delete a usage plan of a given plan Id.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * usagePlanId [String] <p>[Required] The Id of the to-be-deleted usage plan.</p>
-- Required key: usagePlanId
-- @return DeleteUsagePlanRequest structure as a key-value pair table
function M.DeleteUsagePlanRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUsagePlanRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{usageplanId}"] = args["usagePlanId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["usagePlanId"] = args["usagePlanId"],
	}
	asserts.AssertDeleteUsagePlanRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a collection resource that contains zero or more references to your existing deployments, and links that guide you on how to interact with your collection. The collection offers a paginated view of the contained deployments.</p> <div class="remarks">To create a new deployment of a <a>RestApi</a>, make a <code>POST</code> request against this resource. To view, update, or delete an existing deployment, make a <code>GET</code>, <code>PATCH</code>, or <code>DELETE</code> request, respectively, on a specified <a>Deployment</a> resource.</div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html">Deploying an API</a>, <a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html">AWS CLI</a>, <a href="https://aws.amazon.com/tools/">AWS SDKs</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfDeployment] <p>The current page of elements from this collection.</p>
-- @return Deployments structure as a key-value pair table
function M.Deployments(args)
	assert(args, "You must provide an argument table when creating Deployments")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertDeployments(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a collection of API keys as represented by an <a>ApiKeys</a> resource.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html">Use API Keys</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfApiKey] <p>The current page of elements from this collection.</p>
-- * warnings [ListOfString] <p>A list of warning messages logged during the import of API keys when the <code>failOnWarnings</code> option is set to true.</p>
-- @return ApiKeys structure as a key-value pair table
function M.ApiKeys(args)
	assert(args, "You must provide an argument table when creating ApiKeys")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
		["warnings"] = args["warnings"],
	}
	asserts.AssertApiKeys(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A POST request to import an API to API Gateway using an input of an API definition file.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Blob] <p>[Required] The POST request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 2MB.</p>
-- * failOnWarnings [Boolean] <p>A query parameter to indicate whether to rollback the API creation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
-- * parameters [MapOfStringToString] <p>A key-value map of context-specific query string parameters specifying the behavior of different API importing operations. The following shows operation-specific parameters and their supported values.</p> <p> To exclude <a>DocumentationParts</a> from the import, set <code>parameters</code> as <code>ignore=documentation</code>.</p> <p> To configure the endpoint type, set <code>parameters</code> as <code>endpointConfigurationTypes=EDGE</code>, <code>endpointConfigurationTypes=REGIONAL</code>, or <code>endpointConfigurationTypes=PRIVATE</code>. The default endpoint type is <code>EDGE</code>.</p> <p> To handle imported <code>basePath</code>, set <code>parameters</code> as <code>basePath=ignore</code>, <code>basePath=prepend</code> or <code>basePath=split</code>.</p> <p>For example, the AWS CLI command to exclude documentation from the imported API is:</p> <pre><code>aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'</code></pre> <p>The AWS CLI command to set the regional endpoint on the imported API is:</p> <pre><code>aws apigateway import-rest-api --parameters endpointConfigurationTypes=REGIONAL --body 'file:///path/to/imported-api-body.json'</code></pre>
-- Required key: body
-- @return ImportRestApiRequest structure as a key-value pair table
function M.ImportRestApiRequest(args)
	assert(args, "You must provide an argument table when creating ImportRestApiRequest")
    local query_args = { 
        ["failonwarnings"] = args["failOnWarnings"],
        ["parameters"] = args["parameters"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["body"] = args["body"],
		["failOnWarnings"] = args["failOnWarnings"],
		["parameters"] = args["parameters"],
	}
	asserts.AssertImportRestApiRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * domainName [String] <p>[Required] The name of the <a>DomainName</a> resource to be changed.</p>
-- Required key: domainName
-- @return UpdateDomainNameRequest structure as a key-value pair table
function M.UpdateDomainNameRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDomainNameRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{domain_name}"] = args["domainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["patchOperations"] = args["patchOperations"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertUpdateDomainNameRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * name [String] <p>The name of the to-be-created <a>RequestValidator</a>.</p>
-- Required key: restApiId
-- @return CreateRequestValidatorRequest structure as a key-value pair table
function M.CreateRequestValidatorRequest(args)
	assert(args, "You must provide an argument table when creating CreateRequestValidatorRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["validateRequestParameters"] = args["validateRequestParameters"],
		["validateRequestBody"] = args["validateRequestBody"],
		["restApiId"] = args["restApiId"],
		["name"] = args["name"],
	}
	asserts.AssertCreateRequestValidatorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to delete a <a>Deployment</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [String] <p>[Required] The identifier of the <a>Deployment</a> resource to delete.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: deploymentId
-- @return DeleteDeploymentRequest structure as a key-value pair table
function M.DeleteDeploymentRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDeploymentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{deployment_id}"] = args["deploymentId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentId"] = args["deploymentId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteDeploymentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a usage plan key to identify a plan customer.</p> <div class="remarks"> <p>To associate an API stage with a selected API key in a usage plan, you must create a UsagePlanKey resource to represent the selected <a>ApiKey</a>.</p> </div>" <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [String] <p>The type of a usage plan key. Currently, the valid key type is <code>API_KEY</code>.</p>
-- * id [String] <p>The Id of a usage plan key.</p>
-- * value [String] <p>The value of a usage plan key.</p>
-- * name [String] <p>The name of a usage plan key.</p>
-- @return UsagePlanKey structure as a key-value pair table
function M.UsagePlanKey(args)
	assert(args, "You must provide an argument table when creating UsagePlanKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
		["id"] = args["id"],
		["value"] = args["value"],
		["name"] = args["name"],
	}
	asserts.AssertUsagePlanKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to delete a <a>Stage</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * stageName [String] <p>[Required] The name of the <a>Stage</a> resource to delete.</p>
-- Required key: restApiId
-- Required key: stageName
-- @return DeleteStageRequest structure as a key-value pair table
function M.DeleteStageRequest(args)
	assert(args, "You must provide an argument table when creating DeleteStageRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{stage_name}"] = args["stageName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertDeleteStageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * exportType [String] <p>[Required] The type of export. Acceptable values are 'oas30' for OpenAPI 3.0.x and 'swagger' for Swagger/OpenAPI 2.0.</p>
-- * accepts [String] <p>The content-type of the export, for example <code>application/json</code>. Currently <code>application/json</code> and <code>application/yaml</code> are supported for <code>exportType</code> of<code>oas30</code> and <code>swagger</code>. This should be specified in the <code>Accept</code> header for direct API requests.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * parameters [MapOfStringToString] <p>A key-value map of query string parameters that specify properties of the export, depending on the requested <code>exportType</code>. For <code>exportType</code> <code>oas30</code> and <code>swagger</code>, any combination of the following parameters are supported: <code>extensions='integrations'</code> or <code>extensions='apigateway'</code> will export the API with x-amazon-apigateway-integration extensions. <code>extensions='authorizers'</code> will export the API with x-amazon-apigateway-authorizer extensions. <code>postman</code> will export the API with Postman extensions, allowing for import to the Postman tool</p>
-- * stageName [String] <p>[Required] The name of the <a>Stage</a> that will be exported.</p>
-- Required key: restApiId
-- Required key: stageName
-- Required key: exportType
-- @return GetExportRequest structure as a key-value pair table
function M.GetExportRequest(args)
	assert(args, "You must provide an argument table when creating GetExportRequest")
    local query_args = { 
        ["parameters"] = args["parameters"],
    }
    local uri_args = { 
        ["{export_type}"] = args["exportType"],
        ["{restapi_id}"] = args["restApiId"],
        ["{stage_name}"] = args["stageName"],
    }
    local header_args = { 
        ["Accept"] = args["accepts"],
    }
	local all_args = { 
		["exportType"] = args["exportType"],
		["accepts"] = args["accepts"],
		["restApiId"] = args["restApiId"],
		["parameters"] = args["parameters"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertGetExportRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcLinks = { ["position"] = true, ["items"] = true, nil }

function asserts.AssertVpcLinks(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcLinks to be of type 'table'")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["items"] then asserts.AssertListOfVpcLink(struct["items"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcLinks[k], "VpcLinks contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcLinks
-- <p>The collection of VPC links under the caller's account in a region.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-with-private-integration.html">Getting Started with Private Integrations</a>, <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-private-integration.html">Set up Private Integrations</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfVpcLink] <p>The current page of elements from this collection.</p>
-- @return VpcLinks structure as a key-value pair table
function M.VpcLinks(args)
	assert(args, "You must provide an argument table when creating VpcLinks")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertVpcLinks(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- @return GetDomainNamesRequest structure as a key-value pair table
function M.GetDomainNamesRequest(args)
	assert(args, "You must provide an argument table when creating GetDomainNamesRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetDomainNamesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStageRequest = { ["tracingEnabled"] = true, ["restApiId"] = true, ["description"] = true, ["stageName"] = true, ["cacheClusterSize"] = true, ["variables"] = true, ["tags"] = true, ["cacheClusterEnabled"] = true, ["documentationVersion"] = true, ["deploymentId"] = true, ["canarySettings"] = true, nil }

function asserts.AssertCreateStageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStageRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["stageName"], "Expected key stageName to exist in table")
	assert(struct["deploymentId"], "Expected key deploymentId to exist in table")
	if struct["tracingEnabled"] then asserts.AssertBoolean(struct["tracingEnabled"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	if struct["cacheClusterSize"] then asserts.AssertCacheClusterSize(struct["cacheClusterSize"]) end
	if struct["variables"] then asserts.AssertMapOfStringToString(struct["variables"]) end
	if struct["tags"] then asserts.AssertMapOfStringToString(struct["tags"]) end
	if struct["cacheClusterEnabled"] then asserts.AssertBoolean(struct["cacheClusterEnabled"]) end
	if struct["documentationVersion"] then asserts.AssertString(struct["documentationVersion"]) end
	if struct["deploymentId"] then asserts.AssertString(struct["deploymentId"]) end
	if struct["canarySettings"] then asserts.AssertCanarySettings(struct["canarySettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStageRequest[k], "CreateStageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStageRequest
-- <p>Requests API Gateway to create a <a>Stage</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tracingEnabled [Boolean] <p>Specifies whether active tracing with X-ray is enabled for the <a>Stage</a>.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * description [String] <p>The description of the <a>Stage</a> resource.</p>
-- * stageName [String] <p>[Required] The name for the <a>Stage</a> resource.</p>
-- * cacheClusterSize [CacheClusterSize] <p>The stage's cache cluster size.</p>
-- * variables [MapOfStringToString] <p>A map that defines the stage variables for the new <a>Stage</a> resource. Variable names can have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&amp;=,]+</code>.</p>
-- * tags [MapOfStringToString] <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
-- * cacheClusterEnabled [Boolean] <p>Whether cache clustering is enabled for the stage.</p>
-- * documentationVersion [String] <p>The version of the associated API documentation.</p>
-- * deploymentId [String] <p>[Required] The identifier of the <a>Deployment</a> resource for the <a>Stage</a> resource.</p>
-- * canarySettings [CanarySettings] <p>The canary deployment settings of this stage.</p>
-- Required key: restApiId
-- Required key: stageName
-- Required key: deploymentId
-- @return CreateStageRequest structure as a key-value pair table
function M.CreateStageRequest(args)
	assert(args, "You must provide an argument table when creating CreateStageRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["tracingEnabled"] = args["tracingEnabled"],
		["restApiId"] = args["restApiId"],
		["description"] = args["description"],
		["stageName"] = args["stageName"],
		["cacheClusterSize"] = args["cacheClusterSize"],
		["variables"] = args["variables"],
		["tags"] = args["tags"],
		["cacheClusterEnabled"] = args["cacheClusterEnabled"],
		["documentationVersion"] = args["documentationVersion"],
		["deploymentId"] = args["deploymentId"],
		["canarySettings"] = args["canarySettings"],
	}
	asserts.AssertCreateStageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ApiKeyIds")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ids"] = args["ids"],
		["warnings"] = args["warnings"],
	}
	asserts.AssertApiKeyIds(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
-- * statusCode [StatusCode] <p>[Required] The status code for the <a>MethodResponse</a> resource.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] The HTTP verb of the <a>Method</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return GetMethodResponseRequest structure as a key-value pair table
function M.GetMethodResponseRequest(args)
	assert(args, "You must provide an argument table when creating GetMethodResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{status_code}"] = args["statusCode"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertGetMethodResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * clientCertificateId [String] <p>[Required] The identifier of the <a>ClientCertificate</a> resource to be updated.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: clientCertificateId
-- @return UpdateClientCertificateRequest structure as a key-value pair table
function M.UpdateClientCertificateRequest(args)
	assert(args, "You must provide an argument table when creating UpdateClientCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{clientcertificate_id}"] = args["clientCertificateId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["clientCertificateId"] = args["clientCertificateId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateClientCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * domainName [String] <p>[Required] The name of the <a>DomainName</a> resource to be deleted.</p>
-- Required key: domainName
-- @return DeleteDomainNameRequest structure as a key-value pair table
function M.DeleteDomainNameRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDomainNameRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{domain_name}"] = args["domainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["domainName"] = args["domainName"],
	}
	asserts.AssertDeleteDomainNameRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * modelName [String] <p>[Required] The name of the model to delete.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: modelName
-- @return DeleteModelRequest structure as a key-value pair table
function M.DeleteModelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteModelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{model_name}"] = args["modelName"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["modelName"] = args["modelName"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteModelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents an authorization layer for methods. If enabled on a method, API Gateway will activate the authorizer when a client calls the method.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html">Enable custom authorization</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * authType [String] <p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>
-- * name [String] <p>[Required] The name of the authorizer.</p>
-- * providerARNs [ListOfARNs] <p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>
-- * authorizerUri [String] <p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>
-- * identityValidationExpression [String] <p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>
-- * authorizerResultTtlInSeconds [NullableInteger] <p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
-- * authorizerCredentials [String] <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
-- * identitySource [String] <p>The identity source for which authorization is requested. <ul><li>For a <code>TOKEN</code> or <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request header mapping expression for the custom header holding the authorization token submitted by the client. For example, if the token header name is <code>Auth</code>, the header mapping expression is <code>method.request.header.Auth</code>.</li><li>For the <code>REQUEST</code> authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an <code>Auth</code> header, a <code>Name</code> query string parameter are defined as identity sources, this value is <code>method.request.header.Auth, method.request.querystring.Name</code>. These parameters will be used to derive the authorization caching key and to perform runtime validation of the <code>REQUEST</code> authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.</li></ul></p>
-- * type [AuthorizerType] <p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
-- * id [String] <p>The identifier for the authorizer resource.</p>
-- @return Authorizer structure as a key-value pair table
function M.Authorizer(args)
	assert(args, "You must provide an argument table when creating Authorizer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
	asserts.AssertAuthorizer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Import documentation parts from an external (e.g., OpenAPI) definition file. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * body [Blob] <p>[Required] Raw byte array representing the to-be-imported documentation parts. To import from an OpenAPI file, this is a JSON object.</p>
-- * failOnWarnings [Boolean] <p>A query parameter to specify whether to rollback the documentation importation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * mode [PutMode] <p>A query parameter to indicate whether to overwrite (<code>OVERWRITE</code>) any existing <a>DocumentationParts</a> definition or to merge (<code>MERGE</code>) the new definition into the existing one. The default value is <code>MERGE</code>.</p>
-- Required key: restApiId
-- Required key: body
-- @return ImportDocumentationPartsRequest structure as a key-value pair table
function M.ImportDocumentationPartsRequest(args)
	assert(args, "You must provide an argument table when creating ImportDocumentationPartsRequest")
    local query_args = { 
        ["failonwarnings"] = args["failOnWarnings"],
        ["mode"] = args["mode"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["body"] = args["body"],
		["failOnWarnings"] = args["failOnWarnings"],
		["restApiId"] = args["restApiId"],
		["mode"] = args["mode"],
	}
	asserts.AssertImportDocumentationPartsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainName = { ["certificateArn"] = true, ["distributionDomainName"] = true, ["regionalCertificateName"] = true, ["certificateName"] = true, ["domainName"] = true, ["endpointConfiguration"] = true, ["regionalCertificateArn"] = true, ["regionalDomainName"] = true, ["regionalHostedZoneId"] = true, ["distributionHostedZoneId"] = true, ["certificateUploadDate"] = true, nil }

function asserts.AssertDomainName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainName to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertString(struct["certificateArn"]) end
	if struct["distributionDomainName"] then asserts.AssertString(struct["distributionDomainName"]) end
	if struct["regionalCertificateName"] then asserts.AssertString(struct["regionalCertificateName"]) end
	if struct["certificateName"] then asserts.AssertString(struct["certificateName"]) end
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	if struct["endpointConfiguration"] then asserts.AssertEndpointConfiguration(struct["endpointConfiguration"]) end
	if struct["regionalCertificateArn"] then asserts.AssertString(struct["regionalCertificateArn"]) end
	if struct["regionalDomainName"] then asserts.AssertString(struct["regionalDomainName"]) end
	if struct["regionalHostedZoneId"] then asserts.AssertString(struct["regionalHostedZoneId"]) end
	if struct["distributionHostedZoneId"] then asserts.AssertString(struct["distributionHostedZoneId"]) end
	if struct["certificateUploadDate"] then asserts.AssertTimestamp(struct["certificateUploadDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainName[k], "DomainName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainName
-- <p>Represents a custom domain name as a user-friendly host name of an API (<a>RestApi</a>).</p> <div class="Remarks"> <p>When you deploy an API, API Gateway creates a default host name for the API. This default API host name is of the <code>{restapi-id}.execute-api.{region}.amazonaws.com</code> format. With the default host name, you can access the API's root resource with the URL of <code>https://{restapi-id}.execute-api.{region}.amazonaws.com/{stage}/</code>. When you set up a custom domain name of <code>apis.example.com</code> for this API, you can then access the same resource using the URL of the <code>https://apis.examples.com/myApi</code>, where <code>myApi</code> is the base path mapping (<a>BasePathMapping</a>) of your API under the custom domain name. </p> </div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Set a Custom Host Name for an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * certificateArn [String] <p>The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.</p>
-- * distributionDomainName [String] <p>The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the <a href="https://aws.amazon.com/documentation/cloudfront/" target="_blank">Amazon CloudFront documentation</a>.</p>
-- * regionalCertificateName [String] <p>The name of the certificate that will be used for validating the regional domain name.</p>
-- * certificateName [String] <p>The name of the certificate that will be used by edge-optimized endpoint for this domain name.</p>
-- * domainName [String] <p>The custom domain name as an API host name, for example, <code>my-api.example.com</code>.</p>
-- * endpointConfiguration [EndpointConfiguration] <p>The endpoint configuration of this <a>DomainName</a> showing the endpoint types of the domain name. </p>
-- * regionalCertificateArn [String] <p>The reference to an AWS-managed certificate that will be used for validating the regional domain name. AWS Certificate Manager is the only supported source.</p>
-- * regionalDomainName [String] <p>The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.</p>
-- * regionalHostedZoneId [String] <p>The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-regional-api-custom-domain-create.html">Set up a Regional Custom Domain Name</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#apigateway_region">AWS Regions and Endpoints for API Gateway</a>. </p>
-- * distributionHostedZoneId [String] <p>The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is <code>Z2FDTNDATAQYW2</code> for all the regions. For more information, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-regional-api-custom-domain-create.html">Set up a Regional Custom Domain Name</a> and <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#apigateway_region">AWS Regions and Endpoints for API Gateway</a>. </p>
-- * certificateUploadDate [Timestamp] <p>The timestamp when the certificate that was used by edge-optimized endpoint for this domain name was uploaded.</p>
-- @return DomainName structure as a key-value pair table
function M.DomainName(args)
	assert(args, "You must provide an argument table when creating DomainName")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["certificateArn"] = args["certificateArn"],
		["distributionDomainName"] = args["distributionDomainName"],
		["regionalCertificateName"] = args["regionalCertificateName"],
		["certificateName"] = args["certificateName"],
		["domainName"] = args["domainName"],
		["endpointConfiguration"] = args["endpointConfiguration"],
		["regionalCertificateArn"] = args["regionalCertificateArn"],
		["regionalDomainName"] = args["regionalDomainName"],
		["regionalHostedZoneId"] = args["regionalHostedZoneId"],
		["distributionHostedZoneId"] = args["distributionHostedZoneId"],
		["certificateUploadDate"] = args["certificateUploadDate"],
	}
	asserts.AssertDomainName(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDeploymentRequest = { ["stageDescription"] = true, ["tracingEnabled"] = true, ["restApiId"] = true, ["description"] = true, ["stageName"] = true, ["cacheClusterSize"] = true, ["variables"] = true, ["cacheClusterEnabled"] = true, ["canarySettings"] = true, nil }

function asserts.AssertCreateDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["stageDescription"] then asserts.AssertString(struct["stageDescription"]) end
	if struct["tracingEnabled"] then asserts.AssertNullableBoolean(struct["tracingEnabled"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	if struct["cacheClusterSize"] then asserts.AssertCacheClusterSize(struct["cacheClusterSize"]) end
	if struct["variables"] then asserts.AssertMapOfStringToString(struct["variables"]) end
	if struct["cacheClusterEnabled"] then asserts.AssertNullableBoolean(struct["cacheClusterEnabled"]) end
	if struct["canarySettings"] then asserts.AssertDeploymentCanarySettings(struct["canarySettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentRequest[k], "CreateDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentRequest
-- <p>Requests API Gateway to create a <a>Deployment</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stageDescription [String] <p>The description of the <a>Stage</a> resource for the <a>Deployment</a> resource to create.</p>
-- * tracingEnabled [NullableBoolean] <p>Specifies whether active tracing with X-ray is enabled for the <a>Stage</a>.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * description [String] <p>The description for the <a>Deployment</a> resource to create.</p>
-- * stageName [String] <p>The name of the <a>Stage</a> resource for the <a>Deployment</a> resource to create.</p>
-- * cacheClusterSize [CacheClusterSize] <p>Specifies the cache cluster size for the <a>Stage</a> resource specified in the input, if a cache cluster is enabled.</p>
-- * variables [MapOfStringToString] <p>A map that defines the stage variables for the <a>Stage</a> resource that is associated with the new deployment. Variable names can have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&amp;=,]+</code>.</p>
-- * cacheClusterEnabled [NullableBoolean] <p>Enables a cache cluster for the <a>Stage</a> resource specified in the input.</p>
-- * canarySettings [DeploymentCanarySettings] <p>The input configuration for the canary deployment when the deployment is a canary release deployment. </p>
-- Required key: restApiId
-- @return CreateDeploymentRequest structure as a key-value pair table
function M.CreateDeploymentRequest(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["stageDescription"] = args["stageDescription"],
		["tracingEnabled"] = args["tracingEnabled"],
		["restApiId"] = args["restApiId"],
		["description"] = args["description"],
		["stageName"] = args["stageName"],
		["cacheClusterSize"] = args["cacheClusterSize"],
		["variables"] = args["variables"],
		["cacheClusterEnabled"] = args["cacheClusterEnabled"],
		["canarySettings"] = args["canarySettings"],
	}
	asserts.AssertCreateDeploymentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * basePath [String] <p>[Required] The base path name of the <a>BasePathMapping</a> resource to delete.</p>
-- * domainName [String] <p>[Required] The domain name of the <a>BasePathMapping</a> resource to delete.</p>
-- Required key: domainName
-- Required key: basePath
-- @return DeleteBasePathMappingRequest structure as a key-value pair table
function M.DeleteBasePathMappingRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBasePathMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{base_path}"] = args["basePath"],
        ["{domain_name}"] = args["domainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["basePath"] = args["basePath"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertDeleteBasePathMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the usage data of a usage plan.</p> <div class="remarks"/> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a>, <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-create-usage-plans-with-console.html#api-gateway-usage-plan-manage-usage">Manage Usage in a Usage Plan</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startDate [String] <p>The starting date of the usage data.</p>
-- * items [MapOfKeyUsages] <p>The usage data, as daily logs of used and remaining quotas, over the specified time interval indexed over the API keys in a usage plan. For example, <code>{..., "values" : { "{api_key}" : [ [0, 100], [10, 90], [100, 10]]}</code>, where <code>{api_key}</code> stands for an API key value and the daily log entry is of the format <code>[used quota, remaining quota]</code>.</p>
-- * usagePlanId [String] <p>The plan Id associated with this usage data.</p>
-- * endDate [String] <p>The ending date of the usage data.</p>
-- * position [String] 
-- @return Usage structure as a key-value pair table
function M.Usage(args)
	assert(args, "You must provide an argument table when creating Usage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startDate"] = args["startDate"],
		["items"] = args["items"],
		["usagePlanId"] = args["usagePlanId"],
		["endDate"] = args["endDate"],
		["position"] = args["position"],
	}
	asserts.AssertUsage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating SdkType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["friendlyName"] = args["friendlyName"],
		["configurationProperties"] = args["configurationProperties"],
		["id"] = args["id"],
		["description"] = args["description"],
	}
	asserts.AssertSdkType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating MethodSnapshot")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["apiKeyRequired"] = args["apiKeyRequired"],
		["authorizationType"] = args["authorizationType"],
	}
	asserts.AssertMethodSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentCanarySettings = { ["percentTraffic"] = true, ["useStageCache"] = true, ["stageVariableOverrides"] = true, nil }

function asserts.AssertDeploymentCanarySettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentCanarySettings to be of type 'table'")
	if struct["percentTraffic"] then asserts.AssertDouble(struct["percentTraffic"]) end
	if struct["useStageCache"] then asserts.AssertBoolean(struct["useStageCache"]) end
	if struct["stageVariableOverrides"] then asserts.AssertMapOfStringToString(struct["stageVariableOverrides"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentCanarySettings[k], "DeploymentCanarySettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentCanarySettings
-- <p>The input configuration for a canary deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * percentTraffic [Double] <p>The percentage (0.0-100.0) of traffic routed to the canary deployment.</p>
-- * useStageCache [Boolean] <p>A Boolean flag to indicate whether the canary release deployment uses the stage cache or not.</p>
-- * stageVariableOverrides [MapOfStringToString] <p>A stage variable overrides used for the canary release deployment. They can override existing stage variables or add new stage variables for the canary release deployment. These stage variables are represented as a string-to-string map between stage variable names and their values.</p>
-- @return DeploymentCanarySettings structure as a key-value pair table
function M.DeploymentCanarySettings(args)
	assert(args, "You must provide an argument table when creating DeploymentCanarySettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["percentTraffic"] = args["percentTraffic"],
		["useStageCache"] = args["useStageCache"],
		["stageVariableOverrides"] = args["stageVariableOverrides"],
	}
	asserts.AssertDeploymentCanarySettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents an API resource.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * path [String] <p>The full path for this resource.</p>
-- * resourceMethods [MapOfMethod] <p>Gets an API resource's method of a given HTTP verb.</p> <div class="remarks"> <p>The resource methods are a map of methods indexed by methods' HTTP verbs enabled on the resource. This method map is included in the <code>200 OK</code> response of the <code>GET /restapis/{restapi_id}/resources/{resource_id}</code> or <code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code> request.</p> <h4>Example: Get the GET method of an API resource</h4> <h5>Request</h5> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20170223T031827Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20170223/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <pre><code>{ "_links": { "curies": [ { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html", "name": "integration", "templated": true }, { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-{rel}.html", "name": "method", "templated": true }, { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true } ], "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET", "name": "GET", "title": "GET" }, "integration:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "method:integration": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "method:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "methodresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/{status_code}", "templated": true } }, "apiKeyRequired": false, "authorizationType": "NONE", "httpMethod": "GET", "_embedded": { "method:integration": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integration:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integrationresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/{status_code}", "templated": true } }, "cacheKeyParameters": [], "cacheNamespace": "3kzxbg5sa2", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestParameters": { "integration.request.header.Content-Type": "'application/x-amz-json-1.1'" }, "requestTemplates": { "application/json": "{\n}" }, "type": "AWS", "uri": "arn:aws:apigateway:us-east-1:kinesis:action/ListStreams", "_embedded": { "integration:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\")\n" }, "statusCode": "200" } } }, "method:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.Content-Type": false }, "statusCode": "200" } } }</code></pre> <p>If the <code>OPTIONS</code> is enabled on the resource, you can follow the example here to get that method. Just replace the <code>GET</code> of the last path segment in the request URL with <code>OPTIONS</code>.</p> </div> <div class="seeAlso"> </div>
-- * id [String] <p>The resource's identifier.</p>
-- * pathPart [String] <p>The last path segment for this resource.</p>
-- * parentId [String] <p>The parent resource's identifier.</p>
-- @return Resource structure as a key-value pair table
function M.Resource(args)
	assert(args, "You must provide an argument table when creating Resource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["path"] = args["path"],
		["resourceMethods"] = args["resourceMethods"],
		["id"] = args["id"],
		["pathPart"] = args["pathPart"],
		["parentId"] = args["parentId"],
	}
	asserts.AssertResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * keyId [String] <p>[Required] The Id of the <a>UsagePlanKey</a> resource to be deleted.</p>
-- * usagePlanId [String] <p>[Required] The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-deleted <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- Required key: usagePlanId
-- Required key: keyId
-- @return DeleteUsagePlanKeyRequest structure as a key-value pair table
function M.DeleteUsagePlanKeyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUsagePlanKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{keyId}"] = args["keyId"],
        ["{usageplanId}"] = args["usagePlanId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["keyId"] = args["keyId"],
		["usagePlanId"] = args["usagePlanId"],
	}
	asserts.AssertDeleteUsagePlanKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a collection of <a>DomainName</a> resources.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Client-Side Certificate</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfDomainName] <p>The current page of elements from this collection.</p>
-- @return DomainNames structure as a key-value pair table
function M.DomainNames(args)
	assert(args, "You must provide an argument table when creating DomainNames")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertDomainNames(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>The string identifier of the associated <a>RestApi</a>.</p>
-- * stageName [String] <p>The name of the stage to flush.</p>
-- Required key: restApiId
-- Required key: stageName
-- @return FlushStageAuthorizersCacheRequest structure as a key-value pair table
function M.FlushStageAuthorizersCacheRequest(args)
	assert(args, "You must provide an argument table when creating FlushStageAuthorizersCacheRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{stage_name}"] = args["stageName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertFlushStageAuthorizersCacheRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * clientCertificateId [String] <p>[Required] The identifier of the <a>ClientCertificate</a> resource to be deleted.</p>
-- Required key: clientCertificateId
-- @return DeleteClientCertificateRequest structure as a key-value pair table
function M.DeleteClientCertificateRequest(args)
	assert(args, "You must provide an argument table when creating DeleteClientCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{clientcertificate_id}"] = args["clientCertificateId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["clientCertificateId"] = args["clientCertificateId"],
	}
	asserts.AssertDeleteClientCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A snapshot of the documentation of an API.</p> <div class="remarks"><p>Publishing API documentation involves creating a documentation version associated with an API stage and exporting the versioned documentation to an external (e.g., OpenAPI) file.</p></div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a>, <a>DocumentationVersions</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [String] <p>The version identifier of the API documentation snapshot.</p>
-- * description [String] <p>The description of the API documentation snapshot.</p>
-- * createdDate [Timestamp] <p>The date when the API documentation snapshot is created.</p>
-- @return DocumentationVersion structure as a key-value pair table
function M.DocumentationVersion(args)
	assert(args, "You must provide an argument table when creating DocumentationVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["version"] = args["version"],
		["description"] = args["description"],
		["createdDate"] = args["createdDate"],
	}
	asserts.AssertDocumentationVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- Required key: restApiId
-- @return GetModelsRequest structure as a key-value pair table
function M.GetModelsRequest(args)
	assert(args, "You must provide an argument table when creating GetModelsRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetModelsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ThrottleSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["rateLimit"] = args["rateLimit"],
		["burstLimit"] = args["burstLimit"],
	}
	asserts.AssertThrottleSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a usage plan than can specify who can assess associated API stages with specified request limits and quotas.</p> <div class="remarks"> <p>In a usage plan, you associate an API by specifying the API's Id and a stage name of the specified API. You add plan customers by adding API keys to the plan. </p> </div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
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
	assert(args, "You must provide an argument table when creating UsagePlan")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["productCode"] = args["productCode"],
		["throttle"] = args["throttle"],
		["description"] = args["description"],
		["quota"] = args["quota"],
		["apiStages"] = args["apiStages"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertUsagePlan(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateVpcLinkRequest = { ["targetArns"] = true, ["name"] = true, ["description"] = true, nil }

function asserts.AssertCreateVpcLinkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVpcLinkRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["targetArns"], "Expected key targetArns to exist in table")
	if struct["targetArns"] then asserts.AssertListOfString(struct["targetArns"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVpcLinkRequest[k], "CreateVpcLinkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVpcLinkRequest
-- <p>Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * targetArns [ListOfString] <p>[Required] The ARNs of network load balancers of the VPC targeted by the VPC link. The network load balancers must be owned by the same AWS account of the API owner.</p>
-- * name [String] <p>[Required] The name used to label and identify the VPC link.</p>
-- * description [String] <p>The description of the VPC link.</p>
-- Required key: name
-- Required key: targetArns
-- @return CreateVpcLinkRequest structure as a key-value pair table
function M.CreateVpcLinkRequest(args)
	assert(args, "You must provide an argument table when creating CreateVpcLinkRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["targetArns"] = args["targetArns"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertCreateVpcLinkRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRestApiRequest = { ["apiKeySource"] = true, ["name"] = true, ["cloneFrom"] = true, ["endpointConfiguration"] = true, ["minimumCompressionSize"] = true, ["policy"] = true, ["version"] = true, ["binaryMediaTypes"] = true, ["description"] = true, nil }

function asserts.AssertCreateRestApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRestApiRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["apiKeySource"] then asserts.AssertApiKeySourceType(struct["apiKeySource"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["cloneFrom"] then asserts.AssertString(struct["cloneFrom"]) end
	if struct["endpointConfiguration"] then asserts.AssertEndpointConfiguration(struct["endpointConfiguration"]) end
	if struct["minimumCompressionSize"] then asserts.AssertNullableInteger(struct["minimumCompressionSize"]) end
	if struct["policy"] then asserts.AssertString(struct["policy"]) end
	if struct["version"] then asserts.AssertString(struct["version"]) end
	if struct["binaryMediaTypes"] then asserts.AssertListOfString(struct["binaryMediaTypes"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRestApiRequest[k], "CreateRestApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRestApiRequest
-- <p>The POST Request to add a new <a>RestApi</a> resource to your collection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiKeySource [ApiKeySourceType] <p>The source of the API key for metering requests according to a usage plan. Valid values are: <ul><li><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a request. </li><li><code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code> from a custom authorizer.</li></ul> </p>
-- * name [String] <p>[Required] The name of the <a>RestApi</a>.</p>
-- * cloneFrom [String] <p>The ID of the <a>RestApi</a> that you want to clone from.</p>
-- * endpointConfiguration [EndpointConfiguration] <p>The endpoint configuration of this <a>RestApi</a> showing the endpoint types of the API. </p>
-- * minimumCompressionSize [NullableInteger] <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
-- * policy [String] A stringified JSON policy document that applies to this RestApi regardless of the caller and <a>Method</a> configuration.
-- * version [String] <p>A version identifier for the API.</p>
-- * binaryMediaTypes [ListOfString] <p>The list of binary media types supported by the <a>RestApi</a>. By default, the <a>RestApi</a> supports only UTF-8-encoded text payloads.</p>
-- * description [String] <p>The description of the <a>RestApi</a>.</p>
-- Required key: name
-- @return CreateRestApiRequest structure as a key-value pair table
function M.CreateRestApiRequest(args)
	assert(args, "You must provide an argument table when creating CreateRestApiRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["apiKeySource"] = args["apiKeySource"],
		["name"] = args["name"],
		["cloneFrom"] = args["cloneFrom"],
		["endpointConfiguration"] = args["endpointConfiguration"],
		["minimumCompressionSize"] = args["minimumCompressionSize"],
		["policy"] = args["policy"],
		["version"] = args["version"],
		["binaryMediaTypes"] = args["binaryMediaTypes"],
		["description"] = args["description"],
	}
	asserts.AssertCreateRestApiRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Stage = { ["clientCertificateId"] = true, ["tracingEnabled"] = true, ["description"] = true, ["stageName"] = true, ["cacheClusterSize"] = true, ["variables"] = true, ["tags"] = true, ["cacheClusterEnabled"] = true, ["documentationVersion"] = true, ["accessLogSettings"] = true, ["cacheClusterStatus"] = true, ["deploymentId"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["canarySettings"] = true, ["methodSettings"] = true, nil }

function asserts.AssertStage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stage to be of type 'table'")
	if struct["clientCertificateId"] then asserts.AssertString(struct["clientCertificateId"]) end
	if struct["tracingEnabled"] then asserts.AssertBoolean(struct["tracingEnabled"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["stageName"] then asserts.AssertString(struct["stageName"]) end
	if struct["cacheClusterSize"] then asserts.AssertCacheClusterSize(struct["cacheClusterSize"]) end
	if struct["variables"] then asserts.AssertMapOfStringToString(struct["variables"]) end
	if struct["tags"] then asserts.AssertMapOfStringToString(struct["tags"]) end
	if struct["cacheClusterEnabled"] then asserts.AssertBoolean(struct["cacheClusterEnabled"]) end
	if struct["documentationVersion"] then asserts.AssertString(struct["documentationVersion"]) end
	if struct["accessLogSettings"] then asserts.AssertAccessLogSettings(struct["accessLogSettings"]) end
	if struct["cacheClusterStatus"] then asserts.AssertCacheClusterStatus(struct["cacheClusterStatus"]) end
	if struct["deploymentId"] then asserts.AssertString(struct["deploymentId"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["canarySettings"] then asserts.AssertCanarySettings(struct["canarySettings"]) end
	if struct["methodSettings"] then asserts.AssertMapOfMethodSettings(struct["methodSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.Stage[k], "Stage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stage
-- <p>Represents a unique identifier for a version of a deployed <a>RestApi</a> that is callable by users.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html">Deploy an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientCertificateId [String] <p>The identifier of a client certificate for an API stage.</p>
-- * tracingEnabled [Boolean] <p>Specifies whether active tracing with X-ray is enabled for the <a>Stage</a>.</p>
-- * description [String] <p>The stage's description.</p>
-- * stageName [String] <p>The name of the stage is the first path segment in the Uniform Resource Identifier (URI) of a call to API Gateway.</p>
-- * cacheClusterSize [CacheClusterSize] <p>The size of the cache cluster for the stage, if enabled.</p>
-- * variables [MapOfStringToString] <p>A map that defines the stage variables for a <a>Stage</a> resource. Variable names can have alphanumeric and underscore characters, and the values must match <code>[A-Za-z0-9-._~:/?#&amp;=,]+</code>.</p>
-- * tags [MapOfStringToString] <p>The collection of tags. Each tag element is associated with a given resource.</p>
-- * cacheClusterEnabled [Boolean] <p>Specifies whether a cache cluster is enabled for the stage.</p>
-- * documentationVersion [String] <p>The version of the associated API documentation.</p>
-- * accessLogSettings [AccessLogSettings] <p>Settings for logging access in this stage.</p>
-- * cacheClusterStatus [CacheClusterStatus] <p>The status of the cache cluster for the stage, if enabled.</p>
-- * deploymentId [String] <p>The identifier of the <a>Deployment</a> that the stage points to.</p>
-- * lastUpdatedDate [Timestamp] <p>The timestamp when the stage last updated.</p>
-- * createdDate [Timestamp] <p>The timestamp when the stage was created.</p>
-- * canarySettings [CanarySettings] <p>Settings for the canary deployment in this stage.</p>
-- * methodSettings [MapOfMethodSettings] <p>A map that defines the method settings for a <a>Stage</a> resource. Keys (designated as <code>/{method_setting_key</code> below) are method paths defined as <code>{resource_path}/{http_method}</code> for an individual method override, or <code>/\*/\*</code> for overriding all methods in the stage. </p>
-- @return Stage structure as a key-value pair table
function M.Stage(args)
	assert(args, "You must provide an argument table when creating Stage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["clientCertificateId"] = args["clientCertificateId"],
		["tracingEnabled"] = args["tracingEnabled"],
		["description"] = args["description"],
		["stageName"] = args["stageName"],
		["cacheClusterSize"] = args["cacheClusterSize"],
		["variables"] = args["variables"],
		["tags"] = args["tags"],
		["cacheClusterEnabled"] = args["cacheClusterEnabled"],
		["documentationVersion"] = args["documentationVersion"],
		["accessLogSettings"] = args["accessLogSettings"],
		["cacheClusterStatus"] = args["cacheClusterStatus"],
		["deploymentId"] = args["deploymentId"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["canarySettings"] = args["canarySettings"],
		["methodSettings"] = args["methodSettings"],
	}
	asserts.AssertStage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The collection of documentation parts of an API.</p> <div class="remarks"/> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfDocumentationPart] <p>The current page of elements from this collection.</p>
-- @return DocumentationParts structure as a key-value pair table
function M.DocumentationParts(args)
	assert(args, "You must provide an argument table when creating DocumentationParts")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertDocumentationParts(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] Specifies the method request's HTTP method type.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return GetMethodRequest structure as a key-value pair table
function M.GetMethodRequest(args)
	assert(args, "You must provide an argument table when creating GetMethodRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertGetMethodRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * items [ListOfSdkType] <p>The current page of elements from this collection.</p>
-- @return SdkTypes structure as a key-value pair table
function M.SdkTypes(args)
	assert(args, "You must provide an argument table when creating SdkTypes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertSdkTypes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The collection of documentation snapshots of an API. </p> <div class="remarks"><p>Use the <a>DocumentationVersions</a> to manage documentation snapshots associated with various API stages.</p></div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a>DocumentationPart</a>, <a>DocumentationVersion</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfDocumentationVersion] <p>The current page of elements from this collection.</p>
-- @return DocumentationVersions structure as a key-value pair table
function M.DocumentationVersions(args)
	assert(args, "You must provide an argument table when creating DocumentationVersions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertDocumentationVersions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestApi = { ["apiKeySource"] = true, ["description"] = true, ["warnings"] = true, ["endpointConfiguration"] = true, ["minimumCompressionSize"] = true, ["policy"] = true, ["version"] = true, ["createdDate"] = true, ["binaryMediaTypes"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertRestApi(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestApi to be of type 'table'")
	if struct["apiKeySource"] then asserts.AssertApiKeySourceType(struct["apiKeySource"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["warnings"] then asserts.AssertListOfString(struct["warnings"]) end
	if struct["endpointConfiguration"] then asserts.AssertEndpointConfiguration(struct["endpointConfiguration"]) end
	if struct["minimumCompressionSize"] then asserts.AssertNullableInteger(struct["minimumCompressionSize"]) end
	if struct["policy"] then asserts.AssertString(struct["policy"]) end
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
-- <p>Represents a REST API.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiKeySource [ApiKeySourceType] <p>The source of the API key for metering requests according to a usage plan. Valid values are: <ul><li><code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a request. </li><li><code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code> from a custom authorizer.</li></ul> </p>
-- * description [String] <p>The API's description.</p>
-- * warnings [ListOfString] <p>The warning messages reported when <code>failonwarnings</code> is turned on during API import.</p>
-- * endpointConfiguration [EndpointConfiguration] <p>The endpoint configuration of this <a>RestApi</a> showing the endpoint types of the API. </p>
-- * minimumCompressionSize [NullableInteger] <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
-- * policy [String] A stringified JSON policy document that applies to this RestApi regardless of the caller and <a>Method</a> configuration.
-- * version [String] <p>A version identifier for the API.</p>
-- * createdDate [Timestamp] <p>The timestamp when the API was created.</p>
-- * binaryMediaTypes [ListOfString] <p>The list of binary media types supported by the <a>RestApi</a>. By default, the <a>RestApi</a> supports only UTF-8-encoded text payloads.</p>
-- * id [String] <p>The API's identifier. This identifier is unique across all of your APIs in API Gateway.</p>
-- * name [String] <p>The API's name.</p>
-- @return RestApi structure as a key-value pair table
function M.RestApi(args)
	assert(args, "You must provide an argument table when creating RestApi")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["apiKeySource"] = args["apiKeySource"],
		["description"] = args["description"],
		["warnings"] = args["warnings"],
		["endpointConfiguration"] = args["endpointConfiguration"],
		["minimumCompressionSize"] = args["minimumCompressionSize"],
		["policy"] = args["policy"],
		["version"] = args["version"],
		["createdDate"] = args["createdDate"],
		["binaryMediaTypes"] = args["binaryMediaTypes"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertRestApi(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the base path that callers of the API must provide as part of the URL after the domain name.</p> <div class="remarks">A custom domain name plus a <code>BasePathMapping</code> specification identifies a deployed <a>RestApi</a> in a given stage of the owner <a>Account</a>.</div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Custom Domain Names</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * basePath [String] <p>The base path name that callers of the API must provide as part of the URL after the domain name.</p>
-- * restApiId [String] <p>The string identifier of the associated <a>RestApi</a>.</p>
-- * stage [String] <p>The name of the associated stage.</p>
-- @return BasePathMapping structure as a key-value pair table
function M.BasePathMapping(args)
	assert(args, "You must provide an argument table when creating BasePathMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["basePath"] = args["basePath"],
		["restApiId"] = args["restApiId"],
		["stage"] = args["stage"],
	}
	asserts.AssertBasePathMapping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGatewayResponseRequest = { ["responseType"] = true, ["restApiId"] = true, nil }

function asserts.AssertGetGatewayResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGatewayResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["responseType"], "Expected key responseType to exist in table")
	if struct["responseType"] then asserts.AssertGatewayResponseType(struct["responseType"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGatewayResponseRequest[k], "GetGatewayResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGatewayResponseRequest
-- <p>Gets a <a>GatewayResponse</a> of a specified response type on the given <a>RestApi</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * responseType [GatewayResponseType] <p>[Required] <p>The response type of the associated <a>GatewayResponse</a>. Valid values are <ul><li>ACCESS_DENIED</li><li>API_CONFIGURATION_ERROR</li><li>AUTHORIZER_FAILURE</li><li> AUTHORIZER_CONFIGURATION_ERROR</li><li>BAD_REQUEST_PARAMETERS</li><li>BAD_REQUEST_BODY</li><li>DEFAULT_4XX</li><li>DEFAULT_5XX</li><li>EXPIRED_TOKEN</li><li>INVALID_SIGNATURE</li><li>INTEGRATION_FAILURE</li><li>INTEGRATION_TIMEOUT</li><li>INVALID_API_KEY</li><li>MISSING_AUTHENTICATION_TOKEN</li><li> QUOTA_EXCEEDED</li><li>REQUEST_TOO_LARGE</li><li>RESOURCE_NOT_FOUND</li><li>THROTTLED</li><li>UNAUTHORIZED</li><li>UNSUPPORTED_MEDIA_TYPE</li></ul> </p></p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: responseType
-- @return GetGatewayResponseRequest structure as a key-value pair table
function M.GetGatewayResponseRequest(args)
	assert(args, "You must provide an argument table when creating GetGatewayResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{response_type}"] = args["responseType"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["responseType"] = args["responseType"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetGatewayResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDocumentationPartsRequest = { ["restApiId"] = true, ["nameQuery"] = true, ["limit"] = true, ["locationStatus"] = true, ["path"] = true, ["position"] = true, ["type"] = true, nil }

function asserts.AssertGetDocumentationPartsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentationPartsRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["nameQuery"] then asserts.AssertString(struct["nameQuery"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	if struct["locationStatus"] then asserts.AssertLocationStatusType(struct["locationStatus"]) end
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * nameQuery [String] <p>The name of API entities of the to-be-retrieved documentation parts.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- * locationStatus [LocationStatusType] <p>The status of the API documentation parts to retrieve. Valid values are <code>DOCUMENTED</code> for retrieving <a>DocumentationPart</a> resources with content and <code>UNDOCUMENTED</code> for <a>DocumentationPart</a> resources without content.</p>
-- * path [String] <p>The path of API entities of the to-be-retrieved documentation parts.</p>
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * type [DocumentationPartType] <p>The type of API entities of the to-be-retrieved documentation parts. </p>
-- Required key: restApiId
-- @return GetDocumentationPartsRequest structure as a key-value pair table
function M.GetDocumentationPartsRequest(args)
	assert(args, "You must provide an argument table when creating GetDocumentationPartsRequest")
    local query_args = { 
        ["name"] = args["nameQuery"],
        ["limit"] = args["limit"],
        ["locationStatus"] = args["locationStatus"],
        ["path"] = args["path"],
        ["position"] = args["position"],
        ["type"] = args["type"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["nameQuery"] = args["nameQuery"],
		["limit"] = args["limit"],
		["locationStatus"] = args["locationStatus"],
		["path"] = args["path"],
		["position"] = args["position"],
		["type"] = args["type"],
	}
	asserts.AssertGetDocumentationPartsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * name [String] <p>[Required] The name of the usage plan.</p>
-- * description [String] <p>The description of the usage plan.</p>
-- Required key: name
-- @return CreateUsagePlanRequest structure as a key-value pair table
function M.CreateUsagePlanRequest(args)
	assert(args, "You must provide an argument table when creating CreateUsagePlanRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["throttle"] = args["throttle"],
		["quota"] = args["quota"],
		["apiStages"] = args["apiStages"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertCreateUsagePlanRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating QuotaSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["limit"] = args["limit"],
		["period"] = args["period"],
		["offset"] = args["offset"],
	}
	asserts.AssertQuotaSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A list of <a>Stage</a> resources that are associated with the <a>ApiKey</a> resource.</p> <div class="seeAlso"><a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/stages.html">Deploying API in Stages</a></div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * item [ListOfStage] <p>The current page of elements from this collection.</p>
-- @return Stages structure as a key-value pair table
function M.Stages(args)
	assert(args, "You must provide an argument table when creating Stages")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["item"] = args["item"],
	}
	asserts.AssertStages(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to get information about a <a>Deployment</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [String] <p>[Required] The identifier of the <a>Deployment</a> resource to get information about.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * embed [ListOfString] <p>A query parameter to retrieve the specified embedded resources of the returned <a>Deployment</a> resource in the response. In a REST API call, this <code>embed</code> parameter value is a list of comma-separated strings, as in <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2</code>. The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the <code>"apisummary"</code> string. For example, <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary</code>.</p>
-- Required key: restApiId
-- Required key: deploymentId
-- @return GetDeploymentRequest structure as a key-value pair table
function M.GetDeploymentRequest(args)
	assert(args, "You must provide an argument table when creating GetDeploymentRequest")
    local query_args = { 
        ["embed"] = args["embed"],
    }
    local uri_args = { 
        ["{deployment_id}"] = args["deploymentId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentId"] = args["deploymentId"],
		["restApiId"] = args["restApiId"],
		["embed"] = args["embed"],
	}
	asserts.AssertGetDeploymentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDomainNameRequest = { ["certificateArn"] = true, ["regionalCertificateName"] = true, ["certificateName"] = true, ["domainName"] = true, ["endpointConfiguration"] = true, ["regionalCertificateArn"] = true, ["certificateChain"] = true, ["certificatePrivateKey"] = true, ["certificateBody"] = true, nil }

function asserts.AssertCreateDomainNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDomainNameRequest to be of type 'table'")
	assert(struct["domainName"], "Expected key domainName to exist in table")
	if struct["certificateArn"] then asserts.AssertString(struct["certificateArn"]) end
	if struct["regionalCertificateName"] then asserts.AssertString(struct["regionalCertificateName"]) end
	if struct["certificateName"] then asserts.AssertString(struct["certificateName"]) end
	if struct["domainName"] then asserts.AssertString(struct["domainName"]) end
	if struct["endpointConfiguration"] then asserts.AssertEndpointConfiguration(struct["endpointConfiguration"]) end
	if struct["regionalCertificateArn"] then asserts.AssertString(struct["regionalCertificateArn"]) end
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
-- * certificateArn [String] <p>The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.</p>
-- * regionalCertificateName [String] <p>The user-friendly name of the certificate that will be used by regional endpoint for this domain name.</p>
-- * certificateName [String] <p>The user-friendly name of the certificate that will be used by edge-optimized endpoint for this domain name.</p>
-- * domainName [String] <p>[Required] The name of the <a>DomainName</a> resource.</p>
-- * endpointConfiguration [EndpointConfiguration] <p>The endpoint configuration of this <a>DomainName</a> showing the endpoint types of the domain name. </p>
-- * regionalCertificateArn [String] <p>The reference to an AWS-managed certificate that will be used by regional endpoint for this domain name. AWS Certificate Manager is the only supported source.</p>
-- * certificateChain [String] <p>[Deprecated] The intermediate certificates and optionally the root certificate, one after the other without any blank lines, used by an edge-optimized endpoint for this domain name. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.</p>
-- * certificatePrivateKey [String] <p>[Deprecated] Your edge-optimized endpoint's domain name certificate's private key.</p>
-- * certificateBody [String] <p>[Deprecated] The body of the server certificate that will be used by edge-optimized endpoint for this domain name provided by your certificate authority.</p>
-- Required key: domainName
-- @return CreateDomainNameRequest structure as a key-value pair table
function M.CreateDomainNameRequest(args)
	assert(args, "You must provide an argument table when creating CreateDomainNameRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["certificateArn"] = args["certificateArn"],
		["regionalCertificateName"] = args["regionalCertificateName"],
		["certificateName"] = args["certificateName"],
		["domainName"] = args["domainName"],
		["endpointConfiguration"] = args["endpointConfiguration"],
		["regionalCertificateArn"] = args["regionalCertificateArn"],
		["certificateChain"] = args["certificateChain"],
		["certificatePrivateKey"] = args["certificatePrivateKey"],
		["certificateBody"] = args["certificateBody"],
	}
	asserts.AssertCreateDomainNameRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * apiKey [String] <p>[Required] The identifier of the <a>ApiKey</a> resource to be deleted.</p>
-- Required key: apiKey
-- @return DeleteApiKeyRequest structure as a key-value pair table
function M.DeleteApiKeyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteApiKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{api_Key}"] = args["apiKey"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiKey"] = args["apiKey"],
	}
	asserts.AssertDeleteApiKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A collection of the imported <a>DocumentationPart</a> identifiers.</p> <div class="remarks">This is used to return the result when documentation parts in an external (e.g., OpenAPI) file are imported into API Gateway</div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html">Documenting an API</a>, <a href="https://docs.aws.amazon.com/apigateway/api-reference/link-relation/documentationpart-import/">documentationpart:import</a>, <a>DocumentationPart</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ids [ListOfString] <p>A list of the returned documentation part identifiers.</p>
-- * warnings [ListOfString] <p>A list of warning messages reported during import of documentation parts.</p>
-- @return DocumentationPartIds structure as a key-value pair table
function M.DocumentationPartIds(args)
	assert(args, "You must provide an argument table when creating DocumentationPartIds")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ids"] = args["ids"],
		["warnings"] = args["warnings"],
	}
	asserts.AssertDocumentationPartIds(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- * customerId [String] <p>The identifier of a customer in AWS Marketplace or an external system, such as a developer portal.</p>
-- @return GetApiKeysRequest structure as a key-value pair table
function M.GetApiKeysRequest(args)
	assert(args, "You must provide an argument table when creating GetApiKeysRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["name"] = args["nameQuery"],
        ["includeValues"] = args["includeValues"],
        ["limit"] = args["limit"],
        ["customerId"] = args["customerId"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["nameQuery"] = args["nameQuery"],
		["includeValues"] = args["includeValues"],
		["limit"] = args["limit"],
		["customerId"] = args["customerId"],
	}
	asserts.AssertGetApiKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] The HTTP verb of the <a>Method</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return DeleteMethodRequest structure as a key-value pair table
function M.DeleteMethodRequest(args)
	assert(args, "You must provide an argument table when creating DeleteMethodRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertDeleteMethodRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * documentationVersion [String] <p>[Required] The version identifier of a to-be-deleted documentation snapshot.</p>
-- Required key: restApiId
-- Required key: documentationVersion
-- @return DeleteDocumentationVersionRequest structure as a key-value pair table
function M.DeleteDocumentationVersionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDocumentationVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{doc_version}"] = args["documentationVersion"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["documentationVersion"] = args["documentationVersion"],
	}
	asserts.AssertDeleteDocumentationVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * usagePlanId [String] <p>[Required] The identifier of the <a>UsagePlan</a> resource to be retrieved.</p>
-- Required key: usagePlanId
-- @return GetUsagePlanRequest structure as a key-value pair table
function M.GetUsagePlanRequest(args)
	assert(args, "You must provide an argument table when creating GetUsagePlanRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{usageplanId}"] = args["usagePlanId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["usagePlanId"] = args["usagePlanId"],
	}
	asserts.AssertGetUsagePlanRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["resourceArn"] = true, ["tagKeys"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["tagKeys"], "Expected key tagKeys to exist in table")
	if struct["resourceArn"] then asserts.AssertString(struct["resourceArn"]) end
	if struct["tagKeys"] then asserts.AssertListOfString(struct["tagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
-- <p>Removes a tag from a given resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [String] <p>[Required] The ARN of a resource that can be tagged. The resource ARN must be URL-encoded. At present, <a>Stage</a> is the only taggable resource.</p>
-- * tagKeys [ListOfString] <p>[Required] The Tag keys to delete.</p>
-- Required key: resourceArn
-- Required key: tagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
        ["tagKeys"] = args["tagKeys"],
    }
    local uri_args = { 
        ["{resource_arn}"] = args["resourceArn"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["tagKeys"] = args["tagKeys"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a collection of usage plans for an AWS account.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html">Create and Use Usage Plans</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfUsagePlan] <p>The current page of elements from this collection.</p>
-- @return UsagePlans structure as a key-value pair table
function M.UsagePlans(args)
	assert(args, "You must provide an argument table when creating UsagePlans")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertUsagePlans(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * usagePlanId [String] <p>[Required] The Id of the to-be-updated usage plan.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: usagePlanId
-- @return UpdateUsagePlanRequest structure as a key-value pair table
function M.UpdateUsagePlanRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUsagePlanRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{usageplanId}"] = args["usagePlanId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["usagePlanId"] = args["usagePlanId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateUsagePlanRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * documentationPartId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: documentationPartId
-- @return GetDocumentationPartRequest structure as a key-value pair table
function M.GetDocumentationPartRequest(args)
	assert(args, "You must provide an argument table when creating GetDocumentationPartRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{part_id}"] = args["documentationPartId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["documentationPartId"] = args["documentationPartId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetDocumentationPartRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to change information about the current <a>Account</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- @return UpdateAccountRequest structure as a key-value pair table
function M.UpdateAccountRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- @return GetRestApiRequest structure as a key-value pair table
function M.GetRestApiRequest(args)
	assert(args, "You must provide an argument table when creating GetRestApiRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetRestApiRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- @return GetSdkTypesRequest structure as a key-value pair table
function M.GetSdkTypesRequest(args)
	assert(args, "You must provide an argument table when creating GetSdkTypesRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetSdkTypesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to get information about the current <a>Account</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetAccountRequest structure as a key-value pair table
function M.GetAccountRequest(args)
	assert(args, "You must provide an argument table when creating GetAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * keyId [String] <p>[Required] The key Id of the to-be-retrieved <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- * usagePlanId [String] <p>[Required] The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-retrieved <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- Required key: usagePlanId
-- Required key: keyId
-- @return GetUsagePlanKeyRequest structure as a key-value pair table
function M.GetUsagePlanKeyRequest(args)
	assert(args, "You must provide an argument table when creating GetUsagePlanKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{keyId}"] = args["keyId"],
        ["{usageplanId}"] = args["usagePlanId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["keyId"] = args["keyId"],
		["usagePlanId"] = args["usagePlanId"],
	}
	asserts.AssertGetUsagePlanKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: requestValidatorId
-- @return DeleteRequestValidatorRequest structure as a key-value pair table
function M.DeleteRequestValidatorRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRequestValidatorRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{requestvalidator_id}"] = args["requestValidatorId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["requestValidatorId"] = args["requestValidatorId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteRequestValidatorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a collection of <a>BasePathMapping</a> resources.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html">Use Custom Domain Names</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfBasePathMapping] <p>The current page of elements from this collection.</p>
-- @return BasePathMappings structure as a key-value pair table
function M.BasePathMappings(args)
	assert(args, "You must provide an argument table when creating BasePathMappings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertBasePathMappings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A set of validation rules for incoming <a>Method</a> requests.</p> <div class="remarks"> <p>In OpenAPI, a <a>RequestValidator</a> of an API is defined by the <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validators.requestValidator.html">x-amazon-apigateway-request-validators.requestValidator</a> object. It the referenced using the <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validator">x-amazon-apigateway-request-validator</a> property.</p> </div> <div class="seeAlso"><a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html">Enable Basic Request Validation in API Gateway</a></div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * validateRequestParameters [Boolean] <p>A Boolean flag to indicate whether to validate request parameters (<code>true</code>) or not (<code>false</code>).</p>
-- * validateRequestBody [Boolean] <p>A Boolean flag to indicate whether to validate a request body according to the configured <a>Model</a> schema.</p>
-- * id [String] <p>The identifier of this <a>RequestValidator</a>.</p>
-- * name [String] <p>The name of this <a>RequestValidator</a></p>
-- @return RequestValidator structure as a key-value pair table
function M.RequestValidator(args)
	assert(args, "You must provide an argument table when creating RequestValidator")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["validateRequestParameters"] = args["validateRequestParameters"],
		["validateRequestBody"] = args["validateRequestBody"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertRequestValidator(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a method response of a given HTTP status code returned to the client. The method response is passed from the back end through the associated integration response that can be transformed using a mapping template. </p> <div class="remarks"> <p/> <h4>Example: A <b>MethodResponse</b> instance of an API</h4> <h5>Request</h5> <p>The example request retrieves a <b>MethodResponse</b> of the 200 status code.</p> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160603T222952Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns <code>200 OK</code> status and a payload as follows:</p> <pre><code>{ "_links": { "curies": { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true }, "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.Content-Type": false }, "statusCode": "200" }</code></pre> <p/> </div> <div class="seeAlso"> <a>Method</a>, <a>IntegrationResponse</a>, <a>Integration</a> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * responseModels [MapOfStringToString] <p>Specifies the <a>Model</a> resources used for the response's content-type. Response models are represented as a key/value map, with a content-type as the key and a <a>Model</a> name as the value.</p>
-- * responseParameters [MapOfStringToBoolean] <p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header and the value specifies whether the associated method response header is required or not. The expression of the key must match the pattern <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. API Gateway passes certain integration response data to the method response headers specified here according to the mapping you prescribe in the API's <a>IntegrationResponse</a>. The integration response data that can be mapped include an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
-- * statusCode [StatusCode] <p>The method response's status code.</p>
-- @return MethodResponse structure as a key-value pair table
function M.MethodResponse(args)
	assert(args, "You must provide an argument table when creating MethodResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["responseModels"] = args["responseModels"],
		["responseParameters"] = args["responseParameters"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertMethodResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestInvokeAuthorizerRequest = { ["body"] = true, ["restApiId"] = true, ["multiValueHeaders"] = true, ["pathWithQueryString"] = true, ["additionalContext"] = true, ["headers"] = true, ["stageVariables"] = true, ["authorizerId"] = true, nil }

function asserts.AssertTestInvokeAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestInvokeAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["authorizerId"], "Expected key authorizerId to exist in table")
	if struct["body"] then asserts.AssertString(struct["body"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["multiValueHeaders"] then asserts.AssertMapOfStringToList(struct["multiValueHeaders"]) end
	if struct["pathWithQueryString"] then asserts.AssertString(struct["pathWithQueryString"]) end
	if struct["additionalContext"] then asserts.AssertMapOfStringToString(struct["additionalContext"]) end
	if struct["headers"] then asserts.AssertMapOfStringToString(struct["headers"]) end
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * multiValueHeaders [MapOfStringToList] <p>[Optional] The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.</p>
-- * pathWithQueryString [String] <p>[Optional] The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
-- * additionalContext [MapOfStringToString] <p>[Optional] A key-value map of additional context variables.</p>
-- * headers [MapOfStringToString] <p>[Required] A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.</p>
-- * stageVariables [MapOfStringToString] <p>A key-value map of stage variables to simulate an invocation on a deployed <a>Stage</a>.</p>
-- * authorizerId [String] <p>[Required] Specifies a test invoke authorizer request's <a>Authorizer</a> ID.</p>
-- Required key: restApiId
-- Required key: authorizerId
-- @return TestInvokeAuthorizerRequest structure as a key-value pair table
function M.TestInvokeAuthorizerRequest(args)
	assert(args, "You must provide an argument table when creating TestInvokeAuthorizerRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{authorizer_id}"] = args["authorizerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["body"] = args["body"],
		["restApiId"] = args["restApiId"],
		["multiValueHeaders"] = args["multiValueHeaders"],
		["pathWithQueryString"] = args["pathWithQueryString"],
		["additionalContext"] = args["additionalContext"],
		["headers"] = args["headers"],
		["stageVariables"] = args["stageVariables"],
		["authorizerId"] = args["authorizerId"],
	}
	asserts.AssertTestInvokeAuthorizerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to flush a stage's cache.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * stageName [String] <p>[Required] The name of the stage to flush its cache.</p>
-- Required key: restApiId
-- Required key: stageName
-- @return FlushStageCacheRequest structure as a key-value pair table
function M.FlushStageCacheRequest(args)
	assert(args, "You must provide an argument table when creating FlushStageCacheRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{stage_name}"] = args["stageName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertFlushStageCacheRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * authorizerId [String] <p>[Required] The identifier of the <a>Authorizer</a> resource.</p>
-- Required key: restApiId
-- Required key: authorizerId
-- @return GetAuthorizerRequest structure as a key-value pair table
function M.GetAuthorizerRequest(args)
	assert(args, "You must provide an argument table when creating GetAuthorizerRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{authorizer_id}"] = args["authorizerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["authorizerId"] = args["authorizerId"],
	}
	asserts.AssertGetAuthorizerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Method = { ["methodResponses"] = true, ["requestParameters"] = true, ["authorizationScopes"] = true, ["requestModels"] = true, ["authorizationType"] = true, ["operationName"] = true, ["apiKeyRequired"] = true, ["httpMethod"] = true, ["methodIntegration"] = true, ["requestValidatorId"] = true, ["authorizerId"] = true, nil }

function asserts.AssertMethod(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Method to be of type 'table'")
	if struct["methodResponses"] then asserts.AssertMapOfMethodResponse(struct["methodResponses"]) end
	if struct["requestParameters"] then asserts.AssertMapOfStringToBoolean(struct["requestParameters"]) end
	if struct["authorizationScopes"] then asserts.AssertListOfString(struct["authorizationScopes"]) end
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
-- <p> Represents a client-facing interface by which the client calls the API to access back-end resources. A <b>Method</b> resource is integrated with an <a>Integration</a> resource. Both consist of a request and one or more responses. The method request takes the client input that is passed to the back end through the integration request. A method response returns the output from the back end to the client through an integration response. A method request is embodied in a <b>Method</b> resource, whereas an integration request is embodied in an <a>Integration</a> resource. On the other hand, a method response is represented by a <a>MethodResponse</a> resource, whereas an integration response is represented by an <a>IntegrationResponse</a> resource. </p> <div class="remarks"> <p/> <h4>Example: Retrive the GET method on a specified resource</h4> <h5>Request</h5> <p>The following example request retrieves the information about the GET method on an API resource (<code>3kzxbg5sa2</code>) of an API (<code>fugvjdxtri</code>). </p> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160603T210259Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": [ { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html", "name": "integration", "templated": true }, { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-{rel}.html", "name": "method", "templated": true }, { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true } ], "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET", "name": "GET", "title": "GET" }, "integration:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "method:integration": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "method:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "method:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" }, "methodresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/{status_code}", "templated": true } }, "apiKeyRequired": true, "authorizationType": "NONE", "httpMethod": "GET", "_embedded": { "method:integration": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integration:responses": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integration:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" }, "integrationresponse:put": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/{status_code}", "templated": true } }, "cacheKeyParameters": [], "cacheNamespace": "3kzxbg5sa2", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestParameters": { "integration.request.header.Content-Type": "'application/x-amz-json-1.1'" }, "requestTemplates": { "application/json": "{\n}" }, "type": "AWS", "uri": "arn:aws:apigateway:us-east-1:kinesis:action/ListStreams", "_embedded": { "integration:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E\")" }, "statusCode": "200" } } }, "method:responses": { "_links": { "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.Content-Type": false }, "statusCode": "200" } } }</code></pre> <p>In the example above, the response template for the <code>200 OK</code> response maps the JSON output from the <code>ListStreams</code> action in the back end to an XML output. The mapping template is URL-encoded as <code>%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E</code> and the output is decoded using the <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#util-templat-reference">$util.urlDecode()</a> helper function.</p> </div> <div class="seeAlso"> <a>MethodResponse</a>, <a>Integration</a>, <a>IntegrationResponse</a>, <a>Resource</a>, <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-method-settings.html">Set up an API's method</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * methodResponses [MapOfMethodResponse] <p>Gets a method response associated with a given HTTP status code. </p> <div class="remarks"> <p>The collection of method responses are encapsulated in a key-value map, where the key is a response's HTTP status code and the value is a <a>MethodResponse</a> resource that specifies the response returned to the caller from the back end through the integration response.</p> <h4>Example: Get a 200 OK response of a GET method</h4> <h5>Request</h5> <p/> <pre><code>GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T215008Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-{rel}.html", "name": "methodresponse", "templated": true }, "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200", "title": "200" }, "methodresponse:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" }, "methodresponse:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" } }, "responseModels": { "application/json": "Empty" }, "responseParameters": { "method.response.header.operator": false, "method.response.header.operand_2": false, "method.response.header.operand_1": false }, "statusCode": "200" }</code></pre> <p/> </div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-method-response.html">AWS CLI</a> </div>
-- * requestParameters [MapOfStringToBoolean] <p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key is a method request parameter name matching the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>). The method request parameter names defined here are available in <a>Integration</a> to be mapped to integration request parameters or templates.</p>
-- * authorizationScopes [ListOfString] <p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
-- * requestModels [MapOfStringToString] <p>A key-value map specifying data schemas, represented by <a>Model</a> resources, (as the mapped value) of the request payloads of given content types (as the mapping key).</p>
-- * authorizationType [String] <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
-- * operationName [String] <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in <a href="https://petstore-demo-endpoint.execute-api.com/petstore/pets">PetStore</a> example.</p>
-- * apiKeyRequired [NullableBoolean] <p>A boolean flag specifying whether a valid <a>ApiKey</a> is required to invoke this method.</p>
-- * httpMethod [String] <p>The method's HTTP verb.</p>
-- * methodIntegration [Integration] <p>Gets the method's integration responsible for passing the client-submitted request to the back end and performing necessary transformations to make the request compliant with the back end.</p> <div class="remarks"> <p/> <h4>Example: </h4> <h5>Request</h5> <p/> <pre><code>GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T213210Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash}</code></pre> <h5>Response</h5> <p>The successful response returns a <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": [ { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-{rel}.html", "name": "integration", "templated": true }, { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true } ], "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integration:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integration:responses": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integration:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" }, "integrationresponse:put": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/{status_code}", "templated": true } }, "cacheKeyParameters": [], "cacheNamespace": "0cjtch", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestTemplates": { "application/json": "{\n \"a\": \"$input.params('operand1')\",\n \"b\": \"$input.params('operand2')\", \n \"op\": \"$input.params('operator')\" \n}" }, "type": "AWS", "uri": "arn:aws:apigateway:us-west-2:lambda:path//2015-03-31/functions/arn:aws:lambda:us-west-2:123456789012:function:Calc/invocations", "_embedded": { "integration:responses": { "_links": { "self": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.operator": "integration.response.body.op", "method.response.header.operand_2": "integration.response.body.b", "method.response.header.operand_1": "integration.response.body.a" }, "responseTemplates": { "application/json": "#set($res = $input.path('$'))\n{\n \"result\": \"$res.a, $res.b, $res.op => $res.c\",\n \"a\" : \"$res.a\",\n \"b\" : \"$res.b\",\n \"op\" : \"$res.op\",\n \"c\" : \"$res.c\"\n}" }, "selectionPattern": "", "statusCode": "200" } } }</code></pre> <p/> </div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-integration.html">AWS CLI</a> </div>
-- * requestValidatorId [String] <p>The identifier of a <a>RequestValidator</a> for request validation.</p>
-- * authorizerId [String] <p>The identifier of an <a>Authorizer</a> to use on this method. The <code>authorizationType</code> must be <code>CUSTOM</code>.</p>
-- @return Method structure as a key-value pair table
function M.Method(args)
	assert(args, "You must provide an argument table when creating Method")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["methodResponses"] = args["methodResponses"],
		["requestParameters"] = args["requestParameters"],
		["authorizationScopes"] = args["authorizationScopes"],
		["requestModels"] = args["requestModels"],
		["authorizationType"] = args["authorizationType"],
		["operationName"] = args["operationName"],
		["apiKeyRequired"] = args["apiKeyRequired"],
		["httpMethod"] = args["httpMethod"],
		["methodIntegration"] = args["methodIntegration"],
		["requestValidatorId"] = args["requestValidatorId"],
		["authorizerId"] = args["authorizerId"],
	}
	asserts.AssertMethod(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tags = { ["tags"] = true, nil }

function asserts.AssertTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tags to be of type 'table'")
	if struct["tags"] then asserts.AssertMapOfStringToString(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tags[k], "Tags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tags
-- <p>The collection of tags. Each tag element is associated with a given resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tags [MapOfStringToString] <p>The collection of tags. Each tag element is associated with a given resource.</p>
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
		["tags"] = args["tags"],
	}
	asserts.AssertTags(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a collection of <a>Model</a> resources.</p> <div class="seeAlso"> <a>Method</a>, <a>MethodResponse</a>, <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html">Models and Mappings</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfModel] <p>The current page of elements from this collection.</p>
-- @return Models structure as a key-value pair table
function M.Models(args)
	assert(args, "You must provide an argument table when creating Models")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertModels(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * authorizerId [String] <p>[Required] The identifier of the <a>Authorizer</a> resource.</p>
-- Required key: restApiId
-- Required key: authorizerId
-- @return DeleteAuthorizerRequest structure as a key-value pair table
function M.DeleteAuthorizerRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAuthorizerRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{authorizer_id}"] = args["authorizerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["authorizerId"] = args["authorizerId"],
	}
	asserts.AssertDeleteAuthorizerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVpcLinkRequest = { ["vpcLinkId"] = true, nil }

function asserts.AssertGetVpcLinkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVpcLinkRequest to be of type 'table'")
	assert(struct["vpcLinkId"], "Expected key vpcLinkId to exist in table")
	if struct["vpcLinkId"] then asserts.AssertString(struct["vpcLinkId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVpcLinkRequest[k], "GetVpcLinkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVpcLinkRequest
-- <p>Gets a specified VPC link under the caller's account in a region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vpcLinkId [String] <p>[Required] The identifier of the <a>VpcLink</a>. It is used in an <a>Integration</a> to reference this <a>VpcLink</a>.</p>
-- Required key: vpcLinkId
-- @return GetVpcLinkRequest structure as a key-value pair table
function M.GetVpcLinkRequest(args)
	assert(args, "You must provide an argument table when creating GetVpcLinkRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{vpclink_id}"] = args["vpcLinkId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vpcLinkId"] = args["vpcLinkId"],
	}
	asserts.AssertGetVpcLinkRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GatewayResponse = { ["responseType"] = true, ["responseParameters"] = true, ["defaultResponse"] = true, ["responseTemplates"] = true, ["statusCode"] = true, nil }

function asserts.AssertGatewayResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GatewayResponse to be of type 'table'")
	if struct["responseType"] then asserts.AssertGatewayResponseType(struct["responseType"]) end
	if struct["responseParameters"] then asserts.AssertMapOfStringToString(struct["responseParameters"]) end
	if struct["defaultResponse"] then asserts.AssertBoolean(struct["defaultResponse"]) end
	if struct["responseTemplates"] then asserts.AssertMapOfStringToString(struct["responseTemplates"]) end
	if struct["statusCode"] then asserts.AssertStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GatewayResponse[k], "GatewayResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GatewayResponse
-- <p>A gateway response of a given response type and status code, with optional response parameters and mapping templates.</p> <div class="remarks"> For more information about valid gateway response types, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html">Gateway Response Types Supported by API Gateway</a> <div class="example"> <h4>Example: Get a Gateway Response of a given response type</h4> <h5>Request</h5> <p>This example shows how to get a gateway response of the <code>MISSING_AUTHENTICATION_TOKEN</code> type.</p> <pre><code>GET /restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN HTTP/1.1 Host: beta-apigateway.us-east-1.amazonaws.com Content-Type: application/json X-Amz-Date: 20170503T202516Z Authorization: AWS4-HMAC-SHA256 Credential={access-key-id}/20170503/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=1b52460e3159c1a26cff29093855d50ea141c1c5b937528fecaf60f51129697a Cache-Control: no-cache Postman-Token: 3b2a1ce9-c848-2e26-2e2f-9c2caefbed45 </code></pre> <p>The response type is specified as a URL path.</p> <h5>Response</h5> <p>The successful operation returns the <code>200 OK</code> status code and a payload similar to the following:</p> <pre><code>{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-gatewayresponse-{rel}.html", "name": "gatewayresponse", "templated": true }, "self": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" }, "gatewayresponse:delete": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" } }, "defaultResponse": false, "responseParameters": { "gatewayresponse.header.x-request-path": "method.request.path.petId", "gatewayresponse.header.Access-Control-Allow-Origin": "&apos;a.b.c&apos;", "gatewayresponse.header.x-request-query": "method.request.querystring.q", "gatewayresponse.header.x-request-header": "method.request.header.Accept" }, "responseTemplates": { "application/json": "{\n \"message\": $context.error.messageString,\n \"type\": \"$context.error.responseType\",\n \"stage\": \"$context.stage\",\n \"resourcePath\": \"$context.resourcePath\",\n \"stageVariables.a\": \"$stageVariables.a\",\n \"statusCode\": \"&apos;404&apos;\"\n}" }, "responseType": "MISSING_AUTHENTICATION_TOKEN", "statusCode": "404" }</code></pre> <p></p> </div> </div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/customize-gateway-responses.html">Customize Gateway Responses</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * responseType [GatewayResponseType] <p>The response type of the associated <a>GatewayResponse</a>. Valid values are <ul><li>ACCESS_DENIED</li><li>API_CONFIGURATION_ERROR</li><li>AUTHORIZER_FAILURE</li><li> AUTHORIZER_CONFIGURATION_ERROR</li><li>BAD_REQUEST_PARAMETERS</li><li>BAD_REQUEST_BODY</li><li>DEFAULT_4XX</li><li>DEFAULT_5XX</li><li>EXPIRED_TOKEN</li><li>INVALID_SIGNATURE</li><li>INTEGRATION_FAILURE</li><li>INTEGRATION_TIMEOUT</li><li>INVALID_API_KEY</li><li>MISSING_AUTHENTICATION_TOKEN</li><li> QUOTA_EXCEEDED</li><li>REQUEST_TOO_LARGE</li><li>RESOURCE_NOT_FOUND</li><li>THROTTLED</li><li>UNAUTHORIZED</li><li>UNSUPPORTED_MEDIA_TYPE</li></ul> </p>
-- * responseParameters [MapOfStringToString] <p>Response parameters (paths, query strings and headers) of the <a>GatewayResponse</a> as a string-to-string map of key-value pairs.</p>
-- * defaultResponse [Boolean] <p>A Boolean flag to indicate whether this <a>GatewayResponse</a> is the default gateway response (<code>true</code>) or not (<code>false</code>). A default gateway response is one generated by API Gateway without any customization by an API developer. </p>
-- * responseTemplates [MapOfStringToString] <p>Response templates of the <a>GatewayResponse</a> as a string-to-string map of key-value pairs.</p>
-- * statusCode [StatusCode] <p>The HTTP status code for this <a>GatewayResponse</a>.</p>
-- @return GatewayResponse structure as a key-value pair table
function M.GatewayResponse(args)
	assert(args, "You must provide an argument table when creating GatewayResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["responseType"] = args["responseType"],
		["responseParameters"] = args["responseParameters"],
		["defaultResponse"] = args["defaultResponse"],
		["responseTemplates"] = args["responseTemplates"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertGatewayResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAuthorizerRequest = { ["authType"] = true, ["restApiId"] = true, ["name"] = true, ["providerARNs"] = true, ["authorizerUri"] = true, ["identityValidationExpression"] = true, ["authorizerResultTtlInSeconds"] = true, ["authorizerCredentials"] = true, ["identitySource"] = true, ["type"] = true, nil }

function asserts.AssertCreateAuthorizerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAuthorizerRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
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
-- * authType [String] <p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * name [String] <p>[Required] The name of the authorizer.</p>
-- * providerARNs [ListOfARNs] <p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>
-- * authorizerUri [String] <p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>
-- * identityValidationExpression [String] <p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>
-- * authorizerResultTtlInSeconds [NullableInteger] <p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
-- * authorizerCredentials [String] <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
-- * identitySource [String] <p>The identity source for which authorization is requested. <ul><li>For a <code>TOKEN</code> or <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request header mapping expression for the custom header holding the authorization token submitted by the client. For example, if the token header name is <code>Auth</code>, the header mapping expression is <code>method.request.header.Auth</code>.</li><li>For the <code>REQUEST</code> authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an <code>Auth</code> header, a <code>Name</code> query string parameter are defined as identity sources, this value is <code>method.request.header.Auth, method.request.querystring.Name</code>. These parameters will be used to derive the authorization caching key and to perform runtime validation of the <code>REQUEST</code> authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.</li></ul></p>
-- * type [AuthorizerType] <p>[Required] The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
-- Required key: restApiId
-- Required key: name
-- Required key: type
-- @return CreateAuthorizerRequest structure as a key-value pair table
function M.CreateAuthorizerRequest(args)
	assert(args, "You must provide an argument table when creating CreateAuthorizerRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
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
	asserts.AssertCreateAuthorizerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * loggingLevel [String] <p>Specifies the logging level for this method, which affects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is <code>/{method_setting_key}/logging/loglevel</code>, and the available levels are <code>OFF</code>, <code>ERROR</code>, and <code>INFO</code>.</p>
-- * dataTraceEnabled [Boolean] <p>Specifies whether data trace logging is enabled for this method, which affects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is <code>/{method_setting_key}/logging/dataTrace</code>, and the value is a Boolean.</p>
-- * metricsEnabled [Boolean] <p>Specifies whether Amazon CloudWatch metrics are enabled for this method. The PATCH path for this setting is <code>/{method_setting_key}/metrics/enabled</code>, and the value is a Boolean.</p>
-- * unauthorizedCacheControlHeaderStrategy [UnauthorizedCacheControlHeaderStrategy] <p>Specifies how to handle unauthorized requests for cache invalidation. The PATCH path for this setting is <code>/{method_setting_key}/caching/unauthorizedCacheControlHeaderStrategy</code>, and the available values are <code>FAIL_WITH_403</code>, <code>SUCCEED_WITH_RESPONSE_HEADER</code>, <code>SUCCEED_WITHOUT_RESPONSE_HEADER</code>.</p>
-- * throttlingRateLimit [Double] <p>Specifies the throttling rate limit. The PATCH path for this setting is <code>/{method_setting_key}/throttling/rateLimit</code>, and the value is a double.</p>
-- * cacheDataEncrypted [Boolean] <p>Specifies whether the cached responses are encrypted. The PATCH path for this setting is <code>/{method_setting_key}/caching/dataEncrypted</code>, and the value is a Boolean.</p>
-- * cachingEnabled [Boolean] <p>Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached. The PATCH path for this setting is <code>/{method_setting_key}/caching/enabled</code>, and the value is a Boolean.</p>
-- * throttlingBurstLimit [Integer] <p>Specifies the throttling burst limit. The PATCH path for this setting is <code>/{method_setting_key}/throttling/burstLimit</code>, and the value is an integer.</p>
-- * requireAuthorizationForCacheControl [Boolean] <p>Specifies whether authorization is required for a cache invalidation request. The PATCH path for this setting is <code>/{method_setting_key}/caching/requireAuthorizationForCacheControl</code>, and the value is a Boolean.</p>
-- @return MethodSetting structure as a key-value pair table
function M.MethodSetting(args)
	assert(args, "You must provide an argument table when creating MethodSetting")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
	asserts.AssertMethodSetting(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- Required key: restApiId
-- @return GetDocumentationVersionsRequest structure as a key-value pair table
function M.GetDocumentationVersionsRequest(args)
	assert(args, "You must provide an argument table when creating GetDocumentationVersionsRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetDocumentationVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
-- * statusCode [StatusCode] <p>[Required] The status code identifier for the <a>MethodResponse</a> resource.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] The HTTP verb of the <a>Method</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return DeleteMethodResponseRequest structure as a key-value pair table
function M.DeleteMethodResponseRequest(args)
	assert(args, "You must provide an argument table when creating DeleteMethodResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{status_code}"] = args["statusCode"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertDeleteMethodResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * startDate [String] <p>[Required] The starting date (e.g., 2016-01-01) of the usage data.</p>
-- * keyId [String] <p>The Id of the API key associated with the resultant usage data.</p>
-- * usagePlanId [String] <p>[Required] The Id of the usage plan associated with the usage data.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * endDate [String] <p>[Required] The ending date (e.g., 2016-12-31) of the usage data.</p>
-- Required key: usagePlanId
-- Required key: startDate
-- Required key: endDate
-- @return GetUsageRequest structure as a key-value pair table
function M.GetUsageRequest(args)
	assert(args, "You must provide an argument table when creating GetUsageRequest")
    local query_args = { 
        ["startDate"] = args["startDate"],
        ["keyId"] = args["keyId"],
        ["limit"] = args["limit"],
        ["position"] = args["position"],
        ["endDate"] = args["endDate"],
    }
    local uri_args = { 
        ["{usageplanId}"] = args["usagePlanId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["startDate"] = args["startDate"],
		["keyId"] = args["keyId"],
		["usagePlanId"] = args["usagePlanId"],
		["limit"] = args["limit"],
		["position"] = args["position"],
		["endDate"] = args["endDate"],
	}
	asserts.AssertGetUsageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: requestValidatorId
-- @return UpdateRequestValidatorRequest structure as a key-value pair table
function M.UpdateRequestValidatorRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRequestValidatorRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{requestvalidator_id}"] = args["requestValidatorId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["requestValidatorId"] = args["requestValidatorId"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateRequestValidatorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] Specifies a delete integration request's resource identifier.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] Specifies a delete integration request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return DeleteIntegrationRequest structure as a key-value pair table
function M.DeleteIntegrationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteIntegrationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertDeleteIntegrationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * apiKey [String] <p>[Required] The identifier of the <a>ApiKey</a> resource to be updated.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: apiKey
-- @return UpdateApiKeyRequest structure as a key-value pair table
function M.UpdateApiKeyRequest(args)
	assert(args, "You must provide an argument table when creating UpdateApiKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{api_Key}"] = args["apiKey"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiKey"] = args["apiKey"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateApiKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestInvokeMethodRequest = { ["body"] = true, ["clientCertificateId"] = true, ["restApiId"] = true, ["httpMethod"] = true, ["resourceId"] = true, ["pathWithQueryString"] = true, ["headers"] = true, ["multiValueHeaders"] = true, ["stageVariables"] = true, nil }

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
	if struct["headers"] then asserts.AssertMapOfStringToString(struct["headers"]) end
	if struct["multiValueHeaders"] then asserts.AssertMapOfStringToList(struct["multiValueHeaders"]) end
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] Specifies a test invoke method request's HTTP method.</p>
-- * resourceId [String] <p>[Required] Specifies a test invoke method request's resource ID.</p>
-- * pathWithQueryString [String] <p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
-- * headers [MapOfStringToString] <p>A key-value map of headers to simulate an incoming invocation request.</p>
-- * multiValueHeaders [MapOfStringToList] <p>The headers as a map from string to list of values to simulate an incoming invocation request.</p>
-- * stageVariables [MapOfStringToString] <p>A key-value map of stage variables to simulate an invocation on a deployed <a>Stage</a>.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return TestInvokeMethodRequest structure as a key-value pair table
function M.TestInvokeMethodRequest(args)
	assert(args, "You must provide an argument table when creating TestInvokeMethodRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
        ["{resource_id}"] = args["resourceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["body"] = args["body"],
		["clientCertificateId"] = args["clientCertificateId"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
		["resourceId"] = args["resourceId"],
		["pathWithQueryString"] = args["pathWithQueryString"],
		["headers"] = args["headers"],
		["multiValueHeaders"] = args["multiValueHeaders"],
		["stageVariables"] = args["stageVariables"],
	}
	asserts.AssertTestInvokeMethodRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * modelName [String] <p>[Required] The name of the model to update.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: modelName
-- @return UpdateModelRequest structure as a key-value pair table
function M.UpdateModelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateModelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{model_name}"] = args["modelName"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["modelName"] = args["modelName"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateModelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to change information about a <a>Deployment</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deploymentId [String] <p>The replacement identifier for the <a>Deployment</a> resource to change information about.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: deploymentId
-- @return UpdateDeploymentRequest structure as a key-value pair table
function M.UpdateDeploymentRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDeploymentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{deployment_id}"] = args["deploymentId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["deploymentId"] = args["deploymentId"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateDeploymentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGatewayResponseRequest = { ["responseType"] = true, ["restApiId"] = true, nil }

function asserts.AssertDeleteGatewayResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGatewayResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["responseType"], "Expected key responseType to exist in table")
	if struct["responseType"] then asserts.AssertGatewayResponseType(struct["responseType"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGatewayResponseRequest[k], "DeleteGatewayResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGatewayResponseRequest
-- <p>Clears any customization of a <a>GatewayResponse</a> of a specified response type on the given <a>RestApi</a> and resets it with the default settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * responseType [GatewayResponseType] <p>[Required] <p>The response type of the associated <a>GatewayResponse</a>. Valid values are <ul><li>ACCESS_DENIED</li><li>API_CONFIGURATION_ERROR</li><li>AUTHORIZER_FAILURE</li><li> AUTHORIZER_CONFIGURATION_ERROR</li><li>BAD_REQUEST_PARAMETERS</li><li>BAD_REQUEST_BODY</li><li>DEFAULT_4XX</li><li>DEFAULT_5XX</li><li>EXPIRED_TOKEN</li><li>INVALID_SIGNATURE</li><li>INTEGRATION_FAILURE</li><li>INTEGRATION_TIMEOUT</li><li>INVALID_API_KEY</li><li>MISSING_AUTHENTICATION_TOKEN</li><li> QUOTA_EXCEEDED</li><li>REQUEST_TOO_LARGE</li><li>RESOURCE_NOT_FOUND</li><li>THROTTLED</li><li>UNAUTHORIZED</li><li>UNSUPPORTED_MEDIA_TYPE</li></ul> </p></p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: responseType
-- @return DeleteGatewayResponseRequest structure as a key-value pair table
function M.DeleteGatewayResponseRequest(args)
	assert(args, "You must provide an argument table when creating DeleteGatewayResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{response_type}"] = args["responseType"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["responseType"] = args["responseType"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteGatewayResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * body [Blob] <p>[Required] The PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 2MB.</p>
-- * failOnWarnings [Boolean] <p>A query parameter to indicate whether to rollback the API update (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * mode [PutMode] <p>The <code>mode</code> query parameter to specify the update mode. Valid values are "merge" and "overwrite". By default, the update mode is "merge".</p>
-- * parameters [MapOfStringToString] <p>Custom header parameters as part of the request. For example, to exclude <a>DocumentationParts</a> from an imported API, set <code>ignore=documentation</code> as a <code>parameters</code> value, as in the AWS CLI command of <code>aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'</code>.</p>
-- Required key: restApiId
-- Required key: body
-- @return PutRestApiRequest structure as a key-value pair table
function M.PutRestApiRequest(args)
	assert(args, "You must provide an argument table when creating PutRestApiRequest")
    local query_args = { 
        ["failonwarnings"] = args["failOnWarnings"],
        ["mode"] = args["mode"],
        ["parameters"] = args["parameters"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["body"] = args["body"],
		["failOnWarnings"] = args["failOnWarnings"],
		["restApiId"] = args["restApiId"],
		["mode"] = args["mode"],
		["parameters"] = args["parameters"],
	}
	asserts.AssertPutRestApiRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGatewayResponseRequest = { ["responseType"] = true, ["restApiId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateGatewayResponseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGatewayResponseRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	assert(struct["responseType"], "Expected key responseType to exist in table")
	if struct["responseType"] then asserts.AssertGatewayResponseType(struct["responseType"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGatewayResponseRequest[k], "UpdateGatewayResponseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGatewayResponseRequest
-- <p>Updates a <a>GatewayResponse</a> of a specified response type on the given <a>RestApi</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * responseType [GatewayResponseType] <p>[Required] <p>The response type of the associated <a>GatewayResponse</a>. Valid values are <ul><li>ACCESS_DENIED</li><li>API_CONFIGURATION_ERROR</li><li>AUTHORIZER_FAILURE</li><li> AUTHORIZER_CONFIGURATION_ERROR</li><li>BAD_REQUEST_PARAMETERS</li><li>BAD_REQUEST_BODY</li><li>DEFAULT_4XX</li><li>DEFAULT_5XX</li><li>EXPIRED_TOKEN</li><li>INVALID_SIGNATURE</li><li>INTEGRATION_FAILURE</li><li>INTEGRATION_TIMEOUT</li><li>INVALID_API_KEY</li><li>MISSING_AUTHENTICATION_TOKEN</li><li> QUOTA_EXCEEDED</li><li>REQUEST_TOO_LARGE</li><li>RESOURCE_NOT_FOUND</li><li>THROTTLED</li><li>UNAUTHORIZED</li><li>UNSUPPORTED_MEDIA_TYPE</li></ul> </p></p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: responseType
-- @return UpdateGatewayResponseRequest structure as a key-value pair table
function M.UpdateGatewayResponseRequest(args)
	assert(args, "You must provide an argument table when creating UpdateGatewayResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{response_type}"] = args["responseType"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["responseType"] = args["responseType"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateGatewayResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * sdkType [String] <p>[Required] The language for the generated SDK. Currently <code>java</code>, <code>javascript</code>, <code>android</code>, <code>objectivec</code> (for iOS), <code>swift</code> (for iOS), and <code>ruby</code> are supported.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * parameters [MapOfStringToString] <p>A string-to-string key-value map of query parameters <code>sdkType</code>-dependent properties of the SDK. For <code>sdkType</code> of <code>objectivec</code> or <code>swift</code>, a parameter named <code>classPrefix</code> is required. For <code>sdkType</code> of <code>android</code>, parameters named <code>groupId</code>, <code>artifactId</code>, <code>artifactVersion</code>, and <code>invokerPackage</code> are required. For <code>sdkType</code> of <code>java</code>, parameters named <code>serviceName</code> and <code>javaPackageName</code> are required. </p>
-- * stageName [String] <p>[Required] The name of the <a>Stage</a> that the SDK will use.</p>
-- Required key: restApiId
-- Required key: stageName
-- Required key: sdkType
-- @return GetSdkRequest structure as a key-value pair table
function M.GetSdkRequest(args)
	assert(args, "You must provide an argument table when creating GetSdkRequest")
    local query_args = { 
        ["parameters"] = args["parameters"],
    }
    local uri_args = { 
        ["{sdk_type}"] = args["sdkType"],
        ["{restapi_id}"] = args["restApiId"],
        ["{stage_name}"] = args["stageName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["sdkType"] = args["sdkType"],
		["restApiId"] = args["restApiId"],
		["parameters"] = args["parameters"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertGetSdkRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The PATCH request to grant a temporary extension to the remaining quota of a usage plan associated with a specified API key.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * keyId [String] <p>[Required] The identifier of the API key associated with the usage plan in which a temporary extension is granted to the remaining quota.</p>
-- * usagePlanId [String] <p>[Required] The Id of the usage plan associated with the usage data.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: usagePlanId
-- Required key: keyId
-- @return UpdateUsageRequest structure as a key-value pair table
function M.UpdateUsageRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUsageRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{keyId}"] = args["keyId"],
        ["{usageplanId}"] = args["usagePlanId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["keyId"] = args["keyId"],
		["usagePlanId"] = args["usagePlanId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateUsageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>The string identifier of the associated <a>RestApi</a>.</p>
-- * stageName [String] <p>The stage name associated with the stage key.</p>
-- @return StageKey structure as a key-value pair table
function M.StageKey(args)
	assert(args, "You must provide an argument table when creating StageKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
	}
	asserts.AssertStageKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * contentType [String] <p>[Required] The content-type for the model.</p>
-- * schema [String] <p>The schema for the model. For <code>application/json</code> models, this should be <a href="https://tools.ietf.org/html/draft-zyp-json-schema-04" target="_blank">JSON schema draft 4</a> model.</p>
-- * restApiId [String] <p>[Required] The <a>RestApi</a> identifier under which the <a>Model</a> will be created.</p>
-- * name [String] <p>[Required] The name of the model. Must be alphanumeric.</p>
-- * description [String] <p>The description of the model.</p>
-- Required key: restApiId
-- Required key: name
-- Required key: contentType
-- @return CreateModelRequest structure as a key-value pair table
function M.CreateModelRequest(args)
	assert(args, "You must provide an argument table when creating CreateModelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["contentType"] = args["contentType"],
		["schema"] = args["schema"],
		["restApiId"] = args["restApiId"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertCreateModelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A collection of <a>RequestValidator</a> resources of a given <a>RestApi</a>.</p> <div class="remarks"> <p>In OpenAPI, the <a>RequestValidators</a> of an API is defined by the <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validators.html">x-amazon-apigateway-request-validators</a> extension.</p> </div> <div class="seeAlso"><a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html">Enable Basic Request Validation in API Gateway</a></div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfRequestValidator] <p>The current page of elements from this collection.</p>
-- @return RequestValidators structure as a key-value pair table
function M.RequestValidators(args)
	assert(args, "You must provide an argument table when creating RequestValidators")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertRequestValidators(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * resourceId [String] <p>[Required] The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- * httpMethod [String] <p>[Required] The HTTP verb of the <a>Method</a> resource.</p>
-- * responseParameters [MapOfStringToBoolean] <p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
-- * statusCode [StatusCode] <p>[Required] The method response's status code.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return PutMethodResponseRequest structure as a key-value pair table
function M.PutMethodResponseRequest(args)
	assert(args, "You must provide an argument table when creating PutMethodResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{resource_id}"] = args["resourceId"],
        ["{http_method}"] = args["httpMethod"],
        ["{status_code}"] = args["statusCode"],
    }
    local header_args = { 
    }
	local all_args = { 
		["responseModels"] = args["responseModels"],
		["restApiId"] = args["restApiId"],
		["resourceId"] = args["resourceId"],
		["httpMethod"] = args["httpMethod"],
		["responseParameters"] = args["responseParameters"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertPutMethodResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to get information about a <a>Deployments</a> collection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- Required key: restApiId
-- @return GetDeploymentsRequest structure as a key-value pair table
function M.GetDeploymentsRequest(args)
	assert(args, "You must provide an argument table when creating GetDeploymentsRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetDeploymentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutIntegrationRequest = { ["passthroughBehavior"] = true, ["restApiId"] = true, ["cacheKeyParameters"] = true, ["requestParameters"] = true, ["integrationHttpMethod"] = true, ["resourceId"] = true, ["connectionId"] = true, ["uri"] = true, ["connectionType"] = true, ["httpMethod"] = true, ["contentHandling"] = true, ["requestTemplates"] = true, ["cacheNamespace"] = true, ["credentials"] = true, ["type"] = true, ["timeoutInMillis"] = true, nil }

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
	if struct["connectionId"] then asserts.AssertString(struct["connectionId"]) end
	if struct["uri"] then asserts.AssertString(struct["uri"]) end
	if struct["connectionType"] then asserts.AssertConnectionType(struct["connectionType"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	if struct["contentHandling"] then asserts.AssertContentHandlingStrategy(struct["contentHandling"]) end
	if struct["requestTemplates"] then asserts.AssertMapOfStringToString(struct["requestTemplates"]) end
	if struct["cacheNamespace"] then asserts.AssertString(struct["cacheNamespace"]) end
	if struct["credentials"] then asserts.AssertString(struct["credentials"]) end
	if struct["type"] then asserts.AssertIntegrationType(struct["type"]) end
	if struct["timeoutInMillis"] then asserts.AssertNullableInteger(struct["timeoutInMillis"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutIntegrationRequest[k], "PutIntegrationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIntegrationRequest
-- <p>Sets up a method's integration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * passthroughBehavior [String] <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the <code>requestTemplates</code> property on the Integration resource. There are three valid values: <code>WHEN_NO_MATCH</code>, <code>WHEN_NO_TEMPLATES</code>, and <code>NEVER</code>. </p> <ul> <li><p><code>WHEN_NO_MATCH</code> passes the request body for unmapped content types through to the integration back end without transformation.</p></li> <li><p><code>NEVER</code> rejects unmapped content types with an HTTP 415 'Unsupported Media Type' response.</p></li> <li><p><code>WHEN_NO_TEMPLATES</code> allows pass-through when the integration has NO content types mapped to templates. However if there is at least one content type defined, unmapped content types will be rejected with the same 415 response.</p></li> </ul>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * cacheKeyParameters [ListOfString] <p>Specifies a put integration input's cache key parameters.</p>
-- * requestParameters [MapOfStringToString] <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
-- * integrationHttpMethod [String] <p>Specifies a put integration HTTP method. When the integration type is HTTP or AWS, this field is required.</p>
-- * resourceId [String] <p>[Required] Specifies a put integration request's resource ID.</p>
-- * connectionId [String] <p>The (<a href="https://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id"><code>id</code></a>) of the <a>VpcLink</a> used for the integration when <code>connectionType=VPC_LINK</code> and undefined, otherwise.</p>
-- * uri [String] <p>Specifies Uniform Resource Identifier (URI) of the integration endpoint.</p> <ul> <li><p> For <code>HTTP</code> or <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the <a target="_blank" href="https://en.wikipedia.org/wiki/Uniform_Resource_Identifier">RFC-3986 specification</a>, for either standard integration, where <code>connectionType</code> is not <code>VPC_LINK</code>, or private integration, where <code>connectionType</code> is <code>VPC_LINK</code>. For a private HTTP integration, the URI is not used for routing. </p> </li> <li><p> For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}</code>. Here, <code>{Region}</code> is the API Gateway region (e.g., <code>us-east-1</code>); <code>{service}</code> is the name of the integrated AWS service (e.g., <code>s3</code>); and <code>{subdomain}</code> is a designated subdomain supported by certain AWS service for fast host-name lookup. <code>action</code> can be used for an AWS service action-based API, using an <code>Action={name}&amp;{p1}={v1}&amp;p2={v2}...</code> query string. The ensuing <code>{service_api}</code> refers to a supported action <code>{name}</code> plus any required input parameters. Alternatively, <code>path</code> can be used for an AWS service path-based API. The ensuing <code>service_api</code> refers to the path to an AWS service resource, including the region of the integrated AWS service, if applicable. For example, for integration with the S3 API of <code><a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectGET.html">GetObject</a></code>, the <code>uri</code> can be either <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&amp;Bucket={bucket}&amp;Key={key}</code> or <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code></p> </li></ul>
-- * connectionType [ConnectionType] <p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>
-- * httpMethod [String] <p>[Required] Specifies a put integration request's HTTP method.</p>
-- * contentHandling [ContentHandlingStrategy] <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a request payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a request payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehaviors</code> is configured to support payload pass-through.</p>
-- * requestTemplates [MapOfStringToString] <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
-- * cacheNamespace [String] <p>Specifies a put integration input's cache namespace.</p>
-- * credentials [String] <p>Specifies whether credentials are required for a put integration.</p>
-- * type [IntegrationType] <p>[Required] Specifies a put integration input's type.</p>
-- * timeoutInMillis [NullableInteger] <p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: type
-- @return PutIntegrationRequest structure as a key-value pair table
function M.PutIntegrationRequest(args)
	assert(args, "You must provide an argument table when creating PutIntegrationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{resource_id}"] = args["resourceId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["passthroughBehavior"] = args["passthroughBehavior"],
		["restApiId"] = args["restApiId"],
		["cacheKeyParameters"] = args["cacheKeyParameters"],
		["requestParameters"] = args["requestParameters"],
		["integrationHttpMethod"] = args["integrationHttpMethod"],
		["resourceId"] = args["resourceId"],
		["connectionId"] = args["connectionId"],
		["uri"] = args["uri"],
		["connectionType"] = args["connectionType"],
		["httpMethod"] = args["httpMethod"],
		["contentHandling"] = args["contentHandling"],
		["requestTemplates"] = args["requestTemplates"],
		["cacheNamespace"] = args["cacheNamespace"],
		["credentials"] = args["credentials"],
		["type"] = args["type"],
		["timeoutInMillis"] = args["timeoutInMillis"],
	}
	asserts.AssertPutIntegrationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * authorizerId [String] <p>[Required] The identifier of the <a>Authorizer</a> resource.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: authorizerId
-- @return UpdateAuthorizerRequest structure as a key-value pair table
function M.UpdateAuthorizerRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAuthorizerRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{authorizer_id}"] = args["authorizerId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["authorizerId"] = args["authorizerId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateAuthorizerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * documentationVersion [String] <p>[Required] The version identifier of the to-be-retrieved documentation snapshot.</p>
-- Required key: restApiId
-- Required key: documentationVersion
-- @return GetDocumentationVersionRequest structure as a key-value pair table
function M.GetDocumentationVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetDocumentationVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{doc_version}"] = args["documentationVersion"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["documentationVersion"] = args["documentationVersion"],
	}
	asserts.AssertGetDocumentationVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * stageName [String] <p>The stage name to be associated with the new documentation snapshot.</p>
-- * documentationVersion [String] <p>[Required] The version identifier of the new snapshot.</p>
-- * description [String] <p>A description about the new documentation snapshot.</p>
-- Required key: restApiId
-- Required key: documentationVersion
-- @return CreateDocumentationVersionRequest structure as a key-value pair table
function M.CreateDocumentationVersionRequest(args)
	assert(args, "You must provide an argument table when creating CreateDocumentationVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["stageName"] = args["stageName"],
		["documentationVersion"] = args["documentationVersion"],
		["description"] = args["description"],
	}
	asserts.AssertCreateDocumentationVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- @return UpdateRestApiRequest structure as a key-value pair table
function M.UpdateRestApiRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRestApiRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateRestApiRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccessLogSettings = { ["destinationArn"] = true, ["format"] = true, nil }

function asserts.AssertAccessLogSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessLogSettings to be of type 'table'")
	if struct["destinationArn"] then asserts.AssertString(struct["destinationArn"]) end
	if struct["format"] then asserts.AssertString(struct["format"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessLogSettings[k], "AccessLogSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessLogSettings
-- <p>Access log settings, including the access log format and access log destination ARN.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * destinationArn [String] <p>The ARN of the CloudWatch Logs log group to receive access logs.</p>
-- * format [String] <p>A single line format of the access logs of data, as specified by selected <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#context-variable-reference">$context variables</a>. The format must include at least <code>$context.requestId</code>.</p>
-- @return AccessLogSettings structure as a key-value pair table
function M.AccessLogSettings(args)
	assert(args, "You must provide an argument table when creating AccessLogSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["destinationArn"] = args["destinationArn"],
		["format"] = args["format"],
	}
	asserts.AssertAccessLogSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] The identifier of the <a>Resource</a> resource.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: resourceId
-- @return UpdateResourceRequest structure as a key-value pair table
function M.UpdateResourceRequest(args)
	assert(args, "You must provide an argument table when creating UpdateResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * resourceId [String] <p>[Required] Specifies a put integration response request's resource identifier.</p>
-- * responseTemplates [MapOfStringToString] <p>Specifies a put integration response's templates.</p>
-- * httpMethod [String] <p>[Required] Specifies a put integration response request's HTTP method.</p>
-- * selectionPattern [String] <p>Specifies the selection pattern of a put integration response.</p>
-- * statusCode [StatusCode] <p>[Required] Specifies the status code that is used to map the integration response to an existing <a>MethodResponse</a>.</p>
-- * responseParameters [MapOfStringToString] <p>A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> must be a valid and unique response header name and <code>JSON-expression</code> a valid JSON expression without the <code>$</code> prefix.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return PutIntegrationResponseRequest structure as a key-value pair table
function M.PutIntegrationResponseRequest(args)
	assert(args, "You must provide an argument table when creating PutIntegrationResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{resource_id}"] = args["resourceId"],
        ["{http_method}"] = args["httpMethod"],
        ["{status_code}"] = args["statusCode"],
    }
    local header_args = { 
    }
	local all_args = { 
		["contentHandling"] = args["contentHandling"],
		["restApiId"] = args["restApiId"],
		["resourceId"] = args["resourceId"],
		["responseTemplates"] = args["responseTemplates"],
		["httpMethod"] = args["httpMethod"],
		["selectionPattern"] = args["selectionPattern"],
		["statusCode"] = args["statusCode"],
		["responseParameters"] = args["responseParameters"],
	}
	asserts.AssertPutIntegrationResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- Required key: restApiId
-- @return GetResourcesRequest structure as a key-value pair table
function M.GetResourcesRequest(args)
	assert(args, "You must provide an argument table when creating GetResourcesRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["embed"] = args["embed"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["embed"] = args["embed"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetResourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- * domainName [String] <p>[Required] The domain name of a <a>BasePathMapping</a> resource.</p>
-- Required key: domainName
-- @return GetBasePathMappingsRequest structure as a key-value pair table
function M.GetBasePathMappingsRequest(args)
	assert(args, "You must provide an argument table when creating GetBasePathMappingsRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{domain_name}"] = args["domainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertGetBasePathMappingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Integration = { ["integrationResponses"] = true, ["passthroughBehavior"] = true, ["timeoutInMillis"] = true, ["requestParameters"] = true, ["connectionId"] = true, ["uri"] = true, ["connectionType"] = true, ["httpMethod"] = true, ["contentHandling"] = true, ["requestTemplates"] = true, ["cacheNamespace"] = true, ["credentials"] = true, ["type"] = true, ["cacheKeyParameters"] = true, nil }

function asserts.AssertIntegration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Integration to be of type 'table'")
	if struct["integrationResponses"] then asserts.AssertMapOfIntegrationResponse(struct["integrationResponses"]) end
	if struct["passthroughBehavior"] then asserts.AssertString(struct["passthroughBehavior"]) end
	if struct["timeoutInMillis"] then asserts.AssertInteger(struct["timeoutInMillis"]) end
	if struct["requestParameters"] then asserts.AssertMapOfStringToString(struct["requestParameters"]) end
	if struct["connectionId"] then asserts.AssertString(struct["connectionId"]) end
	if struct["uri"] then asserts.AssertString(struct["uri"]) end
	if struct["connectionType"] then asserts.AssertConnectionType(struct["connectionType"]) end
	if struct["httpMethod"] then asserts.AssertString(struct["httpMethod"]) end
	if struct["contentHandling"] then asserts.AssertContentHandlingStrategy(struct["contentHandling"]) end
	if struct["requestTemplates"] then asserts.AssertMapOfStringToString(struct["requestTemplates"]) end
	if struct["cacheNamespace"] then asserts.AssertString(struct["cacheNamespace"]) end
	if struct["credentials"] then asserts.AssertString(struct["credentials"]) end
	if struct["type"] then asserts.AssertIntegrationType(struct["type"]) end
	if struct["cacheKeyParameters"] then asserts.AssertListOfString(struct["cacheKeyParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.Integration[k], "Integration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Integration
-- <p>Represents an HTTP, HTTP_PROXY, AWS, AWS_PROXY, or Mock integration.</p> <div class="remarks">In the API Gateway console, the built-in Lambda integration is an AWS integration.</div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * integrationResponses [MapOfIntegrationResponse] <p>Specifies the integration's responses.</p> <div class="remarks"> <p/> <h4>Example: Get integration responses of a method</h4> <h5>Request</h5> <p/> <pre><code>GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160607T191449Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160607/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash} </code></pre> <h5>Response</h5> <p>The successful response returns <code>200 OK</code> status and a payload as follows:</p> <pre><code>{ "_links": { "curies": { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\")\n" }, "statusCode": "200" }</code></pre> <p/> </div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- * passthroughBehavior [String] <div> <p> Specifies how the method request body of an unmapped content type will be passed through the integration request to the back end without transformation. A content type is unmapped if no mapping template is defined in the integration or the content type does not match any of the mapped content types, as specified in <code>requestTemplates</code>. The valid value is one of the following: </p> <ul> <li> <code>WHEN_NO_MATCH</code>: passes the method request body through the integration request to the back end without transformation when the method request content type does not match any content type associated with the mapping templates defined in the integration request. </li> <li> <code>WHEN_NO_TEMPLATES</code>: passes the method request body through the integration request to the back end without transformation when no mapping template is defined in the integration request. If a template is defined when this option is selected, the method request of an unmapped content-type will be rejected with an HTTP <code>415 Unsupported Media Type</code> response. </li> <li> <code>NEVER</code>: rejects the method request with an HTTP <code>415 Unsupported Media Type</code> response when either the method request content type does not match any content type associated with the mapping templates defined in the integration request or no mapping template is defined in the integration request. </li> </ul> </div>
-- * timeoutInMillis [Integer] <p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.</p>
-- * requestParameters [MapOfStringToString] <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
-- * connectionId [String] <p>The (<a href="https://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id"><code>id</code></a>) of the <a>VpcLink</a> used for the integration when <code>connectionType=VPC_LINK</code> and undefined, otherwise.</p>
-- * uri [String] <p>Specifies Uniform Resource Identifier (URI) of the integration endpoint.</p> <ul> <li><p> For <code>HTTP</code> or <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the <a target="_blank" href="https://en.wikipedia.org/wiki/Uniform_Resource_Identifier">RFC-3986 specification</a>, for either standard integration, where <code>connectionType</code> is not <code>VPC_LINK</code>, or private integration, where <code>connectionType</code> is <code>VPC_LINK</code>. For a private HTTP integration, the URI is not used for routing. </p> </li> <li><p> For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of the form <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}</code>. Here, <code>{Region}</code> is the API Gateway region (e.g., <code>us-east-1</code>); <code>{service}</code> is the name of the integrated AWS service (e.g., <code>s3</code>); and <code>{subdomain}</code> is a designated subdomain supported by certain AWS service for fast host-name lookup. <code>action</code> can be used for an AWS service action-based API, using an <code>Action={name}&amp;{p1}={v1}&amp;p2={v2}...</code> query string. The ensuing <code>{service_api}</code> refers to a supported action <code>{name}</code> plus any required input parameters. Alternatively, <code>path</code> can be used for an AWS service path-based API. The ensuing <code>service_api</code> refers to the path to an AWS service resource, including the region of the integrated AWS service, if applicable. For example, for integration with the S3 API of <code><a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectGET.html">GetObject</a></code>, the <code>uri</code> can be either <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&amp;Bucket={bucket}&amp;Key={key}</code> or <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code></p> </li></ul>
-- * connectionType [ConnectionType] <p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>
-- * httpMethod [String] <p>Specifies the integration's HTTP method type.</p>
-- * contentHandling [ContentHandlingStrategy] <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a request payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a request payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehaviors</code> is configured to support payload pass-through.</p>
-- * requestTemplates [MapOfStringToString] <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
-- * cacheNamespace [String] <p>Specifies the integration's cache namespace.</p>
-- * credentials [String] <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string <code>arn:aws:iam::\*:user/\*</code>. To use resource-based permissions on supported AWS services, specify null.</p>
-- * type [IntegrationType] <p>Specifies an API method integration type. The valid value is one of the following:</p> <ul> <li><code>AWS</code>: for integrating the API method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration.</li> <li><code>AWS_PROXY</code>: for integrating the API method request with the Lambda function-invoking action with the client request passed through as-is. This integration is also referred to as the Lambda proxy integration.</li> <li><code>HTTP</code>: for integrating the API method request with an HTTP endpoint, including a private HTTP endpoint within a VPC. This integration is also referred to as the HTTP custom integration.</li> <li><code>HTTP_PROXY</code>: for integrating the API method request with an HTTP endpoint, including a private HTTP endpoint within a VPC, with the client request passed through as-is. This is also referred to as the HTTP proxy integration.</li> <li><code>MOCK</code>: for integrating the API method request with API Gateway as a "loop-back" endpoint without invoking any backend.</li> </ul> <p>For the HTTP and HTTP proxy integrations, each integration can specify a protocol (<code>http/https</code>), port and path. Standard 80 and 443 ports are supported as well as custom ports above 1024. An HTTP or HTTP proxy integration with a <code>connectionType</code> of <code>VPC_LINK</code> is referred to as a private integration and uses a <a>VpcLink</a> to connect API Gateway to a network load balancer of a VPC.</p>
-- * cacheKeyParameters [ListOfString] <p>Specifies the integration's cache key parameters.</p>
-- @return Integration structure as a key-value pair table
function M.Integration(args)
	assert(args, "You must provide an argument table when creating Integration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["integrationResponses"] = args["integrationResponses"],
		["passthroughBehavior"] = args["passthroughBehavior"],
		["timeoutInMillis"] = args["timeoutInMillis"],
		["requestParameters"] = args["requestParameters"],
		["connectionId"] = args["connectionId"],
		["uri"] = args["uri"],
		["connectionType"] = args["connectionType"],
		["httpMethod"] = args["httpMethod"],
		["contentHandling"] = args["contentHandling"],
		["requestTemplates"] = args["requestTemplates"],
		["cacheNamespace"] = args["cacheNamespace"],
		["credentials"] = args["credentials"],
		["type"] = args["type"],
		["cacheKeyParameters"] = args["cacheKeyParameters"],
	}
	asserts.AssertIntegration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains references to your APIs and links that guide you in how to interact with your collection. A collection offers a paginated view of your APIs.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Create an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfRestApi] <p>The current page of elements from this collection.</p>
-- @return RestApis structure as a key-value pair table
function M.RestApis(args)
	assert(args, "You must provide an argument table when creating RestApis")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertRestApis(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * location [DocumentationPartLocation] <p>[Required] The location of the targeted API entity of the to-be-created documentation part.</p>
-- * properties [String] <p>[Required] The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only OpenAPI-compliant key-value pairs can be exported and, hence, published.</p>
-- Required key: restApiId
-- Required key: location
-- Required key: properties
-- @return CreateDocumentationPartRequest structure as a key-value pair table
function M.CreateDocumentationPartRequest(args)
	assert(args, "You must provide an argument table when creating CreateDocumentationPartRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["location"] = args["location"],
		["properties"] = args["properties"],
	}
	asserts.AssertCreateDocumentationPartRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CanarySettings = { ["percentTraffic"] = true, ["deploymentId"] = true, ["useStageCache"] = true, ["stageVariableOverrides"] = true, nil }

function asserts.AssertCanarySettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CanarySettings to be of type 'table'")
	if struct["percentTraffic"] then asserts.AssertDouble(struct["percentTraffic"]) end
	if struct["deploymentId"] then asserts.AssertString(struct["deploymentId"]) end
	if struct["useStageCache"] then asserts.AssertBoolean(struct["useStageCache"]) end
	if struct["stageVariableOverrides"] then asserts.AssertMapOfStringToString(struct["stageVariableOverrides"]) end
	for k,_ in pairs(struct) do
		assert(keys.CanarySettings[k], "CanarySettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CanarySettings
-- <p>Configuration settings of a canary deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * percentTraffic [Double] <p>The percent (0-100) of traffic diverted to a canary deployment.</p>
-- * deploymentId [String] <p>The ID of the canary deployment.</p>
-- * useStageCache [Boolean] <p>A Boolean flag to indicate whether the canary deployment uses the stage cache or not.</p>
-- * stageVariableOverrides [MapOfStringToString] <p>Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.</p>
-- @return CanarySettings structure as a key-value pair table
function M.CanarySettings(args)
	assert(args, "You must provide an argument table when creating CanarySettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["percentTraffic"] = args["percentTraffic"],
		["deploymentId"] = args["deploymentId"],
		["useStageCache"] = args["useStageCache"],
		["stageVariableOverrides"] = args["stageVariableOverrides"],
	}
	asserts.AssertCanarySettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Requests API Gateway to create a new <a>BasePathMapping</a> resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * basePath [String] <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Leave this blank if you do not want callers to specify a base path name after the domain name.</p>
-- * stage [String] <p>The name of the API's stage that you want to use for this mapping. Leave this blank if you do not want callers to explicitly specify the stage name after any base path name.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * domainName [String] <p>[Required] The domain name of the <a>BasePathMapping</a> resource to create.</p>
-- Required key: domainName
-- Required key: restApiId
-- @return CreateBasePathMappingRequest structure as a key-value pair table
function M.CreateBasePathMappingRequest(args)
	assert(args, "You must provide an argument table when creating CreateBasePathMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{domain_name}"] = args["domainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["basePath"] = args["basePath"],
		["stage"] = args["stage"],
		["restApiId"] = args["restApiId"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertCreateBasePathMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- @return GetUsagePlansRequest structure as a key-value pair table
function M.GetUsagePlansRequest(args)
	assert(args, "You must provide an argument table when creating GetUsagePlansRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["keyId"] = args["keyId"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["keyId"] = args["keyId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetUsagePlansRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * id [String] <p>[Required] The identifier of the queried <a>SdkType</a> instance.</p>
-- Required key: id
-- @return GetSdkTypeRequest structure as a key-value pair table
function M.GetSdkTypeRequest(args)
	assert(args, "You must provide an argument table when creating GetSdkTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{sdktype_id}"] = args["id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["id"] = args["id"],
	}
	asserts.AssertGetSdkTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating SdkConfigurationProperty")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["friendlyName"] = args["friendlyName"],
		["defaultValue"] = args["defaultValue"],
		["required"] = args["required"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertSdkConfigurationProperty(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A resource that can be distributed to callers for executing <a>Method</a> resources that require an API key. API keys can be mapped to any <a>Stage</a> on any <a>RestApi</a>, which indicates that the callers with the API key can make requests to that stage.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html">Use API Keys</a> </div>
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
	assert(args, "You must provide an argument table when creating ApiKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
	asserts.AssertApiKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] Specifies an update integration response request's resource identifier.</p>
-- * statusCode [StatusCode] <p>[Required] Specifies an update integration response request's status code.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * httpMethod [String] <p>[Required] Specifies an update integration response request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return UpdateIntegrationResponseRequest structure as a key-value pair table
function M.UpdateIntegrationResponseRequest(args)
	assert(args, "You must provide an argument table when creating UpdateIntegrationResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{status_code}"] = args["statusCode"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertUpdateIntegrationResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTagsRequest = { ["position"] = true, ["resourceArn"] = true, ["limit"] = true, nil }

function asserts.AssertGetTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagsRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["resourceArn"] then asserts.AssertString(struct["resourceArn"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTagsRequest[k], "GetTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagsRequest
-- <p>Gets the <a>Tags</a> collection for a given resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>(Not currently supported) The current pagination position in the paged result set.</p>
-- * resourceArn [String] <p>[Required] The ARN of a resource that can be tagged. The resource ARN must be URL-encoded. At present, <a>Stage</a> is the only taggable resource.</p>
-- * limit [NullableInteger] <p>(Not currently supported) The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- Required key: resourceArn
-- @return GetTagsRequest structure as a key-value pair table
function M.GetTagsRequest(args)
	assert(args, "You must provide an argument table when creating GetTagsRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{resource_arn}"] = args["resourceArn"],
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["resourceArn"] = args["resourceArn"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteVpcLinkRequest = { ["vpcLinkId"] = true, nil }

function asserts.AssertDeleteVpcLinkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVpcLinkRequest to be of type 'table'")
	assert(struct["vpcLinkId"], "Expected key vpcLinkId to exist in table")
	if struct["vpcLinkId"] then asserts.AssertString(struct["vpcLinkId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVpcLinkRequest[k], "DeleteVpcLinkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVpcLinkRequest
-- <p>Deletes an existing <a>VpcLink</a> of a specified identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vpcLinkId [String] <p>[Required] The identifier of the <a>VpcLink</a>. It is used in an <a>Integration</a> to reference this <a>VpcLink</a>.</p>
-- Required key: vpcLinkId
-- @return DeleteVpcLinkRequest structure as a key-value pair table
function M.DeleteVpcLinkRequest(args)
	assert(args, "You must provide an argument table when creating DeleteVpcLinkRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{vpclink_id}"] = args["vpcLinkId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vpcLinkId"] = args["vpcLinkId"],
	}
	asserts.AssertDeleteVpcLinkRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateVpcLinkRequest = { ["vpcLinkId"] = true, ["patchOperations"] = true, nil }

function asserts.AssertUpdateVpcLinkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVpcLinkRequest to be of type 'table'")
	assert(struct["vpcLinkId"], "Expected key vpcLinkId to exist in table")
	if struct["vpcLinkId"] then asserts.AssertString(struct["vpcLinkId"]) end
	if struct["patchOperations"] then asserts.AssertListOfPatchOperation(struct["patchOperations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateVpcLinkRequest[k], "UpdateVpcLinkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVpcLinkRequest
-- <p>Updates an existing <a>VpcLink</a> of a specified identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vpcLinkId [String] <p>[Required] The identifier of the <a>VpcLink</a>. It is used in an <a>Integration</a> to reference this <a>VpcLink</a>.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: vpcLinkId
-- @return UpdateVpcLinkRequest structure as a key-value pair table
function M.UpdateVpcLinkRequest(args)
	assert(args, "You must provide an argument table when creating UpdateVpcLinkRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{vpclink_id}"] = args["vpcLinkId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["vpcLinkId"] = args["vpcLinkId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateVpcLinkRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- @return GetClientCertificatesRequest structure as a key-value pair table
function M.GetClientCertificatesRequest(args)
	assert(args, "You must provide an argument table when creating GetClientCertificatesRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetClientCertificatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
-- * statusCode [StatusCode] <p>[Required] The status code for the <a>MethodResponse</a> resource.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * httpMethod [String] <p>[Required] The HTTP verb of the <a>Method</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return UpdateMethodResponseRequest structure as a key-value pair table
function M.UpdateMethodResponseRequest(args)
	assert(args, "You must provide an argument table when creating UpdateMethodResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{status_code}"] = args["statusCode"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertUpdateMethodResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- Required key: restApiId
-- @return GetAuthorizersRequest structure as a key-value pair table
function M.GetAuthorizersRequest(args)
	assert(args, "You must provide an argument table when creating GetAuthorizersRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetAuthorizersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- @return DeleteRestApiRequest structure as a key-value pair table
function M.DeleteRestApiRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRestApiRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteRestApiRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>An immutable representation of a <a>RestApi</a> resource that can be called by users using <a>Stages</a>. A deployment must be associated with a <a>Stage</a> for it to be callable over the Internet.</p> <div class="remarks">To create a deployment, call <code>POST</code> on the <a>Deployments</a> resource of a <a>RestApi</a>. To view, update, or delete a deployment, call <code>GET</code>, <code>PATCH</code>, or <code>DELETE</code> on the specified deployment resource (<code>/restapis/{restapi_id}/deployments/{deployment_id}</code>).</div> <div class="seeAlso"><a>RestApi</a>, <a>Deployments</a>, <a>Stage</a>, <a href="https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html">AWS CLI</a>, <a href="https://aws.amazon.com/tools/">AWS SDKs</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiSummary [PathToMapOfMethodSnapshot] <p>A summary of the <a>RestApi</a> at the date and time that the deployment resource was created.</p>
-- * createdDate [Timestamp] <p>The date and time that the deployment resource was created.</p>
-- * id [String] <p>The identifier for the deployment resource.</p>
-- * description [String] <p>The description for the deployment resource.</p>
-- @return Deployment structure as a key-value pair table
function M.Deployment(args)
	assert(args, "You must provide an argument table when creating Deployment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["apiSummary"] = args["apiSummary"],
		["createdDate"] = args["createdDate"],
		["id"] = args["id"],
		["description"] = args["description"],
	}
	asserts.AssertDeployment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] The identifier for the <a>Resource</a> resource.</p>
-- * embed [ListOfString] <p>A query parameter to retrieve the specified resources embedded in the returned <a>Resource</a> representation in the response. This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded <a>Method</a> resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code>.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: resourceId
-- @return GetResourceRequest structure as a key-value pair table
function M.GetResourceRequest(args)
	assert(args, "You must provide an argument table when creating GetResourceRequest")
    local query_args = { 
        ["embed"] = args["embed"],
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["embed"] = args["embed"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] The identifier of the <a>Resource</a> resource.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: resourceId
-- @return DeleteResourceRequest structure as a key-value pair table
function M.DeleteResourceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertDeleteResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * from [String] <p>The <code>copy</code> update operation's source as identified by a <code>JSON-Pointer</code> value referencing the location within the targeted resource to copy the value from. For example, to promote a canary deployment, you copy the canary deployment ID to the affiliated deployment ID by calling a PATCH request on a <a>Stage</a> resource with <code>"op":"copy"</code>, <code>"from":"/canarySettings/deploymentId"</code> and <code>"path":"/deploymentId"</code>.</p>
-- * value [String] <p>The new target value of the update operation. It is applicable for the <code>add</code> or <code>replace</code> operation. When using AWS CLI to update a property of a JSON value, enclose the JSON object with a pair of single quotes in a Linux shell, e.g., '{"a": ...}'. In a Windows shell, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for Parameters</a>.</p>
-- * op [Op] <p> An update operation to be performed with this PATCH request. The valid value can be <code>add</code>, <code>remove</code>, <code>replace</code> or <code>copy</code>. Not all valid operations are supported for a given resource. Support of the operations depends on specific operational contexts. Attempts to apply an unsupported operation on a resource will return an error message.</p>
-- @return PatchOperation structure as a key-value pair table
function M.PatchOperation(args)
	assert(args, "You must provide an argument table when creating PatchOperation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["path"] = args["path"],
		["from"] = args["from"],
		["value"] = args["value"],
		["op"] = args["op"],
	}
	asserts.AssertPatchOperation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApiStage = { ["apiId"] = true, ["throttle"] = true, ["stage"] = true, nil }

function asserts.AssertApiStage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiStage to be of type 'table'")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["throttle"] then asserts.AssertMapOfApiStageThrottleSettings(struct["throttle"]) end
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
-- * throttle [MapOfApiStageThrottleSettings] <p>Map containing method level throttling information for API stage in a usage plan.</p>
-- * stage [String] <p>API stage name of the associated API stage in a usage plan.</p>
-- @return ApiStage structure as a key-value pair table
function M.ApiStage(args)
	assert(args, "You must provide an argument table when creating ApiStage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
		["throttle"] = args["throttle"],
		["stage"] = args["stage"],
	}
	asserts.AssertApiStage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * body [Blob] <p>The payload of the POST request to import API keys. For the payload format, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-key-file-format.html">API Key File Format</a>.</p>
-- * failOnWarnings [Boolean] <p>A query parameter to indicate whether to rollback <a>ApiKey</a> importation (<code>true</code>) or not (<code>false</code>) when error is encountered.</p>
-- * format [ApiKeysFormat] <p>A query parameter to specify the input format to imported API keys. Currently, only the <code>csv</code> format is supported.</p>
-- Required key: body
-- Required key: format
-- @return ImportApiKeysRequest structure as a key-value pair table
function M.ImportApiKeysRequest(args)
	assert(args, "You must provide an argument table when creating ImportApiKeysRequest")
    local query_args = { 
        ["failonwarnings"] = args["failOnWarnings"],
        ["format"] = args["format"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["body"] = args["body"],
		["failOnWarnings"] = args["failOnWarnings"],
		["format"] = args["format"],
	}
	asserts.AssertImportApiKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * modelName [String] <p>[Required] The name of the model as an identifier.</p>
-- * restApiId [String] <p>[Required] The <a>RestApi</a> identifier under which the <a>Model</a> exists.</p>
-- * flatten [Boolean] <p>A query parameter of a Boolean value to resolve (<code>true</code>) all external model references and returns a flattened model schema or not (<code>false</code>) The default is <code>false</code>.</p>
-- Required key: restApiId
-- Required key: modelName
-- @return GetModelRequest structure as a key-value pair table
function M.GetModelRequest(args)
	assert(args, "You must provide an argument table when creating GetModelRequest")
    local query_args = { 
        ["flatten"] = args["flatten"],
    }
    local uri_args = { 
        ["{model_name}"] = args["modelName"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["modelName"] = args["modelName"],
		["restApiId"] = args["restApiId"],
		["flatten"] = args["flatten"],
	}
	asserts.AssertGetModelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * modelName [String] <p>[Required] The name of the model for which to generate a template.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: modelName
-- @return GetModelTemplateRequest structure as a key-value pair table
function M.GetModelTemplateRequest(args)
	assert(args, "You must provide an argument table when creating GetModelTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{model_name}"] = args["modelName"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["modelName"] = args["modelName"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetModelTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestInvokeMethodResponse = { ["status"] = true, ["body"] = true, ["log"] = true, ["latency"] = true, ["multiValueHeaders"] = true, ["headers"] = true, nil }

function asserts.AssertTestInvokeMethodResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestInvokeMethodResponse to be of type 'table'")
	if struct["status"] then asserts.AssertInteger(struct["status"]) end
	if struct["body"] then asserts.AssertString(struct["body"]) end
	if struct["log"] then asserts.AssertString(struct["log"]) end
	if struct["latency"] then asserts.AssertLong(struct["latency"]) end
	if struct["multiValueHeaders"] then asserts.AssertMapOfStringToList(struct["multiValueHeaders"]) end
	if struct["headers"] then asserts.AssertMapOfStringToString(struct["headers"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestInvokeMethodResponse[k], "TestInvokeMethodResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestInvokeMethodResponse
-- <p>Represents the response of the test invoke request in the HTTP method.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-test-method.html#how-to-test-method-console">Test API using the API Gateway console</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [Integer] <p>The HTTP status code.</p>
-- * body [String] <p>The body of the HTTP response.</p>
-- * log [String] <p>The API Gateway execution log for the test invoke request.</p>
-- * latency [Long] <p>The execution latency of the test invoke request.</p>
-- * multiValueHeaders [MapOfStringToList] <p>The headers of the HTTP response as a map from string to list of values.</p>
-- * headers [MapOfStringToString] <p>The headers of the HTTP response.</p>
-- @return TestInvokeMethodResponse structure as a key-value pair table
function M.TestInvokeMethodResponse(args)
	assert(args, "You must provide an argument table when creating TestInvokeMethodResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["body"] = args["body"],
		["log"] = args["log"],
		["latency"] = args["latency"],
		["multiValueHeaders"] = args["multiValueHeaders"],
		["headers"] = args["headers"],
	}
	asserts.AssertTestInvokeMethodResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a collection of <a>Authorizer</a> resources.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html">Enable custom authorization</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] 
-- * items [ListOfAuthorizer] <p>The current page of elements from this collection.</p>
-- @return Authorizers structure as a key-value pair table
function M.Authorizers(args)
	assert(args, "You must provide an argument table when creating Authorizers")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["items"] = args["items"],
	}
	asserts.AssertAuthorizers(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the data structure of a method's request or response payload.</p> <div class="remarks"> <p>A request model defines the data structure of the client-supplied request payload. A response model defines the data structure of the response payload returned by the back end. Although not required, models are useful for mapping payloads between the front end and back end.</p> <p>A model is used for generating an API's SDK, validating the input request body, and creating a skeletal mapping template.</p> </div> <div class="seeAlso"> <a>Method</a>, <a>MethodResponse</a>, <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html">Models and Mappings</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [String] <p>The description of the model.</p>
-- * schema [String] <p>The schema for the model. For <code>application/json</code> models, this should be <a href="https://tools.ietf.org/html/draft-zyp-json-schema-04" target="_blank">JSON schema draft 4</a> model. Do not include "\*/" characters in the description of any properties because such "\*/" characters may be interpreted as the closing marker for comments in some languages, such as Java or JavaScript, causing the installation of your API's SDK generated by API Gateway to fail.</p>
-- * contentType [String] <p>The content-type for the model.</p>
-- * id [String] <p>The identifier for the model resource.</p>
-- * name [String] <p>The name of the model. Must be an alphanumeric string.</p>
-- @return Model structure as a key-value pair table
function M.Model(args)
	assert(args, "You must provide an argument table when creating Model")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["description"] = args["description"],
		["schema"] = args["schema"],
		["contentType"] = args["contentType"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertModel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] The <a>Resource</a> identifier for the <a>Method</a> resource.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] The HTTP verb of the <a>Method</a> resource.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- @return UpdateMethodRequest structure as a key-value pair table
function M.UpdateMethodRequest(args)
	assert(args, "You must provide an argument table when creating UpdateMethodRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["patchOperations"] = args["patchOperations"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertUpdateMethodRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceRequest = { ["resourceArn"] = true, ["tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["resourceArn"] then asserts.AssertString(struct["resourceArn"]) end
	if struct["tags"] then asserts.AssertMapOfStringToString(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
-- <p>Adds or updates a tag on a given resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [String] <p>[Required] The ARN of a resource that can be tagged. The resource ARN must be URL-encoded. At present, <a>Stage</a> is the only taggable resource.</p>
-- * tags [MapOfStringToString] <p>[Required] The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
-- Required key: resourceArn
-- Required key: tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_arn}"] = args["resourceArn"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["tags"] = args["tags"],
	}
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- Required key: restApiId
-- @return GetRequestValidatorsRequest structure as a key-value pair table
function M.GetRequestValidatorsRequest(args)
	assert(args, "You must provide an argument table when creating GetRequestValidatorsRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetRequestValidatorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] Specifies a delete integration response request's resource identifier.</p>
-- * statusCode [StatusCode] <p>[Required] Specifies a delete integration response request's status code.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] Specifies a delete integration response request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return DeleteIntegrationResponseRequest structure as a key-value pair table
function M.DeleteIntegrationResponseRequest(args)
	assert(args, "You must provide an argument table when creating DeleteIntegrationResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{status_code}"] = args["statusCode"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertDeleteIntegrationResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents an integration response. The status code must map to an existing <a>MethodResponse</a>, and parameters and templates can be used to transform the back-end response.</p> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html">Creating an API</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * contentHandling [ContentHandlingStrategy] <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p> <ul> <li><p><code>CONVERT_TO_BINARY</code>: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p></li> <li><p><code>CONVERT_TO_TEXT</code>: Converts a response payload from a binary blob to a Base64-encoded string.</p></li> </ul> <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
-- * responseParameters [MapOfStringToString] <p>A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> is a valid and unique response header name and <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.</p>
-- * selectionPattern [String] <p>Specifies the regular expression (regex) pattern used to choose an integration response based on the response from the back end. For example, if the success response returns nothing and the error response returns some string, you could use the <code>.+</code> regex to match error response. However, make sure that the error response does not contain any newline (<code>\n</code>) character in such cases. If the back end is an AWS Lambda function, the AWS Lambda function error header is matched. For all other HTTP and AWS back ends, the HTTP status code is matched.</p>
-- * responseTemplates [MapOfStringToString] <p>Specifies the templates used to transform the integration response body. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
-- * statusCode [StatusCode] <p>Specifies the status code that is used to map the integration response to an existing <a>MethodResponse</a>.</p>
-- @return IntegrationResponse structure as a key-value pair table
function M.IntegrationResponse(args)
	assert(args, "You must provide an argument table when creating IntegrationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["contentHandling"] = args["contentHandling"],
		["responseParameters"] = args["responseParameters"],
		["selectionPattern"] = args["selectionPattern"],
		["responseTemplates"] = args["responseTemplates"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertIntegrationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * basePath [String] <p>[Required] The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Leave this blank if you do not want callers to specify any base path name after the domain name.</p>
-- * domainName [String] <p>[Required] The domain name of the <a>BasePathMapping</a> resource to be described.</p>
-- Required key: domainName
-- Required key: basePath
-- @return GetBasePathMappingRequest structure as a key-value pair table
function M.GetBasePathMappingRequest(args)
	assert(args, "You must provide an argument table when creating GetBasePathMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{base_path}"] = args["basePath"],
        ["{domain_name}"] = args["domainName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["basePath"] = args["basePath"],
		["domainName"] = args["domainName"],
	}
	asserts.AssertGetBasePathMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- Required key: restApiId
-- Required key: requestValidatorId
-- @return GetRequestValidatorRequest structure as a key-value pair table
function M.GetRequestValidatorRequest(args)
	assert(args, "You must provide an argument table when creating GetRequestValidatorRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{requestvalidator_id}"] = args["requestValidatorId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["requestValidatorId"] = args["requestValidatorId"],
		["restApiId"] = args["restApiId"],
	}
	asserts.AssertGetRequestValidatorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.</p> <div class="remarks">Client certificates are used to authenticate an API by the backend server. To authenticate an API client (or user), use IAM roles and policies, a custom <a>Authorizer</a> or an Amazon Cognito user pool.</div> <div class="seeAlso"> <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html">Use Client-Side Certificate</a> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * pemEncodedCertificate [String] <p>The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .</p>
-- * clientCertificateId [String] <p>The identifier of the client certificate.</p>
-- * expirationDate [Timestamp] <p>The timestamp when the client certificate will expire.</p>
-- * description [String] <p>The description of the client certificate.</p>
-- * createdDate [Timestamp] <p>The timestamp when the client certificate was created.</p>
-- @return ClientCertificate structure as a key-value pair table
function M.ClientCertificate(args)
	assert(args, "You must provide an argument table when creating ClientCertificate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["pemEncodedCertificate"] = args["pemEncodedCertificate"],
		["clientCertificateId"] = args["clientCertificateId"],
		["expirationDate"] = args["expirationDate"],
		["description"] = args["description"],
		["createdDate"] = args["createdDate"],
	}
	asserts.AssertClientCertificate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * keyType [String] <p>[Required] The type of a <a>UsagePlanKey</a> resource for a plan customer.</p>
-- * keyId [String] <p>[Required] The identifier of a <a>UsagePlanKey</a> resource for a plan customer.</p>
-- * usagePlanId [String] <p>[Required] The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-created <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- Required key: usagePlanId
-- Required key: keyId
-- Required key: keyType
-- @return CreateUsagePlanKeyRequest structure as a key-value pair table
function M.CreateUsagePlanKeyRequest(args)
	assert(args, "You must provide an argument table when creating CreateUsagePlanKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{usageplanId}"] = args["usagePlanId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["keyType"] = args["keyType"],
		["keyId"] = args["keyId"],
		["usagePlanId"] = args["usagePlanId"],
	}
	asserts.AssertCreateUsagePlanKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * resourceId [String] <p>[Required] Specifies a get integration response request's resource identifier.</p>
-- * statusCode [StatusCode] <p>[Required] Specifies a get integration response request's status code.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * httpMethod [String] <p>[Required] Specifies a get integration response request's HTTP method.</p>
-- Required key: restApiId
-- Required key: resourceId
-- Required key: httpMethod
-- Required key: statusCode
-- @return GetIntegrationResponseRequest structure as a key-value pair table
function M.GetIntegrationResponseRequest(args)
	assert(args, "You must provide an argument table when creating GetIntegrationResponseRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{resource_id}"] = args["resourceId"],
        ["{status_code}"] = args["statusCode"],
        ["{restapi_id}"] = args["restApiId"],
        ["{http_method}"] = args["httpMethod"],
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceId"] = args["resourceId"],
		["statusCode"] = args["statusCode"],
		["restApiId"] = args["restApiId"],
		["httpMethod"] = args["httpMethod"],
	}
	asserts.AssertGetIntegrationResponseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: documentationPartId
-- @return UpdateDocumentationPartRequest structure as a key-value pair table
function M.UpdateDocumentationPartRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDocumentationPartRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{part_id}"] = args["documentationPartId"],
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["documentationPartId"] = args["documentationPartId"],
		["restApiId"] = args["restApiId"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateDocumentationPartRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * usagePlanId [String] <p>[Required] The Id of the <a>UsagePlan</a> resource representing the usage plan containing the to-be-retrieved <a>UsagePlanKey</a> resource representing a plan customer.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
-- Required key: usagePlanId
-- @return GetUsagePlanKeysRequest structure as a key-value pair table
function M.GetUsagePlanKeysRequest(args)
	assert(args, "You must provide an argument table when creating GetUsagePlanKeysRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["name"] = args["nameQuery"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{usageplanId}"] = args["usagePlanId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["nameQuery"] = args["nameQuery"],
		["usagePlanId"] = args["usagePlanId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetUsagePlanKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * type [DocumentationPartType] <p>[Required] The type of API entity to which the documentation content applies. Valid values are <code>API</code>, <code>AUTHORIZER</code>, <code>MODEL</code>, <code>RESOURCE</code>, <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. Content inheritance does not apply to any entity of the <code>API</code>, <code>AUTHORIZER</code>, <code>METHOD</code>, <code>MODEL</code>, <code>REQUEST_BODY</code>, or <code>RESOURCE</code> type.</p>
-- * method [String] <p>The HTTP verb of a method. It is a valid field for the API entity types of <code>METHOD</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code>, <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>*</code> for any method. When an applicable child entity inherits the content of an entity of the same type with more general specifications of the other <code>location</code> attributes, the child entity's <code>method</code> attribute must match that of the parent entity exactly.</p>
-- * name [String] <p>The name of the targeted API entity. It is a valid and required field for the API entity types of <code>AUTHORIZER</code>, <code>MODEL</code>, <code>PATH_PARAMETER</code>, <code>QUERY_PARAMETER</code>, <code>REQUEST_HEADER</code>, <code>REQUEST_BODY</code> and <code>RESPONSE_HEADER</code>. It is an invalid field for any other entity type.</p>
-- * statusCode [DocumentationPartLocationStatusCode] <p>The HTTP status code of a response. It is a valid field for the API entity types of <code>RESPONSE</code>, <code>RESPONSE_HEADER</code>, and <code>RESPONSE_BODY</code>. The default value is <code>*</code> for any status code. When an applicable child entity inherits the content of an entity of the same type with more general specifications of the other <code>location</code> attributes, the child entity's <code>statusCode</code> attribute must match that of the parent entity exactly.</p>
-- Required key: type
-- @return DocumentationPartLocation structure as a key-value pair table
function M.DocumentationPartLocation(args)
	assert(args, "You must provide an argument table when creating DocumentationPartLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["path"] = args["path"],
		["type"] = args["type"],
		["method"] = args["method"],
		["name"] = args["name"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertDocumentationPartLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcLink = { ["status"] = true, ["description"] = true, ["targetArns"] = true, ["id"] = true, ["statusMessage"] = true, ["name"] = true, nil }

function asserts.AssertVpcLink(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcLink to be of type 'table'")
	if struct["status"] then asserts.AssertVpcLinkStatus(struct["status"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	if struct["targetArns"] then asserts.AssertListOfString(struct["targetArns"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["statusMessage"] then asserts.AssertString(struct["statusMessage"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcLink[k], "VpcLink contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcLink
-- <p>A API Gateway VPC link for a <a>RestApi</a> to access resources in an Amazon Virtual Private Cloud (VPC).</p> <div class="remarks"> <p><p>To enable access to a resource in an Amazon Virtual Private Cloud through Amazon API Gateway, you, as an API developer, create a <a>VpcLink</a> resource targeted for one or more network load balancers of the VPC and then integrate an API method with a private integration that uses the <a>VpcLink</a>. The private integration has an integration type of <code>HTTP</code> or <code>HTTP_PROXY</code> and has a connection type of <code>VPC_LINK</code>. The integration uses the <code>connectionId</code> property to identify the <a>VpcLink</a> used.</p> </p> </div>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [VpcLinkStatus] <p>The status of the VPC link. The valid values are <code>AVAILABLE</code>, <code>PENDING</code>, <code>DELETING</code>, or <code>FAILED</code>. Deploying an API will wait if the status is <code>PENDING</code> and will fail if the status is <code>DELETING</code>. </p>
-- * description [String] <p>The description of the VPC link.</p>
-- * targetArns [ListOfString] <p>The ARNs of network load balancers of the VPC targeted by the VPC link. The network load balancers must be owned by the same AWS account of the API owner.</p>
-- * id [String] <p>The identifier of the <a>VpcLink</a>. It is used in an <a>Integration</a> to reference this <a>VpcLink</a>.</p>
-- * statusMessage [String] <p>A description about the VPC link status.</p>
-- * name [String] <p>The name used to label and identify the VPC link.</p>
-- @return VpcLink structure as a key-value pair table
function M.VpcLink(args)
	assert(args, "You must provide an argument table when creating VpcLink")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["description"] = args["description"],
		["targetArns"] = args["targetArns"],
		["id"] = args["id"],
		["statusMessage"] = args["statusMessage"],
		["name"] = args["name"],
	}
	asserts.AssertVpcLink(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>..</p>
-- * documentationVersion [String] <p>[Required] The version identifier of the to-be-updated documentation version.</p>
-- * patchOperations [ListOfPatchOperation] <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
-- Required key: restApiId
-- Required key: documentationVersion
-- @return UpdateDocumentationVersionRequest structure as a key-value pair table
function M.UpdateDocumentationVersionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDocumentationVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
        ["{doc_version}"] = args["documentationVersion"],
    }
    local header_args = { 
    }
	local all_args = { 
		["restApiId"] = args["restApiId"],
		["documentationVersion"] = args["documentationVersion"],
		["patchOperations"] = args["patchOperations"],
	}
	asserts.AssertUpdateDocumentationVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGatewayResponsesRequest = { ["position"] = true, ["restApiId"] = true, ["limit"] = true, nil }

function asserts.AssertGetGatewayResponsesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGatewayResponsesRequest to be of type 'table'")
	assert(struct["restApiId"], "Expected key restApiId to exist in table")
	if struct["position"] then asserts.AssertString(struct["position"]) end
	if struct["restApiId"] then asserts.AssertString(struct["restApiId"]) end
	if struct["limit"] then asserts.AssertNullableInteger(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGatewayResponsesRequest[k], "GetGatewayResponsesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGatewayResponsesRequest
-- <p>Gets the <a>GatewayResponses</a> collection on the given <a>RestApi</a>. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default <a>GatewayResponses</a> collection for the supported response types.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * position [String] <p>The current pagination position in the paged result set. The <a>GatewayResponse</a> collection does not support pagination and the position does not apply here.</p>
-- * restApiId [String] <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
-- * limit [NullableInteger] <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500. The <a>GatewayResponses</a> collection does not support pagination and the limit does not apply here.</p>
-- Required key: restApiId
-- @return GetGatewayResponsesRequest structure as a key-value pair table
function M.GetGatewayResponsesRequest(args)
	assert(args, "You must provide an argument table when creating GetGatewayResponsesRequest")
    local query_args = { 
        ["position"] = args["position"],
        ["limit"] = args["limit"],
    }
    local uri_args = { 
        ["{restapi_id}"] = args["restApiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["position"] = args["position"],
		["restApiId"] = args["restApiId"],
		["limit"] = args["limit"],
	}
	asserts.AssertGetGatewayResponsesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ExportResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Content-Type"] = args["contentType"],
        ["Content-Disposition"] = args["contentDisposition"],
    }
	local all_args = { 
		["body"] = args["body"],
		["contentType"] = args["contentType"],
		["contentDisposition"] = args["contentDisposition"],
	}
	asserts.AssertExportResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateApiKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["enabled"] = args["enabled"],
		["value"] = args["value"],
		["stageKeys"] = args["stageKeys"],
		["generateDistinctId"] = args["generateDistinctId"],
		["customerId"] = args["customerId"],
		["description"] = args["description"],
	}
	asserts.AssertCreateApiKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertVpcLinkStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcLinkStatus to be of type 'string'")
end

--  
function M.VpcLinkStatus(str)
	asserts.AssertVpcLinkStatus(str)
	return str
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

function asserts.AssertLocationStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationStatusType to be of type 'string'")
end

--  
function M.LocationStatusType(str)
	asserts.AssertLocationStatusType(str)
	return str
end

function asserts.AssertIntegrationType(str)
	assert(str)
	assert(type(str) == "string", "Expected IntegrationType to be of type 'string'")
end

-- <p>The integration type. The valid value is <code>HTTP</code> for integrating an API method with an HTTP backend; <code>AWS</code> with any AWS service endpoints; <code>MOCK</code> for testing without actually invoking the backend; <code>HTTP_PROXY</code> for integrating with the HTTP proxy integration; <code>AWS_PROXY</code> for integrating with the Lambda proxy integration. </p>
function M.IntegrationType(str)
	asserts.AssertIntegrationType(str)
	return str
end

function asserts.AssertApiKeySourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ApiKeySourceType to be of type 'string'")
end

--  
function M.ApiKeySourceType(str)
	asserts.AssertApiKeySourceType(str)
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

-- <p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
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

function asserts.AssertGatewayResponseType(str)
	assert(str)
	assert(type(str) == "string", "Expected GatewayResponseType to be of type 'string'")
end

--  
function M.GatewayResponseType(str)
	asserts.AssertGatewayResponseType(str)
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

function asserts.AssertConnectionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionType to be of type 'string'")
end

--  
function M.ConnectionType(str)
	asserts.AssertConnectionType(str)
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

function asserts.AssertEndpointType(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointType to be of type 'string'")
end

-- <p>The endpoint type. The valid values are <code>EDGE</code> for edge-optimized API setup, most suitable for mobile applications; <code>REGIONAL</code> for regional API endpoint setup, most suitable for calling from AWS Region; and <code>PRIVATE</code> for private APIs.</p>
function M.EndpointType(str)
	asserts.AssertEndpointType(str)
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

function asserts.AssertProviderARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderARN to be of type 'string'")
end

--  
function M.ProviderARN(str)
	asserts.AssertProviderARN(str)
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

function asserts.AssertMapOfApiStageThrottleSettings(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfApiStageThrottleSettings to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertThrottleSettings(v)
	end
end

function M.MapOfApiStageThrottleSettings(map)
	asserts.AssertMapOfApiStageThrottleSettings(map)
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
	assert(type(blob) == "string", "Expected Blob to be of type 'string'")
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

function asserts.AssertListOfEndpointType(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfEndpointType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEndpointType(v)
	end
end

--  
-- List of EndpointType objects
function M.ListOfEndpointType(list)
	asserts.AssertListOfEndpointType(list)
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

function asserts.AssertListOfGatewayResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfGatewayResponse to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGatewayResponse(v)
	end
end

--  
-- List of GatewayResponse objects
function M.ListOfGatewayResponse(list)
	asserts.AssertListOfGatewayResponse(list)
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

function asserts.AssertListOfVpcLink(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfVpcLink to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVpcLink(v)
	end
end

--  
-- List of VpcLink objects
function M.ListOfVpcLink(list)
	asserts.AssertListOfVpcLink(list)
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call GetGatewayResponses asynchronously, invoking a callback when done
-- @param GetGatewayResponsesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetGatewayResponsesAsync(GetGatewayResponsesRequest, cb)
	assert(GetGatewayResponsesRequest, "You must provide a GetGatewayResponsesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGatewayResponses",
	}
	for header,value in pairs(GetGatewayResponsesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/gatewayresponses", GetGatewayResponsesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGatewayResponses synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGatewayResponsesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetGatewayResponsesSync(GetGatewayResponsesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGatewayResponsesAsync(GetGatewayResponsesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportDocumentationParts asynchronously, invoking a callback when done
-- @param ImportDocumentationPartsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ImportDocumentationPartsAsync(ImportDocumentationPartsRequest, cb)
	assert(ImportDocumentationPartsRequest, "You must provide a ImportDocumentationPartsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ImportDocumentationParts",
	}
	for header,value in pairs(ImportDocumentationPartsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
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
-- @return error_type
-- @return error_message
function M.ImportDocumentationPartsSync(ImportDocumentationPartsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportDocumentationPartsAsync(ImportDocumentationPartsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAuthorizer asynchronously, invoking a callback when done
-- @param DeleteAuthorizerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAuthorizerAsync(DeleteAuthorizerRequest, cb)
	assert(DeleteAuthorizerRequest, "You must provide a DeleteAuthorizerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAuthorizer",
	}
	for header,value in pairs(DeleteAuthorizerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteAuthorizerSync(DeleteAuthorizerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAuthorizerAsync(DeleteAuthorizerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateModel asynchronously, invoking a callback when done
-- @param UpdateModelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateModelAsync(UpdateModelRequest, cb)
	assert(UpdateModelRequest, "You must provide a UpdateModelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateModel",
	}
	for header,value in pairs(UpdateModelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateModelSync(UpdateModelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateModelAsync(UpdateModelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDeployment asynchronously, invoking a callback when done
-- @param CreateDeploymentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDeploymentAsync(CreateDeploymentRequest, cb)
	assert(CreateDeploymentRequest, "You must provide a CreateDeploymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDeployment",
	}
	for header,value in pairs(CreateDeploymentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateDeploymentSync(CreateDeploymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeploymentAsync(CreateDeploymentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRestApi asynchronously, invoking a callback when done
-- @param GetRestApiRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRestApiAsync(GetRestApiRequest, cb)
	assert(GetRestApiRequest, "You must provide a GetRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRestApi",
	}
	for header,value in pairs(GetRestApiRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetRestApiSync(GetRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRestApiAsync(GetRestApiRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRequestValidator asynchronously, invoking a callback when done
-- @param UpdateRequestValidatorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRequestValidatorAsync(UpdateRequestValidatorRequest, cb)
	assert(UpdateRequestValidatorRequest, "You must provide a UpdateRequestValidatorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateRequestValidator",
	}
	for header,value in pairs(UpdateRequestValidatorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateRequestValidatorSync(UpdateRequestValidatorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRequestValidatorAsync(UpdateRequestValidatorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGatewayResponse asynchronously, invoking a callback when done
-- @param GetGatewayResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetGatewayResponseAsync(GetGatewayResponseRequest, cb)
	assert(GetGatewayResponseRequest, "You must provide a GetGatewayResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGatewayResponse",
	}
	for header,value in pairs(GetGatewayResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/gatewayresponses/{response_type}", GetGatewayResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGatewayResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGatewayResponseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetGatewayResponseSync(GetGatewayResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGatewayResponseAsync(GetGatewayResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClientCertificate asynchronously, invoking a callback when done
-- @param DeleteClientCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteClientCertificateAsync(DeleteClientCertificateRequest, cb)
	assert(DeleteClientCertificateRequest, "You must provide a DeleteClientCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteClientCertificate",
	}
	for header,value in pairs(DeleteClientCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteClientCertificateSync(DeleteClientCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClientCertificateAsync(DeleteClientCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAuthorizer asynchronously, invoking a callback when done
-- @param GetAuthorizerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAuthorizerAsync(GetAuthorizerRequest, cb)
	assert(GetAuthorizerRequest, "You must provide a GetAuthorizerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAuthorizer",
	}
	for header,value in pairs(GetAuthorizerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetAuthorizerSync(GetAuthorizerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAuthorizerAsync(GetAuthorizerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetModels asynchronously, invoking a callback when done
-- @param GetModelsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetModelsAsync(GetModelsRequest, cb)
	assert(GetModelsRequest, "You must provide a GetModelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetModels",
	}
	for header,value in pairs(GetModelsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetModelsSync(GetModelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetModelsAsync(GetModelsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GenerateClientCertificate asynchronously, invoking a callback when done
-- @param GenerateClientCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GenerateClientCertificateAsync(GenerateClientCertificateRequest, cb)
	assert(GenerateClientCertificateRequest, "You must provide a GenerateClientCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GenerateClientCertificate",
	}
	for header,value in pairs(GenerateClientCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.GenerateClientCertificateSync(GenerateClientCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GenerateClientCertificateAsync(GenerateClientCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutGatewayResponse asynchronously, invoking a callback when done
-- @param PutGatewayResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutGatewayResponseAsync(PutGatewayResponseRequest, cb)
	assert(PutGatewayResponseRequest, "You must provide a PutGatewayResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutGatewayResponse",
	}
	for header,value in pairs(PutGatewayResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/gatewayresponses/{response_type}", PutGatewayResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutGatewayResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutGatewayResponseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutGatewayResponseSync(PutGatewayResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutGatewayResponseAsync(PutGatewayResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRestApi asynchronously, invoking a callback when done
-- @param DeleteRestApiRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRestApiAsync(DeleteRestApiRequest, cb)
	assert(DeleteRestApiRequest, "You must provide a DeleteRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteRestApi",
	}
	for header,value in pairs(DeleteRestApiRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteRestApiSync(DeleteRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRestApiAsync(DeleteRestApiRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMethod asynchronously, invoking a callback when done
-- @param GetMethodRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMethodAsync(GetMethodRequest, cb)
	assert(GetMethodRequest, "You must provide a GetMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMethod",
	}
	for header,value in pairs(GetMethodRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetMethodSync(GetMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMethodAsync(GetMethodRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSdkTypes asynchronously, invoking a callback when done
-- @param GetSdkTypesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSdkTypesAsync(GetSdkTypesRequest, cb)
	assert(GetSdkTypesRequest, "You must provide a GetSdkTypesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSdkTypes",
	}
	for header,value in pairs(GetSdkTypesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetSdkTypesSync(GetSdkTypesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSdkTypesAsync(GetSdkTypesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDocumentationVersion asynchronously, invoking a callback when done
-- @param UpdateDocumentationVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDocumentationVersionAsync(UpdateDocumentationVersionRequest, cb)
	assert(UpdateDocumentationVersionRequest, "You must provide a UpdateDocumentationVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDocumentationVersion",
	}
	for header,value in pairs(UpdateDocumentationVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateDocumentationVersionSync(UpdateDocumentationVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDocumentationVersionAsync(UpdateDocumentationVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateModel asynchronously, invoking a callback when done
-- @param CreateModelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateModelAsync(CreateModelRequest, cb)
	assert(CreateModelRequest, "You must provide a CreateModelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateModel",
	}
	for header,value in pairs(CreateModelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateModelSync(CreateModelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateModelAsync(CreateModelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call FlushStageCache asynchronously, invoking a callback when done
-- @param FlushStageCacheRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.FlushStageCacheAsync(FlushStageCacheRequest, cb)
	assert(FlushStageCacheRequest, "You must provide a FlushStageCacheRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".FlushStageCache",
	}
	for header,value in pairs(FlushStageCacheRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.FlushStageCacheSync(FlushStageCacheRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.FlushStageCacheAsync(FlushStageCacheRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUsagePlanKey asynchronously, invoking a callback when done
-- @param CreateUsagePlanKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUsagePlanKeyAsync(CreateUsagePlanKeyRequest, cb)
	assert(CreateUsagePlanKeyRequest, "You must provide a CreateUsagePlanKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateUsagePlanKey",
	}
	for header,value in pairs(CreateUsagePlanKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateUsagePlanKeySync(CreateUsagePlanKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUsagePlanKeyAsync(CreateUsagePlanKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUsagePlanKey asynchronously, invoking a callback when done
-- @param GetUsagePlanKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUsagePlanKeyAsync(GetUsagePlanKeyRequest, cb)
	assert(GetUsagePlanKeyRequest, "You must provide a GetUsagePlanKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUsagePlanKey",
	}
	for header,value in pairs(GetUsagePlanKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetUsagePlanKeySync(GetUsagePlanKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUsagePlanKeyAsync(GetUsagePlanKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIntegration asynchronously, invoking a callback when done
-- @param DeleteIntegrationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteIntegrationAsync(DeleteIntegrationRequest, cb)
	assert(DeleteIntegrationRequest, "You must provide a DeleteIntegrationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteIntegration",
	}
	for header,value in pairs(DeleteIntegrationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteIntegrationSync(DeleteIntegrationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIntegrationAsync(DeleteIntegrationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMethodResponse asynchronously, invoking a callback when done
-- @param GetMethodResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMethodResponseAsync(GetMethodResponseRequest, cb)
	assert(GetMethodResponseRequest, "You must provide a GetMethodResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMethodResponse",
	}
	for header,value in pairs(GetMethodResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetMethodResponseSync(GetMethodResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMethodResponseAsync(GetMethodResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutMethodResponse asynchronously, invoking a callback when done
-- @param PutMethodResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutMethodResponseAsync(PutMethodResponseRequest, cb)
	assert(PutMethodResponseRequest, "You must provide a PutMethodResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutMethodResponse",
	}
	for header,value in pairs(PutMethodResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
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
-- @return error_type
-- @return error_message
function M.PutMethodResponseSync(PutMethodResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutMethodResponseAsync(PutMethodResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteModel asynchronously, invoking a callback when done
-- @param DeleteModelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteModelAsync(DeleteModelRequest, cb)
	assert(DeleteModelRequest, "You must provide a DeleteModelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteModel",
	}
	for header,value in pairs(DeleteModelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteModelSync(DeleteModelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteModelAsync(DeleteModelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStage asynchronously, invoking a callback when done
-- @param GetStageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetStageAsync(GetStageRequest, cb)
	assert(GetStageRequest, "You must provide a GetStageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetStage",
	}
	for header,value in pairs(GetStageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetStageSync(GetStageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStageAsync(GetStageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStages asynchronously, invoking a callback when done
-- @param GetStagesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetStagesAsync(GetStagesRequest, cb)
	assert(GetStagesRequest, "You must provide a GetStagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetStages",
	}
	for header,value in pairs(GetStagesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetStagesSync(GetStagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStagesAsync(GetStagesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDocumentationVersion asynchronously, invoking a callback when done
-- @param DeleteDocumentationVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDocumentationVersionAsync(DeleteDocumentationVersionRequest, cb)
	assert(DeleteDocumentationVersionRequest, "You must provide a DeleteDocumentationVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDocumentationVersion",
	}
	for header,value in pairs(DeleteDocumentationVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteDocumentationVersionSync(DeleteDocumentationVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDocumentationVersionAsync(DeleteDocumentationVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateIntegration asynchronously, invoking a callback when done
-- @param UpdateIntegrationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateIntegrationAsync(UpdateIntegrationRequest, cb)
	assert(UpdateIntegrationRequest, "You must provide a UpdateIntegrationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateIntegration",
	}
	for header,value in pairs(UpdateIntegrationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateIntegrationSync(UpdateIntegrationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateIntegrationAsync(UpdateIntegrationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUsagePlan asynchronously, invoking a callback when done
-- @param DeleteUsagePlanRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUsagePlanAsync(DeleteUsagePlanRequest, cb)
	assert(DeleteUsagePlanRequest, "You must provide a DeleteUsagePlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUsagePlan",
	}
	for header,value in pairs(DeleteUsagePlanRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteUsagePlanSync(DeleteUsagePlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUsagePlanAsync(DeleteUsagePlanRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDomainNames asynchronously, invoking a callback when done
-- @param GetDomainNamesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDomainNamesAsync(GetDomainNamesRequest, cb)
	assert(GetDomainNamesRequest, "You must provide a GetDomainNamesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDomainNames",
	}
	for header,value in pairs(GetDomainNamesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetDomainNamesSync(GetDomainNamesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainNamesAsync(GetDomainNamesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDocumentationPart asynchronously, invoking a callback when done
-- @param UpdateDocumentationPartRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDocumentationPartAsync(UpdateDocumentationPartRequest, cb)
	assert(UpdateDocumentationPartRequest, "You must provide a UpdateDocumentationPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDocumentationPart",
	}
	for header,value in pairs(UpdateDocumentationPartRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateDocumentationPartSync(UpdateDocumentationPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDocumentationPartAsync(UpdateDocumentationPartRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TestInvokeMethod asynchronously, invoking a callback when done
-- @param TestInvokeMethodRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TestInvokeMethodAsync(TestInvokeMethodRequest, cb)
	assert(TestInvokeMethodRequest, "You must provide a TestInvokeMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TestInvokeMethod",
	}
	for header,value in pairs(TestInvokeMethodRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.TestInvokeMethodSync(TestInvokeMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestInvokeMethodAsync(TestInvokeMethodRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateVpcLink asynchronously, invoking a callback when done
-- @param CreateVpcLinkRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateVpcLinkAsync(CreateVpcLinkRequest, cb)
	assert(CreateVpcLinkRequest, "You must provide a CreateVpcLinkRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateVpcLink",
	}
	for header,value in pairs(CreateVpcLinkRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/vpclinks", CreateVpcLinkRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateVpcLink synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateVpcLinkRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateVpcLinkSync(CreateVpcLinkRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateVpcLinkAsync(CreateVpcLinkRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVpcLink asynchronously, invoking a callback when done
-- @param DeleteVpcLinkRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteVpcLinkAsync(DeleteVpcLinkRequest, cb)
	assert(DeleteVpcLinkRequest, "You must provide a DeleteVpcLinkRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteVpcLink",
	}
	for header,value in pairs(DeleteVpcLinkRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/vpclinks/{vpclink_id}", DeleteVpcLinkRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVpcLink synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVpcLinkRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteVpcLinkSync(DeleteVpcLinkRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVpcLinkAsync(DeleteVpcLinkRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStage asynchronously, invoking a callback when done
-- @param UpdateStageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateStageAsync(UpdateStageRequest, cb)
	assert(UpdateStageRequest, "You must provide a UpdateStageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateStage",
	}
	for header,value in pairs(UpdateStageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateStageSync(UpdateStageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStageAsync(UpdateStageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBasePathMapping asynchronously, invoking a callback when done
-- @param DeleteBasePathMappingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBasePathMappingAsync(DeleteBasePathMappingRequest, cb)
	assert(DeleteBasePathMappingRequest, "You must provide a DeleteBasePathMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBasePathMapping",
	}
	for header,value in pairs(DeleteBasePathMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteBasePathMappingSync(DeleteBasePathMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBasePathMappingAsync(DeleteBasePathMappingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRequestValidator asynchronously, invoking a callback when done
-- @param CreateRequestValidatorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRequestValidatorAsync(CreateRequestValidatorRequest, cb)
	assert(CreateRequestValidatorRequest, "You must provide a CreateRequestValidatorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateRequestValidator",
	}
	for header,value in pairs(CreateRequestValidatorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateRequestValidatorSync(CreateRequestValidatorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRequestValidatorAsync(CreateRequestValidatorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TestInvokeAuthorizer asynchronously, invoking a callback when done
-- @param TestInvokeAuthorizerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TestInvokeAuthorizerAsync(TestInvokeAuthorizerRequest, cb)
	assert(TestInvokeAuthorizerRequest, "You must provide a TestInvokeAuthorizerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TestInvokeAuthorizer",
	}
	for header,value in pairs(TestInvokeAuthorizerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.TestInvokeAuthorizerSync(TestInvokeAuthorizerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestInvokeAuthorizerAsync(TestInvokeAuthorizerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentationVersion asynchronously, invoking a callback when done
-- @param GetDocumentationVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDocumentationVersionAsync(GetDocumentationVersionRequest, cb)
	assert(GetDocumentationVersionRequest, "You must provide a GetDocumentationVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocumentationVersion",
	}
	for header,value in pairs(GetDocumentationVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetDocumentationVersionSync(GetDocumentationVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentationVersionAsync(GetDocumentationVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateMethod asynchronously, invoking a callback when done
-- @param UpdateMethodRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateMethodAsync(UpdateMethodRequest, cb)
	assert(UpdateMethodRequest, "You must provide a UpdateMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateMethod",
	}
	for header,value in pairs(UpdateMethodRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateMethodSync(UpdateMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateMethodAsync(UpdateMethodRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApiKey asynchronously, invoking a callback when done
-- @param GetApiKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApiKeyAsync(GetApiKeyRequest, cb)
	assert(GetApiKeyRequest, "You must provide a GetApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApiKey",
	}
	for header,value in pairs(GetApiKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetApiKeySync(GetApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApiKeyAsync(GetApiKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSdkType asynchronously, invoking a callback when done
-- @param GetSdkTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSdkTypeAsync(GetSdkTypeRequest, cb)
	assert(GetSdkTypeRequest, "You must provide a GetSdkTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSdkType",
	}
	for header,value in pairs(GetSdkTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetSdkTypeSync(GetSdkTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSdkTypeAsync(GetSdkTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIntegration asynchronously, invoking a callback when done
-- @param GetIntegrationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIntegrationAsync(GetIntegrationRequest, cb)
	assert(GetIntegrationRequest, "You must provide a GetIntegrationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIntegration",
	}
	for header,value in pairs(GetIntegrationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetIntegrationSync(GetIntegrationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIntegrationAsync(GetIntegrationRequest, function(response, error_type, error_message)
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

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/tags/{resource_arn}", TagResourceRequest, headers, settings, cb)
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

--- Call UpdateGatewayResponse asynchronously, invoking a callback when done
-- @param UpdateGatewayResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGatewayResponseAsync(UpdateGatewayResponseRequest, cb)
	assert(UpdateGatewayResponseRequest, "You must provide a UpdateGatewayResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateGatewayResponse",
	}
	for header,value in pairs(UpdateGatewayResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/gatewayresponses/{response_type}", UpdateGatewayResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGatewayResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGatewayResponseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGatewayResponseSync(UpdateGatewayResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGatewayResponseAsync(UpdateGatewayResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDeployment asynchronously, invoking a callback when done
-- @param DeleteDeploymentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDeploymentAsync(DeleteDeploymentRequest, cb)
	assert(DeleteDeploymentRequest, "You must provide a DeleteDeploymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDeployment",
	}
	for header,value in pairs(DeleteDeploymentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteDeploymentSync(DeleteDeploymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeploymentAsync(DeleteDeploymentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUsagePlan asynchronously, invoking a callback when done
-- @param GetUsagePlanRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUsagePlanAsync(GetUsagePlanRequest, cb)
	assert(GetUsagePlanRequest, "You must provide a GetUsagePlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUsagePlan",
	}
	for header,value in pairs(GetUsagePlanRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetUsagePlanSync(GetUsagePlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUsagePlanAsync(GetUsagePlanRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetVpcLink asynchronously, invoking a callback when done
-- @param GetVpcLinkRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetVpcLinkAsync(GetVpcLinkRequest, cb)
	assert(GetVpcLinkRequest, "You must provide a GetVpcLinkRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetVpcLink",
	}
	for header,value in pairs(GetVpcLinkRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/vpclinks/{vpclink_id}", GetVpcLinkRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetVpcLink synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetVpcLinkRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetVpcLinkSync(GetVpcLinkRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetVpcLinkAsync(GetVpcLinkRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUsagePlan asynchronously, invoking a callback when done
-- @param UpdateUsagePlanRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUsagePlanAsync(UpdateUsagePlanRequest, cb)
	assert(UpdateUsagePlanRequest, "You must provide a UpdateUsagePlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUsagePlan",
	}
	for header,value in pairs(UpdateUsagePlanRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateUsagePlanSync(UpdateUsagePlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUsagePlanAsync(UpdateUsagePlanRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAuthorizer asynchronously, invoking a callback when done
-- @param CreateAuthorizerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAuthorizerAsync(CreateAuthorizerRequest, cb)
	assert(CreateAuthorizerRequest, "You must provide a CreateAuthorizerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateAuthorizer",
	}
	for header,value in pairs(CreateAuthorizerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateAuthorizerSync(CreateAuthorizerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAuthorizerAsync(CreateAuthorizerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetClientCertificate asynchronously, invoking a callback when done
-- @param GetClientCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetClientCertificateAsync(GetClientCertificateRequest, cb)
	assert(GetClientCertificateRequest, "You must provide a GetClientCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetClientCertificate",
	}
	for header,value in pairs(GetClientCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetClientCertificateSync(GetClientCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetClientCertificateAsync(GetClientCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDeployment asynchronously, invoking a callback when done
-- @param UpdateDeploymentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDeploymentAsync(UpdateDeploymentRequest, cb)
	assert(UpdateDeploymentRequest, "You must provide a UpdateDeploymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDeployment",
	}
	for header,value in pairs(UpdateDeploymentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateDeploymentSync(UpdateDeploymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDeploymentAsync(UpdateDeploymentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetModelTemplate asynchronously, invoking a callback when done
-- @param GetModelTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetModelTemplateAsync(GetModelTemplateRequest, cb)
	assert(GetModelTemplateRequest, "You must provide a GetModelTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetModelTemplate",
	}
	for header,value in pairs(GetModelTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetModelTemplateSync(GetModelTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetModelTemplateAsync(GetModelTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBasePathMappings asynchronously, invoking a callback when done
-- @param GetBasePathMappingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBasePathMappingsAsync(GetBasePathMappingsRequest, cb)
	assert(GetBasePathMappingsRequest, "You must provide a GetBasePathMappingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBasePathMappings",
	}
	for header,value in pairs(GetBasePathMappingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetBasePathMappingsSync(GetBasePathMappingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBasePathMappingsAsync(GetBasePathMappingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSdk asynchronously, invoking a callback when done
-- @param GetSdkRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSdkAsync(GetSdkRequest, cb)
	assert(GetSdkRequest, "You must provide a GetSdkRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSdk",
	}
	for header,value in pairs(GetSdkRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetSdkSync(GetSdkRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSdkAsync(GetSdkRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRequestValidator asynchronously, invoking a callback when done
-- @param GetRequestValidatorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRequestValidatorAsync(GetRequestValidatorRequest, cb)
	assert(GetRequestValidatorRequest, "You must provide a GetRequestValidatorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRequestValidator",
	}
	for header,value in pairs(GetRequestValidatorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetRequestValidatorSync(GetRequestValidatorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRequestValidatorAsync(GetRequestValidatorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call FlushStageAuthorizersCache asynchronously, invoking a callback when done
-- @param FlushStageAuthorizersCacheRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.FlushStageAuthorizersCacheAsync(FlushStageAuthorizersCacheRequest, cb)
	assert(FlushStageAuthorizersCacheRequest, "You must provide a FlushStageAuthorizersCacheRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".FlushStageAuthorizersCache",
	}
	for header,value in pairs(FlushStageAuthorizersCacheRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.FlushStageAuthorizersCacheSync(FlushStageAuthorizersCacheRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.FlushStageAuthorizersCacheAsync(FlushStageAuthorizersCacheRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIntegrationResponse asynchronously, invoking a callback when done
-- @param GetIntegrationResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIntegrationResponseAsync(GetIntegrationResponseRequest, cb)
	assert(GetIntegrationResponseRequest, "You must provide a GetIntegrationResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIntegrationResponse",
	}
	for header,value in pairs(GetIntegrationResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetIntegrationResponseSync(GetIntegrationResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIntegrationResponseAsync(GetIntegrationResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeployments asynchronously, invoking a callback when done
-- @param GetDeploymentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeploymentsAsync(GetDeploymentsRequest, cb)
	assert(GetDeploymentsRequest, "You must provide a GetDeploymentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDeployments",
	}
	for header,value in pairs(GetDeploymentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetDeploymentsSync(GetDeploymentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeploymentsAsync(GetDeploymentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateResource asynchronously, invoking a callback when done
-- @param CreateResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateResourceAsync(CreateResourceRequest, cb)
	assert(CreateResourceRequest, "You must provide a CreateResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateResource",
	}
	for header,value in pairs(CreateResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateResourceSync(CreateResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateResourceAsync(CreateResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApiKeys asynchronously, invoking a callback when done
-- @param GetApiKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApiKeysAsync(GetApiKeysRequest, cb)
	assert(GetApiKeysRequest, "You must provide a GetApiKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApiKeys",
	}
	for header,value in pairs(GetApiKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetApiKeysSync(GetApiKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApiKeysAsync(GetApiKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApiKey asynchronously, invoking a callback when done
-- @param DeleteApiKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApiKeyAsync(DeleteApiKeyRequest, cb)
	assert(DeleteApiKeyRequest, "You must provide a DeleteApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApiKey",
	}
	for header,value in pairs(DeleteApiKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteApiKeySync(DeleteApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApiKeyAsync(DeleteApiKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApiKey asynchronously, invoking a callback when done
-- @param CreateApiKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateApiKeyAsync(CreateApiKeyRequest, cb)
	assert(CreateApiKeyRequest, "You must provide a CreateApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateApiKey",
	}
	for header,value in pairs(CreateApiKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateApiKeySync(CreateApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateApiKeyAsync(CreateApiKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAuthorizer asynchronously, invoking a callback when done
-- @param UpdateAuthorizerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAuthorizerAsync(UpdateAuthorizerRequest, cb)
	assert(UpdateAuthorizerRequest, "You must provide a UpdateAuthorizerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAuthorizer",
	}
	for header,value in pairs(UpdateAuthorizerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateAuthorizerSync(UpdateAuthorizerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAuthorizerAsync(UpdateAuthorizerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetModel asynchronously, invoking a callback when done
-- @param GetModelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetModelAsync(GetModelRequest, cb)
	assert(GetModelRequest, "You must provide a GetModelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetModel",
	}
	for header,value in pairs(GetModelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetModelSync(GetModelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetModelAsync(GetModelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUsagePlanKeys asynchronously, invoking a callback when done
-- @param GetUsagePlanKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUsagePlanKeysAsync(GetUsagePlanKeysRequest, cb)
	assert(GetUsagePlanKeysRequest, "You must provide a GetUsagePlanKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUsagePlanKeys",
	}
	for header,value in pairs(GetUsagePlanKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetUsagePlanKeysSync(GetUsagePlanKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUsagePlanKeysAsync(GetUsagePlanKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMethodResponse asynchronously, invoking a callback when done
-- @param DeleteMethodResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteMethodResponseAsync(DeleteMethodResponseRequest, cb)
	assert(DeleteMethodResponseRequest, "You must provide a DeleteMethodResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteMethodResponse",
	}
	for header,value in pairs(DeleteMethodResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteMethodResponseSync(DeleteMethodResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMethodResponseAsync(DeleteMethodResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResources asynchronously, invoking a callback when done
-- @param GetResourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetResourcesAsync(GetResourcesRequest, cb)
	assert(GetResourcesRequest, "You must provide a GetResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetResources",
	}
	for header,value in pairs(GetResourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetResourcesSync(GetResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResourcesAsync(GetResourcesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRestApis asynchronously, invoking a callback when done
-- @param GetRestApisRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRestApisAsync(GetRestApisRequest, cb)
	assert(GetRestApisRequest, "You must provide a GetRestApisRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRestApis",
	}
	for header,value in pairs(GetRestApisRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetRestApisSync(GetRestApisRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRestApisAsync(GetRestApisRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResource asynchronously, invoking a callback when done
-- @param GetResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetResourceAsync(GetResourceRequest, cb)
	assert(GetResourceRequest, "You must provide a GetResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetResource",
	}
	for header,value in pairs(GetResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetResourceSync(GetResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResourceAsync(GetResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIntegrationResponse asynchronously, invoking a callback when done
-- @param DeleteIntegrationResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteIntegrationResponseAsync(DeleteIntegrationResponseRequest, cb)
	assert(DeleteIntegrationResponseRequest, "You must provide a DeleteIntegrationResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteIntegrationResponse",
	}
	for header,value in pairs(DeleteIntegrationResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteIntegrationResponseSync(DeleteIntegrationResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIntegrationResponseAsync(DeleteIntegrationResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUsagePlans asynchronously, invoking a callback when done
-- @param GetUsagePlansRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUsagePlansAsync(GetUsagePlansRequest, cb)
	assert(GetUsagePlansRequest, "You must provide a GetUsagePlansRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUsagePlans",
	}
	for header,value in pairs(GetUsagePlansRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetUsagePlansSync(GetUsagePlansRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUsagePlansAsync(GetUsagePlansRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportApiKeys asynchronously, invoking a callback when done
-- @param ImportApiKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ImportApiKeysAsync(ImportApiKeysRequest, cb)
	assert(ImportApiKeysRequest, "You must provide a ImportApiKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ImportApiKeys",
	}
	for header,value in pairs(ImportApiKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.ImportApiKeysSync(ImportApiKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportApiKeysAsync(ImportApiKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBasePathMapping asynchronously, invoking a callback when done
-- @param GetBasePathMappingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBasePathMappingAsync(GetBasePathMappingRequest, cb)
	assert(GetBasePathMappingRequest, "You must provide a GetBasePathMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBasePathMapping",
	}
	for header,value in pairs(GetBasePathMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetBasePathMappingSync(GetBasePathMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBasePathMappingAsync(GetBasePathMappingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetExport asynchronously, invoking a callback when done
-- @param GetExportRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetExportAsync(GetExportRequest, cb)
	assert(GetExportRequest, "You must provide a GetExportRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetExport",
	}
	for header,value in pairs(GetExportRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetExportSync(GetExportRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetExportAsync(GetExportRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateResource asynchronously, invoking a callback when done
-- @param UpdateResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateResourceAsync(UpdateResourceRequest, cb)
	assert(UpdateResourceRequest, "You must provide a UpdateResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateResource",
	}
	for header,value in pairs(UpdateResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateResourceSync(UpdateResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateResourceAsync(UpdateResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDomainName asynchronously, invoking a callback when done
-- @param GetDomainNameRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDomainNameAsync(GetDomainNameRequest, cb)
	assert(GetDomainNameRequest, "You must provide a GetDomainNameRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDomainName",
	}
	for header,value in pairs(GetDomainNameRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetDomainNameSync(GetDomainNameRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDomainNameAsync(GetDomainNameRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDomainName asynchronously, invoking a callback when done
-- @param UpdateDomainNameRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDomainNameAsync(UpdateDomainNameRequest, cb)
	assert(UpdateDomainNameRequest, "You must provide a UpdateDomainNameRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDomainName",
	}
	for header,value in pairs(UpdateDomainNameRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateDomainNameSync(UpdateDomainNameRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDomainNameAsync(UpdateDomainNameRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateClientCertificate asynchronously, invoking a callback when done
-- @param UpdateClientCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateClientCertificateAsync(UpdateClientCertificateRequest, cb)
	assert(UpdateClientCertificateRequest, "You must provide a UpdateClientCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateClientCertificate",
	}
	for header,value in pairs(UpdateClientCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateClientCertificateSync(UpdateClientCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateClientCertificateAsync(UpdateClientCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDomainName asynchronously, invoking a callback when done
-- @param CreateDomainNameRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDomainNameAsync(CreateDomainNameRequest, cb)
	assert(CreateDomainNameRequest, "You must provide a CreateDomainNameRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDomainName",
	}
	for header,value in pairs(CreateDomainNameRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateDomainNameSync(CreateDomainNameRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDomainNameAsync(CreateDomainNameRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDomainName asynchronously, invoking a callback when done
-- @param DeleteDomainNameRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDomainNameAsync(DeleteDomainNameRequest, cb)
	assert(DeleteDomainNameRequest, "You must provide a DeleteDomainNameRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDomainName",
	}
	for header,value in pairs(DeleteDomainNameRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteDomainNameSync(DeleteDomainNameRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDomainNameAsync(DeleteDomainNameRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutMethod asynchronously, invoking a callback when done
-- @param PutMethodRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutMethodAsync(PutMethodRequest, cb)
	assert(PutMethodRequest, "You must provide a PutMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutMethod",
	}
	for header,value in pairs(PutMethodRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
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
-- @return error_type
-- @return error_message
function M.PutMethodSync(PutMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutMethodAsync(PutMethodRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStage asynchronously, invoking a callback when done
-- @param DeleteStageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteStageAsync(DeleteStageRequest, cb)
	assert(DeleteStageRequest, "You must provide a DeleteStageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteStage",
	}
	for header,value in pairs(DeleteStageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteStageSync(DeleteStageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStageAsync(DeleteStageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentationPart asynchronously, invoking a callback when done
-- @param GetDocumentationPartRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDocumentationPartAsync(GetDocumentationPartRequest, cb)
	assert(GetDocumentationPartRequest, "You must provide a GetDocumentationPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocumentationPart",
	}
	for header,value in pairs(GetDocumentationPartRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetDocumentationPartSync(GetDocumentationPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentationPartAsync(GetDocumentationPartRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAccount asynchronously, invoking a callback when done
-- @param UpdateAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAccountAsync(UpdateAccountRequest, cb)
	assert(UpdateAccountRequest, "You must provide a UpdateAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAccount",
	}
	for header,value in pairs(UpdateAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateAccountSync(UpdateAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAccountAsync(UpdateAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRestApi asynchronously, invoking a callback when done
-- @param PutRestApiRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRestApiAsync(PutRestApiRequest, cb)
	assert(PutRestApiRequest, "You must provide a PutRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutRestApi",
	}
	for header,value in pairs(PutRestApiRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
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
-- @return error_type
-- @return error_message
function M.PutRestApiSync(PutRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRestApiAsync(PutRestApiRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUsage asynchronously, invoking a callback when done
-- @param GetUsageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUsageAsync(GetUsageRequest, cb)
	assert(GetUsageRequest, "You must provide a GetUsageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUsage",
	}
	for header,value in pairs(GetUsageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetUsageSync(GetUsageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUsageAsync(GetUsageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeployment asynchronously, invoking a callback when done
-- @param GetDeploymentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeploymentAsync(GetDeploymentRequest, cb)
	assert(GetDeploymentRequest, "You must provide a GetDeploymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDeployment",
	}
	for header,value in pairs(GetDeploymentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetDeploymentSync(GetDeploymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeploymentAsync(GetDeploymentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRestApi asynchronously, invoking a callback when done
-- @param CreateRestApiRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRestApiAsync(CreateRestApiRequest, cb)
	assert(CreateRestApiRequest, "You must provide a CreateRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateRestApi",
	}
	for header,value in pairs(CreateRestApiRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateRestApiSync(CreateRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRestApiAsync(CreateRestApiRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTags asynchronously, invoking a callback when done
-- @param GetTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTagsAsync(GetTagsRequest, cb)
	assert(GetTagsRequest, "You must provide a GetTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTags",
	}
	for header,value in pairs(GetTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/tags/{resource_arn}", GetTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTagsSync(GetTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTagsAsync(GetTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateVpcLink asynchronously, invoking a callback when done
-- @param UpdateVpcLinkRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateVpcLinkAsync(UpdateVpcLinkRequest, cb)
	assert(UpdateVpcLinkRequest, "You must provide a UpdateVpcLinkRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateVpcLink",
	}
	for header,value in pairs(UpdateVpcLinkRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
	if request_handler then
		request_handler(settings.uri, "/vpclinks/{vpclink_id}", UpdateVpcLinkRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateVpcLink synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateVpcLinkRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateVpcLinkSync(UpdateVpcLinkRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateVpcLinkAsync(UpdateVpcLinkRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAuthorizers asynchronously, invoking a callback when done
-- @param GetAuthorizersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAuthorizersAsync(GetAuthorizersRequest, cb)
	assert(GetAuthorizersRequest, "You must provide a GetAuthorizersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAuthorizers",
	}
	for header,value in pairs(GetAuthorizersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetAuthorizersSync(GetAuthorizersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAuthorizersAsync(GetAuthorizersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetClientCertificates asynchronously, invoking a callback when done
-- @param GetClientCertificatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetClientCertificatesAsync(GetClientCertificatesRequest, cb)
	assert(GetClientCertificatesRequest, "You must provide a GetClientCertificatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetClientCertificates",
	}
	for header,value in pairs(GetClientCertificatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetClientCertificatesSync(GetClientCertificatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetClientCertificatesAsync(GetClientCertificatesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDocumentationPart asynchronously, invoking a callback when done
-- @param DeleteDocumentationPartRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDocumentationPartAsync(DeleteDocumentationPartRequest, cb)
	assert(DeleteDocumentationPartRequest, "You must provide a DeleteDocumentationPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDocumentationPart",
	}
	for header,value in pairs(DeleteDocumentationPartRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteDocumentationPartSync(DeleteDocumentationPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDocumentationPartAsync(DeleteDocumentationPartRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteResource asynchronously, invoking a callback when done
-- @param DeleteResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteResourceAsync(DeleteResourceRequest, cb)
	assert(DeleteResourceRequest, "You must provide a DeleteResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteResource",
	}
	for header,value in pairs(DeleteResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteResourceSync(DeleteResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteResourceAsync(DeleteResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStage asynchronously, invoking a callback when done
-- @param CreateStageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStageAsync(CreateStageRequest, cb)
	assert(CreateStageRequest, "You must provide a CreateStageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateStage",
	}
	for header,value in pairs(CreateStageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateStageSync(CreateStageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStageAsync(CreateStageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateBasePathMapping asynchronously, invoking a callback when done
-- @param UpdateBasePathMappingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateBasePathMappingAsync(UpdateBasePathMappingRequest, cb)
	assert(UpdateBasePathMappingRequest, "You must provide a UpdateBasePathMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateBasePathMapping",
	}
	for header,value in pairs(UpdateBasePathMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateBasePathMappingSync(UpdateBasePathMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateBasePathMappingAsync(UpdateBasePathMappingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateMethodResponse asynchronously, invoking a callback when done
-- @param UpdateMethodResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateMethodResponseAsync(UpdateMethodResponseRequest, cb)
	assert(UpdateMethodResponseRequest, "You must provide a UpdateMethodResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateMethodResponse",
	}
	for header,value in pairs(UpdateMethodResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateMethodResponseSync(UpdateMethodResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateMethodResponseAsync(UpdateMethodResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUsage asynchronously, invoking a callback when done
-- @param UpdateUsageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUsageAsync(UpdateUsageRequest, cb)
	assert(UpdateUsageRequest, "You must provide a UpdateUsageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUsage",
	}
	for header,value in pairs(UpdateUsageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateUsageSync(UpdateUsageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUsageAsync(UpdateUsageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentationParts asynchronously, invoking a callback when done
-- @param GetDocumentationPartsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDocumentationPartsAsync(GetDocumentationPartsRequest, cb)
	assert(GetDocumentationPartsRequest, "You must provide a GetDocumentationPartsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocumentationParts",
	}
	for header,value in pairs(GetDocumentationPartsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetDocumentationPartsSync(GetDocumentationPartsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentationPartsAsync(GetDocumentationPartsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDocumentationPart asynchronously, invoking a callback when done
-- @param CreateDocumentationPartRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDocumentationPartAsync(CreateDocumentationPartRequest, cb)
	assert(CreateDocumentationPartRequest, "You must provide a CreateDocumentationPartRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDocumentationPart",
	}
	for header,value in pairs(CreateDocumentationPartRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateDocumentationPartSync(CreateDocumentationPartRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDocumentationPartAsync(CreateDocumentationPartRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBasePathMapping asynchronously, invoking a callback when done
-- @param CreateBasePathMappingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateBasePathMappingAsync(CreateBasePathMappingRequest, cb)
	assert(CreateBasePathMappingRequest, "You must provide a CreateBasePathMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateBasePathMapping",
	}
	for header,value in pairs(CreateBasePathMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateBasePathMappingSync(CreateBasePathMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBasePathMappingAsync(CreateBasePathMappingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUsagePlan asynchronously, invoking a callback when done
-- @param CreateUsagePlanRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUsagePlanAsync(CreateUsagePlanRequest, cb)
	assert(CreateUsagePlanRequest, "You must provide a CreateUsagePlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateUsagePlan",
	}
	for header,value in pairs(CreateUsagePlanRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateUsagePlanSync(CreateUsagePlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUsagePlanAsync(CreateUsagePlanRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApiKey asynchronously, invoking a callback when done
-- @param UpdateApiKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApiKeyAsync(UpdateApiKeyRequest, cb)
	assert(UpdateApiKeyRequest, "You must provide a UpdateApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApiKey",
	}
	for header,value in pairs(UpdateApiKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateApiKeySync(UpdateApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApiKeyAsync(UpdateApiKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGatewayResponse asynchronously, invoking a callback when done
-- @param DeleteGatewayResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteGatewayResponseAsync(DeleteGatewayResponseRequest, cb)
	assert(DeleteGatewayResponseRequest, "You must provide a DeleteGatewayResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteGatewayResponse",
	}
	for header,value in pairs(DeleteGatewayResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/restapis/{restapi_id}/gatewayresponses/{response_type}", DeleteGatewayResponseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGatewayResponse synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGatewayResponseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteGatewayResponseSync(DeleteGatewayResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGatewayResponseAsync(DeleteGatewayResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportRestApi asynchronously, invoking a callback when done
-- @param ImportRestApiRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ImportRestApiAsync(ImportRestApiRequest, cb)
	assert(ImportRestApiRequest, "You must provide a ImportRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ImportRestApi",
	}
	for header,value in pairs(ImportRestApiRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.ImportRestApiSync(ImportRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportRestApiAsync(ImportRestApiRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRestApi asynchronously, invoking a callback when done
-- @param UpdateRestApiRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRestApiAsync(UpdateRestApiRequest, cb)
	assert(UpdateRestApiRequest, "You must provide a UpdateRestApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateRestApi",
	}
	for header,value in pairs(UpdateRestApiRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateRestApiSync(UpdateRestApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRestApiAsync(UpdateRestApiRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDocumentationVersion asynchronously, invoking a callback when done
-- @param CreateDocumentationVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDocumentationVersionAsync(CreateDocumentationVersionRequest, cb)
	assert(CreateDocumentationVersionRequest, "You must provide a CreateDocumentationVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDocumentationVersion",
	}
	for header,value in pairs(CreateDocumentationVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateDocumentationVersionSync(CreateDocumentationVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDocumentationVersionAsync(CreateDocumentationVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutIntegrationResponse asynchronously, invoking a callback when done
-- @param PutIntegrationResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutIntegrationResponseAsync(PutIntegrationResponseRequest, cb)
	assert(PutIntegrationResponseRequest, "You must provide a PutIntegrationResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutIntegrationResponse",
	}
	for header,value in pairs(PutIntegrationResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
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
-- @return error_type
-- @return error_message
function M.PutIntegrationResponseSync(PutIntegrationResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutIntegrationResponseAsync(PutIntegrationResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocumentationVersions asynchronously, invoking a callback when done
-- @param GetDocumentationVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDocumentationVersionsAsync(GetDocumentationVersionsRequest, cb)
	assert(GetDocumentationVersionsRequest, "You must provide a GetDocumentationVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDocumentationVersions",
	}
	for header,value in pairs(GetDocumentationVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetDocumentationVersionsSync(GetDocumentationVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentationVersionsAsync(GetDocumentationVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMethod asynchronously, invoking a callback when done
-- @param DeleteMethodRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteMethodAsync(DeleteMethodRequest, cb)
	assert(DeleteMethodRequest, "You must provide a DeleteMethodRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteMethod",
	}
	for header,value in pairs(DeleteMethodRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteMethodSync(DeleteMethodRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMethodAsync(DeleteMethodRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRequestValidators asynchronously, invoking a callback when done
-- @param GetRequestValidatorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRequestValidatorsAsync(GetRequestValidatorsRequest, cb)
	assert(GetRequestValidatorsRequest, "You must provide a GetRequestValidatorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRequestValidators",
	}
	for header,value in pairs(GetRequestValidatorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetRequestValidatorsSync(GetRequestValidatorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRequestValidatorsAsync(GetRequestValidatorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccount asynchronously, invoking a callback when done
-- @param GetAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccountAsync(GetAccountRequest, cb)
	assert(GetAccountRequest, "You must provide a GetAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccount",
	}
	for header,value in pairs(GetAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
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
-- @return error_type
-- @return error_message
function M.GetAccountSync(GetAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountAsync(GetAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUsagePlanKey asynchronously, invoking a callback when done
-- @param DeleteUsagePlanKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUsagePlanKeyAsync(DeleteUsagePlanKeyRequest, cb)
	assert(DeleteUsagePlanKeyRequest, "You must provide a DeleteUsagePlanKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUsagePlanKey",
	}
	for header,value in pairs(DeleteUsagePlanKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteUsagePlanKeySync(DeleteUsagePlanKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUsagePlanKeyAsync(DeleteUsagePlanKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRequestValidator asynchronously, invoking a callback when done
-- @param DeleteRequestValidatorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRequestValidatorAsync(DeleteRequestValidatorRequest, cb)
	assert(DeleteRequestValidatorRequest, "You must provide a DeleteRequestValidatorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteRequestValidator",
	}
	for header,value in pairs(DeleteRequestValidatorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
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
-- @return error_type
-- @return error_message
function M.DeleteRequestValidatorSync(DeleteRequestValidatorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRequestValidatorAsync(DeleteRequestValidatorRequest, function(response, error_type, error_message)
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
		request_handler(settings.uri, "/tags/{resource_arn}", UntagResourceRequest, headers, settings, cb)
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

--- Call PutIntegration asynchronously, invoking a callback when done
-- @param PutIntegrationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutIntegrationAsync(PutIntegrationRequest, cb)
	assert(PutIntegrationRequest, "You must provide a PutIntegrationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutIntegration",
	}
	for header,value in pairs(PutIntegrationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
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
-- @return error_type
-- @return error_message
function M.PutIntegrationSync(PutIntegrationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutIntegrationAsync(PutIntegrationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateIntegrationResponse asynchronously, invoking a callback when done
-- @param UpdateIntegrationResponseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateIntegrationResponseAsync(UpdateIntegrationResponseRequest, cb)
	assert(UpdateIntegrationResponseRequest, "You must provide a UpdateIntegrationResponseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateIntegrationResponse",
	}
	for header,value in pairs(UpdateIntegrationResponseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
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
-- @return error_type
-- @return error_message
function M.UpdateIntegrationResponseSync(UpdateIntegrationResponseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateIntegrationResponseAsync(UpdateIntegrationResponseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetVpcLinks asynchronously, invoking a callback when done
-- @param GetVpcLinksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetVpcLinksAsync(GetVpcLinksRequest, cb)
	assert(GetVpcLinksRequest, "You must provide a GetVpcLinksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetVpcLinks",
	}
	for header,value in pairs(GetVpcLinksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/vpclinks", GetVpcLinksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetVpcLinks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetVpcLinksRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetVpcLinksSync(GetVpcLinksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetVpcLinksAsync(GetVpcLinksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
